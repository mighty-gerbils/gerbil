(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1770243150)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx147571%_)
        (letrec ((_%expand-special147573%_
                  (lambda (_%hd147575%_ _%K147576%_ _%rest147577%_ _%r147578%_)
                    (_%K147576%_
                     _%rest147577%_
                     (cons (gx#core-expand-top _%hd147575%_) _%r147578%_)))))
          (gx#core-expand-block__0 _%stx147571%_ _%expand-special147573%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx147324%_)
        (letrec ((_%expand-special147326%_
                  (lambda (_%hd147446%_ _%K147447%_ _%rest147448%_ _%r147449%_)
                    (let* ((_%K147453%_
                            (lambda (_%e147451%_)
                              (_%K147447%_
                               _%rest147448%_
                               (cons _%e147451%_ _%r147449%_))))
                           (_%e147454147483%_ _%hd147446%_)
                           (_%E147478147487%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e147454147483%_)))
                           (_%E147474147499%_
                            (lambda ()
                              (if (gx#stx-pair? _%e147454147483%_)
                                  (let ((_%e147479147491%_
                                         (gx#syntax-e _%e147454147483%_)))
                                    (let ((_%hd147480147494%_
                                           (##car _%e147479147491%_))
                                          (_%tl147481147496%_
                                           (##cdr _%e147479147491%_)))
                                      (if (and (gx#identifier?
                                                _%hd147480147494%_)
                                               (gx#core-identifier=?
                                                _%hd147480147494%_
                                                '%#define-runtime))
                                          (_%K147453%_
                                           (gx#core-expand-define-runtime%
                                            _%hd147446%_))
                                          (_%E147478147487%_))))
                                  (_%E147478147487%_))))
                           (_%E147470147511%_
                            (lambda ()
                              (if (gx#stx-pair? _%e147454147483%_)
                                  (let ((_%e147475147503%_
                                         (gx#syntax-e _%e147454147483%_)))
                                    (let ((_%hd147476147506%_
                                           (##car _%e147475147503%_))
                                          (_%tl147477147508%_
                                           (##cdr _%e147475147503%_)))
                                      (if (and (gx#identifier?
                                                _%hd147476147506%_)
                                               (gx#core-identifier=?
                                                _%hd147476147506%_
                                                '%#define-alias))
                                          (_%K147453%_
                                           (gx#core-expand-define-alias%
                                            _%hd147446%_))
                                          (_%E147474147499%_))))
                                  (_%E147474147499%_))))
                           (_%E147460147523%_
                            (lambda ()
                              (if (gx#stx-pair? _%e147454147483%_)
                                  (let ((_%e147471147515%_
                                         (gx#syntax-e _%e147454147483%_)))
                                    (let ((_%hd147472147518%_
                                           (##car _%e147471147515%_))
                                          (_%tl147473147520%_
                                           (##cdr _%e147471147515%_)))
                                      (if (and (gx#identifier?
                                                _%hd147472147518%_)
                                               (gx#core-identifier=?
                                                _%hd147472147518%_
                                                '%#define-syntax))
                                          (_%K147453%_
                                           (gx#core-expand-define-syntax%
                                            _%hd147446%_))
                                          (_%E147470147511%_))))
                                  (_%E147470147511%_))))
                           (_%E147456147555%_
                            (lambda ()
                              (if (gx#stx-pair? _%e147454147483%_)
                                  (let ((_%e147461147527%_
                                         (gx#syntax-e _%e147454147483%_)))
                                    (let ((_%hd147462147530%_
                                           (##car _%e147461147527%_))
                                          (_%tl147463147532%_
                                           (##cdr _%e147461147527%_)))
                                      (if (and (gx#identifier?
                                                _%hd147462147530%_)
                                               (gx#core-identifier=?
                                                _%hd147462147530%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl147463147532%_)
                                              (let ((_%e147464147535%_
                                                     (gx#syntax-e
                                                      _%tl147463147532%_)))
                                                (let ((_%hd147465147538%_
                                                       (##car _%e147464147535%_))
                                                      (_%tl147466147540%_
                                                       (##cdr _%e147464147535%_)))
                                                  (let ((_%hd-bind147543%_
                                                         _%hd147465147538%_))
                                                    (if (gx#stx-pair?
                                                         _%tl147466147540%_)
                                                        (let ((_%e147467147545%_
                                                               (gx#syntax-e
                                                                _%tl147466147540%_)))
                                                          (let ((_%hd147468147548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e147467147545%_))
                        (_%tl147469147550%_ (##cdr _%e147467147545%_)))
                    (let ((_%expr147553%_ _%hd147468147548%_))
                      (if (gx#stx-null? _%tl147469147550%_)
                          (if (gx#core-bind-values? _%hd-bind147543%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind147543%_)
                                (_%K147453%_ _%hd147446%_))
                              (_%E147460147523%_))
                          (_%E147460147523%_)))))
                (_%E147460147523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E147460147523%_))
                                          (_%E147460147523%_))))
                                  (_%E147460147523%_))))
                           (_%E147455147567%_
                            (lambda ()
                              (if (gx#stx-pair? _%e147454147483%_)
                                  (let ((_%e147457147559%_
                                         (gx#syntax-e _%e147454147483%_)))
                                    (let ((_%hd147458147562%_
                                           (##car _%e147457147559%_))
                                          (_%tl147459147564%_
                                           (##cdr _%e147457147559%_)))
                                      (if (and (gx#identifier?
                                                _%hd147458147562%_)
                                               (gx#core-identifier=?
                                                _%hd147458147562%_
                                                '%#begin-syntax))
                                          (_%K147453%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd147446%_))
                                          (_%E147456147555%_))))
                                  (_%E147456147555%_)))))
                      (_%E147455147567%_))))
                 (_%eval-body147327%_
                  (lambda (_%rbody147335%_)
                    (let _%lp147337%_ ((_%rest147339%_ _%rbody147335%_)
                                       (_%body147340%_ '())
                                       (_%ebody147341%_ '()))
                      (let* ((_%rest147342147350%_ _%rest147339%_)
                             (_%else147344147358%_
                              (lambda ()
                                (values _%body147340%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody147341%_)
                                          (gx#stx-source _%stx147324%_))))))
                             (_%K147346147434%_
                              (lambda (_%rest147361%_ _%hd147362%_)
                                (let* ((_%e147363147380%_ _%hd147362%_)
                                       (_%E147375147384%_
                                        (lambda ()
                                          (_%lp147337%_
                                           _%rest147361%_
                                           (cons _%hd147362%_ _%body147340%_)
                                           (cons _%hd147362%_
                                                 _%ebody147341%_))))
                                       (_%E147365147396%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e147363147380%_)
                                              (let ((_%e147376147388%_
                                                     (gx#syntax-e
                                                      _%e147363147380%_)))
                                                (let ((_%hd147377147391%_
                                                       (##car _%e147376147388%_))
                                                      (_%tl147378147393%_
                                                       (##cdr _%e147376147388%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd147377147391%_)
                                                           (gx#core-identifier=?
                                                            _%hd147377147391%_
                                                            '%#begin-syntax))
                                                      (_%lp147337%_
                                                       _%rest147361%_
                                                       (cons _%hd147362%_
                                                             _%body147340%_)
                                                       _%ebody147341%_)
                                                      (_%E147375147384%_))))
                                              (_%E147375147384%_))))
                                       (_%E147364147430%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e147363147380%_)
                                              (let ((_%e147366147400%_
                                                     (gx#syntax-e
                                                      _%e147363147380%_)))
                                                (let ((_%hd147367147403%_
                                                       (##car _%e147366147400%_))
                                                      (_%tl147368147405%_
                                                       (##cdr _%e147366147400%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd147367147403%_)
                                                           (gx#core-identifier=?
                                                            _%hd147367147403%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl147368147405%_)
                                                          (let ((_%e147369147408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl147368147405%_)))
                    (let ((_%hd147370147411%_ (##car _%e147369147408%_))
                          (_%tl147371147413%_ (##cdr _%e147369147408%_)))
                      (let ((_%hd-bind147416%_ _%hd147370147411%_))
                        (if (gx#stx-pair? _%tl147371147413%_)
                            (let ((_%e147372147418%_
                                   (gx#syntax-e _%tl147371147413%_)))
                              (let ((_%hd147373147421%_
                                     (##car _%e147372147418%_))
                                    (_%tl147374147423%_
                                     (##cdr _%e147372147418%_)))
                                (let ((_%expr147426%_ _%hd147373147421%_))
                                  (if (gx#stx-null? _%tl147374147423%_)
                                      (let ((_%ehd147428%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind147416%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr147426%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd147362%_))))
                                        (_%lp147337%_
                                         _%rest147361%_
                                         (cons _%ehd147428%_ _%body147340%_)
                                         (cons _%ehd147428%_ _%ebody147341%_)))
                                      (_%E147365147396%_)))))
                            (_%E147365147396%_)))))
                  (_%E147365147396%_))
              (_%E147365147396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E147365147396%_)))))
                                  (_%E147364147430%_)))))
                        (if (pair? _%rest147342147350%_)
                            (let ((_%hd147347147437%_
                                   (##car _%rest147342147350%_))
                                  (_%tl147348147439%_
                                   (##cdr _%rest147342147350%_)))
                              (let* ((_%hd147442%_ _%hd147347147437%_)
                                     (_%rest147444%_ _%tl147348147439%_))
                                (_%K147346147434%_
                                 _%rest147444%_
                                 _%hd147442%_)))
                            (_%else147344147358%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody147330%_
                     (gx#core-expand-block__1
                      _%stx147324%_
                      _%expand-special147326%_
                      '#f))
                    (_g147594_ (_%eval-body147327%_ _%rbody147330%_)))
               (begin
                 (let ((_g147595_
                        (if (##values? _g147594_)
                            (##values-length _g147594_)
                            1)))
                   (if (not (##fx= _g147595_ 2))
                       (error "Context expects 2 values" _g147595_)))
                 (let ((_%expanded-body147332%_ (##values-ref _g147594_ 0))
                       (_%value147333%_ (##values-ref _g147594_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body147332%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value147333%_ '())))
                    (gx#stx-source _%stx147324%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx147294%_)
        (let* ((_%e147295147302%_ _%stx147294%_)
               (_%E147297147306%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147295147302%_)))
               (_%E147296147320%_
                (lambda ()
                  (if (gx#stx-pair? _%e147295147302%_)
                      (let ((_%e147298147310%_
                             (gx#syntax-e _%e147295147302%_)))
                        (let ((_%hd147299147313%_ (##car _%e147298147310%_))
                              (_%tl147300147315%_ (##cdr _%e147298147310%_)))
                          (let ((_%body147318%_ _%tl147300147315%_))
                            (if (gx#stx-list? _%body147318%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body147318%_)
                                 (gx#stx-source _%stx147294%_))
                                (_%E147297147306%_)))))
                      (_%E147297147306%_)))))
          (_%E147296147320%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx147292%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx147292%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx147238%_)
        (let* ((_%e147239147252%_ _%stx147238%_)
               (_%E147241147256%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147239147252%_)))
               (_%E147240147288%_
                (lambda ()
                  (if (gx#stx-pair? _%e147239147252%_)
                      (let ((_%e147242147260%_
                             (gx#syntax-e _%e147239147252%_)))
                        (let ((_%hd147243147263%_ (##car _%e147242147260%_))
                              (_%tl147244147265%_ (##cdr _%e147242147260%_)))
                          (if (gx#stx-pair? _%tl147244147265%_)
                              (let ((_%e147245147268%_
                                     (gx#syntax-e _%tl147244147265%_)))
                                (let ((_%hd147246147271%_
                                       (##car _%e147245147268%_))
                                      (_%tl147247147273%_
                                       (##cdr _%e147245147268%_)))
                                  (let ((_%ann147276%_ _%hd147246147271%_))
                                    (if (gx#stx-pair? _%tl147247147273%_)
                                        (let ((_%e147248147278%_
                                               (gx#syntax-e
                                                _%tl147247147273%_)))
                                          (let ((_%hd147249147281%_
                                                 (##car _%e147248147278%_))
                                                (_%tl147250147283%_
                                                 (##cdr _%e147248147278%_)))
                                            (let ((_%expr147286%_
                                                   _%hd147249147281%_))
                                              (if (gx#stx-null?
                                                   _%tl147250147283%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann147276%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr147286%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx147238%_))
                                                  (_%E147241147256%_)))))
                                        (_%E147241147256%_)))))
                              (_%E147241147256%_))))
                      (_%E147241147256%_)))))
          (_%E147240147288%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx146962%_ _%body146963%_)
        (letrec ((_%expand-special146965%_
                  (lambda (_%hd147233%_ _%K147234%_ _%rest147235%_ _%r147236%_)
                    (_%K147234%_
                     '()
                     (cons (_%expand-internal146966%_
                            _%hd147233%_
                            _%rest147235%_)
                           _%r147236%_))))
                 (_%expand-internal146966%_
                  (lambda (_%hd147229%_ _%rest147230%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal146968%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd147229%_ _%rest147230%_))
                          (gx#stx-source _%stx146962%_))
                         _%expand-internal-special146967%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj147588
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj147588)
                       __obj147588))))
                 (_%expand-internal-special146967%_
                  (lambda (_%hd147124%_ _%K147125%_ _%rest147126%_ _%r147127%_)
                    (let* ((_%e147128147153%_ _%hd147124%_)
                           (_%E147148147157%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e147128147153%_)))
                           (_%E147144147169%_
                            (lambda ()
                              (if (gx#stx-pair? _%e147128147153%_)
                                  (let ((_%e147149147161%_
                                         (gx#syntax-e _%e147128147153%_)))
                                    (let ((_%hd147150147164%_
                                           (##car _%e147149147161%_))
                                          (_%tl147151147166%_
                                           (##cdr _%e147149147161%_)))
                                      (if (and (gx#identifier?
                                                _%hd147150147164%_)
                                               (gx#core-identifier=?
                                                _%hd147150147164%_
                                                '%#declare))
                                          (_%K147125%_
                                           _%rest147126%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd147124%_)
                                                 _%r147127%_))
                                          (_%E147148147157%_))))
                                  (_%E147148147157%_))))
                           (_%E147140147181%_
                            (lambda ()
                              (if (gx#stx-pair? _%e147128147153%_)
                                  (let ((_%e147145147173%_
                                         (gx#syntax-e _%e147128147153%_)))
                                    (let ((_%hd147146147176%_
                                           (##car _%e147145147173%_))
                                          (_%tl147147147178%_
                                           (##cdr _%e147145147173%_)))
                                      (if (and (gx#identifier?
                                                _%hd147146147176%_)
                                               (gx#core-identifier=?
                                                _%hd147146147176%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd147124%_)
                                            (_%K147125%_
                                             _%rest147126%_
                                             _%r147127%_))
                                          (_%E147144147169%_))))
                                  (_%E147144147169%_))))
                           (_%E147130147193%_
                            (lambda ()
                              (if (gx#stx-pair? _%e147128147153%_)
                                  (let ((_%e147141147185%_
                                         (gx#syntax-e _%e147128147153%_)))
                                    (let ((_%hd147142147188%_
                                           (##car _%e147141147185%_))
                                          (_%tl147143147190%_
                                           (##cdr _%e147141147185%_)))
                                      (if (and (gx#identifier?
                                                _%hd147142147188%_)
                                               (gx#core-identifier=?
                                                _%hd147142147188%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd147124%_)
                                            (_%K147125%_
                                             _%rest147126%_
                                             _%r147127%_))
                                          (_%E147140147181%_))))
                                  (_%E147140147181%_))))
                           (_%E147129147225%_
                            (lambda ()
                              (if (gx#stx-pair? _%e147128147153%_)
                                  (let ((_%e147131147197%_
                                         (gx#syntax-e _%e147128147153%_)))
                                    (let ((_%hd147132147200%_
                                           (##car _%e147131147197%_))
                                          (_%tl147133147202%_
                                           (##cdr _%e147131147197%_)))
                                      (if (and (gx#identifier?
                                                _%hd147132147200%_)
                                               (gx#core-identifier=?
                                                _%hd147132147200%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl147133147202%_)
                                              (let ((_%e147134147205%_
                                                     (gx#syntax-e
                                                      _%tl147133147202%_)))
                                                (let ((_%hd147135147208%_
                                                       (##car _%e147134147205%_))
                                                      (_%tl147136147210%_
                                                       (##cdr _%e147134147205%_)))
                                                  (let ((_%hd-bind147213%_
                                                         _%hd147135147208%_))
                                                    (if (gx#stx-pair?
                                                         _%tl147136147210%_)
                                                        (let ((_%e147137147215%_
                                                               (gx#syntax-e
                                                                _%tl147136147210%_)))
                                                          (let ((_%hd147138147218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e147137147215%_))
                        (_%tl147139147220%_ (##cdr _%e147137147215%_)))
                    (let ((_%expr147223%_ _%hd147138147218%_))
                      (if (gx#stx-null? _%tl147139147220%_)
                          (if (gx#core-bind-values? _%hd-bind147213%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind147213%_)
                                (_%K147125%_
                                 _%rest147126%_
                                 (cons _%hd147124%_ _%r147127%_)))
                              (_%E147130147193%_))
                          (_%E147130147193%_)))))
                (_%E147130147193%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E147130147193%_))
                                          (_%E147130147193%_))))
                                  (_%E147130147193%_)))))
                      (_%E147129147225%_))))
                 (_%wrap-internal146968%_
                  (lambda (_%rbody146970%_)
                    (let _%lp146972%_ ((_%rest146974%_ _%rbody146970%_)
                                       (_%decls146975%_ '())
                                       (_%bind146976%_ '())
                                       (_%body146977%_ '()))
                      (let* ((_%e146978146985%_ _%rest146974%_)
                             (_%E146980147034%_
                              (lambda ()
                                (let* ((_%body147029%_
                                        (let* ((_%body146988146998%_
                                                _%body146977%_)
                                               (_%else146991147006%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body146977%_)
                                                   (gx#stx-source
                                                    _%stx146962%_)))))
                                          (let ((_%K146996147026%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx146962%_)))
                                                (_%K146993147012%_
                                                 (lambda (_%expr147010%_)
                                                   _%expr147010%_)))
                                            (let ((_%try-match146990147022%_
                                                   (lambda ()
                                                     (if (pair? _%body146988146998%_)
                                                         (let ((_%tl146995147017%_
                                                                (##cdr _%body146988146998%_))
                                                               (_%hd146994147015%_
                                                                (##car _%body146988146998%_)))
                                                           (if (null? _%tl146995147017%_)
                                                               (let ((_%expr147020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd146994147015%_))
                         (_%K146993147012%_ _%expr147020%_))
                       (_%else146991147006%_)))
                 (_%else146991147006%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body146988146998%_)
                                                  (_%K146996147026%_)
                                                  (_%try-match146990147022%_))))))
                                       (_%body147031%_
                                        (if (null? _%bind146976%_)
                                            _%body147029%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind146976%_
                                                         (cons _%body147029%_
                                                               '())))
                                             (gx#stx-source _%stx146962%_)))))
                                  (if (null? _%decls146975%_)
                                      _%body147031%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls146975%_
                                                   (cons _%body147031%_ '())))
                                       (gx#stx-source _%stx146962%_))))))
                             (_%E146979147120%_
                              (lambda ()
                                (if (gx#stx-pair? _%e146978146985%_)
                                    (let ((_%e146981147038%_
                                           (gx#syntax-e _%e146978146985%_)))
                                      (let ((_%hd146982147041%_
                                             (##car _%e146981147038%_))
                                            (_%tl146983147043%_
                                             (##cdr _%e146981147038%_)))
                                        (let* ((_%hd147046%_
                                                _%hd146982147041%_)
                                               (_%rest147048%_
                                                _%tl146983147043%_)
                                               (_%e147049147066%_ _%hd147046%_)
                                               (_%E147061147070%_
                                                (lambda ()
                                                  (if (null? _%bind146976%_)
                                                      (_%lp146972%_
                                                       _%rest147048%_
                                                       _%decls146975%_
                                                       _%bind146976%_
                                                       (cons _%hd147046%_
                                                             _%body146977%_))
                                                      (_%lp146972%_
                                                       _%rest147048%_
                                                       _%decls146975%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd147046%_ '()))
                     _%bind146976%_)
               _%body146977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E147051147084%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e147049147066%_)
                                                      (let ((_%e147062147074%_
                                                             (gx#syntax-e
                                                              _%e147049147066%_)))
                                                        (let ((_%hd147063147077%_
                                                               (##car _%e147062147074%_))
                                                              (_%tl147064147079%_
                                                               (##cdr _%e147062147074%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd147063147077%_)
                           (gx#core-identifier=?
                            _%hd147063147077%_
                            '%#declare))
                      (let ((_%xdecls147082%_ _%tl147064147079%_))
                        (_%lp146972%_
                         _%rest147048%_
                         (gx#stx-foldr cons _%decls146975%_ _%xdecls147082%_)
                         _%bind146976%_
                         _%body146977%_))
                      (_%E147061147070%_))))
              (_%E147061147070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E147050147116%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e147049147066%_)
                                                      (let ((_%e147052147088%_
                                                             (gx#syntax-e
                                                              _%e147049147066%_)))
                                                        (let ((_%hd147053147091%_
                                                               (##car _%e147052147088%_))
                                                              (_%tl147054147093%_
                                                               (##cdr _%e147052147088%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd147053147091%_)
                           (gx#core-identifier=?
                            _%hd147053147091%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl147054147093%_)
                          (let ((_%e147055147096%_
                                 (gx#syntax-e _%tl147054147093%_)))
                            (let ((_%hd147056147099%_
                                   (##car _%e147055147096%_))
                                  (_%tl147057147101%_
                                   (##cdr _%e147055147096%_)))
                              (let ((_%hd-bind147104%_ _%hd147056147099%_))
                                (if (gx#stx-pair? _%tl147057147101%_)
                                    (let ((_%e147058147106%_
                                           (gx#syntax-e _%tl147057147101%_)))
                                      (let ((_%hd147059147109%_
                                             (##car _%e147058147106%_))
                                            (_%tl147060147111%_
                                             (##cdr _%e147058147106%_)))
                                        (let ((_%expr147114%_
                                               _%hd147059147109%_))
                                          (if (gx#stx-null? _%tl147060147111%_)
                                              (_%lp146972%_
                                               _%rest147048%_
                                               _%decls146975%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind147104%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr147114%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind146976%_)
                                               _%body146977%_)
                                              (_%E147051147084%_)))))
                                    (_%E147051147084%_)))))
                          (_%E147051147084%_))
                      (_%E147051147084%_))))
              (_%E147051147084%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E147050147116%_))))
                                    (_%E146980147034%_)))))
                        (_%E146979147120%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body146963%_)
            (gx#stx-source _%stx146962%_))
           _%expand-special146965%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx146900%_)
        (let* ((_%e146901146908%_ _%stx146900%_)
               (_%E146903146912%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146901146908%_)))
               (_%E146902146958%_
                (lambda ()
                  (if (gx#stx-pair? _%e146901146908%_)
                      (let ((_%e146904146916%_
                             (gx#syntax-e _%e146901146908%_)))
                        (let ((_%hd146905146919%_ (##car _%e146904146916%_))
                              (_%tl146906146921%_ (##cdr _%e146904146916%_)))
                          (let ((_%body146924%_ _%tl146906146921%_))
                            (if (gx#stx-list? _%body146924%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl146926%_)
                                     (let* ((_%e146927146934%_ _%decl146926%_)
                                            (_%E146929146938%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e146927146934%_)))
                                            (_%E146928146954%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e146927146934%_)
                                                   (let ((_%e146930146942%_
                                                          (gx#syntax-e
                                                           _%e146927146934%_)))
                                                     (let ((_%hd146931146945%_
                                                            (##car _%e146930146942%_))
                                                           (_%tl146932146947%_
                                                            (##cdr _%e146930146942%_)))
                                                       (let* ((_%head146950%_
                                                               _%hd146931146945%_)
                                                              (_%args146952%_
                                                               _%tl146932146947%_))
                                                         (if (gx#stx-list?
                                                              _%args146952%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl146926%_)
                                                             (_%E146929146938%_)))))
                                                   (_%E146929146938%_)))))
                                       (_%E146928146954%_)))
                                   _%body146924%_))
                                 (gx#stx-source _%stx146900%_))
                                (_%E146903146912%_)))))
                      (_%E146903146912%_)))))
          (_%E146902146958%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx146804%_)
        (let* ((_%e146805146812%_ _%stx146804%_)
               (_%E146807146816%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146805146812%_)))
               (_%E146806146896%_
                (lambda ()
                  (if (gx#stx-pair? _%e146805146812%_)
                      (let ((_%e146808146820%_
                             (gx#syntax-e _%e146805146812%_)))
                        (let ((_%hd146809146823%_ (##car _%e146808146820%_))
                              (_%tl146810146825%_ (##cdr _%e146808146820%_)))
                          (let ((_%body146828%_ _%tl146810146825%_))
                            (let _%lp146830%_ ((_%rest146832%_ _%body146828%_)
                                               (_%r146833%_ '()))
                              (let* ((_%e146834146848%_ _%rest146832%_)
                                     (_%E146846146852%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx146804%_)))
                                     (_%E146836146856%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e146834146848%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r146833%_))
                                             (gx#stx-source _%stx146804%_))
                                            (_%E146846146852%_))))
                                     (_%E146835146892%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e146834146848%_)
                                            (let ((_%e146837146860%_
                                                   (gx#syntax-e
                                                    _%e146834146848%_)))
                                              (let ((_%hd146838146863%_
                                                     (##car _%e146837146860%_))
                                                    (_%tl146839146865%_
                                                     (##cdr _%e146837146860%_)))
                                                (if (gx#stx-pair?
                                                     _%hd146838146863%_)
                                                    (let ((_%e146840146868%_
                                                           (gx#syntax-e
                                                            _%hd146838146863%_)))
                                                      (let ((_%hd146841146871%_
                                                             (##car _%e146840146868%_))
                                                            (_%tl146842146873%_
                                                             (##cdr _%e146840146868%_)))
                                                        (let ((_%id146876%_
                                                               _%hd146841146871%_))
                                                          (if (gx#stx-pair?
                                                               _%tl146842146873%_)
                                                              (let ((_%e146843146878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl146842146873%_)))
                        (let ((_%hd146844146881%_ (##car _%e146843146878%_))
                              (_%tl146845146883%_ (##cdr _%e146843146878%_)))
                          (let ((_%eid146886%_ _%hd146844146881%_))
                            (if (gx#stx-null? _%tl146845146883%_)
                                (let ((_%rest146888%_ _%tl146839146865%_))
                                  (if (and (gx#identifier? _%id146876%_)
                                           (gx#identifier? _%eid146886%_))
                                      (let ((_%eid146890%_
                                             (gx#stx-e _%eid146886%_)))
                                        (gx#core-bind-extern!__0
                                         _%id146876%_
                                         _%eid146890%_)
                                        (_%lp146830%_
                                         _%rest146888%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id146876%_)
                                                     (cons _%eid146890%_ '()))
                                               _%r146833%_)))
                                      (_%E146836146856%_)))
                                (_%E146836146856%_)))))
                      (_%E146836146856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E146836146856%_))))
                                            (_%E146836146856%_)))))
                                (_%E146835146892%_))))))
                      (_%E146807146816%_)))))
          (_%E146806146896%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx146750%_)
        (let* ((_%e146751146764%_ _%stx146750%_)
               (_%E146753146768%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146751146764%_)))
               (_%E146752146800%_
                (lambda ()
                  (if (gx#stx-pair? _%e146751146764%_)
                      (let ((_%e146754146772%_
                             (gx#syntax-e _%e146751146764%_)))
                        (let ((_%hd146755146775%_ (##car _%e146754146772%_))
                              (_%tl146756146777%_ (##cdr _%e146754146772%_)))
                          (if (gx#stx-pair? _%tl146756146777%_)
                              (let ((_%e146757146780%_
                                     (gx#syntax-e _%tl146756146777%_)))
                                (let ((_%hd146758146783%_
                                       (##car _%e146757146780%_))
                                      (_%tl146759146785%_
                                       (##cdr _%e146757146780%_)))
                                  (let ((_%hd146788%_ _%hd146758146783%_))
                                    (if (gx#stx-pair? _%tl146759146785%_)
                                        (let ((_%e146760146790%_
                                               (gx#syntax-e
                                                _%tl146759146785%_)))
                                          (let ((_%hd146761146793%_
                                                 (##car _%e146760146790%_))
                                                (_%tl146762146795%_
                                                 (##cdr _%e146760146790%_)))
                                            (let ((_%expr146798%_
                                                   _%hd146761146793%_))
                                              (if (gx#stx-null?
                                                   _%tl146762146795%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd146788%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd146788%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd146788%_)
                             (cons (gx#core-expand-expression _%expr146798%_)
                                   '())))
                 (gx#stx-source _%stx146750%_)))
              (_%E146753146768%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146753146768%_)))))
                                        (_%E146753146768%_)))))
                              (_%E146753146768%_))))
                      (_%E146753146768%_)))))
          (_%E146752146800%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx146694%_)
        (let* ((_%e146695146708%_ _%stx146694%_)
               (_%E146697146712%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146695146708%_)))
               (_%E146696146746%_
                (lambda ()
                  (if (gx#stx-pair? _%e146695146708%_)
                      (let ((_%e146698146716%_
                             (gx#syntax-e _%e146695146708%_)))
                        (let ((_%hd146699146719%_ (##car _%e146698146716%_))
                              (_%tl146700146721%_ (##cdr _%e146698146716%_)))
                          (if (gx#stx-pair? _%tl146700146721%_)
                              (let ((_%e146701146724%_
                                     (gx#syntax-e _%tl146700146721%_)))
                                (let ((_%hd146702146727%_
                                       (##car _%e146701146724%_))
                                      (_%tl146703146729%_
                                       (##cdr _%e146701146724%_)))
                                  (let ((_%id146732%_ _%hd146702146727%_))
                                    (if (gx#stx-pair? _%tl146703146729%_)
                                        (let ((_%e146704146734%_
                                               (gx#syntax-e
                                                _%tl146703146729%_)))
                                          (let ((_%hd146705146737%_
                                                 (##car _%e146704146734%_))
                                                (_%tl146706146739%_
                                                 (##cdr _%e146704146734%_)))
                                            (let ((_%binding-id146742%_
                                                   _%hd146705146737%_))
                                              (if (gx#stx-null?
                                                   _%tl146706146739%_)
                                                  (if (and (gx#identifier?
                                                            _%id146732%_)
                                                           (gx#identifier?
                                                            _%binding-id146742%_))
                                                      (let ((_%eid146744%_
                                                             (gx#stx-e
                                                              _%binding-id146742%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id146732%_
                                                         _%eid146744%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id146732%_)
                             (cons _%eid146744%_ '())))))
              (_%E146697146712%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146697146712%_)))))
                                        (_%E146697146712%_)))))
                              (_%E146697146712%_))))
                      (_%E146697146712%_)))))
          (_%E146696146746%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx146637%_)
        (let* ((_%e146638146651%_ _%stx146637%_)
               (_%E146640146655%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146638146651%_)))
               (_%E146639146690%_
                (lambda ()
                  (if (gx#stx-pair? _%e146638146651%_)
                      (let ((_%e146641146659%_
                             (gx#syntax-e _%e146638146651%_)))
                        (let ((_%hd146642146662%_ (##car _%e146641146659%_))
                              (_%tl146643146664%_ (##cdr _%e146641146659%_)))
                          (if (gx#stx-pair? _%tl146643146664%_)
                              (let ((_%e146644146667%_
                                     (gx#syntax-e _%tl146643146664%_)))
                                (let ((_%hd146645146670%_
                                       (##car _%e146644146667%_))
                                      (_%tl146646146672%_
                                       (##cdr _%e146644146667%_)))
                                  (let ((_%id146675%_ _%hd146645146670%_))
                                    (if (gx#stx-pair? _%tl146646146672%_)
                                        (let ((_%e146647146677%_
                                               (gx#syntax-e
                                                _%tl146646146672%_)))
                                          (let ((_%hd146648146680%_
                                                 (##car _%e146647146677%_))
                                                (_%tl146649146682%_
                                                 (##cdr _%e146647146677%_)))
                                            (let ((_%expr146685%_
                                                   _%hd146648146680%_))
                                              (if (gx#stx-null?
                                                   _%tl146649146682%_)
                                                  (if (gx#identifier?
                                                       _%id146675%_)
                                                      (let ((_g147596_
                                                             (gx#core-expand-expression+1
                                                              _%expr146685%_)))
                                                        (begin
                                                          (let ((_g147597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g147596_)
                             (##values-length _g147596_)
                             1)))
                    (if (not (##fx= _g147597_ 2))
                        (error "Context expects 2 values" _g147597_)))
                  (let ((_%e-stx146687%_ (##values-ref _g147596_ 0))
                        (_%e146688%_ (##values-ref _g147596_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id146675%_ _%e146688%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id146675%_)
                                   (cons _%e-stx146687%_ '())))
                       (gx#stx-source _%stx146637%_))))))
              (_%E146640146655%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146640146655%_)))))
                                        (_%E146640146655%_)))))
                              (_%E146640146655%_))))
                      (_%E146640146655%_)))))
          (_%E146639146690%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx146581%_)
        (let* ((_%e146582146595%_ _%stx146581%_)
               (_%E146584146599%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146582146595%_)))
               (_%E146583146633%_
                (lambda ()
                  (if (gx#stx-pair? _%e146582146595%_)
                      (let ((_%e146585146603%_
                             (gx#syntax-e _%e146582146595%_)))
                        (let ((_%hd146586146606%_ (##car _%e146585146603%_))
                              (_%tl146587146608%_ (##cdr _%e146585146603%_)))
                          (if (gx#stx-pair? _%tl146587146608%_)
                              (let ((_%e146588146611%_
                                     (gx#syntax-e _%tl146587146608%_)))
                                (let ((_%hd146589146614%_
                                       (##car _%e146588146611%_))
                                      (_%tl146590146616%_
                                       (##cdr _%e146588146611%_)))
                                  (let ((_%id146619%_ _%hd146589146614%_))
                                    (if (gx#stx-pair? _%tl146590146616%_)
                                        (let ((_%e146591146621%_
                                               (gx#syntax-e
                                                _%tl146590146616%_)))
                                          (let ((_%hd146592146624%_
                                                 (##car _%e146591146621%_))
                                                (_%tl146593146626%_
                                                 (##cdr _%e146591146621%_)))
                                            (let ((_%alias-id146629%_
                                                   _%hd146592146624%_))
                                              (if (gx#stx-null?
                                                   _%tl146593146626%_)
                                                  (if (and (gx#identifier?
                                                            _%id146619%_)
                                                           (gx#identifier?
                                                            _%alias-id146629%_))
                                                      (let ((_%alias-id146631%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id146629%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id146619%_
                                                         _%alias-id146631%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id146619%_)
                             (cons _%alias-id146631%_ '())))))
              (_%E146584146599%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146584146599%_)))))
                                        (_%E146584146599%_)))))
                              (_%E146584146599%_))))
                      (_%E146584146599%_)))))
          (_%E146583146633%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx146524%_ _%wrap?146525%_)
        (let* ((_%e146526146536%_ _%stx146524%_)
               (_%E146528146540%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146526146536%_)))
               (_%E146527146567%_
                (lambda ()
                  (if (gx#stx-pair? _%e146526146536%_)
                      (let ((_%e146529146544%_
                             (gx#syntax-e _%e146526146536%_)))
                        (let ((_%hd146530146547%_ (##car _%e146529146544%_))
                              (_%tl146531146549%_ (##cdr _%e146529146544%_)))
                          (if (gx#stx-pair? _%tl146531146549%_)
                              (let ((_%e146532146552%_
                                     (gx#syntax-e _%tl146531146549%_)))
                                (let ((_%hd146533146555%_
                                       (##car _%e146532146552%_))
                                      (_%tl146534146557%_
                                       (##cdr _%e146532146552%_)))
                                  (let* ((_%hd146560%_ _%hd146533146555%_)
                                         (_%body146562%_ _%tl146534146557%_))
                                    (if (gx#core-bind-values? _%hd146560%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd146560%_)
                                           (let ((_%body146565%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd146560%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx146524%_
                                                               _%body146562%_)
                                                              '()))))
                                             (if _%wrap?146525%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body146565%_)
                                                  (gx#stx-source
                                                   _%stx146524%_))
                                                 _%body146565%_)))
                                         gx#current-expander-context
                                         (let ((__obj147589
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj147589)
                                           __obj147589))
                                        (_%E146528146540%_)))))
                              (_%E146528146540%_))))
                      (_%E146528146540%_)))))
          (_%E146527146567%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx146574%_)
        (let ((_%wrap?146576%_ '#t))
          (gx#core-expand-lambda%__% _%stx146574%_ _%wrap?146576%_))))
    (define gx#core-expand-lambda%
      (lambda _g147598_
        (let ((_g147599_ (##length _g147598_)))
          (cond ((##fx= _g147599_ 1)
                 (apply gx#core-expand-lambda%__0 _g147598_))
                ((##fx= _g147599_ 2)
                 (apply gx#core-expand-lambda%__% _g147598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g147598_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx146488%_)
        (let* ((_%e146489146496%_ _%stx146488%_)
               (_%E146491146500%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146489146496%_)))
               (_%E146490146519%_
                (lambda ()
                  (if (gx#stx-pair? _%e146489146496%_)
                      (let ((_%e146492146504%_
                             (gx#syntax-e _%e146489146496%_)))
                        (let ((_%hd146493146507%_ (##car _%e146492146504%_))
                              (_%tl146494146509%_ (##cdr _%e146492146504%_)))
                          (let ((_%clauses146512%_ _%tl146494146509%_))
                            (if (gx#stx-list? _%clauses146512%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause146514%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause146514%_)
                                       (let ((_%$e146516%_
                                              (gx#stx-source
                                               _%clause146514%_)))
                                         (if _%$e146516%_
                                             _%$e146516%_
                                             (gx#stx-source _%stx146488%_))))
                                      '#f))
                                   _%clauses146512%_))
                                 (gx#stx-source _%stx146488%_))
                                (_%E146491146500%_)))))
                      (_%E146491146500%_)))))
          (_%E146490146519%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx146442%_)
        (let* ((_%e146443146453%_ _%stx146442%_)
               (_%E146445146457%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146443146453%_)))
               (_%E146444146484%_
                (lambda ()
                  (if (gx#stx-pair? _%e146443146453%_)
                      (let ((_%e146446146461%_
                             (gx#syntax-e _%e146443146453%_)))
                        (let ((_%hd146447146464%_ (##car _%e146446146461%_))
                              (_%tl146448146466%_ (##cdr _%e146446146461%_)))
                          (if (gx#stx-pair? _%tl146448146466%_)
                              (let ((_%e146449146469%_
                                     (gx#syntax-e _%tl146448146466%_)))
                                (let ((_%hd146450146472%_
                                       (##car _%e146449146469%_))
                                      (_%tl146451146474%_
                                       (##cdr _%e146449146469%_)))
                                  (let* ((_%hd146477%_ _%hd146450146472%_)
                                         (_%body146479%_ _%tl146451146474%_))
                                    (if (gx#core-expand-let-bind? _%hd146477%_)
                                        (let ((_%expressions146481%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd146477%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd146477%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd146477%_
                                                           _%expressions146481%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx146442%_
                         _%body146479%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx146442%_)))
                                           gx#current-expander-context
                                           (let ((__obj147590
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj147590)
                                             __obj147590)))
                                        (_%E146445146457%_)))))
                              (_%E146445146457%_))))
                      (_%E146445146457%_)))))
          (_%E146444146484%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx146387%_ _%form146388%_)
        (let* ((_%e146389146399%_ _%stx146387%_)
               (_%E146391146403%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146389146399%_)))
               (_%E146390146428%_
                (lambda ()
                  (if (gx#stx-pair? _%e146389146399%_)
                      (let ((_%e146392146407%_
                             (gx#syntax-e _%e146389146399%_)))
                        (let ((_%hd146393146410%_ (##car _%e146392146407%_))
                              (_%tl146394146412%_ (##cdr _%e146392146407%_)))
                          (if (gx#stx-pair? _%tl146394146412%_)
                              (let ((_%e146395146415%_
                                     (gx#syntax-e _%tl146394146412%_)))
                                (let ((_%hd146396146418%_
                                       (##car _%e146395146415%_))
                                      (_%tl146397146420%_
                                       (##cdr _%e146395146415%_)))
                                  (let* ((_%hd146423%_ _%hd146396146418%_)
                                         (_%body146425%_ _%tl146397146420%_))
                                    (if (gx#core-expand-let-bind? _%hd146423%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd146423%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form146388%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd146423%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd146423%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx146387%_
                                                               _%body146425%_)
                                                              '())))
                                            (gx#stx-source _%stx146387%_)))
                                         gx#current-expander-context
                                         (let ((__obj147591
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj147591)
                                           __obj147591))
                                        (_%E146391146403%_)))))
                              (_%E146391146403%_))))
                      (_%E146391146403%_)))))
          (_%E146390146428%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx146435%_)
        (let ((_%form146437%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx146435%_ _%form146437%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g147600_
        (let ((_g147601_ (##length _g147600_)))
          (cond ((##fx= _g147601_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g147600_))
                ((##fx= _g147601_ 2)
                 (apply gx#core-expand-letrec-values%__% _g147600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g147600_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx146384%_)
        (gx#core-expand-letrec-values%__% _%stx146384%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx146341%_)
        (if (gx#stx-list? _%stx146341%_)
            (gx#stx-andmap
             (lambda (_%bind146343%_)
               (let* ((_%e146344146354%_ _%bind146343%_)
                      (_%E146346146358%_ (lambda () '#f))
                      (_%E146345146380%_
                       (lambda ()
                         (if (gx#stx-pair? _%e146344146354%_)
                             (let ((_%e146347146362%_
                                    (gx#syntax-e _%e146344146354%_)))
                               (let ((_%hd146348146365%_
                                      (##car _%e146347146362%_))
                                     (_%tl146349146367%_
                                      (##cdr _%e146347146362%_)))
                                 (let ((_%hd146370%_ _%hd146348146365%_))
                                   (if (gx#stx-pair? _%tl146349146367%_)
                                       (let ((_%e146350146372%_
                                              (gx#syntax-e
                                               _%tl146349146367%_)))
                                         (let ((_%hd146351146375%_
                                                (##car _%e146350146372%_))
                                               (_%tl146352146377%_
                                                (##cdr _%e146350146372%_)))
                                           (if (gx#stx-null?
                                                _%tl146352146377%_)
                                               (gx#core-bind-values?
                                                _%hd146370%_)
                                               (_%E146346146358%_))))
                                       (_%E146346146358%_)))))
                             (_%E146346146358%_)))))
                 (_%E146345146380%_)))
             _%stx146341%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind146300%_)
        (let* ((_%e146301146311%_ _%bind146300%_)
               (_%E146303146315%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146301146311%_)))
               (_%E146302146337%_
                (lambda ()
                  (if (gx#stx-pair? _%e146301146311%_)
                      (let ((_%e146304146319%_
                             (gx#syntax-e _%e146301146311%_)))
                        (let ((_%hd146305146322%_ (##car _%e146304146319%_))
                              (_%tl146306146324%_ (##cdr _%e146304146319%_)))
                          (if (gx#stx-pair? _%tl146306146324%_)
                              (let ((_%e146307146327%_
                                     (gx#syntax-e _%tl146306146324%_)))
                                (let ((_%hd146308146330%_
                                       (##car _%e146307146327%_))
                                      (_%tl146309146332%_
                                       (##cdr _%e146307146327%_)))
                                  (let ((_%expr146335%_ _%hd146308146330%_))
                                    (if (gx#stx-null? _%tl146309146332%_)
                                        (gx#core-expand-expression
                                         _%expr146335%_)
                                        (_%E146303146315%_)))))
                              (_%E146303146315%_))))
                      (_%E146303146315%_)))))
          (_%E146302146337%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind146259%_)
        (let* ((_%e146260146270%_ _%bind146259%_)
               (_%E146262146274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146260146270%_)))
               (_%E146261146296%_
                (lambda ()
                  (if (gx#stx-pair? _%e146260146270%_)
                      (let ((_%e146263146278%_
                             (gx#syntax-e _%e146260146270%_)))
                        (let ((_%hd146264146281%_ (##car _%e146263146278%_))
                              (_%tl146265146283%_ (##cdr _%e146263146278%_)))
                          (let ((_%hd146286%_ _%hd146264146281%_))
                            (if (gx#stx-pair? _%tl146265146283%_)
                                (let ((_%e146266146288%_
                                       (gx#syntax-e _%tl146265146283%_)))
                                  (let ((_%hd146267146291%_
                                         (##car _%e146266146288%_))
                                        (_%tl146268146293%_
                                         (##cdr _%e146266146288%_)))
                                    (if (gx#stx-null? _%tl146268146293%_)
                                        (gx#core-bind-values!__0 _%hd146286%_)
                                        (_%E146262146274%_))))
                                (_%E146262146274%_)))))
                      (_%E146262146274%_)))))
          (_%E146261146296%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind146217%_ _%expr146218%_)
        (let* ((_%e146219146229%_ _%bind146217%_)
               (_%E146221146233%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146219146229%_)))
               (_%E146220146255%_
                (lambda ()
                  (if (gx#stx-pair? _%e146219146229%_)
                      (let ((_%e146222146237%_
                             (gx#syntax-e _%e146219146229%_)))
                        (let ((_%hd146223146240%_ (##car _%e146222146237%_))
                              (_%tl146224146242%_ (##cdr _%e146222146237%_)))
                          (let ((_%hd146245%_ _%hd146223146240%_))
                            (if (gx#stx-pair? _%tl146224146242%_)
                                (let ((_%e146225146247%_
                                       (gx#syntax-e _%tl146224146242%_)))
                                  (let ((_%hd146226146250%_
                                         (##car _%e146225146247%_))
                                        (_%tl146227146252%_
                                         (##cdr _%e146225146247%_)))
                                    (if (gx#stx-null? _%tl146227146252%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd146245%_)
                                              (cons _%expr146218%_ '()))
                                        (_%E146221146233%_))))
                                (_%E146221146233%_)))))
                      (_%E146221146233%_)))))
          (_%E146220146255%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx146171%_)
        (let* ((_%e146172146182%_ _%stx146171%_)
               (_%E146174146186%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146172146182%_)))
               (_%E146173146213%_
                (lambda ()
                  (if (gx#stx-pair? _%e146172146182%_)
                      (let ((_%e146175146190%_
                             (gx#syntax-e _%e146172146182%_)))
                        (let ((_%hd146176146193%_ (##car _%e146175146190%_))
                              (_%tl146177146195%_ (##cdr _%e146175146190%_)))
                          (if (gx#stx-pair? _%tl146177146195%_)
                              (let ((_%e146178146198%_
                                     (gx#syntax-e _%tl146177146195%_)))
                                (let ((_%hd146179146201%_
                                       (##car _%e146178146198%_))
                                      (_%tl146180146203%_
                                       (##cdr _%e146178146198%_)))
                                  (let* ((_%hd146206%_ _%hd146179146201%_)
                                         (_%body146208%_ _%tl146180146203%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd146206%_)
                                        (let ((_%expanders146210%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd146206%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd146206%_
                                              _%expanders146210%_)
                                             (gx#core-expand-local-block
                                              _%stx146171%_
                                              _%body146208%_))
                                           gx#current-expander-context
                                           (let ((__obj147592
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj147592)
                                             __obj147592)))
                                        (_%E146174146186%_)))))
                              (_%E146174146186%_))))
                      (_%E146174146186%_)))))
          (_%E146173146213%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx146120%_)
        (let* ((_%e146121146131%_ _%stx146120%_)
               (_%E146123146135%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146121146131%_)))
               (_%E146122146167%_
                (lambda ()
                  (if (gx#stx-pair? _%e146121146131%_)
                      (let ((_%e146124146139%_
                             (gx#syntax-e _%e146121146131%_)))
                        (let ((_%hd146125146142%_ (##car _%e146124146139%_))
                              (_%tl146126146144%_ (##cdr _%e146124146139%_)))
                          (if (gx#stx-pair? _%tl146126146144%_)
                              (let ((_%e146127146147%_
                                     (gx#syntax-e _%tl146126146144%_)))
                                (let ((_%hd146128146150%_
                                       (##car _%e146127146147%_))
                                      (_%tl146129146152%_
                                       (##cdr _%e146127146147%_)))
                                  (let* ((_%hd146155%_ _%hd146128146150%_)
                                         (_%body146157%_ _%tl146129146152%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd146155%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd146155%_
                                            (make-list
                                             (gx#stx-length _%hd146155%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g146159146162%_
                                                     _%g146160146164%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g146159146162%_
                                               _%g146160146164%_
                                               '#t))
                                            _%hd146155%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd146155%_))
                                           (gx#core-expand-local-block
                                            _%stx146120%_
                                            _%body146157%_))
                                         gx#current-expander-context
                                         (let ((__obj147593
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj147593)
                                           __obj147593))
                                        (_%E146123146135%_)))))
                              (_%E146123146135%_))))
                      (_%E146123146135%_)))))
          (_%E146122146167%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx146077%_)
        (if (gx#stx-list? _%stx146077%_)
            (gx#stx-andmap
             (lambda (_%bind146079%_)
               (let* ((_%e146080146090%_ _%bind146079%_)
                      (_%E146082146094%_ (lambda () '#f))
                      (_%E146081146116%_
                       (lambda ()
                         (if (gx#stx-pair? _%e146080146090%_)
                             (let ((_%e146083146098%_
                                    (gx#syntax-e _%e146080146090%_)))
                               (let ((_%hd146084146101%_
                                      (##car _%e146083146098%_))
                                     (_%tl146085146103%_
                                      (##cdr _%e146083146098%_)))
                                 (let ((_%hd146106%_ _%hd146084146101%_))
                                   (if (gx#stx-pair? _%tl146085146103%_)
                                       (let ((_%e146086146108%_
                                              (gx#syntax-e
                                               _%tl146085146103%_)))
                                         (let ((_%hd146087146111%_
                                                (##car _%e146086146108%_))
                                               (_%tl146088146113%_
                                                (##cdr _%e146086146108%_)))
                                           (if (gx#stx-null?
                                                _%tl146088146113%_)
                                               (gx#identifier? _%hd146106%_)
                                               (_%E146082146094%_))))
                                       (_%E146082146094%_)))))
                             (_%E146082146094%_)))))
                 (_%E146081146116%_)))
             _%stx146077%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind146033%_)
        (let* ((_%e146034146044%_ _%bind146033%_)
               (_%E146036146048%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146034146044%_)))
               (_%E146035146073%_
                (lambda ()
                  (if (gx#stx-pair? _%e146034146044%_)
                      (let ((_%e146037146052%_
                             (gx#syntax-e _%e146034146044%_)))
                        (let ((_%hd146038146055%_ (##car _%e146037146052%_))
                              (_%tl146039146057%_ (##cdr _%e146037146052%_)))
                          (if (gx#stx-pair? _%tl146039146057%_)
                              (let ((_%e146040146060%_
                                     (gx#syntax-e _%tl146039146057%_)))
                                (let ((_%hd146041146063%_
                                       (##car _%e146040146060%_))
                                      (_%tl146042146065%_
                                       (##cdr _%e146040146060%_)))
                                  (let ((_%expr146068%_ _%hd146041146063%_))
                                    (if (gx#stx-null? _%tl146042146065%_)
                                        (let ((_g147602_
                                               (gx#core-expand-expression+1
                                                _%expr146068%_)))
                                          (begin
                                            (let ((_g147603_
                                                   (if (##values? _g147602_)
                                                       (##values-length
                                                        _g147602_)
                                                       1)))
                                              (if (not (##fx= _g147603_ 2))
                                                  (error "Context expects 2 values"
                                                         _g147603_)))
                                            (let ((_%_146070%_
                                                   (##values-ref _g147602_ 0))
                                                  (_%e146071%_
                                                   (##values-ref _g147602_ 1)))
                                              _%e146071%_)))
                                        (_%E146036146048%_)))))
                              (_%E146036146048%_))))
                      (_%E146036146048%_)))))
          (_%E146035146073%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind145978%_ _%e145979%_ _%rebind?145980%_)
        (let* ((_%e145981145991%_ _%bind145978%_)
               (_%E145983145995%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145981145991%_)))
               (_%E145982146017%_
                (lambda ()
                  (if (gx#stx-pair? _%e145981145991%_)
                      (let ((_%e145984145999%_
                             (gx#syntax-e _%e145981145991%_)))
                        (let ((_%hd145985146002%_ (##car _%e145984145999%_))
                              (_%tl145986146004%_ (##cdr _%e145984145999%_)))
                          (let ((_%id146007%_ _%hd145985146002%_))
                            (if (gx#stx-pair? _%tl145986146004%_)
                                (let ((_%e145987146009%_
                                       (gx#syntax-e _%tl145986146004%_)))
                                  (let ((_%hd145988146012%_
                                         (##car _%e145987146009%_))
                                        (_%tl145989146014%_
                                         (##cdr _%e145987146009%_)))
                                    (if (gx#stx-null? _%tl145989146014%_)
                                        (gx#core-bind-syntax!__1
                                         _%id146007%_
                                         _%e145979%_
                                         _%rebind?145980%_)
                                        (_%E145983145995%_))))
                                (_%E145983145995%_)))))
                      (_%E145983145995%_)))))
          (_%E145982146017%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind146024%_ _%e146025%_)
        (let ((_%rebind?146027%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind146024%_
           _%e146025%_
           _%rebind?146027%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g147604_
        (let ((_g147605_ (##length _g147604_)))
          (cond ((##fx= _g147605_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g147604_))
                ((##fx= _g147605_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g147604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g147604_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx145936%_)
        (let* ((_%e145937145947%_ _%stx145936%_)
               (_%E145939145951%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145937145947%_)))
               (_%E145938145973%_
                (lambda ()
                  (if (gx#stx-pair? _%e145937145947%_)
                      (let ((_%e145940145955%_
                             (gx#syntax-e _%e145937145947%_)))
                        (let ((_%hd145941145958%_ (##car _%e145940145955%_))
                              (_%tl145942145960%_ (##cdr _%e145940145955%_)))
                          (if (gx#stx-pair? _%tl145942145960%_)
                              (let ((_%e145943145963%_
                                     (gx#syntax-e _%tl145942145960%_)))
                                (let ((_%hd145944145966%_
                                       (##car _%e145943145963%_))
                                      (_%tl145945145968%_
                                       (##cdr _%e145943145963%_)))
                                  (let ((_%expr145971%_ _%hd145944145966%_))
                                    (if (gx#stx-null? _%tl145945145968%_)
                                        (gx#core-expand-expression
                                         _%expr145971%_)
                                        (_%E145939145951%_)))))
                              (_%E145939145951%_))))
                      (_%E145939145951%_)))))
          (_%E145938145973%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx145895%_)
        (let* ((_%e145896145906%_ _%stx145895%_)
               (_%E145898145910%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145896145906%_)))
               (_%E145897145932%_
                (lambda ()
                  (if (gx#stx-pair? _%e145896145906%_)
                      (let ((_%e145899145914%_
                             (gx#syntax-e _%e145896145906%_)))
                        (let ((_%hd145900145917%_ (##car _%e145899145914%_))
                              (_%tl145901145919%_ (##cdr _%e145899145914%_)))
                          (if (gx#stx-pair? _%tl145901145919%_)
                              (let ((_%e145902145922%_
                                     (gx#syntax-e _%tl145901145919%_)))
                                (let ((_%hd145903145925%_
                                       (##car _%e145902145922%_))
                                      (_%tl145904145927%_
                                       (##cdr _%e145902145922%_)))
                                  (let ((_%e145930%_ _%hd145903145925%_))
                                    (if (gx#stx-null? _%tl145904145927%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e145930%_)
                                                     '()))
                                         (gx#stx-source _%stx145895%_))
                                        (_%E145898145910%_)))))
                              (_%E145898145910%_))))
                      (_%E145898145910%_)))))
          (_%E145897145932%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx145854%_)
        (let* ((_%e145855145865%_ _%stx145854%_)
               (_%E145857145869%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145855145865%_)))
               (_%E145856145891%_
                (lambda ()
                  (if (gx#stx-pair? _%e145855145865%_)
                      (let ((_%e145858145873%_
                             (gx#syntax-e _%e145855145865%_)))
                        (let ((_%hd145859145876%_ (##car _%e145858145873%_))
                              (_%tl145860145878%_ (##cdr _%e145858145873%_)))
                          (if (gx#stx-pair? _%tl145860145878%_)
                              (let ((_%e145861145881%_
                                     (gx#syntax-e _%tl145860145878%_)))
                                (let ((_%hd145862145884%_
                                       (##car _%e145861145881%_))
                                      (_%tl145863145886%_
                                       (##cdr _%e145861145881%_)))
                                  (let ((_%e145889%_ _%hd145862145884%_))
                                    (if (gx#stx-null? _%tl145863145886%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e145889%_)
                                                     '()))
                                         (gx#stx-source _%stx145854%_))
                                        (_%E145857145869%_)))))
                              (_%E145857145869%_))))
                      (_%E145857145869%_)))))
          (_%E145856145891%_))))
    (define gx#core-expand-call%
      (lambda (_%stx145811%_)
        (let* ((_%e145812145822%_ _%stx145811%_)
               (_%E145814145826%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145812145822%_)))
               (_%E145813145850%_
                (lambda ()
                  (if (gx#stx-pair? _%e145812145822%_)
                      (let ((_%e145815145830%_
                             (gx#syntax-e _%e145812145822%_)))
                        (let ((_%hd145816145833%_ (##car _%e145815145830%_))
                              (_%tl145817145835%_ (##cdr _%e145815145830%_)))
                          (if (gx#stx-pair? _%tl145817145835%_)
                              (let ((_%e145818145838%_
                                     (gx#syntax-e _%tl145817145835%_)))
                                (let ((_%hd145819145841%_
                                       (##car _%e145818145838%_))
                                      (_%tl145820145843%_
                                       (##cdr _%e145818145838%_)))
                                  (let* ((_%rator145846%_ _%hd145819145841%_)
                                         (_%args145848%_ _%tl145820145843%_))
                                    (if (gx#stx-list? _%args145848%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator145846%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args145848%_))
                                         (gx#stx-source _%stx145811%_))
                                        (_%E145814145826%_)))))
                              (_%E145814145826%_))))
                      (_%E145814145826%_)))))
          (_%E145813145850%_))))
    (define gx#core-expand-if%
      (lambda (_%stx145744%_)
        (let* ((_%e145745145761%_ _%stx145744%_)
               (_%E145747145765%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145745145761%_)))
               (_%E145746145807%_
                (lambda ()
                  (if (gx#stx-pair? _%e145745145761%_)
                      (let ((_%e145748145769%_
                             (gx#syntax-e _%e145745145761%_)))
                        (let ((_%hd145749145772%_ (##car _%e145748145769%_))
                              (_%tl145750145774%_ (##cdr _%e145748145769%_)))
                          (if (gx#stx-pair? _%tl145750145774%_)
                              (let ((_%e145751145777%_
                                     (gx#syntax-e _%tl145750145774%_)))
                                (let ((_%hd145752145780%_
                                       (##car _%e145751145777%_))
                                      (_%tl145753145782%_
                                       (##cdr _%e145751145777%_)))
                                  (let ((_%test145785%_ _%hd145752145780%_))
                                    (if (gx#stx-pair? _%tl145753145782%_)
                                        (let ((_%e145754145787%_
                                               (gx#syntax-e
                                                _%tl145753145782%_)))
                                          (let ((_%hd145755145790%_
                                                 (##car _%e145754145787%_))
                                                (_%tl145756145792%_
                                                 (##cdr _%e145754145787%_)))
                                            (let ((_%K145795%_
                                                   _%hd145755145790%_))
                                              (if (gx#stx-pair?
                                                   _%tl145756145792%_)
                                                  (let ((_%e145757145797%_
                                                         (gx#syntax-e
                                                          _%tl145756145792%_)))
                                                    (let ((_%hd145758145800%_
                                                           (##car _%e145757145797%_))
                                                          (_%tl145759145802%_
                                                           (##cdr _%e145757145797%_)))
                                                      (let ((_%E145805%_
                                                             _%hd145758145800%_))
                                                        (if (gx#stx-null?
                                                             _%tl145759145802%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test145785%_)
                                 (cons (gx#core-expand-expression _%K145795%_)
                                       (cons (gx#core-expand-expression
                                              _%E145805%_)
                                             '()))))
                     (gx#stx-source _%stx145744%_))
                    (_%E145747145765%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E145747145765%_)))))
                                        (_%E145747145765%_)))))
                              (_%E145747145765%_))))
                      (_%E145747145765%_)))))
          (_%E145746145807%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx145703%_)
        (let* ((_%e145704145714%_ _%stx145703%_)
               (_%E145706145718%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145704145714%_)))
               (_%E145705145740%_
                (lambda ()
                  (if (gx#stx-pair? _%e145704145714%_)
                      (let ((_%e145707145722%_
                             (gx#syntax-e _%e145704145714%_)))
                        (let ((_%hd145708145725%_ (##car _%e145707145722%_))
                              (_%tl145709145727%_ (##cdr _%e145707145722%_)))
                          (if (gx#stx-pair? _%tl145709145727%_)
                              (let ((_%e145710145730%_
                                     (gx#syntax-e _%tl145709145727%_)))
                                (let ((_%hd145711145733%_
                                       (##car _%e145710145730%_))
                                      (_%tl145712145735%_
                                       (##cdr _%e145710145730%_)))
                                  (let ((_%id145738%_ _%hd145711145733%_))
                                    (if (gx#stx-null? _%tl145712145735%_)
                                        (if (gx#identifier? _%id145738%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id145738%_
                                                          _%stx145703%_)
                                                         '()))
                                             (gx#stx-source _%stx145703%_))
                                            (_%E145706145718%_))
                                        (_%E145706145718%_)))))
                              (_%E145706145718%_))))
                      (_%E145706145718%_)))))
          (_%E145705145740%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx145649%_)
        (let* ((_%e145650145663%_ _%stx145649%_)
               (_%E145652145667%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145650145663%_)))
               (_%E145651145699%_
                (lambda ()
                  (if (gx#stx-pair? _%e145650145663%_)
                      (let ((_%e145653145671%_
                             (gx#syntax-e _%e145650145663%_)))
                        (let ((_%hd145654145674%_ (##car _%e145653145671%_))
                              (_%tl145655145676%_ (##cdr _%e145653145671%_)))
                          (if (gx#stx-pair? _%tl145655145676%_)
                              (let ((_%e145656145679%_
                                     (gx#syntax-e _%tl145655145676%_)))
                                (let ((_%hd145657145682%_
                                       (##car _%e145656145679%_))
                                      (_%tl145658145684%_
                                       (##cdr _%e145656145679%_)))
                                  (let ((_%id145687%_ _%hd145657145682%_))
                                    (if (gx#stx-pair? _%tl145658145684%_)
                                        (let ((_%e145659145689%_
                                               (gx#syntax-e
                                                _%tl145658145684%_)))
                                          (let ((_%hd145660145692%_
                                                 (##car _%e145659145689%_))
                                                (_%tl145661145694%_
                                                 (##cdr _%e145659145689%_)))
                                            (let ((_%expr145697%_
                                                   _%hd145660145692%_))
                                              (if (gx#stx-null?
                                                   _%tl145661145694%_)
                                                  (if (gx#identifier?
                                                       _%id145687%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id145687%_
                            _%stx145649%_)
                           (cons (gx#core-expand-expression _%expr145697%_)
                                 '())))
               (gx#stx-source _%stx145649%_))
              (_%E145652145667%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E145652145667%_)))))
                                        (_%E145652145667%_)))))
                              (_%E145652145667%_))))
                      (_%E145652145667%_)))))
          (_%E145651145699%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx145494%_)
        (letrec ((_%generate145496%_
                  (lambda (_%body145526%_)
                    (let _%lp145528%_ ((_%rest145530%_ _%body145526%_)
                                       (_%ns145531%_
                                        (gx#core-context-namespace__0))
                                       (_%r145532%_ '()))
                      (let* ((_%e145533145548%_ _%rest145530%_)
                             (_%E145546145552%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e145533145548%_)))
                             (_%E145542145556%_
                              (lambda ()
                                (if (gx#stx-null? _%e145533145548%_)
                                    (reverse _%r145532%_)
                                    (_%E145546145552%_))))
                             (_%E145535145613%_
                              (lambda ()
                                (if (gx#stx-pair? _%e145533145548%_)
                                    (let ((_%e145543145560%_
                                           (gx#syntax-e _%e145533145548%_)))
                                      (let ((_%hd145544145563%_
                                             (##car _%e145543145560%_))
                                            (_%tl145545145565%_
                                             (##cdr _%e145543145560%_)))
                                        (let* ((_%hd145568%_
                                                _%hd145544145563%_)
                                               (_%rest145570%_
                                                _%tl145545145565%_))
                                          (if (gx#identifier? _%hd145568%_)
                                              (_%lp145528%_
                                               _%rest145570%_
                                               _%ns145531%_
                                               (cons (cons _%hd145568%_
                                                           (cons (if _%ns145531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd145568%_
                              _%ns145531%_
                              '"#"
                              _%hd145568%_)
                             _%hd145568%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r145532%_))
                                              (let* ((_%e145571145581%_
                                                      _%hd145568%_)
                                                     (_%E145573145585%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e145571145581%_)))
                                                     (_%E145572145609%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e145571145581%_)
                                                            (let ((_%e145574145589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e145571145581%_)))
                      (let ((_%hd145575145592%_ (##car _%e145574145589%_))
                            (_%tl145576145594%_ (##cdr _%e145574145589%_)))
                        (let ((_%id145597%_ _%hd145575145592%_))
                          (if (gx#stx-pair? _%tl145576145594%_)
                              (let ((_%e145577145599%_
                                     (gx#syntax-e _%tl145576145594%_)))
                                (let ((_%hd145578145602%_
                                       (##car _%e145577145599%_))
                                      (_%tl145579145604%_
                                       (##cdr _%e145577145599%_)))
                                  (let ((_%eid145607%_ _%hd145578145602%_))
                                    (if (gx#stx-null? _%tl145579145604%_)
                                        (if (and (gx#identifier? _%id145597%_)
                                                 (gx#identifier?
                                                  _%eid145607%_))
                                            (_%lp145528%_
                                             _%rest145570%_
                                             _%ns145531%_
                                             (cons (cons _%id145597%_
                                                         (cons _%eid145607%_
                                                               '()))
                                                   _%r145532%_))
                                            (_%E145573145585%_))
                                        (_%E145573145585%_)))))
                              (_%E145573145585%_)))))
                    (_%E145573145585%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E145572145609%_))))))
                                    (_%E145542145556%_))))
                             (_%E145534145645%_
                              (lambda ()
                                (if (gx#stx-pair? _%e145533145548%_)
                                    (let ((_%e145536145617%_
                                           (gx#syntax-e _%e145533145548%_)))
                                      (let ((_%hd145537145620%_
                                             (##car _%e145536145617%_))
                                            (_%tl145538145622%_
                                             (##cdr _%e145536145617%_)))
                                        (if (eq? (gx#stx-e _%hd145537145620%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl145538145622%_)
                                                (let ((_%e145539145625%_
                                                       (gx#syntax-e
                                                        _%tl145538145622%_)))
                                                  (let ((_%hd145540145628%_
                                                         (##car _%e145539145625%_))
                                                        (_%tl145541145630%_
                                                         (##cdr _%e145539145625%_)))
                                                    (let* ((_%ns145633%_
                                                            _%hd145540145628%_)
                                                           (_%rest145635%_
                                                            _%tl145541145630%_)
                                                           (_%ns145643%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns145633%_)
                        (symbol->string (gx#stx-e _%ns145633%_))
                        (if (or (gx#stx-string? _%ns145633%_)
                                (gx#stx-false? _%ns145633%_))
                            (gx#stx-e _%ns145633%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx145494%_
                             _%ns145633%_)))))
              (_%lp145528%_ _%rest145635%_ _%ns145643%_ _%r145532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E145535145613%_))
                                            (_%E145535145613%_))))
                                    (_%E145535145613%_)))))
                        (_%E145534145645%_))))))
          (let* ((_%e145497145504%_ _%stx145494%_)
                 (_%E145499145508%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e145497145504%_)))
                 (_%E145498145522%_
                  (lambda ()
                    (if (gx#stx-pair? _%e145497145504%_)
                        (let ((_%e145500145512%_
                               (gx#syntax-e _%e145497145504%_)))
                          (let ((_%hd145501145515%_ (##car _%e145500145512%_))
                                (_%tl145502145517%_ (##cdr _%e145500145512%_)))
                            (let ((_%body145520%_ _%tl145502145517%_))
                              (if (gx#stx-list? _%body145520%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate145496%_ _%body145520%_))
                                  (_%E145499145508%_)))))
                        (_%E145499145508%_)))))
            (_%E145498145522%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx145440%_)
        (let* ((_%e145441145454%_ _%stx145440%_)
               (_%E145443145458%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145441145454%_)))
               (_%E145442145490%_
                (lambda ()
                  (if (gx#stx-pair? _%e145441145454%_)
                      (let ((_%e145444145462%_
                             (gx#syntax-e _%e145441145454%_)))
                        (let ((_%hd145445145465%_ (##car _%e145444145462%_))
                              (_%tl145446145467%_ (##cdr _%e145444145462%_)))
                          (if (gx#stx-pair? _%tl145446145467%_)
                              (let ((_%e145447145470%_
                                     (gx#syntax-e _%tl145446145467%_)))
                                (let ((_%hd145448145473%_
                                       (##car _%e145447145470%_))
                                      (_%tl145449145475%_
                                       (##cdr _%e145447145470%_)))
                                  (let ((_%hd145478%_ _%hd145448145473%_))
                                    (if (gx#stx-pair? _%tl145449145475%_)
                                        (let ((_%e145450145480%_
                                               (gx#syntax-e
                                                _%tl145449145475%_)))
                                          (let ((_%hd145451145483%_
                                                 (##car _%e145450145480%_))
                                                (_%tl145452145485%_
                                                 (##cdr _%e145450145480%_)))
                                            (let ((_%expr145488%_
                                                   _%hd145451145483%_))
                                              (if (gx#stx-null?
                                                   _%tl145452145485%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd145478%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd145478%_)
                          (cons _%expr145488%_ '())))
              (_%E145443145458%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E145443145458%_)))))
                                        (_%E145443145458%_)))))
                              (_%E145443145458%_))))
                      (_%E145443145458%_)))))
          (_%E145442145490%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx145386%_)
        (let* ((_%e145387145400%_ _%stx145386%_)
               (_%E145389145404%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145387145400%_)))
               (_%E145388145436%_
                (lambda ()
                  (if (gx#stx-pair? _%e145387145400%_)
                      (let ((_%e145390145408%_
                             (gx#syntax-e _%e145387145400%_)))
                        (let ((_%hd145391145411%_ (##car _%e145390145408%_))
                              (_%tl145392145413%_ (##cdr _%e145390145408%_)))
                          (if (gx#stx-pair? _%tl145392145413%_)
                              (let ((_%e145393145416%_
                                     (gx#syntax-e _%tl145392145413%_)))
                                (let ((_%hd145394145419%_
                                       (##car _%e145393145416%_))
                                      (_%tl145395145421%_
                                       (##cdr _%e145393145416%_)))
                                  (let ((_%hd145424%_ _%hd145394145419%_))
                                    (if (gx#stx-pair? _%tl145395145421%_)
                                        (let ((_%e145396145426%_
                                               (gx#syntax-e
                                                _%tl145395145421%_)))
                                          (let ((_%hd145397145429%_
                                                 (##car _%e145396145426%_))
                                                (_%tl145398145431%_
                                                 (##cdr _%e145396145426%_)))
                                            (let ((_%expr145434%_
                                                   _%hd145397145429%_))
                                              (if (gx#stx-null?
                                                   _%tl145398145431%_)
                                                  (if (gx#identifier?
                                                       _%hd145424%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd145424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr145434%_ '())))
              (_%E145389145404%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E145389145404%_)))))
                                        (_%E145389145404%_)))))
                              (_%E145389145404%_))))
                      (_%E145389145404%_)))))
          (_%E145388145436%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx145332%_)
        (let* ((_%e145333145346%_ _%stx145332%_)
               (_%E145335145350%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145333145346%_)))
               (_%E145334145382%_
                (lambda ()
                  (if (gx#stx-pair? _%e145333145346%_)
                      (let ((_%e145336145354%_
                             (gx#syntax-e _%e145333145346%_)))
                        (let ((_%hd145337145357%_ (##car _%e145336145354%_))
                              (_%tl145338145359%_ (##cdr _%e145336145354%_)))
                          (if (gx#stx-pair? _%tl145338145359%_)
                              (let ((_%e145339145362%_
                                     (gx#syntax-e _%tl145338145359%_)))
                                (let ((_%hd145340145365%_
                                       (##car _%e145339145362%_))
                                      (_%tl145341145367%_
                                       (##cdr _%e145339145362%_)))
                                  (let ((_%id145370%_ _%hd145340145365%_))
                                    (if (gx#stx-pair? _%tl145341145367%_)
                                        (let ((_%e145342145372%_
                                               (gx#syntax-e
                                                _%tl145341145367%_)))
                                          (let ((_%hd145343145375%_
                                                 (##car _%e145342145372%_))
                                                (_%tl145344145377%_
                                                 (##cdr _%e145342145372%_)))
                                            (let ((_%alias-id145380%_
                                                   _%hd145343145375%_))
                                              (if (gx#stx-null?
                                                   _%tl145344145377%_)
                                                  (if (and (gx#identifier?
                                                            _%id145370%_)
                                                           (gx#identifier?
                                                            _%alias-id145380%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id145370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id145380%_ '())))
              (_%E145335145350%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E145335145350%_)))))
                                        (_%E145335145350%_)))))
                              (_%E145335145350%_))))
                      (_%E145335145350%_)))))
          (_%E145334145382%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx145289%_)
        (let* ((_%e145290145300%_ _%stx145289%_)
               (_%E145292145304%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145290145300%_)))
               (_%E145291145328%_
                (lambda ()
                  (if (gx#stx-pair? _%e145290145300%_)
                      (let ((_%e145293145308%_
                             (gx#syntax-e _%e145290145300%_)))
                        (let ((_%hd145294145311%_ (##car _%e145293145308%_))
                              (_%tl145295145313%_ (##cdr _%e145293145308%_)))
                          (if (gx#stx-pair? _%tl145295145313%_)
                              (let ((_%e145296145316%_
                                     (gx#syntax-e _%tl145295145313%_)))
                                (let ((_%hd145297145319%_
                                       (##car _%e145296145316%_))
                                      (_%tl145298145321%_
                                       (##cdr _%e145296145316%_)))
                                  (let* ((_%hd145324%_ _%hd145297145319%_)
                                         (_%body145326%_ _%tl145298145321%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd145324%_)
                                             (gx#stx-list? _%body145326%_)
                                             (not (gx#stx-null?
                                                   _%body145326%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd145324%_)
                                         _%body145326%_)
                                        (_%E145292145304%_)))))
                              (_%E145292145304%_))))
                      (_%E145292145304%_)))))
          (_%E145291145328%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx145225%_)
        (letrec ((_%generate145227%_
                  (lambda (_%clause145257%_)
                    (let* ((_%e145258145265%_ _%clause145257%_)
                           (_%E145260145269%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx145225%_
                               _%clause145257%_)))
                           (_%E145259145285%_
                            (lambda ()
                              (if (gx#stx-pair? _%e145258145265%_)
                                  (let ((_%e145261145273%_
                                         (gx#syntax-e _%e145258145265%_)))
                                    (let ((_%hd145262145276%_
                                           (##car _%e145261145273%_))
                                          (_%tl145263145278%_
                                           (##cdr _%e145261145273%_)))
                                      (let* ((_%hd145281%_ _%hd145262145276%_)
                                             (_%body145283%_
                                              _%tl145263145278%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd145281%_)
                                                 (gx#stx-list? _%body145283%_)
                                                 (not (gx#stx-null?
                                                       _%body145283%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd145281%_)
                                                   _%body145283%_)
                                             (gx#stx-source _%clause145257%_))
                                            (_%E145260145269%_)))))
                                  (_%E145260145269%_)))))
                      (_%E145259145285%_)))))
          (let* ((_%e145228145235%_ _%stx145225%_)
                 (_%E145230145239%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e145228145235%_)))
                 (_%E145229145253%_
                  (lambda ()
                    (if (gx#stx-pair? _%e145228145235%_)
                        (let ((_%e145231145243%_
                               (gx#syntax-e _%e145228145235%_)))
                          (let ((_%hd145232145246%_ (##car _%e145231145243%_))
                                (_%tl145233145248%_ (##cdr _%e145231145243%_)))
                            (let ((_%clauses145251%_ _%tl145233145248%_))
                              (if (gx#stx-list? _%clauses145251%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate145227%_
                                    _%clauses145251%_))
                                  (_%E145230145239%_)))))
                        (_%E145230145239%_)))))
            (_%E145229145253%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx145126%_ _%form145127%_)
        (letrec ((_%generate145129%_
                  (lambda (_%bind145172%_)
                    (let* ((_%e145173145183%_ _%bind145172%_)
                           (_%E145175145187%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx145126%_
                               _%bind145172%_)))
                           (_%E145174145211%_
                            (lambda ()
                              (if (gx#stx-pair? _%e145173145183%_)
                                  (let ((_%e145176145191%_
                                         (gx#syntax-e _%e145173145183%_)))
                                    (let ((_%hd145177145194%_
                                           (##car _%e145176145191%_))
                                          (_%tl145178145196%_
                                           (##cdr _%e145176145191%_)))
                                      (let ((_%ids145199%_ _%hd145177145194%_))
                                        (if (gx#stx-pair? _%tl145178145196%_)
                                            (let ((_%e145179145201%_
                                                   (gx#syntax-e
                                                    _%tl145178145196%_)))
                                              (let ((_%hd145180145204%_
                                                     (##car _%e145179145201%_))
                                                    (_%tl145181145206%_
                                                     (##cdr _%e145179145201%_)))
                                                (let ((_%expr145209%_
                                                       _%hd145180145204%_))
                                                  (if (gx#stx-null?
                                                       _%tl145181145206%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids145199%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids145199%_)
                        (cons _%expr145209%_ '()))
                  (_%E145175145187%_))
              (_%E145175145187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E145175145187%_)))))
                                  (_%E145175145187%_)))))
                      (_%E145174145211%_)))))
          (let* ((_%e145130145140%_ _%stx145126%_)
                 (_%E145132145144%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e145130145140%_)))
                 (_%E145131145168%_
                  (lambda ()
                    (if (gx#stx-pair? _%e145130145140%_)
                        (let ((_%e145133145148%_
                               (gx#syntax-e _%e145130145140%_)))
                          (let ((_%hd145134145151%_ (##car _%e145133145148%_))
                                (_%tl145135145153%_ (##cdr _%e145133145148%_)))
                            (if (gx#stx-pair? _%tl145135145153%_)
                                (let ((_%e145136145156%_
                                       (gx#syntax-e _%tl145135145153%_)))
                                  (let ((_%hd145137145159%_
                                         (##car _%e145136145156%_))
                                        (_%tl145138145161%_
                                         (##cdr _%e145136145156%_)))
                                    (let* ((_%hd145164%_ _%hd145137145159%_)
                                           (_%body145166%_ _%tl145138145161%_))
                                      (if (and (gx#stx-list? _%hd145164%_)
                                               (gx#stx-list? _%body145166%_)
                                               (not (gx#stx-null?
                                                     _%body145166%_)))
                                          (gx#core-cons*
                                           _%form145127%_
                                           (gx#stx-map1
                                            _%generate145129%_
                                            _%hd145164%_)
                                           _%body145166%_)
                                          (_%E145132145144%_)))))
                                (_%E145132145144%_))))
                        (_%E145132145144%_)))))
            (_%E145131145168%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx145218%_)
        (let ((_%form145220%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx145218%_ _%form145220%_))))
    (define gx#macro-expand-let-values
      (lambda _g147606_
        (let ((_g147607_ (##length _g147606_)))
          (cond ((##fx= _g147607_ 1)
                 (apply gx#macro-expand-let-values__0 _g147606_))
                ((##fx= _g147607_ 2)
                 (apply gx#macro-expand-let-values__% _g147606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g147606_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx145123%_)
        (gx#macro-expand-let-values__% _%stx145123%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx145121%_)
        (gx#macro-expand-let-values__% _%stx145121%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx145012%_)
        (let* ((_%e145013145039%_ _%stx145012%_)
               (_%E145025145043%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e145013145039%_)))
               (_%E145015145085%_
                (lambda ()
                  (if (gx#stx-pair? _%e145013145039%_)
                      (let ((_%e145026145047%_
                             (gx#syntax-e _%e145013145039%_)))
                        (let ((_%hd145027145050%_ (##car _%e145026145047%_))
                              (_%tl145028145052%_ (##cdr _%e145026145047%_)))
                          (if (gx#stx-pair? _%tl145028145052%_)
                              (let ((_%e145029145055%_
                                     (gx#syntax-e _%tl145028145052%_)))
                                (let ((_%hd145030145058%_
                                       (##car _%e145029145055%_))
                                      (_%tl145031145060%_
                                       (##cdr _%e145029145055%_)))
                                  (let ((_%test145063%_ _%hd145030145058%_))
                                    (if (gx#stx-pair? _%tl145031145060%_)
                                        (let ((_%e145032145065%_
                                               (gx#syntax-e
                                                _%tl145031145060%_)))
                                          (let ((_%hd145033145068%_
                                                 (##car _%e145032145065%_))
                                                (_%tl145034145070%_
                                                 (##cdr _%e145032145065%_)))
                                            (let ((_%K145073%_
                                                   _%hd145033145068%_))
                                              (if (gx#stx-pair?
                                                   _%tl145034145070%_)
                                                  (let ((_%e145035145075%_
                                                         (gx#syntax-e
                                                          _%tl145034145070%_)))
                                                    (let ((_%hd145036145078%_
                                                           (##car _%e145035145075%_))
                                                          (_%tl145037145080%_
                                                           (##cdr _%e145035145075%_)))
                                                      (let ((_%E145083%_
                                                             _%hd145036145078%_))
                                                        (if (gx#stx-null?
                                                             _%tl145037145080%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test145063%_
                                                             _%K145073%_
                                                             _%E145083%_)
                                                            (_%E145025145043%_)))))
                                                  (_%E145025145043%_)))))
                                        (_%E145025145043%_)))))
                              (_%E145025145043%_))))
                      (_%E145025145043%_))))
               (_%E145014145117%_
                (lambda ()
                  (if (gx#stx-pair? _%e145013145039%_)
                      (let ((_%e145016145089%_
                             (gx#syntax-e _%e145013145039%_)))
                        (let ((_%hd145017145092%_ (##car _%e145016145089%_))
                              (_%tl145018145094%_ (##cdr _%e145016145089%_)))
                          (if (gx#stx-pair? _%tl145018145094%_)
                              (let ((_%e145019145097%_
                                     (gx#syntax-e _%tl145018145094%_)))
                                (let ((_%hd145020145100%_
                                       (##car _%e145019145097%_))
                                      (_%tl145021145102%_
                                       (##cdr _%e145019145097%_)))
                                  (let ((_%test145105%_ _%hd145020145100%_))
                                    (if (gx#stx-pair? _%tl145021145102%_)
                                        (let ((_%e145022145107%_
                                               (gx#syntax-e
                                                _%tl145021145102%_)))
                                          (let ((_%hd145023145110%_
                                                 (##car _%e145022145107%_))
                                                (_%tl145024145112%_
                                                 (##cdr _%e145022145107%_)))
                                            (let ((_%K145115%_
                                                   _%hd145023145110%_))
                                              (if (gx#stx-null?
                                                   _%tl145024145112%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test145105%_
                                                   _%K145115%_
                                                   '#!void)
                                                  (_%E145015145085%_)))))
                                        (_%E145015145085%_)))))
                              (_%E145015145085%_))))
                      (_%E145015145085%_)))))
          (_%E145014145117%_))))
    (define gx#free-identifier=?
      (lambda (_%xid144997%_ _%yid144998%_)
        (let ((_%xe145000%_ (gx#resolve-identifier__0 _%xid144997%_))
              (_%ye145001%_ (gx#resolve-identifier__0 _%yid144998%_)))
          (if (and _%xe145000%_ _%ye145001%_)
              (let ((_%$e145004%_ (eq? _%xe145000%_ _%ye145001%_)))
                (if _%$e145004%_
                    _%$e145004%_
                    (if (##structure-instance-of? _%xe145000%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye145001%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe145000%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye145001%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe145000%_ _%ye145001%_)
                  '#f
                  (gx#stx-eq? _%xid144997%_ _%yid144998%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid144978%_ _%yid144979%_)
        (letrec ((_%context144981%_
                  (lambda (_%e144995%_)
                    (if (##structure-direct-instance-of?
                         _%e144995%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e144995%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks144982%_
                  (lambda (_%e144990%_)
                    (if (symbol? _%e144990%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e144990%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e144990%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e144990%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap144983%_
                  (lambda (_%e144988%_)
                    (if (symbol? _%e144988%_)
                        _%e144988%_
                        (gx#syntax-local-unwrap _%e144988%_)))))
          (let ((_%x144985%_ (_%unwrap144983%_ _%xid144978%_))
                (_%y144986%_ (_%unwrap144983%_ _%yid144979%_)))
            (if (gx#stx-eq? _%x144985%_ _%y144986%_)
                (if (eq? (_%context144981%_ _%x144985%_)
                         (_%context144981%_ _%y144986%_))
                    (equal? (_%marks144982%_ _%x144985%_)
                            (_%marks144982%_ _%y144986%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx144976%_)
        (if (gx#identifier? _%stx144976%_)
            (gx#core-identifier=? _%stx144976%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx144974%_)
        (if (gx#identifier? _%stx144974%_)
            (gx#core-identifier=? _%stx144974%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx144917%_ _%where144918%_)
        (let _%lp144920%_ ((_%rest144922%_ (gx#syntax->list _%stx144917%_)))
          (let* ((_%rest144923144931%_ _%rest144922%_)
                 (_%else144925144939%_ (lambda () '#t))
                 (_%K144927144952%_
                  (lambda (_%rest144942%_ _%hd144943%_)
                    (if (gx#identifier? _%hd144943%_)
                        (if (__find (lambda (_%g144945144947%_)
                                      (gx#bound-identifier=?
                                       _%g144945144947%_
                                       _%hd144943%_))
                                    _%rest144942%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where144918%_
                             _%hd144943%_)
                            (_%lp144920%_ _%rest144942%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where144918%_
                         _%hd144943%_)))))
            (if (pair? _%rest144923144931%_)
                (let ((_%hd144928144955%_ (##car _%rest144923144931%_))
                      (_%tl144929144957%_ (##cdr _%rest144923144931%_)))
                  (let* ((_%hd144960%_ _%hd144928144955%_)
                         (_%rest144962%_ _%tl144929144957%_))
                    (_%K144927144952%_ _%rest144962%_ _%hd144960%_)))
                (_%else144925144939%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx144967%_)
        (let ((_%where144969%_ _%stx144967%_))
          (gx#check-duplicate-identifiers__% _%stx144967%_ _%where144969%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g147608_
        (let ((_g147609_ (##length _g147608_)))
          (cond ((##fx= _g147609_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g147608_))
                ((##fx= _g147609_ 2)
                 (apply gx#check-duplicate-identifiers__% _g147608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g147608_))))))
    (define gx#core-bind-values?
      (lambda (_%stx144909%_)
        (gx#stx-andmap
         (lambda (_%x144911%_)
           (let ((_%$e144913%_ (gx#identifier? _%x144911%_)))
             (if _%$e144913%_ _%$e144913%_ (gx#stx-false? _%x144911%_))))
         _%stx144909%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx144873%_ _%rebind?144874%_ _%phi144875%_ _%ctx144876%_)
        (gx#stx-for-each1
         (lambda (_%id144878%_)
           (if (gx#identifier? _%id144878%_)
               (gx#core-bind-runtime!__%
                _%id144878%_
                _%rebind?144874%_
                _%phi144875%_
                _%ctx144876%_)
               '#!void))
         _%stx144873%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx144883%_)
        (let* ((_%rebind?144885%_ '#f)
               (_%phi144887%_ (gx#current-expander-phi))
               (_%ctx144889%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx144883%_
           _%rebind?144885%_
           _%phi144887%_
           _%ctx144889%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx144891%_ _%rebind?144892%_)
        (let* ((_%phi144894%_ (gx#current-expander-phi))
               (_%ctx144896%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx144891%_
           _%rebind?144892%_
           _%phi144894%_
           _%ctx144896%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx144898%_ _%rebind?144899%_ _%phi144900%_)
        (let ((_%ctx144902%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx144898%_
           _%rebind?144899%_
           _%phi144900%_
           _%ctx144902%_))))
    (define gx#core-bind-values!
      (lambda _g147610_
        (let ((_g147611_ (##length _g147610_)))
          (cond ((##fx= _g147611_ 1) (apply gx#core-bind-values!__0 _g147610_))
                ((##fx= _g147611_ 2) (apply gx#core-bind-values!__1 _g147610_))
                ((##fx= _g147611_ 3) (apply gx#core-bind-values!__2 _g147610_))
                ((##fx= _g147611_ 4) (apply gx#core-bind-values!__% _g147610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g147610_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx144868%_)
        (gx#stx-map1
         (lambda (_%x144870%_)
           (if (gx#identifier? _%x144870%_)
               (gx#core-quote-syntax__0 _%x144870%_)
               '#f))
         _%stx144868%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx144861%_)
        (if (gx#identifier? _%stx144861%_)
            (let* ((_%bind144863%_ (gx#resolve-identifier__0 _%stx144861%_))
                   (_%$e144865%_ (not _%bind144863%_)))
              (if _%$e144865%_
                  _%$e144865%_
                  (##structure-instance-of?
                   _%bind144863%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id144850%_ _%form144851%_)
        (let ((_%bind144853%_ (gx#resolve-identifier__0 _%id144850%_)))
          (if (##structure-instance-of? _%bind144853%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id144850%_)
              (if (not _%bind144853%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id144850%_)))
                      (gx#core-quote-syntax__0 _%id144850%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form144851%_
                       _%id144850%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form144851%_
                   _%id144850%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id144805%_ _%rebind?144806%_ _%phi144807%_ _%ctx144808%_)
        (let* ((_%key144810%_ (gx#core-identifier-key _%id144805%_))
               (_%eid144812%_
                (gx#make-binding-id__%
                 _%key144810%_
                 '#f
                 _%phi144807%_
                 _%ctx144808%_))
               (_%bind144818%_
                (if (##structure-instance-of?
                     _%ctx144808%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid144812%_
                     _%key144810%_
                     _%phi144807%_
                     _%ctx144808%_)
                    (if (##structure-instance-of?
                         _%ctx144808%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid144812%_
                         _%key144810%_
                         _%phi144807%_)
                        (if (##structure-instance-of?
                             _%ctx144808%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid144812%_
                             _%key144810%_
                             _%phi144807%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid144812%_
                             _%key144810%_
                             _%phi144807%_))))))
          (gx#bind-identifier!__%
           _%id144805%_
           _%bind144818%_
           _%rebind?144806%_
           _%phi144807%_
           _%ctx144808%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id144824%_)
        (let* ((_%rebind?144826%_ '#f)
               (_%phi144828%_ (gx#current-expander-phi))
               (_%ctx144830%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id144824%_
           _%rebind?144826%_
           _%phi144828%_
           _%ctx144830%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id144832%_ _%rebind?144833%_)
        (let* ((_%phi144835%_ (gx#current-expander-phi))
               (_%ctx144837%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id144832%_
           _%rebind?144833%_
           _%phi144835%_
           _%ctx144837%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id144839%_ _%rebind?144840%_ _%phi144841%_)
        (let ((_%ctx144843%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id144839%_
           _%rebind?144840%_
           _%phi144841%_
           _%ctx144843%_))))
    (define gx#core-bind-runtime!
      (lambda _g147612_
        (let ((_g147613_ (##length _g147612_)))
          (cond ((##fx= _g147613_ 1)
                 (apply gx#core-bind-runtime!__0 _g147612_))
                ((##fx= _g147613_ 2)
                 (apply gx#core-bind-runtime!__1 _g147612_))
                ((##fx= _g147613_ 3)
                 (apply gx#core-bind-runtime!__2 _g147612_))
                ((##fx= _g147613_ 4)
                 (apply gx#core-bind-runtime!__% _g147612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g147612_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id144757%_
               _%eid144758%_
               _%rebind?144759%_
               _%phi144760%_
               _%ctx144761%_)
        (let* ((_%key144763%_ (gx#core-identifier-key _%id144757%_))
               (_%bind144768%_
                (if (##structure-instance-of?
                     _%ctx144761%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid144758%_
                     _%key144763%_
                     _%phi144760%_
                     _%ctx144761%_)
                    (if (##structure-instance-of?
                         _%ctx144761%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid144758%_
                         _%key144763%_
                         _%phi144760%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid144758%_
                         _%key144763%_
                         _%phi144760%_)))))
          (gx#bind-identifier!__%
           _%id144757%_
           _%bind144768%_
           _%rebind?144759%_
           _%phi144760%_
           _%ctx144761%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id144774%_ _%eid144775%_)
        (let* ((_%rebind?144777%_ '#f)
               (_%phi144779%_ (gx#current-expander-phi))
               (_%ctx144781%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id144774%_
           _%eid144775%_
           _%rebind?144777%_
           _%phi144779%_
           _%ctx144781%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id144783%_ _%eid144784%_ _%rebind?144785%_)
        (let* ((_%phi144787%_ (gx#current-expander-phi))
               (_%ctx144789%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id144783%_
           _%eid144784%_
           _%rebind?144785%_
           _%phi144787%_
           _%ctx144789%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id144791%_ _%eid144792%_ _%rebind?144793%_ _%phi144794%_)
        (let ((_%ctx144796%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id144791%_
           _%eid144792%_
           _%rebind?144793%_
           _%phi144794%_
           _%ctx144796%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g147614_
        (let ((_g147615_ (##length _g147614_)))
          (cond ((##fx= _g147615_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g147614_))
                ((##fx= _g147615_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g147614_))
                ((##fx= _g147615_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g147614_))
                ((##fx= _g147615_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g147614_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g147614_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id144717%_
               _%eid144718%_
               _%rebind?144719%_
               _%phi144720%_
               _%ctx144721%_)
        (gx#bind-identifier!__%
         _%id144717%_
         (##structure
          gx#extern-binding::t
          _%eid144718%_
          (gx#core-identifier-key _%id144717%_)
          _%phi144720%_)
         _%rebind?144719%_
         _%phi144720%_
         _%ctx144721%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id144726%_ _%eid144727%_)
        (let* ((_%rebind?144729%_ '#f)
               (_%phi144731%_ (gx#current-expander-phi))
               (_%ctx144733%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id144726%_
           _%eid144727%_
           _%rebind?144729%_
           _%phi144731%_
           _%ctx144733%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id144735%_ _%eid144736%_ _%rebind?144737%_)
        (let* ((_%phi144739%_ (gx#current-expander-phi))
               (_%ctx144741%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id144735%_
           _%eid144736%_
           _%rebind?144737%_
           _%phi144739%_
           _%ctx144741%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id144743%_ _%eid144744%_ _%rebind?144745%_ _%phi144746%_)
        (let ((_%ctx144748%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id144743%_
           _%eid144744%_
           _%rebind?144745%_
           _%phi144746%_
           _%ctx144748%_))))
    (define gx#core-bind-extern!
      (lambda _g147616_
        (let ((_g147617_ (##length _g147616_)))
          (cond ((##fx= _g147617_ 2) (apply gx#core-bind-extern!__0 _g147616_))
                ((##fx= _g147617_ 3) (apply gx#core-bind-extern!__1 _g147616_))
                ((##fx= _g147617_ 4) (apply gx#core-bind-extern!__2 _g147616_))
                ((##fx= _g147617_ 5) (apply gx#core-bind-extern!__% _g147616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g147616_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id144671%_
               _%e144672%_
               _%rebind?144673%_
               _%phi144674%_
               _%ctx144675%_)
        (gx#bind-identifier!__%
         _%id144671%_
         (let ((_%key144680%_ (gx#core-identifier-key _%id144671%_))
               (_%e144681%_
                (if (or (##structure-instance-of? _%e144672%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e144672%_
                         'gx#expander-context::t))
                    _%e144672%_
                    (##structure
                     gx#user-expander::t
                     _%e144672%_
                     _%ctx144675%_
                     _%phi144674%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key144680%_
             '#t
             _%phi144674%_
             _%ctx144675%_)
            _%key144680%_
            _%phi144674%_
            _%e144681%_))
         _%rebind?144673%_
         _%phi144674%_
         _%ctx144675%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id144686%_ _%e144687%_)
        (let* ((_%rebind?144689%_ '#f)
               (_%phi144691%_ (gx#current-expander-phi))
               (_%ctx144693%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id144686%_
           _%e144687%_
           _%rebind?144689%_
           _%phi144691%_
           _%ctx144693%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id144695%_ _%e144696%_ _%rebind?144697%_)
        (let* ((_%phi144699%_ (gx#current-expander-phi))
               (_%ctx144701%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id144695%_
           _%e144696%_
           _%rebind?144697%_
           _%phi144699%_
           _%ctx144701%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id144703%_ _%e144704%_ _%rebind?144705%_ _%phi144706%_)
        (let ((_%ctx144708%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id144703%_
           _%e144704%_
           _%rebind?144705%_
           _%phi144706%_
           _%ctx144708%_))))
    (define gx#core-bind-syntax!
      (lambda _g147618_
        (let ((_g147619_ (##length _g147618_)))
          (cond ((##fx= _g147619_ 2) (apply gx#core-bind-syntax!__0 _g147618_))
                ((##fx= _g147619_ 3) (apply gx#core-bind-syntax!__1 _g147618_))
                ((##fx= _g147619_ 4) (apply gx#core-bind-syntax!__2 _g147618_))
                ((##fx= _g147619_ 5) (apply gx#core-bind-syntax!__% _g147618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g147618_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id144654%_ _%e144655%_ _%rebind?144656%_)
        (gx#core-bind-syntax!__%
         _%id144654%_
         _%e144655%_
         _%rebind?144656%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id144661%_ _%e144662%_)
        (let ((_%rebind?144664%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id144661%_
           _%e144662%_
           _%rebind?144664%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g147620_
        (let ((_g147621_ (##length _g147620_)))
          (cond ((##fx= _g147621_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g147620_))
                ((##fx= _g147621_ 3)
                 (apply gx#core-bind-root-syntax!__% _g147620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g147620_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id144612%_
               _%alias-id144613%_
               _%rebind?144614%_
               _%phi144615%_
               _%ctx144616%_)
        (gx#bind-identifier!__%
         _%id144612%_
         (let ((_%key144618%_ (gx#core-identifier-key _%id144612%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key144618%_
             '#t
             _%phi144615%_
             _%ctx144616%_)
            _%key144618%_
            _%phi144615%_
            _%alias-id144613%_))
         _%rebind?144614%_
         _%phi144615%_
         _%ctx144616%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id144623%_ _%alias-id144624%_)
        (let* ((_%rebind?144626%_ '#f)
               (_%phi144628%_ (gx#current-expander-phi))
               (_%ctx144630%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id144623%_
           _%alias-id144624%_
           _%rebind?144626%_
           _%phi144628%_
           _%ctx144630%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id144632%_ _%alias-id144633%_ _%rebind?144634%_)
        (let* ((_%phi144636%_ (gx#current-expander-phi))
               (_%ctx144638%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id144632%_
           _%alias-id144633%_
           _%rebind?144634%_
           _%phi144636%_
           _%ctx144638%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id144640%_ _%alias-id144641%_ _%rebind?144642%_ _%phi144643%_)
        (let ((_%ctx144645%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id144640%_
           _%alias-id144641%_
           _%rebind?144642%_
           _%phi144643%_
           _%ctx144645%_))))
    (define gx#core-bind-alias!
      (lambda _g147622_
        (let ((_g147623_ (##length _g147622_)))
          (cond ((##fx= _g147623_ 2) (apply gx#core-bind-alias!__0 _g147622_))
                ((##fx= _g147623_ 3) (apply gx#core-bind-alias!__1 _g147622_))
                ((##fx= _g147623_ 4) (apply gx#core-bind-alias!__2 _g147622_))
                ((##fx= _g147623_ 5) (apply gx#core-bind-alias!__% _g147622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g147622_))))))
    (define gx#make-binding-id__%
      (lambda (_%key144562%_ _%syntax?144563%_ _%phi144564%_ _%ctx144565%_)
        (if (uninterned-symbol? _%key144562%_)
            (##gensym 'L)
            (if (pair? _%key144562%_)
                (gensym (##car _%key144562%_))
                (if (##structure-instance-of? _%ctx144565%_ 'gx#top-context::t)
                    (let ((_%ns144570%_
                           (gx#core-context-namespace__% _%ctx144565%_)))
                      (if (and (fxzero? _%phi144564%_) (not _%syntax?144563%_))
                          (if _%ns144570%_
                              (make-symbol__1 _%ns144570%_ '"#" _%key144562%_)
                              _%key144562%_)
                          (if _%syntax?144563%_
                              (make-symbol__1
                               (let ((_%$e144574%_ _%ns144570%_))
                                 (if _%$e144574%_ _%$e144574%_ '""))
                               '"[:"
                               (number->string _%phi144564%_)
                               '":]#"
                               _%key144562%_)
                              (make-symbol__1
                               (let ((_%$e144578%_ _%ns144570%_))
                                 (if _%$e144578%_ _%$e144578%_ '""))
                               '"["
                               (number->string _%phi144564%_)
                               '"]#"
                               _%key144562%_))))
                    (gensym _%key144562%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key144585%_)
        (let* ((_%syntax?144587%_ '#f)
               (_%phi144589%_ (gx#current-expander-phi))
               (_%ctx144591%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key144585%_
           _%syntax?144587%_
           _%phi144589%_
           _%ctx144591%_))))
    (define gx#make-binding-id__1
      (lambda (_%key144593%_ _%syntax?144594%_)
        (let* ((_%phi144596%_ (gx#current-expander-phi))
               (_%ctx144598%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key144593%_
           _%syntax?144594%_
           _%phi144596%_
           _%ctx144598%_))))
    (define gx#make-binding-id__2
      (lambda (_%key144600%_ _%syntax?144601%_ _%phi144602%_)
        (let ((_%ctx144604%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key144600%_
           _%syntax?144601%_
           _%phi144602%_
           _%ctx144604%_))))
    (define gx#make-binding-id
      (lambda _g147624_
        (let ((_g147625_ (##length _g147624_)))
          (cond ((##fx= _g147625_ 1) (apply gx#make-binding-id__0 _g147624_))
                ((##fx= _g147625_ 2) (apply gx#make-binding-id__1 _g147624_))
                ((##fx= _g147625_ 3) (apply gx#make-binding-id__2 _g147624_))
                ((##fx= _g147625_ 4) (apply gx#make-binding-id__% _g147624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g147624_))))))))
