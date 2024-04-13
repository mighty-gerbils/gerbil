(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712991652)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx123387%_)
        (letrec ((_%expand-special123389%_
                  (lambda (_%hd123391%_ _%K123392%_ _%rest123393%_ _%r123394%_)
                    (_%K123392%_
                     _%rest123393%_
                     (cons (gx#core-expand-top _%hd123391%_) _%r123394%_)))))
          (gx#core-expand-block__0 _%stx123387%_ _%expand-special123389%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx123140%_)
        (letrec ((_%expand-special123142%_
                  (lambda (_%hd123262%_ _%K123263%_ _%rest123264%_ _%r123265%_)
                    (let* ((_%K123269%_
                            (lambda (_%e123267%_)
                              (_%K123263%_
                               _%rest123264%_
                               (cons _%e123267%_ _%r123265%_))))
                           (_%e123270123299%_ _%hd123262%_)
                           (_%E123294123303%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123270123299%_)))
                           (_%E123290123315%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123270123299%_)
                                  (let ((_%e123295123307%_
                                         (gx#syntax-e _%e123270123299%_)))
                                    (let ((_%hd123296123310%_
                                           (##car _%e123295123307%_))
                                          (_%tl123297123312%_
                                           (##cdr _%e123295123307%_)))
                                      (if (and (gx#identifier?
                                                _%hd123296123310%_)
                                               (gx#core-identifier=?
                                                _%hd123296123310%_
                                                '%#define-runtime))
                                          (_%K123269%_
                                           (gx#core-expand-define-runtime%
                                            _%hd123262%_))
                                          (_%E123294123303%_))))
                                  (_%E123294123303%_))))
                           (_%E123286123327%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123270123299%_)
                                  (let ((_%e123291123319%_
                                         (gx#syntax-e _%e123270123299%_)))
                                    (let ((_%hd123292123322%_
                                           (##car _%e123291123319%_))
                                          (_%tl123293123324%_
                                           (##cdr _%e123291123319%_)))
                                      (if (and (gx#identifier?
                                                _%hd123292123322%_)
                                               (gx#core-identifier=?
                                                _%hd123292123322%_
                                                '%#define-alias))
                                          (_%K123269%_
                                           (gx#core-expand-define-alias%
                                            _%hd123262%_))
                                          (_%E123290123315%_))))
                                  (_%E123290123315%_))))
                           (_%E123276123339%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123270123299%_)
                                  (let ((_%e123287123331%_
                                         (gx#syntax-e _%e123270123299%_)))
                                    (let ((_%hd123288123334%_
                                           (##car _%e123287123331%_))
                                          (_%tl123289123336%_
                                           (##cdr _%e123287123331%_)))
                                      (if (and (gx#identifier?
                                                _%hd123288123334%_)
                                               (gx#core-identifier=?
                                                _%hd123288123334%_
                                                '%#define-syntax))
                                          (_%K123269%_
                                           (gx#core-expand-define-syntax%
                                            _%hd123262%_))
                                          (_%E123286123327%_))))
                                  (_%E123286123327%_))))
                           (_%E123272123371%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123270123299%_)
                                  (let ((_%e123277123343%_
                                         (gx#syntax-e _%e123270123299%_)))
                                    (let ((_%hd123278123346%_
                                           (##car _%e123277123343%_))
                                          (_%tl123279123348%_
                                           (##cdr _%e123277123343%_)))
                                      (if (and (gx#identifier?
                                                _%hd123278123346%_)
                                               (gx#core-identifier=?
                                                _%hd123278123346%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123279123348%_)
                                              (let ((_%e123280123351%_
                                                     (gx#syntax-e
                                                      _%tl123279123348%_)))
                                                (let ((_%hd123281123354%_
                                                       (##car _%e123280123351%_))
                                                      (_%tl123282123356%_
                                                       (##cdr _%e123280123351%_)))
                                                  (let ((_%hd-bind123359%_
                                                         _%hd123281123354%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123282123356%_)
                                                        (let ((_%e123283123361%_
                                                               (gx#syntax-e
                                                                _%tl123282123356%_)))
                                                          (let ((_%hd123284123364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123283123361%_))
                        (_%tl123285123366%_ (##cdr _%e123283123361%_)))
                    (let ((_%expr123369%_ _%hd123284123364%_))
                      (if (gx#stx-null? _%tl123285123366%_)
                          (if (gx#core-bind-values? _%hd-bind123359%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123359%_)
                                (_%K123269%_ _%hd123262%_))
                              (_%E123276123339%_))
                          (_%E123276123339%_)))))
                (_%E123276123339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123276123339%_))
                                          (_%E123276123339%_))))
                                  (_%E123276123339%_))))
                           (_%E123271123383%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123270123299%_)
                                  (let ((_%e123273123375%_
                                         (gx#syntax-e _%e123270123299%_)))
                                    (let ((_%hd123274123378%_
                                           (##car _%e123273123375%_))
                                          (_%tl123275123380%_
                                           (##cdr _%e123273123375%_)))
                                      (if (and (gx#identifier?
                                                _%hd123274123378%_)
                                               (gx#core-identifier=?
                                                _%hd123274123378%_
                                                '%#begin-syntax))
                                          (_%K123269%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd123262%_))
                                          (_%E123272123371%_))))
                                  (_%E123272123371%_)))))
                      (_%E123271123383%_))))
                 (_%eval-body123143%_
                  (lambda (_%rbody123151%_)
                    (let _%lp123153%_ ((_%rest123155%_ _%rbody123151%_)
                                       (_%body123156%_ '())
                                       (_%ebody123157%_ '()))
                      (let* ((_%rest123158123166%_ _%rest123155%_)
                             (_%else123160123174%_
                              (lambda ()
                                (values _%body123156%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody123157%_)
                                          (gx#stx-source _%stx123140%_))))))
                             (_%K123162123250%_
                              (lambda (_%rest123177%_ _%hd123178%_)
                                (let* ((_%e123179123196%_ _%hd123178%_)
                                       (_%E123191123200%_
                                        (lambda ()
                                          (_%lp123153%_
                                           _%rest123177%_
                                           (cons _%hd123178%_ _%body123156%_)
                                           (cons _%hd123178%_
                                                 _%ebody123157%_))))
                                       (_%E123181123212%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123179123196%_)
                                              (let ((_%e123192123204%_
                                                     (gx#syntax-e
                                                      _%e123179123196%_)))
                                                (let ((_%hd123193123207%_
                                                       (##car _%e123192123204%_))
                                                      (_%tl123194123209%_
                                                       (##cdr _%e123192123204%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123193123207%_)
                                                           (gx#core-identifier=?
                                                            _%hd123193123207%_
                                                            '%#begin-syntax))
                                                      (_%lp123153%_
                                                       _%rest123177%_
                                                       (cons _%hd123178%_
                                                             _%body123156%_)
                                                       _%ebody123157%_)
                                                      (_%E123191123200%_))))
                                              (_%E123191123200%_))))
                                       (_%E123180123246%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123179123196%_)
                                              (let ((_%e123182123216%_
                                                     (gx#syntax-e
                                                      _%e123179123196%_)))
                                                (let ((_%hd123183123219%_
                                                       (##car _%e123182123216%_))
                                                      (_%tl123184123221%_
                                                       (##cdr _%e123182123216%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123183123219%_)
                                                           (gx#core-identifier=?
                                                            _%hd123183123219%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123184123221%_)
                                                          (let ((_%e123185123224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123184123221%_)))
                    (let ((_%hd123186123227%_ (##car _%e123185123224%_))
                          (_%tl123187123229%_ (##cdr _%e123185123224%_)))
                      (let ((_%hd-bind123232%_ _%hd123186123227%_))
                        (if (gx#stx-pair? _%tl123187123229%_)
                            (let ((_%e123188123234%_
                                   (gx#syntax-e _%tl123187123229%_)))
                              (let ((_%hd123189123237%_
                                     (##car _%e123188123234%_))
                                    (_%tl123190123239%_
                                     (##cdr _%e123188123234%_)))
                                (let ((_%expr123242%_ _%hd123189123237%_))
                                  (if (gx#stx-null? _%tl123190123239%_)
                                      (let ((_%ehd123244%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind123232%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr123242%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd123178%_))))
                                        (_%lp123153%_
                                         _%rest123177%_
                                         (cons _%ehd123244%_ _%body123156%_)
                                         (cons _%ehd123244%_ _%ebody123157%_)))
                                      (_%E123181123212%_)))))
                            (_%E123181123212%_)))))
                  (_%E123181123212%_))
              (_%E123181123212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123181123212%_)))))
                                  (_%E123180123246%_)))))
                        (if (##pair? _%rest123158123166%_)
                            (let ((_%hd123163123253%_
                                   (##car _%rest123158123166%_))
                                  (_%tl123164123255%_
                                   (##cdr _%rest123158123166%_)))
                              (let* ((_%hd123258%_ _%hd123163123253%_)
                                     (_%rest123260%_ _%tl123164123255%_))
                                (_%K123162123250%_
                                 _%rest123260%_
                                 _%hd123258%_)))
                            (_%else123160123174%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody123146%_
                     (gx#core-expand-block__1
                      _%stx123140%_
                      _%expand-special123142%_
                      '#f))
                    (_g123410_ (_%eval-body123143%_ _%rbody123146%_)))
               (begin
                 (let ((_g123411_
                        (if (##values? _g123410_)
                            (##vector-length _g123410_)
                            1)))
                   (if (not (##fx= _g123411_ 2))
                       (error "Context expects 2 values" _g123411_)))
                 (let ((_%expanded-body123148%_ (##vector-ref _g123410_ 0))
                       (_%value123149%_ (##vector-ref _g123410_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body123148%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value123149%_ '())))
                    (gx#stx-source _%stx123140%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx123110%_)
        (let* ((_%e123111123118%_ _%stx123110%_)
               (_%E123113123122%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123111123118%_)))
               (_%E123112123136%_
                (lambda ()
                  (if (gx#stx-pair? _%e123111123118%_)
                      (let ((_%e123114123126%_
                             (gx#syntax-e _%e123111123118%_)))
                        (let ((_%hd123115123129%_ (##car _%e123114123126%_))
                              (_%tl123116123131%_ (##cdr _%e123114123126%_)))
                          (let ((_%body123134%_ _%tl123116123131%_))
                            (if (gx#stx-list? _%body123134%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body123134%_)
                                 (gx#stx-source _%stx123110%_))
                                (_%E123113123122%_)))))
                      (_%E123113123122%_)))))
          (_%E123112123136%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx123108%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx123108%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx123054%_)
        (let* ((_%e123055123068%_ _%stx123054%_)
               (_%E123057123072%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123055123068%_)))
               (_%E123056123104%_
                (lambda ()
                  (if (gx#stx-pair? _%e123055123068%_)
                      (let ((_%e123058123076%_
                             (gx#syntax-e _%e123055123068%_)))
                        (let ((_%hd123059123079%_ (##car _%e123058123076%_))
                              (_%tl123060123081%_ (##cdr _%e123058123076%_)))
                          (if (gx#stx-pair? _%tl123060123081%_)
                              (let ((_%e123061123084%_
                                     (gx#syntax-e _%tl123060123081%_)))
                                (let ((_%hd123062123087%_
                                       (##car _%e123061123084%_))
                                      (_%tl123063123089%_
                                       (##cdr _%e123061123084%_)))
                                  (let ((_%ann123092%_ _%hd123062123087%_))
                                    (if (gx#stx-pair? _%tl123063123089%_)
                                        (let ((_%e123064123094%_
                                               (gx#syntax-e
                                                _%tl123063123089%_)))
                                          (let ((_%hd123065123097%_
                                                 (##car _%e123064123094%_))
                                                (_%tl123066123099%_
                                                 (##cdr _%e123064123094%_)))
                                            (let ((_%expr123102%_
                                                   _%hd123065123097%_))
                                              (if (gx#stx-null?
                                                   _%tl123066123099%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann123092%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr123102%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx123054%_))
                                                  (_%E123057123072%_)))))
                                        (_%E123057123072%_)))))
                              (_%E123057123072%_))))
                      (_%E123057123072%_)))))
          (_%E123056123104%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx122778%_ _%body122779%_)
        (letrec ((_%expand-special122781%_
                  (lambda (_%hd123049%_ _%K123050%_ _%rest123051%_ _%r123052%_)
                    (_%K123050%_
                     '()
                     (cons (_%expand-internal122782%_
                            _%hd123049%_
                            _%rest123051%_)
                           _%r123052%_))))
                 (_%expand-internal122782%_
                  (lambda (_%hd123045%_ _%rest123046%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal122784%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd123045%_ _%rest123046%_))
                          (gx#stx-source _%stx122778%_))
                         _%expand-internal-special122783%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj123404
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj123404)
                       __obj123404))))
                 (_%expand-internal-special122783%_
                  (lambda (_%hd122940%_ _%K122941%_ _%rest122942%_ _%r122943%_)
                    (let* ((_%e122944122969%_ _%hd122940%_)
                           (_%E122964122973%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122944122969%_)))
                           (_%E122960122985%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122944122969%_)
                                  (let ((_%e122965122977%_
                                         (gx#syntax-e _%e122944122969%_)))
                                    (let ((_%hd122966122980%_
                                           (##car _%e122965122977%_))
                                          (_%tl122967122982%_
                                           (##cdr _%e122965122977%_)))
                                      (if (and (gx#identifier?
                                                _%hd122966122980%_)
                                               (gx#core-identifier=?
                                                _%hd122966122980%_
                                                '%#declare))
                                          (_%K122941%_
                                           _%rest122942%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd122940%_)
                                                 _%r122943%_))
                                          (_%E122964122973%_))))
                                  (_%E122964122973%_))))
                           (_%E122956122997%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122944122969%_)
                                  (let ((_%e122961122989%_
                                         (gx#syntax-e _%e122944122969%_)))
                                    (let ((_%hd122962122992%_
                                           (##car _%e122961122989%_))
                                          (_%tl122963122994%_
                                           (##cdr _%e122961122989%_)))
                                      (if (and (gx#identifier?
                                                _%hd122962122992%_)
                                               (gx#core-identifier=?
                                                _%hd122962122992%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd122940%_)
                                            (_%K122941%_
                                             _%rest122942%_
                                             _%r122943%_))
                                          (_%E122960122985%_))))
                                  (_%E122960122985%_))))
                           (_%E122946123009%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122944122969%_)
                                  (let ((_%e122957123001%_
                                         (gx#syntax-e _%e122944122969%_)))
                                    (let ((_%hd122958123004%_
                                           (##car _%e122957123001%_))
                                          (_%tl122959123006%_
                                           (##cdr _%e122957123001%_)))
                                      (if (and (gx#identifier?
                                                _%hd122958123004%_)
                                               (gx#core-identifier=?
                                                _%hd122958123004%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd122940%_)
                                            (_%K122941%_
                                             _%rest122942%_
                                             _%r122943%_))
                                          (_%E122956122997%_))))
                                  (_%E122956122997%_))))
                           (_%E122945123041%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122944122969%_)
                                  (let ((_%e122947123013%_
                                         (gx#syntax-e _%e122944122969%_)))
                                    (let ((_%hd122948123016%_
                                           (##car _%e122947123013%_))
                                          (_%tl122949123018%_
                                           (##cdr _%e122947123013%_)))
                                      (if (and (gx#identifier?
                                                _%hd122948123016%_)
                                               (gx#core-identifier=?
                                                _%hd122948123016%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122949123018%_)
                                              (let ((_%e122950123021%_
                                                     (gx#syntax-e
                                                      _%tl122949123018%_)))
                                                (let ((_%hd122951123024%_
                                                       (##car _%e122950123021%_))
                                                      (_%tl122952123026%_
                                                       (##cdr _%e122950123021%_)))
                                                  (let ((_%hd-bind123029%_
                                                         _%hd122951123024%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122952123026%_)
                                                        (let ((_%e122953123031%_
                                                               (gx#syntax-e
                                                                _%tl122952123026%_)))
                                                          (let ((_%hd122954123034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122953123031%_))
                        (_%tl122955123036%_ (##cdr _%e122953123031%_)))
                    (let ((_%expr123039%_ _%hd122954123034%_))
                      (if (gx#stx-null? _%tl122955123036%_)
                          (if (gx#core-bind-values? _%hd-bind123029%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123029%_)
                                (_%K122941%_
                                 _%rest122942%_
                                 (cons _%hd122940%_ _%r122943%_)))
                              (_%E122946123009%_))
                          (_%E122946123009%_)))))
                (_%E122946123009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122946123009%_))
                                          (_%E122946123009%_))))
                                  (_%E122946123009%_)))))
                      (_%E122945123041%_))))
                 (_%wrap-internal122784%_
                  (lambda (_%rbody122786%_)
                    (let _%lp122788%_ ((_%rest122790%_ _%rbody122786%_)
                                       (_%decls122791%_ '())
                                       (_%bind122792%_ '())
                                       (_%body122793%_ '()))
                      (let* ((_%e122794122801%_ _%rest122790%_)
                             (_%E122796122850%_
                              (lambda ()
                                (let* ((_%body122845%_
                                        (let* ((_%body122804122814%_
                                                _%body122793%_)
                                               (_%else122807122822%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body122793%_)
                                                   (gx#stx-source
                                                    _%stx122778%_)))))
                                          (let ((_%K122812122842%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx122778%_)))
                                                (_%K122809122828%_
                                                 (lambda (_%expr122826%_)
                                                   _%expr122826%_)))
                                            (let ((_%try-match122806122838%_
                                                   (lambda ()
                                                     (if (##pair? _%body122804122814%_)
                                                         (let ((_%tl122811122833%_
                                                                (##cdr _%body122804122814%_))
                                                               (_%hd122810122831%_
                                                                (##car _%body122804122814%_)))
                                                           (if (##null? _%tl122811122833%_)
                                                               (let ((_%expr122836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122810122831%_))
                         (_%K122809122828%_ _%expr122836%_))
                       (_%else122807122822%_)))
                 (_%else122807122822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body122804122814%_)
                                                  (_%K122812122842%_)
                                                  (_%try-match122806122838%_))))))
                                       (_%body122847%_
                                        (if (null? _%bind122792%_)
                                            _%body122845%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind122792%_
                                                         (cons _%body122845%_
                                                               '())))
                                             (gx#stx-source _%stx122778%_)))))
                                  (if (null? _%decls122791%_)
                                      _%body122847%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls122791%_
                                                   (cons _%body122847%_ '())))
                                       (gx#stx-source _%stx122778%_))))))
                             (_%E122795122936%_
                              (lambda ()
                                (if (gx#stx-pair? _%e122794122801%_)
                                    (let ((_%e122797122854%_
                                           (gx#syntax-e _%e122794122801%_)))
                                      (let ((_%hd122798122857%_
                                             (##car _%e122797122854%_))
                                            (_%tl122799122859%_
                                             (##cdr _%e122797122854%_)))
                                        (let* ((_%hd122862%_
                                                _%hd122798122857%_)
                                               (_%rest122864%_
                                                _%tl122799122859%_)
                                               (_%e122865122882%_ _%hd122862%_)
                                               (_%E122877122886%_
                                                (lambda ()
                                                  (if (null? _%bind122792%_)
                                                      (_%lp122788%_
                                                       _%rest122864%_
                                                       _%decls122791%_
                                                       _%bind122792%_
                                                       (cons _%hd122862%_
                                                             _%body122793%_))
                                                      (_%lp122788%_
                                                       _%rest122864%_
                                                       _%decls122791%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd122862%_ '()))
                     _%bind122792%_)
               _%body122793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122867122900%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e122865122882%_)
                                                      (let ((_%e122878122890%_
                                                             (gx#syntax-e
                                                              _%e122865122882%_)))
                                                        (let ((_%hd122879122893%_
                                                               (##car _%e122878122890%_))
                                                              (_%tl122880122895%_
                                                               (##cdr _%e122878122890%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd122879122893%_)
                           (gx#core-identifier=?
                            _%hd122879122893%_
                            '%#declare))
                      (let ((_%xdecls122898%_ _%tl122880122895%_))
                        (_%lp122788%_
                         _%rest122864%_
                         (gx#stx-foldr cons _%decls122791%_ _%xdecls122898%_)
                         _%bind122792%_
                         _%body122793%_))
                      (_%E122877122886%_))))
              (_%E122877122886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E122866122932%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e122865122882%_)
                                                      (let ((_%e122868122904%_
                                                             (gx#syntax-e
                                                              _%e122865122882%_)))
                                                        (let ((_%hd122869122907%_
                                                               (##car _%e122868122904%_))
                                                              (_%tl122870122909%_
                                                               (##cdr _%e122868122904%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd122869122907%_)
                           (gx#core-identifier=?
                            _%hd122869122907%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl122870122909%_)
                          (let ((_%e122871122912%_
                                 (gx#syntax-e _%tl122870122909%_)))
                            (let ((_%hd122872122915%_
                                   (##car _%e122871122912%_))
                                  (_%tl122873122917%_
                                   (##cdr _%e122871122912%_)))
                              (let ((_%hd-bind122920%_ _%hd122872122915%_))
                                (if (gx#stx-pair? _%tl122873122917%_)
                                    (let ((_%e122874122922%_
                                           (gx#syntax-e _%tl122873122917%_)))
                                      (let ((_%hd122875122925%_
                                             (##car _%e122874122922%_))
                                            (_%tl122876122927%_
                                             (##cdr _%e122874122922%_)))
                                        (let ((_%expr122930%_
                                               _%hd122875122925%_))
                                          (if (gx#stx-null? _%tl122876122927%_)
                                              (_%lp122788%_
                                               _%rest122864%_
                                               _%decls122791%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind122920%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr122930%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind122792%_)
                                               _%body122793%_)
                                              (_%E122867122900%_)))))
                                    (_%E122867122900%_)))))
                          (_%E122867122900%_))
                      (_%E122867122900%_))))
              (_%E122867122900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E122866122932%_))))
                                    (_%E122796122850%_)))))
                        (_%E122795122936%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body122779%_)
            (gx#stx-source _%stx122778%_))
           _%expand-special122781%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx122716%_)
        (let* ((_%e122717122724%_ _%stx122716%_)
               (_%E122719122728%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122717122724%_)))
               (_%E122718122774%_
                (lambda ()
                  (if (gx#stx-pair? _%e122717122724%_)
                      (let ((_%e122720122732%_
                             (gx#syntax-e _%e122717122724%_)))
                        (let ((_%hd122721122735%_ (##car _%e122720122732%_))
                              (_%tl122722122737%_ (##cdr _%e122720122732%_)))
                          (let ((_%body122740%_ _%tl122722122737%_))
                            (if (gx#stx-list? _%body122740%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl122742%_)
                                     (let* ((_%e122743122750%_ _%decl122742%_)
                                            (_%E122745122754%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e122743122750%_)))
                                            (_%E122744122770%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e122743122750%_)
                                                   (let ((_%e122746122758%_
                                                          (gx#syntax-e
                                                           _%e122743122750%_)))
                                                     (let ((_%hd122747122761%_
                                                            (##car _%e122746122758%_))
                                                           (_%tl122748122763%_
                                                            (##cdr _%e122746122758%_)))
                                                       (let* ((_%head122766%_
                                                               _%hd122747122761%_)
                                                              (_%args122768%_
                                                               _%tl122748122763%_))
                                                         (if (gx#stx-list?
                                                              _%args122768%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl122742%_)
                                                             (_%E122745122754%_)))))
                                                   (_%E122745122754%_)))))
                                       (_%E122744122770%_)))
                                   _%body122740%_))
                                 (gx#stx-source _%stx122716%_))
                                (_%E122719122728%_)))))
                      (_%E122719122728%_)))))
          (_%E122718122774%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx122620%_)
        (let* ((_%e122621122628%_ _%stx122620%_)
               (_%E122623122632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122621122628%_)))
               (_%E122622122712%_
                (lambda ()
                  (if (gx#stx-pair? _%e122621122628%_)
                      (let ((_%e122624122636%_
                             (gx#syntax-e _%e122621122628%_)))
                        (let ((_%hd122625122639%_ (##car _%e122624122636%_))
                              (_%tl122626122641%_ (##cdr _%e122624122636%_)))
                          (let ((_%body122644%_ _%tl122626122641%_))
                            (let _%lp122646%_ ((_%rest122648%_ _%body122644%_)
                                               (_%r122649%_ '()))
                              (let* ((_%e122650122664%_ _%rest122648%_)
                                     (_%E122662122668%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx122620%_)))
                                     (_%E122652122672%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e122650122664%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r122649%_))
                                             (gx#stx-source _%stx122620%_))
                                            (_%E122662122668%_))))
                                     (_%E122651122708%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e122650122664%_)
                                            (let ((_%e122653122676%_
                                                   (gx#syntax-e
                                                    _%e122650122664%_)))
                                              (let ((_%hd122654122679%_
                                                     (##car _%e122653122676%_))
                                                    (_%tl122655122681%_
                                                     (##cdr _%e122653122676%_)))
                                                (if (gx#stx-pair?
                                                     _%hd122654122679%_)
                                                    (let ((_%e122656122684%_
                                                           (gx#syntax-e
                                                            _%hd122654122679%_)))
                                                      (let ((_%hd122657122687%_
                                                             (##car _%e122656122684%_))
                                                            (_%tl122658122689%_
                                                             (##cdr _%e122656122684%_)))
                                                        (let ((_%id122692%_
                                                               _%hd122657122687%_))
                                                          (if (gx#stx-pair?
                                                               _%tl122658122689%_)
                                                              (let ((_%e122659122694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl122658122689%_)))
                        (let ((_%hd122660122697%_ (##car _%e122659122694%_))
                              (_%tl122661122699%_ (##cdr _%e122659122694%_)))
                          (let ((_%eid122702%_ _%hd122660122697%_))
                            (if (gx#stx-null? _%tl122661122699%_)
                                (let ((_%rest122704%_ _%tl122655122681%_))
                                  (if (and (gx#identifier? _%id122692%_)
                                           (gx#identifier? _%eid122702%_))
                                      (let ((_%eid122706%_
                                             (gx#stx-e _%eid122702%_)))
                                        (gx#core-bind-extern!__0
                                         _%id122692%_
                                         _%eid122706%_)
                                        (_%lp122646%_
                                         _%rest122704%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id122692%_)
                                                     (cons _%eid122706%_ '()))
                                               _%r122649%_)))
                                      (_%E122652122672%_)))
                                (_%E122652122672%_)))))
                      (_%E122652122672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122652122672%_))))
                                            (_%E122652122672%_)))))
                                (_%E122651122708%_))))))
                      (_%E122623122632%_)))))
          (_%E122622122712%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx122566%_)
        (let* ((_%e122567122580%_ _%stx122566%_)
               (_%E122569122584%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122567122580%_)))
               (_%E122568122616%_
                (lambda ()
                  (if (gx#stx-pair? _%e122567122580%_)
                      (let ((_%e122570122588%_
                             (gx#syntax-e _%e122567122580%_)))
                        (let ((_%hd122571122591%_ (##car _%e122570122588%_))
                              (_%tl122572122593%_ (##cdr _%e122570122588%_)))
                          (if (gx#stx-pair? _%tl122572122593%_)
                              (let ((_%e122573122596%_
                                     (gx#syntax-e _%tl122572122593%_)))
                                (let ((_%hd122574122599%_
                                       (##car _%e122573122596%_))
                                      (_%tl122575122601%_
                                       (##cdr _%e122573122596%_)))
                                  (let ((_%hd122604%_ _%hd122574122599%_))
                                    (if (gx#stx-pair? _%tl122575122601%_)
                                        (let ((_%e122576122606%_
                                               (gx#syntax-e
                                                _%tl122575122601%_)))
                                          (let ((_%hd122577122609%_
                                                 (##car _%e122576122606%_))
                                                (_%tl122578122611%_
                                                 (##cdr _%e122576122606%_)))
                                            (let ((_%expr122614%_
                                                   _%hd122577122609%_))
                                              (if (gx#stx-null?
                                                   _%tl122578122611%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd122604%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd122604%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122604%_)
                             (cons (gx#core-expand-expression _%expr122614%_)
                                   '())))
                 (gx#stx-source _%stx122566%_)))
              (_%E122569122584%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122569122584%_)))))
                                        (_%E122569122584%_)))))
                              (_%E122569122584%_))))
                      (_%E122569122584%_)))))
          (_%E122568122616%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx122510%_)
        (let* ((_%e122511122524%_ _%stx122510%_)
               (_%E122513122528%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122511122524%_)))
               (_%E122512122562%_
                (lambda ()
                  (if (gx#stx-pair? _%e122511122524%_)
                      (let ((_%e122514122532%_
                             (gx#syntax-e _%e122511122524%_)))
                        (let ((_%hd122515122535%_ (##car _%e122514122532%_))
                              (_%tl122516122537%_ (##cdr _%e122514122532%_)))
                          (if (gx#stx-pair? _%tl122516122537%_)
                              (let ((_%e122517122540%_
                                     (gx#syntax-e _%tl122516122537%_)))
                                (let ((_%hd122518122543%_
                                       (##car _%e122517122540%_))
                                      (_%tl122519122545%_
                                       (##cdr _%e122517122540%_)))
                                  (let ((_%id122548%_ _%hd122518122543%_))
                                    (if (gx#stx-pair? _%tl122519122545%_)
                                        (let ((_%e122520122550%_
                                               (gx#syntax-e
                                                _%tl122519122545%_)))
                                          (let ((_%hd122521122553%_
                                                 (##car _%e122520122550%_))
                                                (_%tl122522122555%_
                                                 (##cdr _%e122520122550%_)))
                                            (let ((_%binding-id122558%_
                                                   _%hd122521122553%_))
                                              (if (gx#stx-null?
                                                   _%tl122522122555%_)
                                                  (if (and (gx#identifier?
                                                            _%id122548%_)
                                                           (gx#identifier?
                                                            _%binding-id122558%_))
                                                      (let ((_%eid122560%_
                                                             (gx#stx-e
                                                              _%binding-id122558%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id122548%_
                                                         _%eid122560%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122548%_)
                             (cons _%eid122560%_ '())))))
              (_%E122513122528%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122513122528%_)))))
                                        (_%E122513122528%_)))))
                              (_%E122513122528%_))))
                      (_%E122513122528%_)))))
          (_%E122512122562%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx122453%_)
        (let* ((_%e122454122467%_ _%stx122453%_)
               (_%E122456122471%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122454122467%_)))
               (_%E122455122506%_
                (lambda ()
                  (if (gx#stx-pair? _%e122454122467%_)
                      (let ((_%e122457122475%_
                             (gx#syntax-e _%e122454122467%_)))
                        (let ((_%hd122458122478%_ (##car _%e122457122475%_))
                              (_%tl122459122480%_ (##cdr _%e122457122475%_)))
                          (if (gx#stx-pair? _%tl122459122480%_)
                              (let ((_%e122460122483%_
                                     (gx#syntax-e _%tl122459122480%_)))
                                (let ((_%hd122461122486%_
                                       (##car _%e122460122483%_))
                                      (_%tl122462122488%_
                                       (##cdr _%e122460122483%_)))
                                  (let ((_%id122491%_ _%hd122461122486%_))
                                    (if (gx#stx-pair? _%tl122462122488%_)
                                        (let ((_%e122463122493%_
                                               (gx#syntax-e
                                                _%tl122462122488%_)))
                                          (let ((_%hd122464122496%_
                                                 (##car _%e122463122493%_))
                                                (_%tl122465122498%_
                                                 (##cdr _%e122463122493%_)))
                                            (let ((_%expr122501%_
                                                   _%hd122464122496%_))
                                              (if (gx#stx-null?
                                                   _%tl122465122498%_)
                                                  (if (gx#identifier?
                                                       _%id122491%_)
                                                      (let ((_g123412_
                                                             (gx#core-expand-expression+1
                                                              _%expr122501%_)))
                                                        (begin
                                                          (let ((_g123413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g123412_)
                             (##vector-length _g123412_)
                             1)))
                    (if (not (##fx= _g123413_ 2))
                        (error "Context expects 2 values" _g123413_)))
                  (let ((_%e-stx122503%_ (##vector-ref _g123412_ 0))
                        (_%e122504%_ (##vector-ref _g123412_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id122491%_ _%e122504%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id122491%_)
                                   (cons _%e-stx122503%_ '())))
                       (gx#stx-source _%stx122453%_))))))
              (_%E122456122471%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122456122471%_)))))
                                        (_%E122456122471%_)))))
                              (_%E122456122471%_))))
                      (_%E122456122471%_)))))
          (_%E122455122506%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx122397%_)
        (let* ((_%e122398122411%_ _%stx122397%_)
               (_%E122400122415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122398122411%_)))
               (_%E122399122449%_
                (lambda ()
                  (if (gx#stx-pair? _%e122398122411%_)
                      (let ((_%e122401122419%_
                             (gx#syntax-e _%e122398122411%_)))
                        (let ((_%hd122402122422%_ (##car _%e122401122419%_))
                              (_%tl122403122424%_ (##cdr _%e122401122419%_)))
                          (if (gx#stx-pair? _%tl122403122424%_)
                              (let ((_%e122404122427%_
                                     (gx#syntax-e _%tl122403122424%_)))
                                (let ((_%hd122405122430%_
                                       (##car _%e122404122427%_))
                                      (_%tl122406122432%_
                                       (##cdr _%e122404122427%_)))
                                  (let ((_%id122435%_ _%hd122405122430%_))
                                    (if (gx#stx-pair? _%tl122406122432%_)
                                        (let ((_%e122407122437%_
                                               (gx#syntax-e
                                                _%tl122406122432%_)))
                                          (let ((_%hd122408122440%_
                                                 (##car _%e122407122437%_))
                                                (_%tl122409122442%_
                                                 (##cdr _%e122407122437%_)))
                                            (let ((_%alias-id122445%_
                                                   _%hd122408122440%_))
                                              (if (gx#stx-null?
                                                   _%tl122409122442%_)
                                                  (if (and (gx#identifier?
                                                            _%id122435%_)
                                                           (gx#identifier?
                                                            _%alias-id122445%_))
                                                      (let ((_%alias-id122447%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id122445%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id122435%_
                                                         _%alias-id122447%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122435%_)
                             (cons _%alias-id122447%_ '())))))
              (_%E122400122415%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122400122415%_)))))
                                        (_%E122400122415%_)))))
                              (_%E122400122415%_))))
                      (_%E122400122415%_)))))
          (_%E122399122449%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx122340%_ _%wrap?122341%_)
        (let* ((_%e122342122352%_ _%stx122340%_)
               (_%E122344122356%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122342122352%_)))
               (_%E122343122383%_
                (lambda ()
                  (if (gx#stx-pair? _%e122342122352%_)
                      (let ((_%e122345122360%_
                             (gx#syntax-e _%e122342122352%_)))
                        (let ((_%hd122346122363%_ (##car _%e122345122360%_))
                              (_%tl122347122365%_ (##cdr _%e122345122360%_)))
                          (if (gx#stx-pair? _%tl122347122365%_)
                              (let ((_%e122348122368%_
                                     (gx#syntax-e _%tl122347122365%_)))
                                (let ((_%hd122349122371%_
                                       (##car _%e122348122368%_))
                                      (_%tl122350122373%_
                                       (##cdr _%e122348122368%_)))
                                  (let* ((_%hd122376%_ _%hd122349122371%_)
                                         (_%body122378%_ _%tl122350122373%_))
                                    (if (gx#core-bind-values? _%hd122376%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd122376%_)
                                           (let ((_%body122381%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd122376%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122340%_
                                                               _%body122378%_)
                                                              '()))))
                                             (if _%wrap?122341%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body122381%_)
                                                  (gx#stx-source
                                                   _%stx122340%_))
                                                 _%body122381%_)))
                                         gx#current-expander-context
                                         (let ((__obj123405
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123405)
                                           __obj123405))
                                        (_%E122344122356%_)))))
                              (_%E122344122356%_))))
                      (_%E122344122356%_)))))
          (_%E122343122383%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx122390%_)
        (let ((_%wrap?122392%_ '#t))
          (gx#core-expand-lambda%__% _%stx122390%_ _%wrap?122392%_))))
    (define gx#core-expand-lambda%
      (lambda _g123415_
        (let ((_g123414_ (##length _g123415_)))
          (cond ((##fx= _g123414_ 1)
                 (apply gx#core-expand-lambda%__0 _g123415_))
                ((##fx= _g123414_ 2)
                 (apply gx#core-expand-lambda%__% _g123415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g123415_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx122304%_)
        (let* ((_%e122305122312%_ _%stx122304%_)
               (_%E122307122316%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122305122312%_)))
               (_%E122306122335%_
                (lambda ()
                  (if (gx#stx-pair? _%e122305122312%_)
                      (let ((_%e122308122320%_
                             (gx#syntax-e _%e122305122312%_)))
                        (let ((_%hd122309122323%_ (##car _%e122308122320%_))
                              (_%tl122310122325%_ (##cdr _%e122308122320%_)))
                          (let ((_%clauses122328%_ _%tl122310122325%_))
                            (if (gx#stx-list? _%clauses122328%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause122330%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause122330%_)
                                       (let ((_%$e122332%_
                                              (gx#stx-source
                                               _%clause122330%_)))
                                         (if _%$e122332%_
                                             _%$e122332%_
                                             (gx#stx-source _%stx122304%_))))
                                      '#f))
                                   _%clauses122328%_))
                                 (gx#stx-source _%stx122304%_))
                                (_%E122307122316%_)))))
                      (_%E122307122316%_)))))
          (_%E122306122335%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx122258%_)
        (let* ((_%e122259122269%_ _%stx122258%_)
               (_%E122261122273%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122259122269%_)))
               (_%E122260122300%_
                (lambda ()
                  (if (gx#stx-pair? _%e122259122269%_)
                      (let ((_%e122262122277%_
                             (gx#syntax-e _%e122259122269%_)))
                        (let ((_%hd122263122280%_ (##car _%e122262122277%_))
                              (_%tl122264122282%_ (##cdr _%e122262122277%_)))
                          (if (gx#stx-pair? _%tl122264122282%_)
                              (let ((_%e122265122285%_
                                     (gx#syntax-e _%tl122264122282%_)))
                                (let ((_%hd122266122288%_
                                       (##car _%e122265122285%_))
                                      (_%tl122267122290%_
                                       (##cdr _%e122265122285%_)))
                                  (let* ((_%hd122293%_ _%hd122266122288%_)
                                         (_%body122295%_ _%tl122267122290%_))
                                    (if (gx#core-expand-let-bind? _%hd122293%_)
                                        (let ((_%expressions122297%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd122293%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd122293%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd122293%_
                                                           _%expressions122297%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx122258%_
                         _%body122295%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx122258%_)))
                                           gx#current-expander-context
                                           (let ((__obj123406
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123406)
                                             __obj123406)))
                                        (_%E122261122273%_)))))
                              (_%E122261122273%_))))
                      (_%E122261122273%_)))))
          (_%E122260122300%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx122203%_ _%form122204%_)
        (let* ((_%e122205122215%_ _%stx122203%_)
               (_%E122207122219%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122205122215%_)))
               (_%E122206122244%_
                (lambda ()
                  (if (gx#stx-pair? _%e122205122215%_)
                      (let ((_%e122208122223%_
                             (gx#syntax-e _%e122205122215%_)))
                        (let ((_%hd122209122226%_ (##car _%e122208122223%_))
                              (_%tl122210122228%_ (##cdr _%e122208122223%_)))
                          (if (gx#stx-pair? _%tl122210122228%_)
                              (let ((_%e122211122231%_
                                     (gx#syntax-e _%tl122210122228%_)))
                                (let ((_%hd122212122234%_
                                       (##car _%e122211122231%_))
                                      (_%tl122213122236%_
                                       (##cdr _%e122211122231%_)))
                                  (let* ((_%hd122239%_ _%hd122212122234%_)
                                         (_%body122241%_ _%tl122213122236%_))
                                    (if (gx#core-expand-let-bind? _%hd122239%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd122239%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form122204%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd122239%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd122239%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122203%_
                                                               _%body122241%_)
                                                              '())))
                                            (gx#stx-source _%stx122203%_)))
                                         gx#current-expander-context
                                         (let ((__obj123407
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123407)
                                           __obj123407))
                                        (_%E122207122219%_)))))
                              (_%E122207122219%_))))
                      (_%E122207122219%_)))))
          (_%E122206122244%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx122251%_)
        (let ((_%form122253%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx122251%_ _%form122253%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g123417_
        (let ((_g123416_ (##length _g123417_)))
          (cond ((##fx= _g123416_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g123417_))
                ((##fx= _g123416_ 2)
                 (apply gx#core-expand-letrec-values%__% _g123417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g123417_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx122200%_)
        (gx#core-expand-letrec-values%__% _%stx122200%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx122157%_)
        (if (gx#stx-list? _%stx122157%_)
            (gx#stx-andmap
             (lambda (_%bind122159%_)
               (let* ((_%e122160122170%_ _%bind122159%_)
                      (_%E122162122174%_ (lambda () '#f))
                      (_%E122161122196%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122160122170%_)
                             (let ((_%e122163122178%_
                                    (gx#syntax-e _%e122160122170%_)))
                               (let ((_%hd122164122181%_
                                      (##car _%e122163122178%_))
                                     (_%tl122165122183%_
                                      (##cdr _%e122163122178%_)))
                                 (let ((_%hd122186%_ _%hd122164122181%_))
                                   (if (gx#stx-pair? _%tl122165122183%_)
                                       (let ((_%e122166122188%_
                                              (gx#syntax-e
                                               _%tl122165122183%_)))
                                         (let ((_%hd122167122191%_
                                                (##car _%e122166122188%_))
                                               (_%tl122168122193%_
                                                (##cdr _%e122166122188%_)))
                                           (if (gx#stx-null?
                                                _%tl122168122193%_)
                                               (gx#core-bind-values?
                                                _%hd122186%_)
                                               (_%E122162122174%_))))
                                       (_%E122162122174%_)))))
                             (_%E122162122174%_)))))
                 (_%E122161122196%_)))
             _%stx122157%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind122116%_)
        (let* ((_%e122117122127%_ _%bind122116%_)
               (_%E122119122131%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122117122127%_)))
               (_%E122118122153%_
                (lambda ()
                  (if (gx#stx-pair? _%e122117122127%_)
                      (let ((_%e122120122135%_
                             (gx#syntax-e _%e122117122127%_)))
                        (let ((_%hd122121122138%_ (##car _%e122120122135%_))
                              (_%tl122122122140%_ (##cdr _%e122120122135%_)))
                          (if (gx#stx-pair? _%tl122122122140%_)
                              (let ((_%e122123122143%_
                                     (gx#syntax-e _%tl122122122140%_)))
                                (let ((_%hd122124122146%_
                                       (##car _%e122123122143%_))
                                      (_%tl122125122148%_
                                       (##cdr _%e122123122143%_)))
                                  (let ((_%expr122151%_ _%hd122124122146%_))
                                    (if (gx#stx-null? _%tl122125122148%_)
                                        (gx#core-expand-expression
                                         _%expr122151%_)
                                        (_%E122119122131%_)))))
                              (_%E122119122131%_))))
                      (_%E122119122131%_)))))
          (_%E122118122153%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind122075%_)
        (let* ((_%e122076122086%_ _%bind122075%_)
               (_%E122078122090%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122076122086%_)))
               (_%E122077122112%_
                (lambda ()
                  (if (gx#stx-pair? _%e122076122086%_)
                      (let ((_%e122079122094%_
                             (gx#syntax-e _%e122076122086%_)))
                        (let ((_%hd122080122097%_ (##car _%e122079122094%_))
                              (_%tl122081122099%_ (##cdr _%e122079122094%_)))
                          (let ((_%hd122102%_ _%hd122080122097%_))
                            (if (gx#stx-pair? _%tl122081122099%_)
                                (let ((_%e122082122104%_
                                       (gx#syntax-e _%tl122081122099%_)))
                                  (let ((_%hd122083122107%_
                                         (##car _%e122082122104%_))
                                        (_%tl122084122109%_
                                         (##cdr _%e122082122104%_)))
                                    (if (gx#stx-null? _%tl122084122109%_)
                                        (gx#core-bind-values!__0 _%hd122102%_)
                                        (_%E122078122090%_))))
                                (_%E122078122090%_)))))
                      (_%E122078122090%_)))))
          (_%E122077122112%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind122033%_ _%expr122034%_)
        (let* ((_%e122035122045%_ _%bind122033%_)
               (_%E122037122049%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122035122045%_)))
               (_%E122036122071%_
                (lambda ()
                  (if (gx#stx-pair? _%e122035122045%_)
                      (let ((_%e122038122053%_
                             (gx#syntax-e _%e122035122045%_)))
                        (let ((_%hd122039122056%_ (##car _%e122038122053%_))
                              (_%tl122040122058%_ (##cdr _%e122038122053%_)))
                          (let ((_%hd122061%_ _%hd122039122056%_))
                            (if (gx#stx-pair? _%tl122040122058%_)
                                (let ((_%e122041122063%_
                                       (gx#syntax-e _%tl122040122058%_)))
                                  (let ((_%hd122042122066%_
                                         (##car _%e122041122063%_))
                                        (_%tl122043122068%_
                                         (##cdr _%e122041122063%_)))
                                    (if (gx#stx-null? _%tl122043122068%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd122061%_)
                                              (cons _%expr122034%_ '()))
                                        (_%E122037122049%_))))
                                (_%E122037122049%_)))))
                      (_%E122037122049%_)))))
          (_%E122036122071%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx121987%_)
        (let* ((_%e121988121998%_ _%stx121987%_)
               (_%E121990122002%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121988121998%_)))
               (_%E121989122029%_
                (lambda ()
                  (if (gx#stx-pair? _%e121988121998%_)
                      (let ((_%e121991122006%_
                             (gx#syntax-e _%e121988121998%_)))
                        (let ((_%hd121992122009%_ (##car _%e121991122006%_))
                              (_%tl121993122011%_ (##cdr _%e121991122006%_)))
                          (if (gx#stx-pair? _%tl121993122011%_)
                              (let ((_%e121994122014%_
                                     (gx#syntax-e _%tl121993122011%_)))
                                (let ((_%hd121995122017%_
                                       (##car _%e121994122014%_))
                                      (_%tl121996122019%_
                                       (##cdr _%e121994122014%_)))
                                  (let* ((_%hd122022%_ _%hd121995122017%_)
                                         (_%body122024%_ _%tl121996122019%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd122022%_)
                                        (let ((_%expanders122026%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd122022%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd122022%_
                                              _%expanders122026%_)
                                             (gx#core-expand-local-block
                                              _%stx121987%_
                                              _%body122024%_))
                                           gx#current-expander-context
                                           (let ((__obj123408
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123408)
                                             __obj123408)))
                                        (_%E121990122002%_)))))
                              (_%E121990122002%_))))
                      (_%E121990122002%_)))))
          (_%E121989122029%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx121936%_)
        (let* ((_%e121937121947%_ _%stx121936%_)
               (_%E121939121951%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121937121947%_)))
               (_%E121938121983%_
                (lambda ()
                  (if (gx#stx-pair? _%e121937121947%_)
                      (let ((_%e121940121955%_
                             (gx#syntax-e _%e121937121947%_)))
                        (let ((_%hd121941121958%_ (##car _%e121940121955%_))
                              (_%tl121942121960%_ (##cdr _%e121940121955%_)))
                          (if (gx#stx-pair? _%tl121942121960%_)
                              (let ((_%e121943121963%_
                                     (gx#syntax-e _%tl121942121960%_)))
                                (let ((_%hd121944121966%_
                                       (##car _%e121943121963%_))
                                      (_%tl121945121968%_
                                       (##cdr _%e121943121963%_)))
                                  (let* ((_%hd121971%_ _%hd121944121966%_)
                                         (_%body121973%_ _%tl121945121968%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd121971%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd121971%_
                                            (make-list
                                             (gx#stx-length _%hd121971%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g121975121978%_
                                                     _%g121976121980%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g121975121978%_
                                               _%g121976121980%_
                                               '#t))
                                            _%hd121971%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd121971%_))
                                           (gx#core-expand-local-block
                                            _%stx121936%_
                                            _%body121973%_))
                                         gx#current-expander-context
                                         (let ((__obj123409
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123409)
                                           __obj123409))
                                        (_%E121939121951%_)))))
                              (_%E121939121951%_))))
                      (_%E121939121951%_)))))
          (_%E121938121983%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx121893%_)
        (if (gx#stx-list? _%stx121893%_)
            (gx#stx-andmap
             (lambda (_%bind121895%_)
               (let* ((_%e121896121906%_ _%bind121895%_)
                      (_%E121898121910%_ (lambda () '#f))
                      (_%E121897121932%_
                       (lambda ()
                         (if (gx#stx-pair? _%e121896121906%_)
                             (let ((_%e121899121914%_
                                    (gx#syntax-e _%e121896121906%_)))
                               (let ((_%hd121900121917%_
                                      (##car _%e121899121914%_))
                                     (_%tl121901121919%_
                                      (##cdr _%e121899121914%_)))
                                 (let ((_%hd121922%_ _%hd121900121917%_))
                                   (if (gx#stx-pair? _%tl121901121919%_)
                                       (let ((_%e121902121924%_
                                              (gx#syntax-e
                                               _%tl121901121919%_)))
                                         (let ((_%hd121903121927%_
                                                (##car _%e121902121924%_))
                                               (_%tl121904121929%_
                                                (##cdr _%e121902121924%_)))
                                           (if (gx#stx-null?
                                                _%tl121904121929%_)
                                               (gx#identifier? _%hd121922%_)
                                               (_%E121898121910%_))))
                                       (_%E121898121910%_)))))
                             (_%E121898121910%_)))))
                 (_%E121897121932%_)))
             _%stx121893%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind121849%_)
        (let* ((_%e121850121860%_ _%bind121849%_)
               (_%E121852121864%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121850121860%_)))
               (_%E121851121889%_
                (lambda ()
                  (if (gx#stx-pair? _%e121850121860%_)
                      (let ((_%e121853121868%_
                             (gx#syntax-e _%e121850121860%_)))
                        (let ((_%hd121854121871%_ (##car _%e121853121868%_))
                              (_%tl121855121873%_ (##cdr _%e121853121868%_)))
                          (if (gx#stx-pair? _%tl121855121873%_)
                              (let ((_%e121856121876%_
                                     (gx#syntax-e _%tl121855121873%_)))
                                (let ((_%hd121857121879%_
                                       (##car _%e121856121876%_))
                                      (_%tl121858121881%_
                                       (##cdr _%e121856121876%_)))
                                  (let ((_%expr121884%_ _%hd121857121879%_))
                                    (if (gx#stx-null? _%tl121858121881%_)
                                        (let ((_g123418_
                                               (gx#core-expand-expression+1
                                                _%expr121884%_)))
                                          (begin
                                            (let ((_g123419_
                                                   (if (##values? _g123418_)
                                                       (##vector-length
                                                        _g123418_)
                                                       1)))
                                              (if (not (##fx= _g123419_ 2))
                                                  (error "Context expects 2 values"
                                                         _g123419_)))
                                            (let ((_%_121886%_
                                                   (##vector-ref _g123418_ 0))
                                                  (_%e121887%_
                                                   (##vector-ref _g123418_ 1)))
                                              _%e121887%_)))
                                        (_%E121852121864%_)))))
                              (_%E121852121864%_))))
                      (_%E121852121864%_)))))
          (_%E121851121889%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind121794%_ _%e121795%_ _%rebind?121796%_)
        (let* ((_%e121797121807%_ _%bind121794%_)
               (_%E121799121811%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121797121807%_)))
               (_%E121798121833%_
                (lambda ()
                  (if (gx#stx-pair? _%e121797121807%_)
                      (let ((_%e121800121815%_
                             (gx#syntax-e _%e121797121807%_)))
                        (let ((_%hd121801121818%_ (##car _%e121800121815%_))
                              (_%tl121802121820%_ (##cdr _%e121800121815%_)))
                          (let ((_%id121823%_ _%hd121801121818%_))
                            (if (gx#stx-pair? _%tl121802121820%_)
                                (let ((_%e121803121825%_
                                       (gx#syntax-e _%tl121802121820%_)))
                                  (let ((_%hd121804121828%_
                                         (##car _%e121803121825%_))
                                        (_%tl121805121830%_
                                         (##cdr _%e121803121825%_)))
                                    (if (gx#stx-null? _%tl121805121830%_)
                                        (gx#core-bind-syntax!__1
                                         _%id121823%_
                                         _%e121795%_
                                         _%rebind?121796%_)
                                        (_%E121799121811%_))))
                                (_%E121799121811%_)))))
                      (_%E121799121811%_)))))
          (_%E121798121833%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind121840%_ _%e121841%_)
        (let ((_%rebind?121843%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind121840%_
           _%e121841%_
           _%rebind?121843%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g123421_
        (let ((_g123420_ (##length _g123421_)))
          (cond ((##fx= _g123420_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g123421_))
                ((##fx= _g123420_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g123421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g123421_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx121752%_)
        (let* ((_%e121753121763%_ _%stx121752%_)
               (_%E121755121767%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121753121763%_)))
               (_%E121754121789%_
                (lambda ()
                  (if (gx#stx-pair? _%e121753121763%_)
                      (let ((_%e121756121771%_
                             (gx#syntax-e _%e121753121763%_)))
                        (let ((_%hd121757121774%_ (##car _%e121756121771%_))
                              (_%tl121758121776%_ (##cdr _%e121756121771%_)))
                          (if (gx#stx-pair? _%tl121758121776%_)
                              (let ((_%e121759121779%_
                                     (gx#syntax-e _%tl121758121776%_)))
                                (let ((_%hd121760121782%_
                                       (##car _%e121759121779%_))
                                      (_%tl121761121784%_
                                       (##cdr _%e121759121779%_)))
                                  (let ((_%expr121787%_ _%hd121760121782%_))
                                    (if (gx#stx-null? _%tl121761121784%_)
                                        (gx#core-expand-expression
                                         _%expr121787%_)
                                        (_%E121755121767%_)))))
                              (_%E121755121767%_))))
                      (_%E121755121767%_)))))
          (_%E121754121789%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx121711%_)
        (let* ((_%e121712121722%_ _%stx121711%_)
               (_%E121714121726%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121712121722%_)))
               (_%E121713121748%_
                (lambda ()
                  (if (gx#stx-pair? _%e121712121722%_)
                      (let ((_%e121715121730%_
                             (gx#syntax-e _%e121712121722%_)))
                        (let ((_%hd121716121733%_ (##car _%e121715121730%_))
                              (_%tl121717121735%_ (##cdr _%e121715121730%_)))
                          (if (gx#stx-pair? _%tl121717121735%_)
                              (let ((_%e121718121738%_
                                     (gx#syntax-e _%tl121717121735%_)))
                                (let ((_%hd121719121741%_
                                       (##car _%e121718121738%_))
                                      (_%tl121720121743%_
                                       (##cdr _%e121718121738%_)))
                                  (let ((_%e121746%_ _%hd121719121741%_))
                                    (if (gx#stx-null? _%tl121720121743%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e121746%_)
                                                     '()))
                                         (gx#stx-source _%stx121711%_))
                                        (_%E121714121726%_)))))
                              (_%E121714121726%_))))
                      (_%E121714121726%_)))))
          (_%E121713121748%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx121670%_)
        (let* ((_%e121671121681%_ _%stx121670%_)
               (_%E121673121685%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121671121681%_)))
               (_%E121672121707%_
                (lambda ()
                  (if (gx#stx-pair? _%e121671121681%_)
                      (let ((_%e121674121689%_
                             (gx#syntax-e _%e121671121681%_)))
                        (let ((_%hd121675121692%_ (##car _%e121674121689%_))
                              (_%tl121676121694%_ (##cdr _%e121674121689%_)))
                          (if (gx#stx-pair? _%tl121676121694%_)
                              (let ((_%e121677121697%_
                                     (gx#syntax-e _%tl121676121694%_)))
                                (let ((_%hd121678121700%_
                                       (##car _%e121677121697%_))
                                      (_%tl121679121702%_
                                       (##cdr _%e121677121697%_)))
                                  (let ((_%e121705%_ _%hd121678121700%_))
                                    (if (gx#stx-null? _%tl121679121702%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e121705%_)
                                                     '()))
                                         (gx#stx-source _%stx121670%_))
                                        (_%E121673121685%_)))))
                              (_%E121673121685%_))))
                      (_%E121673121685%_)))))
          (_%E121672121707%_))))
    (define gx#core-expand-call%
      (lambda (_%stx121627%_)
        (let* ((_%e121628121638%_ _%stx121627%_)
               (_%E121630121642%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121628121638%_)))
               (_%E121629121666%_
                (lambda ()
                  (if (gx#stx-pair? _%e121628121638%_)
                      (let ((_%e121631121646%_
                             (gx#syntax-e _%e121628121638%_)))
                        (let ((_%hd121632121649%_ (##car _%e121631121646%_))
                              (_%tl121633121651%_ (##cdr _%e121631121646%_)))
                          (if (gx#stx-pair? _%tl121633121651%_)
                              (let ((_%e121634121654%_
                                     (gx#syntax-e _%tl121633121651%_)))
                                (let ((_%hd121635121657%_
                                       (##car _%e121634121654%_))
                                      (_%tl121636121659%_
                                       (##cdr _%e121634121654%_)))
                                  (let* ((_%rator121662%_ _%hd121635121657%_)
                                         (_%args121664%_ _%tl121636121659%_))
                                    (if (gx#stx-list? _%args121664%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator121662%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args121664%_))
                                         (gx#stx-source _%stx121627%_))
                                        (_%E121630121642%_)))))
                              (_%E121630121642%_))))
                      (_%E121630121642%_)))))
          (_%E121629121666%_))))
    (define gx#core-expand-if%
      (lambda (_%stx121560%_)
        (let* ((_%e121561121577%_ _%stx121560%_)
               (_%E121563121581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121561121577%_)))
               (_%E121562121623%_
                (lambda ()
                  (if (gx#stx-pair? _%e121561121577%_)
                      (let ((_%e121564121585%_
                             (gx#syntax-e _%e121561121577%_)))
                        (let ((_%hd121565121588%_ (##car _%e121564121585%_))
                              (_%tl121566121590%_ (##cdr _%e121564121585%_)))
                          (if (gx#stx-pair? _%tl121566121590%_)
                              (let ((_%e121567121593%_
                                     (gx#syntax-e _%tl121566121590%_)))
                                (let ((_%hd121568121596%_
                                       (##car _%e121567121593%_))
                                      (_%tl121569121598%_
                                       (##cdr _%e121567121593%_)))
                                  (let ((_%test121601%_ _%hd121568121596%_))
                                    (if (gx#stx-pair? _%tl121569121598%_)
                                        (let ((_%e121570121603%_
                                               (gx#syntax-e
                                                _%tl121569121598%_)))
                                          (let ((_%hd121571121606%_
                                                 (##car _%e121570121603%_))
                                                (_%tl121572121608%_
                                                 (##cdr _%e121570121603%_)))
                                            (let ((_%K121611%_
                                                   _%hd121571121606%_))
                                              (if (gx#stx-pair?
                                                   _%tl121572121608%_)
                                                  (let ((_%e121573121613%_
                                                         (gx#syntax-e
                                                          _%tl121572121608%_)))
                                                    (let ((_%hd121574121616%_
                                                           (##car _%e121573121613%_))
                                                          (_%tl121575121618%_
                                                           (##cdr _%e121573121613%_)))
                                                      (let ((_%E121621%_
                                                             _%hd121574121616%_))
                                                        (if (gx#stx-null?
                                                             _%tl121575121618%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test121601%_)
                                 (cons (gx#core-expand-expression _%K121611%_)
                                       (cons (gx#core-expand-expression
                                              _%E121621%_)
                                             '()))))
                     (gx#stx-source _%stx121560%_))
                    (_%E121563121581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121563121581%_)))))
                                        (_%E121563121581%_)))))
                              (_%E121563121581%_))))
                      (_%E121563121581%_)))))
          (_%E121562121623%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx121519%_)
        (let* ((_%e121520121530%_ _%stx121519%_)
               (_%E121522121534%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121520121530%_)))
               (_%E121521121556%_
                (lambda ()
                  (if (gx#stx-pair? _%e121520121530%_)
                      (let ((_%e121523121538%_
                             (gx#syntax-e _%e121520121530%_)))
                        (let ((_%hd121524121541%_ (##car _%e121523121538%_))
                              (_%tl121525121543%_ (##cdr _%e121523121538%_)))
                          (if (gx#stx-pair? _%tl121525121543%_)
                              (let ((_%e121526121546%_
                                     (gx#syntax-e _%tl121525121543%_)))
                                (let ((_%hd121527121549%_
                                       (##car _%e121526121546%_))
                                      (_%tl121528121551%_
                                       (##cdr _%e121526121546%_)))
                                  (let ((_%id121554%_ _%hd121527121549%_))
                                    (if (gx#stx-null? _%tl121528121551%_)
                                        (if (gx#identifier? _%id121554%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id121554%_
                                                          _%stx121519%_)
                                                         '()))
                                             (gx#stx-source _%stx121519%_))
                                            (_%E121522121534%_))
                                        (_%E121522121534%_)))))
                              (_%E121522121534%_))))
                      (_%E121522121534%_)))))
          (_%E121521121556%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx121465%_)
        (let* ((_%e121466121479%_ _%stx121465%_)
               (_%E121468121483%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121466121479%_)))
               (_%E121467121515%_
                (lambda ()
                  (if (gx#stx-pair? _%e121466121479%_)
                      (let ((_%e121469121487%_
                             (gx#syntax-e _%e121466121479%_)))
                        (let ((_%hd121470121490%_ (##car _%e121469121487%_))
                              (_%tl121471121492%_ (##cdr _%e121469121487%_)))
                          (if (gx#stx-pair? _%tl121471121492%_)
                              (let ((_%e121472121495%_
                                     (gx#syntax-e _%tl121471121492%_)))
                                (let ((_%hd121473121498%_
                                       (##car _%e121472121495%_))
                                      (_%tl121474121500%_
                                       (##cdr _%e121472121495%_)))
                                  (let ((_%id121503%_ _%hd121473121498%_))
                                    (if (gx#stx-pair? _%tl121474121500%_)
                                        (let ((_%e121475121505%_
                                               (gx#syntax-e
                                                _%tl121474121500%_)))
                                          (let ((_%hd121476121508%_
                                                 (##car _%e121475121505%_))
                                                (_%tl121477121510%_
                                                 (##cdr _%e121475121505%_)))
                                            (let ((_%expr121513%_
                                                   _%hd121476121508%_))
                                              (if (gx#stx-null?
                                                   _%tl121477121510%_)
                                                  (if (gx#identifier?
                                                       _%id121503%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id121503%_
                            _%stx121465%_)
                           (cons (gx#core-expand-expression _%expr121513%_)
                                 '())))
               (gx#stx-source _%stx121465%_))
              (_%E121468121483%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121468121483%_)))))
                                        (_%E121468121483%_)))))
                              (_%E121468121483%_))))
                      (_%E121468121483%_)))))
          (_%E121467121515%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx121310%_)
        (letrec ((_%generate121312%_
                  (lambda (_%body121342%_)
                    (let _%lp121344%_ ((_%rest121346%_ _%body121342%_)
                                       (_%ns121347%_
                                        (gx#core-context-namespace__0))
                                       (_%r121348%_ '()))
                      (let* ((_%e121349121364%_ _%rest121346%_)
                             (_%E121362121368%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e121349121364%_)))
                             (_%E121358121372%_
                              (lambda ()
                                (if (gx#stx-null? _%e121349121364%_)
                                    (reverse _%r121348%_)
                                    (_%E121362121368%_))))
                             (_%E121351121429%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121349121364%_)
                                    (let ((_%e121359121376%_
                                           (gx#syntax-e _%e121349121364%_)))
                                      (let ((_%hd121360121379%_
                                             (##car _%e121359121376%_))
                                            (_%tl121361121381%_
                                             (##cdr _%e121359121376%_)))
                                        (let* ((_%hd121384%_
                                                _%hd121360121379%_)
                                               (_%rest121386%_
                                                _%tl121361121381%_))
                                          (if (gx#identifier? _%hd121384%_)
                                              (_%lp121344%_
                                               _%rest121386%_
                                               _%ns121347%_
                                               (cons (cons _%hd121384%_
                                                           (cons (if _%ns121347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd121384%_
                              _%ns121347%_
                              '"#"
                              _%hd121384%_)
                             _%hd121384%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r121348%_))
                                              (let* ((_%e121387121397%_
                                                      _%hd121384%_)
                                                     (_%E121389121401%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e121387121397%_)))
                                                     (_%E121388121425%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121387121397%_)
                                                            (let ((_%e121390121405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121387121397%_)))
                      (let ((_%hd121391121408%_ (##car _%e121390121405%_))
                            (_%tl121392121410%_ (##cdr _%e121390121405%_)))
                        (let ((_%id121413%_ _%hd121391121408%_))
                          (if (gx#stx-pair? _%tl121392121410%_)
                              (let ((_%e121393121415%_
                                     (gx#syntax-e _%tl121392121410%_)))
                                (let ((_%hd121394121418%_
                                       (##car _%e121393121415%_))
                                      (_%tl121395121420%_
                                       (##cdr _%e121393121415%_)))
                                  (let ((_%eid121423%_ _%hd121394121418%_))
                                    (if (gx#stx-null? _%tl121395121420%_)
                                        (if (and (gx#identifier? _%id121413%_)
                                                 (gx#identifier?
                                                  _%eid121423%_))
                                            (_%lp121344%_
                                             _%rest121386%_
                                             _%ns121347%_
                                             (cons (cons _%id121413%_
                                                         (cons _%eid121423%_
                                                               '()))
                                                   _%r121348%_))
                                            (_%E121389121401%_))
                                        (_%E121389121401%_)))))
                              (_%E121389121401%_)))))
                    (_%E121389121401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121388121425%_))))))
                                    (_%E121358121372%_))))
                             (_%E121350121461%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121349121364%_)
                                    (let ((_%e121352121433%_
                                           (gx#syntax-e _%e121349121364%_)))
                                      (let ((_%hd121353121436%_
                                             (##car _%e121352121433%_))
                                            (_%tl121354121438%_
                                             (##cdr _%e121352121433%_)))
                                        (if (eq? (gx#stx-e _%hd121353121436%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl121354121438%_)
                                                (let ((_%e121355121441%_
                                                       (gx#syntax-e
                                                        _%tl121354121438%_)))
                                                  (let ((_%hd121356121444%_
                                                         (##car _%e121355121441%_))
                                                        (_%tl121357121446%_
                                                         (##cdr _%e121355121441%_)))
                                                    (let* ((_%ns121449%_
                                                            _%hd121356121444%_)
                                                           (_%rest121451%_
                                                            _%tl121357121446%_)
                                                           (_%ns121459%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns121449%_)
                        (symbol->string (gx#stx-e _%ns121449%_))
                        (if (or (gx#stx-string? _%ns121449%_)
                                (gx#stx-false? _%ns121449%_))
                            (gx#stx-e _%ns121449%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx121310%_
                             _%ns121449%_)))))
              (_%lp121344%_ _%rest121451%_ _%ns121459%_ _%r121348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121351121429%_))
                                            (_%E121351121429%_))))
                                    (_%E121351121429%_)))))
                        (_%E121350121461%_))))))
          (let* ((_%e121313121320%_ _%stx121310%_)
                 (_%E121315121324%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121313121320%_)))
                 (_%E121314121338%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121313121320%_)
                        (let ((_%e121316121328%_
                               (gx#syntax-e _%e121313121320%_)))
                          (let ((_%hd121317121331%_ (##car _%e121316121328%_))
                                (_%tl121318121333%_ (##cdr _%e121316121328%_)))
                            (let ((_%body121336%_ _%tl121318121333%_))
                              (if (gx#stx-list? _%body121336%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate121312%_ _%body121336%_))
                                  (_%E121315121324%_)))))
                        (_%E121315121324%_)))))
            (_%E121314121338%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx121256%_)
        (let* ((_%e121257121270%_ _%stx121256%_)
               (_%E121259121274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121257121270%_)))
               (_%E121258121306%_
                (lambda ()
                  (if (gx#stx-pair? _%e121257121270%_)
                      (let ((_%e121260121278%_
                             (gx#syntax-e _%e121257121270%_)))
                        (let ((_%hd121261121281%_ (##car _%e121260121278%_))
                              (_%tl121262121283%_ (##cdr _%e121260121278%_)))
                          (if (gx#stx-pair? _%tl121262121283%_)
                              (let ((_%e121263121286%_
                                     (gx#syntax-e _%tl121262121283%_)))
                                (let ((_%hd121264121289%_
                                       (##car _%e121263121286%_))
                                      (_%tl121265121291%_
                                       (##cdr _%e121263121286%_)))
                                  (let ((_%hd121294%_ _%hd121264121289%_))
                                    (if (gx#stx-pair? _%tl121265121291%_)
                                        (let ((_%e121266121296%_
                                               (gx#syntax-e
                                                _%tl121265121291%_)))
                                          (let ((_%hd121267121299%_
                                                 (##car _%e121266121296%_))
                                                (_%tl121268121301%_
                                                 (##cdr _%e121266121296%_)))
                                            (let ((_%expr121304%_
                                                   _%hd121267121299%_))
                                              (if (gx#stx-null?
                                                   _%tl121268121301%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd121294%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd121294%_)
                          (cons _%expr121304%_ '())))
              (_%E121259121274%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121259121274%_)))))
                                        (_%E121259121274%_)))))
                              (_%E121259121274%_))))
                      (_%E121259121274%_)))))
          (_%E121258121306%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx121202%_)
        (let* ((_%e121203121216%_ _%stx121202%_)
               (_%E121205121220%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121203121216%_)))
               (_%E121204121252%_
                (lambda ()
                  (if (gx#stx-pair? _%e121203121216%_)
                      (let ((_%e121206121224%_
                             (gx#syntax-e _%e121203121216%_)))
                        (let ((_%hd121207121227%_ (##car _%e121206121224%_))
                              (_%tl121208121229%_ (##cdr _%e121206121224%_)))
                          (if (gx#stx-pair? _%tl121208121229%_)
                              (let ((_%e121209121232%_
                                     (gx#syntax-e _%tl121208121229%_)))
                                (let ((_%hd121210121235%_
                                       (##car _%e121209121232%_))
                                      (_%tl121211121237%_
                                       (##cdr _%e121209121232%_)))
                                  (let ((_%hd121240%_ _%hd121210121235%_))
                                    (if (gx#stx-pair? _%tl121211121237%_)
                                        (let ((_%e121212121242%_
                                               (gx#syntax-e
                                                _%tl121211121237%_)))
                                          (let ((_%hd121213121245%_
                                                 (##car _%e121212121242%_))
                                                (_%tl121214121247%_
                                                 (##cdr _%e121212121242%_)))
                                            (let ((_%expr121250%_
                                                   _%hd121213121245%_))
                                              (if (gx#stx-null?
                                                   _%tl121214121247%_)
                                                  (if (gx#identifier?
                                                       _%hd121240%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd121240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr121250%_ '())))
              (_%E121205121220%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121205121220%_)))))
                                        (_%E121205121220%_)))))
                              (_%E121205121220%_))))
                      (_%E121205121220%_)))))
          (_%E121204121252%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx121148%_)
        (let* ((_%e121149121162%_ _%stx121148%_)
               (_%E121151121166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121149121162%_)))
               (_%E121150121198%_
                (lambda ()
                  (if (gx#stx-pair? _%e121149121162%_)
                      (let ((_%e121152121170%_
                             (gx#syntax-e _%e121149121162%_)))
                        (let ((_%hd121153121173%_ (##car _%e121152121170%_))
                              (_%tl121154121175%_ (##cdr _%e121152121170%_)))
                          (if (gx#stx-pair? _%tl121154121175%_)
                              (let ((_%e121155121178%_
                                     (gx#syntax-e _%tl121154121175%_)))
                                (let ((_%hd121156121181%_
                                       (##car _%e121155121178%_))
                                      (_%tl121157121183%_
                                       (##cdr _%e121155121178%_)))
                                  (let ((_%id121186%_ _%hd121156121181%_))
                                    (if (gx#stx-pair? _%tl121157121183%_)
                                        (let ((_%e121158121188%_
                                               (gx#syntax-e
                                                _%tl121157121183%_)))
                                          (let ((_%hd121159121191%_
                                                 (##car _%e121158121188%_))
                                                (_%tl121160121193%_
                                                 (##cdr _%e121158121188%_)))
                                            (let ((_%alias-id121196%_
                                                   _%hd121159121191%_))
                                              (if (gx#stx-null?
                                                   _%tl121160121193%_)
                                                  (if (and (gx#identifier?
                                                            _%id121186%_)
                                                           (gx#identifier?
                                                            _%alias-id121196%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id121186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id121196%_ '())))
              (_%E121151121166%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121151121166%_)))))
                                        (_%E121151121166%_)))))
                              (_%E121151121166%_))))
                      (_%E121151121166%_)))))
          (_%E121150121198%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx121105%_)
        (let* ((_%e121106121116%_ _%stx121105%_)
               (_%E121108121120%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121106121116%_)))
               (_%E121107121144%_
                (lambda ()
                  (if (gx#stx-pair? _%e121106121116%_)
                      (let ((_%e121109121124%_
                             (gx#syntax-e _%e121106121116%_)))
                        (let ((_%hd121110121127%_ (##car _%e121109121124%_))
                              (_%tl121111121129%_ (##cdr _%e121109121124%_)))
                          (if (gx#stx-pair? _%tl121111121129%_)
                              (let ((_%e121112121132%_
                                     (gx#syntax-e _%tl121111121129%_)))
                                (let ((_%hd121113121135%_
                                       (##car _%e121112121132%_))
                                      (_%tl121114121137%_
                                       (##cdr _%e121112121132%_)))
                                  (let* ((_%hd121140%_ _%hd121113121135%_)
                                         (_%body121142%_ _%tl121114121137%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd121140%_)
                                             (gx#stx-list? _%body121142%_)
                                             (not (gx#stx-null?
                                                   _%body121142%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd121140%_)
                                         _%body121142%_)
                                        (_%E121108121120%_)))))
                              (_%E121108121120%_))))
                      (_%E121108121120%_)))))
          (_%E121107121144%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx121041%_)
        (letrec ((_%generate121043%_
                  (lambda (_%clause121073%_)
                    (let* ((_%e121074121081%_ _%clause121073%_)
                           (_%E121076121085%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx121041%_
                               _%clause121073%_)))
                           (_%E121075121101%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121074121081%_)
                                  (let ((_%e121077121089%_
                                         (gx#syntax-e _%e121074121081%_)))
                                    (let ((_%hd121078121092%_
                                           (##car _%e121077121089%_))
                                          (_%tl121079121094%_
                                           (##cdr _%e121077121089%_)))
                                      (let* ((_%hd121097%_ _%hd121078121092%_)
                                             (_%body121099%_
                                              _%tl121079121094%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd121097%_)
                                                 (gx#stx-list? _%body121099%_)
                                                 (not (gx#stx-null?
                                                       _%body121099%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd121097%_)
                                                   _%body121099%_)
                                             (gx#stx-source _%clause121073%_))
                                            (_%E121076121085%_)))))
                                  (_%E121076121085%_)))))
                      (_%E121075121101%_)))))
          (let* ((_%e121044121051%_ _%stx121041%_)
                 (_%E121046121055%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121044121051%_)))
                 (_%E121045121069%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121044121051%_)
                        (let ((_%e121047121059%_
                               (gx#syntax-e _%e121044121051%_)))
                          (let ((_%hd121048121062%_ (##car _%e121047121059%_))
                                (_%tl121049121064%_ (##cdr _%e121047121059%_)))
                            (let ((_%clauses121067%_ _%tl121049121064%_))
                              (if (gx#stx-list? _%clauses121067%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate121043%_
                                    _%clauses121067%_))
                                  (_%E121046121055%_)))))
                        (_%E121046121055%_)))))
            (_%E121045121069%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx120942%_ _%form120943%_)
        (letrec ((_%generate120945%_
                  (lambda (_%bind120988%_)
                    (let* ((_%e120989120999%_ _%bind120988%_)
                           (_%E120991121003%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx120942%_
                               _%bind120988%_)))
                           (_%E120990121027%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120989120999%_)
                                  (let ((_%e120992121007%_
                                         (gx#syntax-e _%e120989120999%_)))
                                    (let ((_%hd120993121010%_
                                           (##car _%e120992121007%_))
                                          (_%tl120994121012%_
                                           (##cdr _%e120992121007%_)))
                                      (let ((_%ids121015%_ _%hd120993121010%_))
                                        (if (gx#stx-pair? _%tl120994121012%_)
                                            (let ((_%e120995121017%_
                                                   (gx#syntax-e
                                                    _%tl120994121012%_)))
                                              (let ((_%hd120996121020%_
                                                     (##car _%e120995121017%_))
                                                    (_%tl120997121022%_
                                                     (##cdr _%e120995121017%_)))
                                                (let ((_%expr121025%_
                                                       _%hd120996121020%_))
                                                  (if (gx#stx-null?
                                                       _%tl120997121022%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids121015%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids121015%_)
                        (cons _%expr121025%_ '()))
                  (_%E120991121003%_))
              (_%E120991121003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E120991121003%_)))))
                                  (_%E120991121003%_)))))
                      (_%E120990121027%_)))))
          (let* ((_%e120946120956%_ _%stx120942%_)
                 (_%E120948120960%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120946120956%_)))
                 (_%E120947120984%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120946120956%_)
                        (let ((_%e120949120964%_
                               (gx#syntax-e _%e120946120956%_)))
                          (let ((_%hd120950120967%_ (##car _%e120949120964%_))
                                (_%tl120951120969%_ (##cdr _%e120949120964%_)))
                            (if (gx#stx-pair? _%tl120951120969%_)
                                (let ((_%e120952120972%_
                                       (gx#syntax-e _%tl120951120969%_)))
                                  (let ((_%hd120953120975%_
                                         (##car _%e120952120972%_))
                                        (_%tl120954120977%_
                                         (##cdr _%e120952120972%_)))
                                    (let* ((_%hd120980%_ _%hd120953120975%_)
                                           (_%body120982%_ _%tl120954120977%_))
                                      (if (and (gx#stx-list? _%hd120980%_)
                                               (gx#stx-list? _%body120982%_)
                                               (not (gx#stx-null?
                                                     _%body120982%_)))
                                          (gx#core-cons*
                                           _%form120943%_
                                           (gx#stx-map1
                                            _%generate120945%_
                                            _%hd120980%_)
                                           _%body120982%_)
                                          (_%E120948120960%_)))))
                                (_%E120948120960%_))))
                        (_%E120948120960%_)))))
            (_%E120947120984%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx121034%_)
        (let ((_%form121036%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx121034%_ _%form121036%_))))
    (define gx#macro-expand-let-values
      (lambda _g123423_
        (let ((_g123422_ (##length _g123423_)))
          (cond ((##fx= _g123422_ 1)
                 (apply gx#macro-expand-let-values__0 _g123423_))
                ((##fx= _g123422_ 2)
                 (apply gx#macro-expand-let-values__% _g123423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g123423_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx120939%_)
        (gx#macro-expand-let-values__% _%stx120939%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx120937%_)
        (gx#macro-expand-let-values__% _%stx120937%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx120828%_)
        (let* ((_%e120829120855%_ _%stx120828%_)
               (_%E120841120859%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120829120855%_)))
               (_%E120831120901%_
                (lambda ()
                  (if (gx#stx-pair? _%e120829120855%_)
                      (let ((_%e120842120863%_
                             (gx#syntax-e _%e120829120855%_)))
                        (let ((_%hd120843120866%_ (##car _%e120842120863%_))
                              (_%tl120844120868%_ (##cdr _%e120842120863%_)))
                          (if (gx#stx-pair? _%tl120844120868%_)
                              (let ((_%e120845120871%_
                                     (gx#syntax-e _%tl120844120868%_)))
                                (let ((_%hd120846120874%_
                                       (##car _%e120845120871%_))
                                      (_%tl120847120876%_
                                       (##cdr _%e120845120871%_)))
                                  (let ((_%test120879%_ _%hd120846120874%_))
                                    (if (gx#stx-pair? _%tl120847120876%_)
                                        (let ((_%e120848120881%_
                                               (gx#syntax-e
                                                _%tl120847120876%_)))
                                          (let ((_%hd120849120884%_
                                                 (##car _%e120848120881%_))
                                                (_%tl120850120886%_
                                                 (##cdr _%e120848120881%_)))
                                            (let ((_%K120889%_
                                                   _%hd120849120884%_))
                                              (if (gx#stx-pair?
                                                   _%tl120850120886%_)
                                                  (let ((_%e120851120891%_
                                                         (gx#syntax-e
                                                          _%tl120850120886%_)))
                                                    (let ((_%hd120852120894%_
                                                           (##car _%e120851120891%_))
                                                          (_%tl120853120896%_
                                                           (##cdr _%e120851120891%_)))
                                                      (let ((_%E120899%_
                                                             _%hd120852120894%_))
                                                        (if (gx#stx-null?
                                                             _%tl120853120896%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test120879%_
                                                             _%K120889%_
                                                             _%E120899%_)
                                                            (_%E120841120859%_)))))
                                                  (_%E120841120859%_)))))
                                        (_%E120841120859%_)))))
                              (_%E120841120859%_))))
                      (_%E120841120859%_))))
               (_%E120830120933%_
                (lambda ()
                  (if (gx#stx-pair? _%e120829120855%_)
                      (let ((_%e120832120905%_
                             (gx#syntax-e _%e120829120855%_)))
                        (let ((_%hd120833120908%_ (##car _%e120832120905%_))
                              (_%tl120834120910%_ (##cdr _%e120832120905%_)))
                          (if (gx#stx-pair? _%tl120834120910%_)
                              (let ((_%e120835120913%_
                                     (gx#syntax-e _%tl120834120910%_)))
                                (let ((_%hd120836120916%_
                                       (##car _%e120835120913%_))
                                      (_%tl120837120918%_
                                       (##cdr _%e120835120913%_)))
                                  (let ((_%test120921%_ _%hd120836120916%_))
                                    (if (gx#stx-pair? _%tl120837120918%_)
                                        (let ((_%e120838120923%_
                                               (gx#syntax-e
                                                _%tl120837120918%_)))
                                          (let ((_%hd120839120926%_
                                                 (##car _%e120838120923%_))
                                                (_%tl120840120928%_
                                                 (##cdr _%e120838120923%_)))
                                            (let ((_%K120931%_
                                                   _%hd120839120926%_))
                                              (if (gx#stx-null?
                                                   _%tl120840120928%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test120921%_
                                                   _%K120931%_
                                                   '#!void)
                                                  (_%E120831120901%_)))))
                                        (_%E120831120901%_)))))
                              (_%E120831120901%_))))
                      (_%E120831120901%_)))))
          (_%E120830120933%_))))
    (define gx#free-identifier=?
      (lambda (_%xid120813%_ _%yid120814%_)
        (let ((_%xe120816%_ (gx#resolve-identifier__0 _%xid120813%_))
              (_%ye120817%_ (gx#resolve-identifier__0 _%yid120814%_)))
          (if (and _%xe120816%_ _%ye120817%_)
              (let ((_%$e120820%_ (eq? _%xe120816%_ _%ye120817%_)))
                (if _%$e120820%_
                    _%$e120820%_
                    (if (##structure-instance-of? _%xe120816%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye120817%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe120816%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye120817%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe120816%_ _%ye120817%_)
                  '#f
                  (gx#stx-eq? _%xid120813%_ _%yid120814%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid120794%_ _%yid120795%_)
        (letrec ((_%context120797%_
                  (lambda (_%e120811%_)
                    (if (##structure-direct-instance-of?
                         _%e120811%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e120811%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks120798%_
                  (lambda (_%e120806%_)
                    (if (symbol? _%e120806%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e120806%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e120806%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e120806%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap120799%_
                  (lambda (_%e120804%_)
                    (if (symbol? _%e120804%_)
                        _%e120804%_
                        (gx#syntax-local-unwrap _%e120804%_)))))
          (let ((_%x120801%_ (_%unwrap120799%_ _%xid120794%_))
                (_%y120802%_ (_%unwrap120799%_ _%yid120795%_)))
            (if (gx#stx-eq? _%x120801%_ _%y120802%_)
                (if (eq? (_%context120797%_ _%x120801%_)
                         (_%context120797%_ _%y120802%_))
                    (equal? (_%marks120798%_ _%x120801%_)
                            (_%marks120798%_ _%y120802%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx120792%_)
        (if (gx#identifier? _%stx120792%_)
            (gx#core-identifier=? _%stx120792%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx120790%_)
        (if (gx#identifier? _%stx120790%_)
            (gx#core-identifier=? _%stx120790%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx120733%_ _%where120734%_)
        (let _%lp120736%_ ((_%rest120738%_ (gx#syntax->list _%stx120733%_)))
          (let* ((_%rest120739120747%_ _%rest120738%_)
                 (_%else120741120755%_ (lambda () '#t))
                 (_%K120743120768%_
                  (lambda (_%rest120758%_ _%hd120759%_)
                    (if (gx#identifier? _%hd120759%_)
                        (if (__find (lambda (_%g120761120763%_)
                                      (gx#bound-identifier=?
                                       _%g120761120763%_
                                       _%hd120759%_))
                                    _%rest120758%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where120734%_
                             _%hd120759%_)
                            (_%lp120736%_ _%rest120758%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where120734%_
                         _%hd120759%_)))))
            (if (##pair? _%rest120739120747%_)
                (let ((_%hd120744120771%_ (##car _%rest120739120747%_))
                      (_%tl120745120773%_ (##cdr _%rest120739120747%_)))
                  (let* ((_%hd120776%_ _%hd120744120771%_)
                         (_%rest120778%_ _%tl120745120773%_))
                    (_%K120743120768%_ _%rest120778%_ _%hd120776%_)))
                (_%else120741120755%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx120783%_)
        (let ((_%where120785%_ _%stx120783%_))
          (gx#check-duplicate-identifiers__% _%stx120783%_ _%where120785%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g123425_
        (let ((_g123424_ (##length _g123425_)))
          (cond ((##fx= _g123424_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g123425_))
                ((##fx= _g123424_ 2)
                 (apply gx#check-duplicate-identifiers__% _g123425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g123425_))))))
    (define gx#core-bind-values?
      (lambda (_%stx120725%_)
        (gx#stx-andmap
         (lambda (_%x120727%_)
           (let ((_%$e120729%_ (gx#identifier? _%x120727%_)))
             (if _%$e120729%_ _%$e120729%_ (gx#stx-false? _%x120727%_))))
         _%stx120725%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx120689%_ _%rebind?120690%_ _%phi120691%_ _%ctx120692%_)
        (gx#stx-for-each1
         (lambda (_%id120694%_)
           (if (gx#identifier? _%id120694%_)
               (gx#core-bind-runtime!__%
                _%id120694%_
                _%rebind?120690%_
                _%phi120691%_
                _%ctx120692%_)
               '#!void))
         _%stx120689%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx120699%_)
        (let* ((_%rebind?120701%_ '#f)
               (_%phi120703%_ (gx#current-expander-phi))
               (_%ctx120705%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120699%_
           _%rebind?120701%_
           _%phi120703%_
           _%ctx120705%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx120707%_ _%rebind?120708%_)
        (let* ((_%phi120710%_ (gx#current-expander-phi))
               (_%ctx120712%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120707%_
           _%rebind?120708%_
           _%phi120710%_
           _%ctx120712%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx120714%_ _%rebind?120715%_ _%phi120716%_)
        (let ((_%ctx120718%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx120714%_
           _%rebind?120715%_
           _%phi120716%_
           _%ctx120718%_))))
    (define gx#core-bind-values!
      (lambda _g123427_
        (let ((_g123426_ (##length _g123427_)))
          (cond ((##fx= _g123426_ 1) (apply gx#core-bind-values!__0 _g123427_))
                ((##fx= _g123426_ 2) (apply gx#core-bind-values!__1 _g123427_))
                ((##fx= _g123426_ 3) (apply gx#core-bind-values!__2 _g123427_))
                ((##fx= _g123426_ 4) (apply gx#core-bind-values!__% _g123427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g123427_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx120684%_)
        (gx#stx-map1
         (lambda (_%x120686%_)
           (if (gx#identifier? _%x120686%_)
               (gx#core-quote-syntax__0 _%x120686%_)
               '#f))
         _%stx120684%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx120677%_)
        (if (gx#identifier? _%stx120677%_)
            (let* ((_%bind120679%_ (gx#resolve-identifier__0 _%stx120677%_))
                   (_%$e120681%_ (not _%bind120679%_)))
              (if _%$e120681%_
                  _%$e120681%_
                  (##structure-instance-of?
                   _%bind120679%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id120666%_ _%form120667%_)
        (let ((_%bind120669%_ (gx#resolve-identifier__0 _%id120666%_)))
          (if (##structure-instance-of? _%bind120669%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id120666%_)
              (if (not _%bind120669%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id120666%_)))
                      (gx#core-quote-syntax__0 _%id120666%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form120667%_
                       _%id120666%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form120667%_
                   _%id120666%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id120621%_ _%rebind?120622%_ _%phi120623%_ _%ctx120624%_)
        (let* ((_%key120626%_ (gx#core-identifier-key _%id120621%_))
               (_%eid120628%_
                (gx#make-binding-id__%
                 _%key120626%_
                 '#f
                 _%phi120623%_
                 _%ctx120624%_))
               (_%bind120634%_
                (if (##structure-instance-of?
                     _%ctx120624%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120628%_
                     _%key120626%_
                     _%phi120623%_
                     _%ctx120624%_)
                    (if (##structure-instance-of?
                         _%ctx120624%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120628%_
                         _%key120626%_
                         _%phi120623%_)
                        (if (##structure-instance-of?
                             _%ctx120624%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid120628%_
                             _%key120626%_
                             _%phi120623%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid120628%_
                             _%key120626%_
                             _%phi120623%_))))))
          (gx#bind-identifier!__%
           _%id120621%_
           _%bind120634%_
           _%rebind?120622%_
           _%phi120623%_
           _%ctx120624%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id120640%_)
        (let* ((_%rebind?120642%_ '#f)
               (_%phi120644%_ (gx#current-expander-phi))
               (_%ctx120646%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120640%_
           _%rebind?120642%_
           _%phi120644%_
           _%ctx120646%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id120648%_ _%rebind?120649%_)
        (let* ((_%phi120651%_ (gx#current-expander-phi))
               (_%ctx120653%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120648%_
           _%rebind?120649%_
           _%phi120651%_
           _%ctx120653%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id120655%_ _%rebind?120656%_ _%phi120657%_)
        (let ((_%ctx120659%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120655%_
           _%rebind?120656%_
           _%phi120657%_
           _%ctx120659%_))))
    (define gx#core-bind-runtime!
      (lambda _g123429_
        (let ((_g123428_ (##length _g123429_)))
          (cond ((##fx= _g123428_ 1)
                 (apply gx#core-bind-runtime!__0 _g123429_))
                ((##fx= _g123428_ 2)
                 (apply gx#core-bind-runtime!__1 _g123429_))
                ((##fx= _g123428_ 3)
                 (apply gx#core-bind-runtime!__2 _g123429_))
                ((##fx= _g123428_ 4)
                 (apply gx#core-bind-runtime!__% _g123429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g123429_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id120573%_
               _%eid120574%_
               _%rebind?120575%_
               _%phi120576%_
               _%ctx120577%_)
        (let* ((_%key120579%_ (gx#core-identifier-key _%id120573%_))
               (_%bind120584%_
                (if (##structure-instance-of?
                     _%ctx120577%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120574%_
                     _%key120579%_
                     _%phi120576%_
                     _%ctx120577%_)
                    (if (##structure-instance-of?
                         _%ctx120577%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120574%_
                         _%key120579%_
                         _%phi120576%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid120574%_
                         _%key120579%_
                         _%phi120576%_)))))
          (gx#bind-identifier!__%
           _%id120573%_
           _%bind120584%_
           _%rebind?120575%_
           _%phi120576%_
           _%ctx120577%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id120590%_ _%eid120591%_)
        (let* ((_%rebind?120593%_ '#f)
               (_%phi120595%_ (gx#current-expander-phi))
               (_%ctx120597%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120590%_
           _%eid120591%_
           _%rebind?120593%_
           _%phi120595%_
           _%ctx120597%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id120599%_ _%eid120600%_ _%rebind?120601%_)
        (let* ((_%phi120603%_ (gx#current-expander-phi))
               (_%ctx120605%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120599%_
           _%eid120600%_
           _%rebind?120601%_
           _%phi120603%_
           _%ctx120605%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id120607%_ _%eid120608%_ _%rebind?120609%_ _%phi120610%_)
        (let ((_%ctx120612%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120607%_
           _%eid120608%_
           _%rebind?120609%_
           _%phi120610%_
           _%ctx120612%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g123431_
        (let ((_g123430_ (##length _g123431_)))
          (cond ((##fx= _g123430_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g123431_))
                ((##fx= _g123430_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g123431_))
                ((##fx= _g123430_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g123431_))
                ((##fx= _g123430_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g123431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g123431_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id120533%_
               _%eid120534%_
               _%rebind?120535%_
               _%phi120536%_
               _%ctx120537%_)
        (gx#bind-identifier!__%
         _%id120533%_
         (##structure
          gx#extern-binding::t
          _%eid120534%_
          (gx#core-identifier-key _%id120533%_)
          _%phi120536%_)
         _%rebind?120535%_
         _%phi120536%_
         _%ctx120537%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id120542%_ _%eid120543%_)
        (let* ((_%rebind?120545%_ '#f)
               (_%phi120547%_ (gx#current-expander-phi))
               (_%ctx120549%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120542%_
           _%eid120543%_
           _%rebind?120545%_
           _%phi120547%_
           _%ctx120549%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id120551%_ _%eid120552%_ _%rebind?120553%_)
        (let* ((_%phi120555%_ (gx#current-expander-phi))
               (_%ctx120557%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120551%_
           _%eid120552%_
           _%rebind?120553%_
           _%phi120555%_
           _%ctx120557%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id120559%_ _%eid120560%_ _%rebind?120561%_ _%phi120562%_)
        (let ((_%ctx120564%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120559%_
           _%eid120560%_
           _%rebind?120561%_
           _%phi120562%_
           _%ctx120564%_))))
    (define gx#core-bind-extern!
      (lambda _g123433_
        (let ((_g123432_ (##length _g123433_)))
          (cond ((##fx= _g123432_ 2) (apply gx#core-bind-extern!__0 _g123433_))
                ((##fx= _g123432_ 3) (apply gx#core-bind-extern!__1 _g123433_))
                ((##fx= _g123432_ 4) (apply gx#core-bind-extern!__2 _g123433_))
                ((##fx= _g123432_ 5) (apply gx#core-bind-extern!__% _g123433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g123433_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id120487%_
               _%e120488%_
               _%rebind?120489%_
               _%phi120490%_
               _%ctx120491%_)
        (gx#bind-identifier!__%
         _%id120487%_
         (let ((_%key120496%_ (gx#core-identifier-key _%id120487%_))
               (_%e120497%_
                (if (or (##structure-instance-of? _%e120488%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e120488%_
                         'gx#expander-context::t))
                    _%e120488%_
                    (##structure
                     gx#user-expander::t
                     _%e120488%_
                     _%ctx120491%_
                     _%phi120490%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key120496%_
             '#t
             _%phi120490%_
             _%ctx120491%_)
            _%key120496%_
            _%phi120490%_
            _%e120497%_))
         _%rebind?120489%_
         _%phi120490%_
         _%ctx120491%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id120502%_ _%e120503%_)
        (let* ((_%rebind?120505%_ '#f)
               (_%phi120507%_ (gx#current-expander-phi))
               (_%ctx120509%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120502%_
           _%e120503%_
           _%rebind?120505%_
           _%phi120507%_
           _%ctx120509%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id120511%_ _%e120512%_ _%rebind?120513%_)
        (let* ((_%phi120515%_ (gx#current-expander-phi))
               (_%ctx120517%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120511%_
           _%e120512%_
           _%rebind?120513%_
           _%phi120515%_
           _%ctx120517%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id120519%_ _%e120520%_ _%rebind?120521%_ _%phi120522%_)
        (let ((_%ctx120524%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120519%_
           _%e120520%_
           _%rebind?120521%_
           _%phi120522%_
           _%ctx120524%_))))
    (define gx#core-bind-syntax!
      (lambda _g123435_
        (let ((_g123434_ (##length _g123435_)))
          (cond ((##fx= _g123434_ 2) (apply gx#core-bind-syntax!__0 _g123435_))
                ((##fx= _g123434_ 3) (apply gx#core-bind-syntax!__1 _g123435_))
                ((##fx= _g123434_ 4) (apply gx#core-bind-syntax!__2 _g123435_))
                ((##fx= _g123434_ 5) (apply gx#core-bind-syntax!__% _g123435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g123435_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id120470%_ _%e120471%_ _%rebind?120472%_)
        (gx#core-bind-syntax!__%
         _%id120470%_
         _%e120471%_
         _%rebind?120472%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id120477%_ _%e120478%_)
        (let ((_%rebind?120480%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id120477%_
           _%e120478%_
           _%rebind?120480%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g123437_
        (let ((_g123436_ (##length _g123437_)))
          (cond ((##fx= _g123436_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g123437_))
                ((##fx= _g123436_ 3)
                 (apply gx#core-bind-root-syntax!__% _g123437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g123437_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id120428%_
               _%alias-id120429%_
               _%rebind?120430%_
               _%phi120431%_
               _%ctx120432%_)
        (gx#bind-identifier!__%
         _%id120428%_
         (let ((_%key120434%_ (gx#core-identifier-key _%id120428%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key120434%_
             '#t
             _%phi120431%_
             _%ctx120432%_)
            _%key120434%_
            _%phi120431%_
            _%alias-id120429%_))
         _%rebind?120430%_
         _%phi120431%_
         _%ctx120432%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id120439%_ _%alias-id120440%_)
        (let* ((_%rebind?120442%_ '#f)
               (_%phi120444%_ (gx#current-expander-phi))
               (_%ctx120446%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120439%_
           _%alias-id120440%_
           _%rebind?120442%_
           _%phi120444%_
           _%ctx120446%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id120448%_ _%alias-id120449%_ _%rebind?120450%_)
        (let* ((_%phi120452%_ (gx#current-expander-phi))
               (_%ctx120454%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120448%_
           _%alias-id120449%_
           _%rebind?120450%_
           _%phi120452%_
           _%ctx120454%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id120456%_ _%alias-id120457%_ _%rebind?120458%_ _%phi120459%_)
        (let ((_%ctx120461%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120456%_
           _%alias-id120457%_
           _%rebind?120458%_
           _%phi120459%_
           _%ctx120461%_))))
    (define gx#core-bind-alias!
      (lambda _g123439_
        (let ((_g123438_ (##length _g123439_)))
          (cond ((##fx= _g123438_ 2) (apply gx#core-bind-alias!__0 _g123439_))
                ((##fx= _g123438_ 3) (apply gx#core-bind-alias!__1 _g123439_))
                ((##fx= _g123438_ 4) (apply gx#core-bind-alias!__2 _g123439_))
                ((##fx= _g123438_ 5) (apply gx#core-bind-alias!__% _g123439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g123439_))))))
    (define gx#make-binding-id__%
      (lambda (_%key120378%_ _%syntax?120379%_ _%phi120380%_ _%ctx120381%_)
        (if (uninterned-symbol? _%key120378%_)
            (##gensym 'L)
            (if (pair? _%key120378%_)
                (gensym (##car _%key120378%_))
                (if (##structure-instance-of? _%ctx120381%_ 'gx#top-context::t)
                    (let ((_%ns120386%_
                           (gx#core-context-namespace__% _%ctx120381%_)))
                      (if (and (fxzero? _%phi120380%_) (not _%syntax?120379%_))
                          (if _%ns120386%_
                              (make-symbol__1 _%ns120386%_ '"#" _%key120378%_)
                              _%key120378%_)
                          (if _%syntax?120379%_
                              (make-symbol__1
                               (let ((_%$e120390%_ _%ns120386%_))
                                 (if _%$e120390%_ _%$e120390%_ '""))
                               '"[:"
                               (number->string _%phi120380%_)
                               '":]#"
                               _%key120378%_)
                              (make-symbol__1
                               (let ((_%$e120394%_ _%ns120386%_))
                                 (if _%$e120394%_ _%$e120394%_ '""))
                               '"["
                               (number->string _%phi120380%_)
                               '"]#"
                               _%key120378%_))))
                    (gensym _%key120378%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key120401%_)
        (let* ((_%syntax?120403%_ '#f)
               (_%phi120405%_ (gx#current-expander-phi))
               (_%ctx120407%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120401%_
           _%syntax?120403%_
           _%phi120405%_
           _%ctx120407%_))))
    (define gx#make-binding-id__1
      (lambda (_%key120409%_ _%syntax?120410%_)
        (let* ((_%phi120412%_ (gx#current-expander-phi))
               (_%ctx120414%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120409%_
           _%syntax?120410%_
           _%phi120412%_
           _%ctx120414%_))))
    (define gx#make-binding-id__2
      (lambda (_%key120416%_ _%syntax?120417%_ _%phi120418%_)
        (let ((_%ctx120420%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120416%_
           _%syntax?120417%_
           _%phi120418%_
           _%ctx120420%_))))
    (define gx#make-binding-id
      (lambda _g123441_
        (let ((_g123440_ (##length _g123441_)))
          (cond ((##fx= _g123440_ 1) (apply gx#make-binding-id__0 _g123441_))
                ((##fx= _g123440_ 2) (apply gx#make-binding-id__1 _g123441_))
                ((##fx= _g123440_ 3) (apply gx#make-binding-id__2 _g123441_))
                ((##fx= _g123440_ 4) (apply gx#make-binding-id__% _g123441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g123441_))))))))
