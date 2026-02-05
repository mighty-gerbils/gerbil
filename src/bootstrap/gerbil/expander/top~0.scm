(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1770327920)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx148981%_)
        (letrec ((_%expand-special148983%_
                  (lambda (_%hd148985%_ _%K148986%_ _%rest148987%_ _%r148988%_)
                    (_%K148986%_
                     _%rest148987%_
                     (cons (gx#core-expand-top _%hd148985%_) _%r148988%_)))))
          (gx#core-expand-block__0 _%stx148981%_ _%expand-special148983%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx148675%_)
        (letrec ((_%expand-special148677%_
                  (lambda (_%hd148799%_ _%K148800%_ _%rest148801%_ _%r148802%_)
                    (let* ((_%K148806%_
                            (lambda (_%e148804%_)
                              (_%K148800%_
                               _%rest148801%_
                               (cons _%e148804%_ _%r148802%_))))
                           (_%e148807148849%_ _%hd148799%_)
                           (_%E148844148853%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148807148849%_)))
                           (_%E148840148865%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148807148849%_)
                                  (let ((_%e148845148857%_
                                         (gx#syntax-e _%e148807148849%_)))
                                    (let ((_%hd148846148860%_
                                           (##car _%e148845148857%_))
                                          (_%tl148847148862%_
                                           (##cdr _%e148845148857%_)))
                                      (if (and (gx#identifier?
                                                _%hd148846148860%_)
                                               (gx#core-identifier=?
                                                _%hd148846148860%_
                                                '%#define-runtime))
                                          (_%K148806%_
                                           (gx#core-expand-define-runtime%
                                            _%hd148799%_))
                                          (_%E148844148853%_))))
                                  (_%E148844148853%_))))
                           (_%E148836148877%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148807148849%_)
                                  (let ((_%e148841148869%_
                                         (gx#syntax-e _%e148807148849%_)))
                                    (let ((_%hd148842148872%_
                                           (##car _%e148841148869%_))
                                          (_%tl148843148874%_
                                           (##cdr _%e148841148869%_)))
                                      (if (and (gx#identifier?
                                                _%hd148842148872%_)
                                               (gx#core-identifier=?
                                                _%hd148842148872%_
                                                '%#define-alias))
                                          (_%K148806%_
                                           (gx#core-expand-define-alias%
                                            _%hd148799%_))
                                          (_%E148840148865%_))))
                                  (_%E148840148865%_))))
                           (_%E148826148889%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148807148849%_)
                                  (let ((_%e148837148881%_
                                         (gx#syntax-e _%e148807148849%_)))
                                    (let ((_%hd148838148884%_
                                           (##car _%e148837148881%_))
                                          (_%tl148839148886%_
                                           (##cdr _%e148837148881%_)))
                                      (if (and (gx#identifier?
                                                _%hd148838148884%_)
                                               (gx#core-identifier=?
                                                _%hd148838148884%_
                                                '%#define-syntax))
                                          (_%K148806%_
                                           (gx#core-expand-define-syntax%
                                            _%hd148799%_))
                                          (_%E148836148877%_))))
                                  (_%E148836148877%_))))
                           (_%E148813148921%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148807148849%_)
                                  (let ((_%e148827148893%_
                                         (gx#syntax-e _%e148807148849%_)))
                                    (let ((_%hd148828148896%_
                                           (##car _%e148827148893%_))
                                          (_%tl148829148898%_
                                           (##cdr _%e148827148893%_)))
                                      (if (and (gx#identifier?
                                                _%hd148828148896%_)
                                               (gx#core-identifier=?
                                                _%hd148828148896%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148829148898%_)
                                              (let ((_%e148830148901%_
                                                     (gx#syntax-e
                                                      _%tl148829148898%_)))
                                                (let ((_%hd148831148904%_
                                                       (##car _%e148830148901%_))
                                                      (_%tl148832148906%_
                                                       (##cdr _%e148830148901%_)))
                                                  (let ((_%hd-bind148909%_
                                                         _%hd148831148904%_))
                                                    (if (gx#stx-pair?
                                                         _%tl148832148906%_)
                                                        (let ((_%e148833148911%_
                                                               (gx#syntax-e
                                                                _%tl148832148906%_)))
                                                          (let ((_%hd148834148914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e148833148911%_))
                        (_%tl148835148916%_ (##cdr _%e148833148911%_)))
                    (let ((_%expr148919%_ _%hd148834148914%_))
                      (if (gx#stx-null? _%tl148835148916%_)
                          (if (gx#core-bind-values? _%hd-bind148909%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind148909%_)
                                (_%K148806%_ _%hd148799%_))
                              (_%E148826148889%_))
                          (_%E148826148889%_)))))
                (_%E148826148889%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148826148889%_))
                                          (_%E148826148889%_))))
                                  (_%E148826148889%_))))
                           (_%E148809148965%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148807148849%_)
                                  (let ((_%e148814148925%_
                                         (gx#syntax-e _%e148807148849%_)))
                                    (let ((_%hd148815148928%_
                                           (##car _%e148814148925%_))
                                          (_%tl148816148930%_
                                           (##cdr _%e148814148925%_)))
                                      (if (and (gx#identifier?
                                                _%hd148815148928%_)
                                               (gx#core-identifier=?
                                                _%hd148815148928%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148816148930%_)
                                              (let ((_%e148817148933%_
                                                     (gx#syntax-e
                                                      _%tl148816148930%_)))
                                                (let ((_%hd148818148936%_
                                                       (##car _%e148817148933%_))
                                                      (_%tl148819148938%_
                                                       (##cdr _%e148817148933%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd148818148936%_)
                                                      (let ((_%e148823148941%_
                                                             (gx#syntax-e
                                                              _%hd148818148936%_)))
                                                        (let ((_%hd148824148944%_
                                                               (##car _%e148823148941%_))
                                                              (_%tl148825148946%_
                                                               (##cdr _%e148823148941%_)))
                                                          (let ((_%id148949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd148824148944%_))
                    (if (gx#stx-null? _%tl148825148946%_)
                        (if (gx#stx-pair? _%tl148819148938%_)
                            (let ((_%e148820148951%_
                                   (gx#syntax-e _%tl148819148938%_)))
                              (let ((_%hd148821148954%_
                                     (##car _%e148820148951%_))
                                    (_%tl148822148956%_
                                     (##cdr _%e148820148951%_)))
                                (let* ((_%expr148959%_ _%hd148821148954%_)
                                       (_%props148961%_ _%tl148822148956%_))
                                  (if (gx#identifier? _%id148949%_)
                                      (let ((_%bind148963%_
                                             (gx#core-bind-runtime!__0
                                              _%id148949%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind148963%_
                                         _%props148961%_)
                                        (_%K148806%_ _%hd148799%_))
                                      (_%E148813148921%_)))))
                            (_%E148813148921%_))
                        (_%E148813148921%_)))))
              (_%E148813148921%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148813148921%_))
                                          (_%E148813148921%_))))
                                  (_%E148813148921%_))))
                           (_%E148808148977%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148807148849%_)
                                  (let ((_%e148810148969%_
                                         (gx#syntax-e _%e148807148849%_)))
                                    (let ((_%hd148811148972%_
                                           (##car _%e148810148969%_))
                                          (_%tl148812148974%_
                                           (##cdr _%e148810148969%_)))
                                      (if (and (gx#identifier?
                                                _%hd148811148972%_)
                                               (gx#core-identifier=?
                                                _%hd148811148972%_
                                                '%#begin-syntax))
                                          (_%K148806%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd148799%_))
                                          (_%E148809148965%_))))
                                  (_%E148809148965%_)))))
                      (_%E148808148977%_))))
                 (_%eval-body148678%_
                  (lambda (_%rbody148686%_)
                    (let _%lp148688%_ ((_%rest148690%_ _%rbody148686%_)
                                       (_%body148691%_ '())
                                       (_%ebody148692%_ '()))
                      (let* ((_%rest148693148701%_ _%rest148690%_)
                             (_%else148695148709%_
                              (lambda ()
                                (values _%body148691%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody148692%_)
                                          (gx#stx-source _%stx148675%_))))))
                             (_%K148697148787%_
                              (lambda (_%rest148712%_ _%hd148713%_)
                                (let* ((_%e148714148731%_ _%hd148713%_)
                                       (_%E148726148735%_
                                        (lambda ()
                                          (_%lp148688%_
                                           _%rest148712%_
                                           (cons _%hd148713%_ _%body148691%_)
                                           (cons _%hd148713%_
                                                 _%ebody148692%_))))
                                       (_%E148716148747%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148714148731%_)
                                              (let ((_%e148727148739%_
                                                     (gx#syntax-e
                                                      _%e148714148731%_)))
                                                (let ((_%hd148728148742%_
                                                       (##car _%e148727148739%_))
                                                      (_%tl148729148744%_
                                                       (##cdr _%e148727148739%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd148728148742%_)
                                                           (gx#core-identifier=?
                                                            _%hd148728148742%_
                                                            '%#begin-syntax))
                                                      (_%lp148688%_
                                                       _%rest148712%_
                                                       (cons _%hd148713%_
                                                             _%body148691%_)
                                                       _%ebody148692%_)
                                                      (_%E148726148735%_))))
                                              (_%E148726148735%_))))
                                       (_%E148715148783%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148714148731%_)
                                              (let ((_%e148717148751%_
                                                     (gx#syntax-e
                                                      _%e148714148731%_)))
                                                (let ((_%hd148718148754%_
                                                       (##car _%e148717148751%_))
                                                      (_%tl148719148756%_
                                                       (##cdr _%e148717148751%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd148718148754%_)
                                                           (gx#core-identifier=?
                                                            _%hd148718148754%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl148719148756%_)
                                                          (let ((_%e148720148759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl148719148756%_)))
                    (let ((_%hd148721148762%_ (##car _%e148720148759%_))
                          (_%tl148722148764%_ (##cdr _%e148720148759%_)))
                      (let ((_%hd-bind148767%_ _%hd148721148762%_))
                        (if (gx#stx-pair? _%tl148722148764%_)
                            (let ((_%e148723148769%_
                                   (gx#syntax-e _%tl148722148764%_)))
                              (let ((_%hd148724148772%_
                                     (##car _%e148723148769%_))
                                    (_%tl148725148774%_
                                     (##cdr _%e148723148769%_)))
                                (let* ((_%expr148777%_ _%hd148724148772%_)
                                       (_%ignore-props148779%_
                                        _%tl148725148774%_)
                                       (_%ehd148781%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind148767%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr148777%_)
                                                           '())))
                                         (gx#stx-source _%hd148713%_))))
                                  (_%lp148688%_
                                   _%rest148712%_
                                   (cons _%ehd148781%_ _%body148691%_)
                                   (cons _%ehd148781%_ _%ebody148692%_)))))
                            (_%E148716148747%_)))))
                  (_%E148716148747%_))
              (_%E148716148747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148716148747%_)))))
                                  (_%E148715148783%_)))))
                        (if (pair? _%rest148693148701%_)
                            (let ((_%hd148698148790%_
                                   (##car _%rest148693148701%_))
                                  (_%tl148699148792%_
                                   (##cdr _%rest148693148701%_)))
                              (let* ((_%hd148795%_ _%hd148698148790%_)
                                     (_%rest148797%_ _%tl148699148792%_))
                                (_%K148697148787%_
                                 _%rest148797%_
                                 _%hd148795%_)))
                            (_%else148695148709%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody148681%_
                     (gx#core-expand-block__1
                      _%stx148675%_
                      _%expand-special148677%_
                      '#f))
                    (_g149014_ (_%eval-body148678%_ _%rbody148681%_)))
               (begin
                 (let ((_g149015_
                        (if (##values? _g149014_)
                            (##values-length _g149014_)
                            1)))
                   (if (not (##fx= _g149015_ 2))
                       (error "Context expects 2 values" _g149015_)))
                 (let ((_%expanded-body148683%_ (##values-ref _g149014_ 0))
                       (_%value148684%_ (##values-ref _g149014_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body148683%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value148684%_ '())))
                    (gx#stx-source _%stx148675%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx148645%_)
        (let* ((_%e148646148653%_ _%stx148645%_)
               (_%E148648148657%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148646148653%_)))
               (_%E148647148671%_
                (lambda ()
                  (if (gx#stx-pair? _%e148646148653%_)
                      (let ((_%e148649148661%_
                             (gx#syntax-e _%e148646148653%_)))
                        (let ((_%hd148650148664%_ (##car _%e148649148661%_))
                              (_%tl148651148666%_ (##cdr _%e148649148661%_)))
                          (let ((_%body148669%_ _%tl148651148666%_))
                            (if (gx#stx-list? _%body148669%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body148669%_)
                                 (gx#stx-source _%stx148645%_))
                                (_%E148648148657%_)))))
                      (_%E148648148657%_)))))
          (_%E148647148671%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx148643%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx148643%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx148589%_)
        (let* ((_%e148590148603%_ _%stx148589%_)
               (_%E148592148607%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148590148603%_)))
               (_%E148591148639%_
                (lambda ()
                  (if (gx#stx-pair? _%e148590148603%_)
                      (let ((_%e148593148611%_
                             (gx#syntax-e _%e148590148603%_)))
                        (let ((_%hd148594148614%_ (##car _%e148593148611%_))
                              (_%tl148595148616%_ (##cdr _%e148593148611%_)))
                          (if (gx#stx-pair? _%tl148595148616%_)
                              (let ((_%e148596148619%_
                                     (gx#syntax-e _%tl148595148616%_)))
                                (let ((_%hd148597148622%_
                                       (##car _%e148596148619%_))
                                      (_%tl148598148624%_
                                       (##cdr _%e148596148619%_)))
                                  (let ((_%ann148627%_ _%hd148597148622%_))
                                    (if (gx#stx-pair? _%tl148598148624%_)
                                        (let ((_%e148599148629%_
                                               (gx#syntax-e
                                                _%tl148598148624%_)))
                                          (let ((_%hd148600148632%_
                                                 (##car _%e148599148629%_))
                                                (_%tl148601148634%_
                                                 (##cdr _%e148599148629%_)))
                                            (let ((_%expr148637%_
                                                   _%hd148600148632%_))
                                              (if (gx#stx-null?
                                                   _%tl148601148634%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann148627%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr148637%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx148589%_))
                                                  (_%E148592148607%_)))))
                                        (_%E148592148607%_)))))
                              (_%E148592148607%_))))
                      (_%E148592148607%_)))))
          (_%E148591148639%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx148254%_ _%body148255%_)
        (letrec ((_%expand-special148257%_
                  (lambda (_%hd148584%_ _%K148585%_ _%rest148586%_ _%r148587%_)
                    (_%K148585%_
                     '()
                     (cons (_%expand-internal148258%_
                            _%hd148584%_
                            _%rest148586%_)
                           _%r148587%_))))
                 (_%expand-internal148258%_
                  (lambda (_%hd148580%_ _%rest148581%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal148260%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd148580%_ _%rest148581%_))
                          (gx#stx-source _%stx148254%_))
                         _%expand-internal-special148259%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj148998
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj148998)
                       __obj148998))))
                 (_%expand-internal-special148259%_
                  (lambda (_%hd148418%_ _%K148419%_ _%rest148420%_ _%r148421%_)
                    (let* ((_%e148422148460%_ _%hd148418%_)
                           (_%E148455148464%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148422148460%_)))
                           (_%E148451148476%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148422148460%_)
                                  (let ((_%e148456148468%_
                                         (gx#syntax-e _%e148422148460%_)))
                                    (let ((_%hd148457148471%_
                                           (##car _%e148456148468%_))
                                          (_%tl148458148473%_
                                           (##cdr _%e148456148468%_)))
                                      (if (and (gx#identifier?
                                                _%hd148457148471%_)
                                               (gx#core-identifier=?
                                                _%hd148457148471%_
                                                '%#declare))
                                          (_%K148419%_
                                           _%rest148420%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd148418%_)
                                                 _%r148421%_))
                                          (_%E148455148464%_))))
                                  (_%E148455148464%_))))
                           (_%E148447148488%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148422148460%_)
                                  (let ((_%e148452148480%_
                                         (gx#syntax-e _%e148422148460%_)))
                                    (let ((_%hd148453148483%_
                                           (##car _%e148452148480%_))
                                          (_%tl148454148485%_
                                           (##cdr _%e148452148480%_)))
                                      (if (and (gx#identifier?
                                                _%hd148453148483%_)
                                               (gx#core-identifier=?
                                                _%hd148453148483%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd148418%_)
                                            (_%K148419%_
                                             _%rest148420%_
                                             _%r148421%_))
                                          (_%E148451148476%_))))
                                  (_%E148451148476%_))))
                           (_%E148437148500%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148422148460%_)
                                  (let ((_%e148448148492%_
                                         (gx#syntax-e _%e148422148460%_)))
                                    (let ((_%hd148449148495%_
                                           (##car _%e148448148492%_))
                                          (_%tl148450148497%_
                                           (##cdr _%e148448148492%_)))
                                      (if (and (gx#identifier?
                                                _%hd148449148495%_)
                                               (gx#core-identifier=?
                                                _%hd148449148495%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd148418%_)
                                            (_%K148419%_
                                             _%rest148420%_
                                             _%r148421%_))
                                          (_%E148447148488%_))))
                                  (_%E148447148488%_))))
                           (_%E148424148532%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148422148460%_)
                                  (let ((_%e148438148504%_
                                         (gx#syntax-e _%e148422148460%_)))
                                    (let ((_%hd148439148507%_
                                           (##car _%e148438148504%_))
                                          (_%tl148440148509%_
                                           (##cdr _%e148438148504%_)))
                                      (if (and (gx#identifier?
                                                _%hd148439148507%_)
                                               (gx#core-identifier=?
                                                _%hd148439148507%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148440148509%_)
                                              (let ((_%e148441148512%_
                                                     (gx#syntax-e
                                                      _%tl148440148509%_)))
                                                (let ((_%hd148442148515%_
                                                       (##car _%e148441148512%_))
                                                      (_%tl148443148517%_
                                                       (##cdr _%e148441148512%_)))
                                                  (let ((_%hd-bind148520%_
                                                         _%hd148442148515%_))
                                                    (if (gx#stx-pair?
                                                         _%tl148443148517%_)
                                                        (let ((_%e148444148522%_
                                                               (gx#syntax-e
                                                                _%tl148443148517%_)))
                                                          (let ((_%hd148445148525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e148444148522%_))
                        (_%tl148446148527%_ (##cdr _%e148444148522%_)))
                    (let ((_%expr148530%_ _%hd148445148525%_))
                      (if (gx#stx-null? _%tl148446148527%_)
                          (if (gx#core-bind-values? _%hd-bind148520%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind148520%_)
                                (_%K148419%_
                                 _%rest148420%_
                                 (cons _%hd148418%_ _%r148421%_)))
                              (_%E148437148500%_))
                          (_%E148437148500%_)))))
                (_%E148437148500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148437148500%_))
                                          (_%E148437148500%_))))
                                  (_%E148437148500%_))))
                           (_%E148423148576%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148422148460%_)
                                  (let ((_%e148425148536%_
                                         (gx#syntax-e _%e148422148460%_)))
                                    (let ((_%hd148426148539%_
                                           (##car _%e148425148536%_))
                                          (_%tl148427148541%_
                                           (##cdr _%e148425148536%_)))
                                      (if (and (gx#identifier?
                                                _%hd148426148539%_)
                                               (gx#core-identifier=?
                                                _%hd148426148539%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148427148541%_)
                                              (let ((_%e148428148544%_
                                                     (gx#syntax-e
                                                      _%tl148427148541%_)))
                                                (let ((_%hd148429148547%_
                                                       (##car _%e148428148544%_))
                                                      (_%tl148430148549%_
                                                       (##cdr _%e148428148544%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd148429148547%_)
                                                      (let ((_%e148434148552%_
                                                             (gx#syntax-e
                                                              _%hd148429148547%_)))
                                                        (let ((_%hd148435148555%_
                                                               (##car _%e148434148552%_))
                                                              (_%tl148436148557%_
                                                               (##cdr _%e148434148552%_)))
                                                          (let ((_%id148560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd148435148555%_))
                    (if (gx#stx-null? _%tl148436148557%_)
                        (if (gx#stx-pair? _%tl148430148549%_)
                            (let ((_%e148431148562%_
                                   (gx#syntax-e _%tl148430148549%_)))
                              (let ((_%hd148432148565%_
                                     (##car _%e148431148562%_))
                                    (_%tl148433148567%_
                                     (##cdr _%e148431148562%_)))
                                (let* ((_%expr148570%_ _%hd148432148565%_)
                                       (_%props148572%_ _%tl148433148567%_))
                                  (if (gx#identifier? _%id148560%_)
                                      (let ((_%bind148574%_
                                             (gx#core-bind-runtime!__0
                                              _%id148560%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind148574%_
                                         _%props148572%_)
                                        (_%K148419%_
                                         _%rest148420%_
                                         (cons _%hd148418%_ _%r148421%_)))
                                      (_%E148424148532%_)))))
                            (_%E148424148532%_))
                        (_%E148424148532%_)))))
              (_%E148424148532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148424148532%_))
                                          (_%E148424148532%_))))
                                  (_%E148424148532%_)))))
                      (_%E148423148576%_))))
                 (_%wrap-internal148260%_
                  (lambda (_%rbody148262%_)
                    (let _%lp148264%_ ((_%rest148266%_ _%rbody148262%_)
                                       (_%decls148267%_ '())
                                       (_%bind148268%_ '())
                                       (_%body148269%_ '()))
                      (let* ((_%e148270148277%_ _%rest148266%_)
                             (_%E148272148326%_
                              (lambda ()
                                (let* ((_%body148321%_
                                        (let* ((_%body148280148290%_
                                                _%body148269%_)
                                               (_%else148283148298%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body148269%_)
                                                   (gx#stx-source
                                                    _%stx148254%_)))))
                                          (let ((_%K148288148318%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx148254%_)))
                                                (_%K148285148304%_
                                                 (lambda (_%expr148302%_)
                                                   _%expr148302%_)))
                                            (let ((_%try-match148282148314%_
                                                   (lambda ()
                                                     (if (pair? _%body148280148290%_)
                                                         (let ((_%tl148287148309%_
                                                                (##cdr _%body148280148290%_))
                                                               (_%hd148286148307%_
                                                                (##car _%body148280148290%_)))
                                                           (if (null? _%tl148287148309%_)
                                                               (let ((_%expr148312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd148286148307%_))
                         (_%K148285148304%_ _%expr148312%_))
                       (_%else148283148298%_)))
                 (_%else148283148298%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body148280148290%_)
                                                  (_%K148288148318%_)
                                                  (_%try-match148282148314%_))))))
                                       (_%body148323%_
                                        (if (null? _%bind148268%_)
                                            _%body148321%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind148268%_
                                                         (cons _%body148321%_
                                                               '())))
                                             (gx#stx-source _%stx148254%_)))))
                                  (if (null? _%decls148267%_)
                                      _%body148323%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls148267%_
                                                   (cons _%body148323%_ '())))
                                       (gx#stx-source _%stx148254%_))))))
                             (_%E148271148414%_
                              (lambda ()
                                (if (gx#stx-pair? _%e148270148277%_)
                                    (let ((_%e148273148330%_
                                           (gx#syntax-e _%e148270148277%_)))
                                      (let ((_%hd148274148333%_
                                             (##car _%e148273148330%_))
                                            (_%tl148275148335%_
                                             (##cdr _%e148273148330%_)))
                                        (let* ((_%hd148338%_
                                                _%hd148274148333%_)
                                               (_%rest148340%_
                                                _%tl148275148335%_)
                                               (_%e148341148358%_ _%hd148338%_)
                                               (_%E148353148362%_
                                                (lambda ()
                                                  (if (null? _%bind148268%_)
                                                      (_%lp148264%_
                                                       _%rest148340%_
                                                       _%decls148267%_
                                                       _%bind148268%_
                                                       (cons _%hd148338%_
                                                             _%body148269%_))
                                                      (_%lp148264%_
                                                       _%rest148340%_
                                                       _%decls148267%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd148338%_ '()))
                     _%bind148268%_)
               _%body148269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E148343148376%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e148341148358%_)
                                                      (let ((_%e148354148366%_
                                                             (gx#syntax-e
                                                              _%e148341148358%_)))
                                                        (let ((_%hd148355148369%_
                                                               (##car _%e148354148366%_))
                                                              (_%tl148356148371%_
                                                               (##cdr _%e148354148366%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd148355148369%_)
                           (gx#core-identifier=?
                            _%hd148355148369%_
                            '%#declare))
                      (let ((_%xdecls148374%_ _%tl148356148371%_))
                        (_%lp148264%_
                         _%rest148340%_
                         (gx#stx-foldr cons _%decls148267%_ _%xdecls148374%_)
                         _%bind148268%_
                         _%body148269%_))
                      (_%E148353148362%_))))
              (_%E148353148362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E148342148410%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e148341148358%_)
                                                      (let ((_%e148344148380%_
                                                             (gx#syntax-e
                                                              _%e148341148358%_)))
                                                        (let ((_%hd148345148383%_
                                                               (##car _%e148344148380%_))
                                                              (_%tl148346148385%_
                                                               (##cdr _%e148344148380%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd148345148383%_)
                           (gx#core-identifier=?
                            _%hd148345148383%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl148346148385%_)
                          (let ((_%e148347148388%_
                                 (gx#syntax-e _%tl148346148385%_)))
                            (let ((_%hd148348148391%_
                                   (##car _%e148347148388%_))
                                  (_%tl148349148393%_
                                   (##cdr _%e148347148388%_)))
                              (let ((_%hd-bind148396%_ _%hd148348148391%_))
                                (if (gx#stx-pair? _%tl148349148393%_)
                                    (let ((_%e148350148398%_
                                           (gx#syntax-e _%tl148349148393%_)))
                                      (let ((_%hd148351148401%_
                                             (##car _%e148350148398%_))
                                            (_%tl148352148403%_
                                             (##cdr _%e148350148398%_)))
                                        (let* ((_%expr148406%_
                                                _%hd148351148401%_)
                                               (_%ignore-props148408%_
                                                _%tl148352148403%_))
                                          (_%lp148264%_
                                           _%rest148340%_
                                           _%decls148267%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind148396%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr148406%_)
                                                             '()))
                                                 _%bind148268%_)
                                           _%body148269%_))))
                                    (_%E148343148376%_)))))
                          (_%E148343148376%_))
                      (_%E148343148376%_))))
              (_%E148343148376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E148342148410%_))))
                                    (_%E148272148326%_)))))
                        (_%E148271148414%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body148255%_)
            (gx#stx-source _%stx148254%_))
           _%expand-special148257%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx148192%_)
        (let* ((_%e148193148200%_ _%stx148192%_)
               (_%E148195148204%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148193148200%_)))
               (_%E148194148250%_
                (lambda ()
                  (if (gx#stx-pair? _%e148193148200%_)
                      (let ((_%e148196148208%_
                             (gx#syntax-e _%e148193148200%_)))
                        (let ((_%hd148197148211%_ (##car _%e148196148208%_))
                              (_%tl148198148213%_ (##cdr _%e148196148208%_)))
                          (let ((_%body148216%_ _%tl148198148213%_))
                            (if (gx#stx-list? _%body148216%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl148218%_)
                                     (let* ((_%e148219148226%_ _%decl148218%_)
                                            (_%E148221148230%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e148219148226%_)))
                                            (_%E148220148246%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e148219148226%_)
                                                   (let ((_%e148222148234%_
                                                          (gx#syntax-e
                                                           _%e148219148226%_)))
                                                     (let ((_%hd148223148237%_
                                                            (##car _%e148222148234%_))
                                                           (_%tl148224148239%_
                                                            (##cdr _%e148222148234%_)))
                                                       (let* ((_%head148242%_
                                                               _%hd148223148237%_)
                                                              (_%args148244%_
                                                               _%tl148224148239%_))
                                                         (if (gx#stx-list?
                                                              _%args148244%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl148218%_)
                                                             (_%E148221148230%_)))))
                                                   (_%E148221148230%_)))))
                                       (_%E148220148246%_)))
                                   _%body148216%_))
                                 (gx#stx-source _%stx148192%_))
                                (_%E148195148204%_)))))
                      (_%E148195148204%_)))))
          (_%E148194148250%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx148096%_)
        (let* ((_%e148097148104%_ _%stx148096%_)
               (_%E148099148108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148097148104%_)))
               (_%E148098148188%_
                (lambda ()
                  (if (gx#stx-pair? _%e148097148104%_)
                      (let ((_%e148100148112%_
                             (gx#syntax-e _%e148097148104%_)))
                        (let ((_%hd148101148115%_ (##car _%e148100148112%_))
                              (_%tl148102148117%_ (##cdr _%e148100148112%_)))
                          (let ((_%body148120%_ _%tl148102148117%_))
                            (let _%lp148122%_ ((_%rest148124%_ _%body148120%_)
                                               (_%r148125%_ '()))
                              (let* ((_%e148126148140%_ _%rest148124%_)
                                     (_%E148138148144%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx148096%_)))
                                     (_%E148128148148%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e148126148140%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r148125%_))
                                             (gx#stx-source _%stx148096%_))
                                            (_%E148138148144%_))))
                                     (_%E148127148184%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e148126148140%_)
                                            (let ((_%e148129148152%_
                                                   (gx#syntax-e
                                                    _%e148126148140%_)))
                                              (let ((_%hd148130148155%_
                                                     (##car _%e148129148152%_))
                                                    (_%tl148131148157%_
                                                     (##cdr _%e148129148152%_)))
                                                (if (gx#stx-pair?
                                                     _%hd148130148155%_)
                                                    (let ((_%e148132148160%_
                                                           (gx#syntax-e
                                                            _%hd148130148155%_)))
                                                      (let ((_%hd148133148163%_
                                                             (##car _%e148132148160%_))
                                                            (_%tl148134148165%_
                                                             (##cdr _%e148132148160%_)))
                                                        (let ((_%id148168%_
                                                               _%hd148133148163%_))
                                                          (if (gx#stx-pair?
                                                               _%tl148134148165%_)
                                                              (let ((_%e148135148170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl148134148165%_)))
                        (let ((_%hd148136148173%_ (##car _%e148135148170%_))
                              (_%tl148137148175%_ (##cdr _%e148135148170%_)))
                          (let ((_%eid148178%_ _%hd148136148173%_))
                            (if (gx#stx-null? _%tl148137148175%_)
                                (let ((_%rest148180%_ _%tl148131148157%_))
                                  (if (and (gx#identifier? _%id148168%_)
                                           (gx#identifier? _%eid148178%_))
                                      (let ((_%eid148182%_
                                             (gx#stx-e _%eid148178%_)))
                                        (gx#core-bind-extern!__0
                                         _%id148168%_
                                         _%eid148182%_)
                                        (_%lp148122%_
                                         _%rest148180%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id148168%_)
                                                     (cons _%eid148182%_ '()))
                                               _%r148125%_)))
                                      (_%E148128148148%_)))
                                (_%E148128148148%_)))))
                      (_%E148128148148%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E148128148148%_))))
                                            (_%E148128148148%_)))))
                                (_%E148127148184%_))))))
                      (_%E148099148108%_)))))
          (_%E148098148188%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx147985%_)
        (let* ((_%e147986148012%_ _%stx147985%_)
               (_%E148001148016%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147986148012%_)))
               (_%E147988148048%_
                (lambda ()
                  (if (gx#stx-pair? _%e147986148012%_)
                      (let ((_%e148002148020%_
                             (gx#syntax-e _%e147986148012%_)))
                        (let ((_%hd148003148023%_ (##car _%e148002148020%_))
                              (_%tl148004148025%_ (##cdr _%e148002148020%_)))
                          (if (gx#stx-pair? _%tl148004148025%_)
                              (let ((_%e148005148028%_
                                     (gx#syntax-e _%tl148004148025%_)))
                                (let ((_%hd148006148031%_
                                       (##car _%e148005148028%_))
                                      (_%tl148007148033%_
                                       (##cdr _%e148005148028%_)))
                                  (let ((_%hd148036%_ _%hd148006148031%_))
                                    (if (gx#stx-pair? _%tl148007148033%_)
                                        (let ((_%e148008148038%_
                                               (gx#syntax-e
                                                _%tl148007148033%_)))
                                          (let ((_%hd148009148041%_
                                                 (##car _%e148008148038%_))
                                                (_%tl148010148043%_
                                                 (##cdr _%e148008148038%_)))
                                            (let ((_%expr148046%_
                                                   _%hd148009148041%_))
                                              (if (gx#stx-null?
                                                   _%tl148010148043%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd148036%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd148036%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd148036%_)
                             (cons (gx#core-expand-expression _%expr148046%_)
                                   '())))
                 (gx#stx-source _%stx147985%_)))
              (_%E148001148016%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E148001148016%_)))))
                                        (_%E148001148016%_)))))
                              (_%E148001148016%_))))
                      (_%E148001148016%_))))
               (_%E147987148092%_
                (lambda ()
                  (if (gx#stx-pair? _%e147986148012%_)
                      (let ((_%e147989148052%_
                             (gx#syntax-e _%e147986148012%_)))
                        (let ((_%hd147990148055%_ (##car _%e147989148052%_))
                              (_%tl147991148057%_ (##cdr _%e147989148052%_)))
                          (if (gx#stx-pair? _%tl147991148057%_)
                              (let ((_%e147992148060%_
                                     (gx#syntax-e _%tl147991148057%_)))
                                (let ((_%hd147993148063%_
                                       (##car _%e147992148060%_))
                                      (_%tl147994148065%_
                                       (##cdr _%e147992148060%_)))
                                  (if (gx#stx-pair? _%hd147993148063%_)
                                      (let ((_%e147998148068%_
                                             (gx#syntax-e _%hd147993148063%_)))
                                        (let ((_%hd147999148071%_
                                               (##car _%e147998148068%_))
                                              (_%tl148000148073%_
                                               (##cdr _%e147998148068%_)))
                                          (let ((_%id148076%_
                                                 _%hd147999148071%_))
                                            (if (gx#stx-null?
                                                 _%tl148000148073%_)
                                                (if (gx#stx-pair?
                                                     _%tl147994148065%_)
                                                    (let ((_%e147995148078%_
                                                           (gx#syntax-e
                                                            _%tl147994148065%_)))
                                                      (let ((_%hd147996148081%_
                                                             (##car _%e147995148078%_))
                                                            (_%tl147997148083%_
                                                             (##cdr _%e147995148078%_)))
                                                        (let* ((_%expr148086%_
                                                                _%hd147996148081%_)
                                                               (_%props148088%_
                                                                _%tl147997148083%_))
                                                          (if (gx#identifier?
                                                               _%id148076%_)
                                                              (let ((_%bind148090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id148076%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind148090%_
                         _%props148088%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id148076%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr148086%_)
                                           '())))
                         (gx#stx-source _%stx147985%_)))
                      (_%E147988148048%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E147988148048%_))
                                                (_%E147988148048%_)))))
                                      (_%E147988148048%_))))
                              (_%E147988148048%_))))
                      (_%E147988148048%_)))))
          (_%E147987148092%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx147924%_)
        (let* ((_%e147925147938%_ _%stx147924%_)
               (_%E147927147942%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147925147938%_)))
               (_%E147926147981%_
                (lambda ()
                  (if (gx#stx-pair? _%e147925147938%_)
                      (let ((_%e147928147946%_
                             (gx#syntax-e _%e147925147938%_)))
                        (let ((_%hd147929147949%_ (##car _%e147928147946%_))
                              (_%tl147930147951%_ (##cdr _%e147928147946%_)))
                          (if (gx#stx-pair? _%tl147930147951%_)
                              (let ((_%e147931147954%_
                                     (gx#syntax-e _%tl147930147951%_)))
                                (let ((_%hd147932147957%_
                                       (##car _%e147931147954%_))
                                      (_%tl147933147959%_
                                       (##cdr _%e147931147954%_)))
                                  (let ((_%id147962%_ _%hd147932147957%_))
                                    (if (gx#stx-pair? _%tl147933147959%_)
                                        (let ((_%e147934147964%_
                                               (gx#syntax-e
                                                _%tl147933147959%_)))
                                          (let ((_%hd147935147967%_
                                                 (##car _%e147934147964%_))
                                                (_%tl147936147969%_
                                                 (##cdr _%e147934147964%_)))
                                            (let* ((_%binding-id147972%_
                                                    _%hd147935147967%_)
                                                   (_%props147974%_
                                                    _%tl147936147969%_))
                                              (if (and (gx#identifier?
                                                        _%id147962%_)
                                                       (gx#identifier?
                                                        _%binding-id147972%_)
                                                       (gx#stx-list?
                                                        _%props147974%_))
                                                  (let* ((_%eid147976%_
                                                          (gx#stx-e
                                                           _%binding-id147972%_))
                                                         (_%bind147978%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id147962%_
                                                           _%eid147976%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind147978%_
                                                     _%props147974%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id147962%_)
                         (cons _%eid147976%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147927147942%_)))))
                                        (_%E147927147942%_)))))
                              (_%E147927147942%_))))
                      (_%E147927147942%_)))))
          (_%E147926147981%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind147860%_ _%props147861%_)
        (let _%loop147863%_ ((_%rest147865%_ _%props147861%_)
                             (_%props147866%_ '()))
          (let* ((_%e147867147878%_ _%rest147865%_)
                 (_%E147876147882%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e147867147878%_)))
                 (_%E147869147886%_
                  (lambda ()
                    (if (gx#stx-null? _%e147867147878%_)
                        (if (null? _%props147866%_)
                            '#!void
                            (##structure-set!
                             _%bind147860%_
                             (reverse! _%props147866%_)
                             '4
                             gx#binding::t
                             '#f))
                        (_%E147876147882%_))))
                 (_%E147868147920%_
                  (lambda ()
                    (if (gx#stx-pair? _%e147867147878%_)
                        (let ((_%e147870147890%_
                               (gx#syntax-e _%e147867147878%_)))
                          (let ((_%hd147871147893%_ (##car _%e147870147890%_))
                                (_%tl147872147895%_ (##cdr _%e147870147890%_)))
                            (let ((_%key147898%_ _%hd147871147893%_))
                              (if (gx#stx-pair? _%tl147872147895%_)
                                  (let ((_%e147873147900%_
                                         (gx#syntax-e _%tl147872147895%_)))
                                    (let ((_%hd147874147903%_
                                           (##car _%e147873147900%_))
                                          (_%tl147875147905%_
                                           (##cdr _%e147873147900%_)))
                                      (let* ((_%prop147908%_
                                              _%hd147874147903%_)
                                             (_%rest147910%_
                                              _%tl147875147905%_))
                                        (if (gx#stx-keyword? _%key147898%_)
                                            (let ((_%key147914%_
                                                   (gx#stx-e _%key147898%_))
                                                  (_%eval-prop147915%_
                                                   (lambda ()
                                                     (call-with-parameters__1
                                                      (lambda ()
                                                        (gx#eval-syntax__0
                                                         _%prop147908%_))
                                                      gx#current-expander-phi
                                                      (##fx+ (gx#current-expander-phi)
                                                             '1)))))
                                              (let ((_%$e147917%_
                                                     _%key147914%_))
                                                (if (eq? 'macro: _%$e147917%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind147860%_
                                                       (gx#core-quote-syntax__0
                                                        _%prop147908%_)
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop147863%_
                                                       _%rest147910%_
                                                       _%props147866%_))
                                                    (if (eq? 'type:
                                                             _%$e147917%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind147860%_
                                                           (_%eval-prop147915%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop147863%_
                                                           _%rest147910%_
                                                           _%props147866%_))
                                                        (_%loop147863%_
                                                         _%rest147910%_
                                                         (cons (_%eval-prop147915%_)
                                                               (cons _%key147914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props147866%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E147869147886%_)))))
                                  (_%E147869147886%_)))))
                        (_%E147869147886%_)))))
            (_%E147868147920%_)))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx147803%_)
        (let* ((_%e147804147817%_ _%stx147803%_)
               (_%E147806147821%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147804147817%_)))
               (_%E147805147856%_
                (lambda ()
                  (if (gx#stx-pair? _%e147804147817%_)
                      (let ((_%e147807147825%_
                             (gx#syntax-e _%e147804147817%_)))
                        (let ((_%hd147808147828%_ (##car _%e147807147825%_))
                              (_%tl147809147830%_ (##cdr _%e147807147825%_)))
                          (if (gx#stx-pair? _%tl147809147830%_)
                              (let ((_%e147810147833%_
                                     (gx#syntax-e _%tl147809147830%_)))
                                (let ((_%hd147811147836%_
                                       (##car _%e147810147833%_))
                                      (_%tl147812147838%_
                                       (##cdr _%e147810147833%_)))
                                  (let ((_%id147841%_ _%hd147811147836%_))
                                    (if (gx#stx-pair? _%tl147812147838%_)
                                        (let ((_%e147813147843%_
                                               (gx#syntax-e
                                                _%tl147812147838%_)))
                                          (let ((_%hd147814147846%_
                                                 (##car _%e147813147843%_))
                                                (_%tl147815147848%_
                                                 (##cdr _%e147813147843%_)))
                                            (let ((_%expr147851%_
                                                   _%hd147814147846%_))
                                              (if (gx#stx-null?
                                                   _%tl147815147848%_)
                                                  (if (gx#identifier?
                                                       _%id147841%_)
                                                      (let ((_g149016_
                                                             (gx#core-expand-expression+1
                                                              _%expr147851%_)))
                                                        (begin
                                                          (let ((_g149017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g149016_)
                             (##values-length _g149016_)
                             1)))
                    (if (not (##fx= _g149017_ 2))
                        (error "Context expects 2 values" _g149017_)))
                  (let ((_%e-stx147853%_ (##values-ref _g149016_ 0))
                        (_%e147854%_ (##values-ref _g149016_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id147841%_ _%e147854%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id147841%_)
                                   (cons _%e-stx147853%_ '())))
                       (gx#stx-source _%stx147803%_))))))
              (_%E147806147821%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147806147821%_)))))
                                        (_%E147806147821%_)))))
                              (_%E147806147821%_))))
                      (_%E147806147821%_)))))
          (_%E147805147856%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx147747%_)
        (let* ((_%e147748147761%_ _%stx147747%_)
               (_%E147750147765%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147748147761%_)))
               (_%E147749147799%_
                (lambda ()
                  (if (gx#stx-pair? _%e147748147761%_)
                      (let ((_%e147751147769%_
                             (gx#syntax-e _%e147748147761%_)))
                        (let ((_%hd147752147772%_ (##car _%e147751147769%_))
                              (_%tl147753147774%_ (##cdr _%e147751147769%_)))
                          (if (gx#stx-pair? _%tl147753147774%_)
                              (let ((_%e147754147777%_
                                     (gx#syntax-e _%tl147753147774%_)))
                                (let ((_%hd147755147780%_
                                       (##car _%e147754147777%_))
                                      (_%tl147756147782%_
                                       (##cdr _%e147754147777%_)))
                                  (let ((_%id147785%_ _%hd147755147780%_))
                                    (if (gx#stx-pair? _%tl147756147782%_)
                                        (let ((_%e147757147787%_
                                               (gx#syntax-e
                                                _%tl147756147782%_)))
                                          (let ((_%hd147758147790%_
                                                 (##car _%e147757147787%_))
                                                (_%tl147759147792%_
                                                 (##cdr _%e147757147787%_)))
                                            (let ((_%alias-id147795%_
                                                   _%hd147758147790%_))
                                              (if (gx#stx-null?
                                                   _%tl147759147792%_)
                                                  (if (and (gx#identifier?
                                                            _%id147785%_)
                                                           (gx#identifier?
                                                            _%alias-id147795%_))
                                                      (let ((_%alias-id147797%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id147795%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id147785%_
                                                         _%alias-id147797%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id147785%_)
                             (cons _%alias-id147797%_ '())))))
              (_%E147750147765%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147750147765%_)))))
                                        (_%E147750147765%_)))))
                              (_%E147750147765%_))))
                      (_%E147750147765%_)))))
          (_%E147749147799%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx147690%_ _%wrap?147691%_)
        (let* ((_%e147692147702%_ _%stx147690%_)
               (_%E147694147706%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147692147702%_)))
               (_%E147693147733%_
                (lambda ()
                  (if (gx#stx-pair? _%e147692147702%_)
                      (let ((_%e147695147710%_
                             (gx#syntax-e _%e147692147702%_)))
                        (let ((_%hd147696147713%_ (##car _%e147695147710%_))
                              (_%tl147697147715%_ (##cdr _%e147695147710%_)))
                          (if (gx#stx-pair? _%tl147697147715%_)
                              (let ((_%e147698147718%_
                                     (gx#syntax-e _%tl147697147715%_)))
                                (let ((_%hd147699147721%_
                                       (##car _%e147698147718%_))
                                      (_%tl147700147723%_
                                       (##cdr _%e147698147718%_)))
                                  (let* ((_%hd147726%_ _%hd147699147721%_)
                                         (_%body147728%_ _%tl147700147723%_))
                                    (if (gx#core-bind-values? _%hd147726%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd147726%_)
                                           (let ((_%body147731%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd147726%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx147690%_
                                                               _%body147728%_)
                                                              '()))))
                                             (if _%wrap?147691%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body147731%_)
                                                  (gx#stx-source
                                                   _%stx147690%_))
                                                 _%body147731%_)))
                                         gx#current-expander-context
                                         (let ((__obj148999
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj148999)
                                           __obj148999))
                                        (_%E147694147706%_)))))
                              (_%E147694147706%_))))
                      (_%E147694147706%_)))))
          (_%E147693147733%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx147740%_)
        (let ((_%wrap?147742%_ '#t))
          (gx#core-expand-lambda%__% _%stx147740%_ _%wrap?147742%_))))
    (define gx#core-expand-lambda%
      (lambda _g149018_
        (let ((_g149019_ (##length _g149018_)))
          (cond ((##fx= _g149019_ 1)
                 (apply gx#core-expand-lambda%__0 _g149018_))
                ((##fx= _g149019_ 2)
                 (apply gx#core-expand-lambda%__% _g149018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g149018_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx147654%_)
        (let* ((_%e147655147662%_ _%stx147654%_)
               (_%E147657147666%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147655147662%_)))
               (_%E147656147685%_
                (lambda ()
                  (if (gx#stx-pair? _%e147655147662%_)
                      (let ((_%e147658147670%_
                             (gx#syntax-e _%e147655147662%_)))
                        (let ((_%hd147659147673%_ (##car _%e147658147670%_))
                              (_%tl147660147675%_ (##cdr _%e147658147670%_)))
                          (let ((_%clauses147678%_ _%tl147660147675%_))
                            (if (gx#stx-list? _%clauses147678%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause147680%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause147680%_)
                                       (let ((_%$e147682%_
                                              (gx#stx-source
                                               _%clause147680%_)))
                                         (if _%$e147682%_
                                             _%$e147682%_
                                             (gx#stx-source _%stx147654%_))))
                                      '#f))
                                   _%clauses147678%_))
                                 (gx#stx-source _%stx147654%_))
                                (_%E147657147666%_)))))
                      (_%E147657147666%_)))))
          (_%E147656147685%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx147608%_)
        (let* ((_%e147609147619%_ _%stx147608%_)
               (_%E147611147623%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147609147619%_)))
               (_%E147610147650%_
                (lambda ()
                  (if (gx#stx-pair? _%e147609147619%_)
                      (let ((_%e147612147627%_
                             (gx#syntax-e _%e147609147619%_)))
                        (let ((_%hd147613147630%_ (##car _%e147612147627%_))
                              (_%tl147614147632%_ (##cdr _%e147612147627%_)))
                          (if (gx#stx-pair? _%tl147614147632%_)
                              (let ((_%e147615147635%_
                                     (gx#syntax-e _%tl147614147632%_)))
                                (let ((_%hd147616147638%_
                                       (##car _%e147615147635%_))
                                      (_%tl147617147640%_
                                       (##cdr _%e147615147635%_)))
                                  (let* ((_%hd147643%_ _%hd147616147638%_)
                                         (_%body147645%_ _%tl147617147640%_))
                                    (if (gx#core-expand-let-bind? _%hd147643%_)
                                        (let ((_%expressions147647%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd147643%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd147643%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd147643%_
                                                           _%expressions147647%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx147608%_
                         _%body147645%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx147608%_)))
                                           gx#current-expander-context
                                           (let ((__obj149000
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj149000)
                                             __obj149000)))
                                        (_%E147611147623%_)))))
                              (_%E147611147623%_))))
                      (_%E147611147623%_)))))
          (_%E147610147650%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx147553%_ _%form147554%_)
        (let* ((_%e147555147565%_ _%stx147553%_)
               (_%E147557147569%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147555147565%_)))
               (_%E147556147594%_
                (lambda ()
                  (if (gx#stx-pair? _%e147555147565%_)
                      (let ((_%e147558147573%_
                             (gx#syntax-e _%e147555147565%_)))
                        (let ((_%hd147559147576%_ (##car _%e147558147573%_))
                              (_%tl147560147578%_ (##cdr _%e147558147573%_)))
                          (if (gx#stx-pair? _%tl147560147578%_)
                              (let ((_%e147561147581%_
                                     (gx#syntax-e _%tl147560147578%_)))
                                (let ((_%hd147562147584%_
                                       (##car _%e147561147581%_))
                                      (_%tl147563147586%_
                                       (##cdr _%e147561147581%_)))
                                  (let* ((_%hd147589%_ _%hd147562147584%_)
                                         (_%body147591%_ _%tl147563147586%_))
                                    (if (gx#core-expand-let-bind? _%hd147589%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd147589%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form147554%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd147589%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd147589%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx147553%_
                                                               _%body147591%_)
                                                              '())))
                                            (gx#stx-source _%stx147553%_)))
                                         gx#current-expander-context
                                         (let ((__obj149001
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj149001)
                                           __obj149001))
                                        (_%E147557147569%_)))))
                              (_%E147557147569%_))))
                      (_%E147557147569%_)))))
          (_%E147556147594%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx147601%_)
        (let ((_%form147603%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx147601%_ _%form147603%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g149020_
        (let ((_g149021_ (##length _g149020_)))
          (cond ((##fx= _g149021_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g149020_))
                ((##fx= _g149021_ 2)
                 (apply gx#core-expand-letrec-values%__% _g149020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g149020_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx147550%_)
        (gx#core-expand-letrec-values%__% _%stx147550%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx147507%_)
        (if (gx#stx-list? _%stx147507%_)
            (gx#stx-andmap
             (lambda (_%bind147509%_)
               (let* ((_%e147510147520%_ _%bind147509%_)
                      (_%E147512147524%_ (lambda () '#f))
                      (_%E147511147546%_
                       (lambda ()
                         (if (gx#stx-pair? _%e147510147520%_)
                             (let ((_%e147513147528%_
                                    (gx#syntax-e _%e147510147520%_)))
                               (let ((_%hd147514147531%_
                                      (##car _%e147513147528%_))
                                     (_%tl147515147533%_
                                      (##cdr _%e147513147528%_)))
                                 (let ((_%hd147536%_ _%hd147514147531%_))
                                   (if (gx#stx-pair? _%tl147515147533%_)
                                       (let ((_%e147516147538%_
                                              (gx#syntax-e
                                               _%tl147515147533%_)))
                                         (let ((_%hd147517147541%_
                                                (##car _%e147516147538%_))
                                               (_%tl147518147543%_
                                                (##cdr _%e147516147538%_)))
                                           (if (gx#stx-null?
                                                _%tl147518147543%_)
                                               (gx#core-bind-values?
                                                _%hd147536%_)
                                               (_%E147512147524%_))))
                                       (_%E147512147524%_)))))
                             (_%E147512147524%_)))))
                 (_%E147511147546%_)))
             _%stx147507%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind147466%_)
        (let* ((_%e147467147477%_ _%bind147466%_)
               (_%E147469147481%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147467147477%_)))
               (_%E147468147503%_
                (lambda ()
                  (if (gx#stx-pair? _%e147467147477%_)
                      (let ((_%e147470147485%_
                             (gx#syntax-e _%e147467147477%_)))
                        (let ((_%hd147471147488%_ (##car _%e147470147485%_))
                              (_%tl147472147490%_ (##cdr _%e147470147485%_)))
                          (if (gx#stx-pair? _%tl147472147490%_)
                              (let ((_%e147473147493%_
                                     (gx#syntax-e _%tl147472147490%_)))
                                (let ((_%hd147474147496%_
                                       (##car _%e147473147493%_))
                                      (_%tl147475147498%_
                                       (##cdr _%e147473147493%_)))
                                  (let ((_%expr147501%_ _%hd147474147496%_))
                                    (if (gx#stx-null? _%tl147475147498%_)
                                        (gx#core-expand-expression
                                         _%expr147501%_)
                                        (_%E147469147481%_)))))
                              (_%E147469147481%_))))
                      (_%E147469147481%_)))))
          (_%E147468147503%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind147425%_)
        (let* ((_%e147426147436%_ _%bind147425%_)
               (_%E147428147440%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147426147436%_)))
               (_%E147427147462%_
                (lambda ()
                  (if (gx#stx-pair? _%e147426147436%_)
                      (let ((_%e147429147444%_
                             (gx#syntax-e _%e147426147436%_)))
                        (let ((_%hd147430147447%_ (##car _%e147429147444%_))
                              (_%tl147431147449%_ (##cdr _%e147429147444%_)))
                          (let ((_%hd147452%_ _%hd147430147447%_))
                            (if (gx#stx-pair? _%tl147431147449%_)
                                (let ((_%e147432147454%_
                                       (gx#syntax-e _%tl147431147449%_)))
                                  (let ((_%hd147433147457%_
                                         (##car _%e147432147454%_))
                                        (_%tl147434147459%_
                                         (##cdr _%e147432147454%_)))
                                    (if (gx#stx-null? _%tl147434147459%_)
                                        (gx#core-bind-values!__0 _%hd147452%_)
                                        (_%E147428147440%_))))
                                (_%E147428147440%_)))))
                      (_%E147428147440%_)))))
          (_%E147427147462%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind147383%_ _%expr147384%_)
        (let* ((_%e147385147395%_ _%bind147383%_)
               (_%E147387147399%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147385147395%_)))
               (_%E147386147421%_
                (lambda ()
                  (if (gx#stx-pair? _%e147385147395%_)
                      (let ((_%e147388147403%_
                             (gx#syntax-e _%e147385147395%_)))
                        (let ((_%hd147389147406%_ (##car _%e147388147403%_))
                              (_%tl147390147408%_ (##cdr _%e147388147403%_)))
                          (let ((_%hd147411%_ _%hd147389147406%_))
                            (if (gx#stx-pair? _%tl147390147408%_)
                                (let ((_%e147391147413%_
                                       (gx#syntax-e _%tl147390147408%_)))
                                  (let ((_%hd147392147416%_
                                         (##car _%e147391147413%_))
                                        (_%tl147393147418%_
                                         (##cdr _%e147391147413%_)))
                                    (if (gx#stx-null? _%tl147393147418%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd147411%_)
                                              (cons _%expr147384%_ '()))
                                        (_%E147387147399%_))))
                                (_%E147387147399%_)))))
                      (_%E147387147399%_)))))
          (_%E147386147421%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx147337%_)
        (let* ((_%e147338147348%_ _%stx147337%_)
               (_%E147340147352%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147338147348%_)))
               (_%E147339147379%_
                (lambda ()
                  (if (gx#stx-pair? _%e147338147348%_)
                      (let ((_%e147341147356%_
                             (gx#syntax-e _%e147338147348%_)))
                        (let ((_%hd147342147359%_ (##car _%e147341147356%_))
                              (_%tl147343147361%_ (##cdr _%e147341147356%_)))
                          (if (gx#stx-pair? _%tl147343147361%_)
                              (let ((_%e147344147364%_
                                     (gx#syntax-e _%tl147343147361%_)))
                                (let ((_%hd147345147367%_
                                       (##car _%e147344147364%_))
                                      (_%tl147346147369%_
                                       (##cdr _%e147344147364%_)))
                                  (let* ((_%hd147372%_ _%hd147345147367%_)
                                         (_%body147374%_ _%tl147346147369%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd147372%_)
                                        (let ((_%expanders147376%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd147372%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd147372%_
                                              _%expanders147376%_)
                                             (gx#core-expand-local-block
                                              _%stx147337%_
                                              _%body147374%_))
                                           gx#current-expander-context
                                           (let ((__obj149002
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj149002)
                                             __obj149002)))
                                        (_%E147340147352%_)))))
                              (_%E147340147352%_))))
                      (_%E147340147352%_)))))
          (_%E147339147379%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx147286%_)
        (let* ((_%e147287147297%_ _%stx147286%_)
               (_%E147289147301%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147287147297%_)))
               (_%E147288147333%_
                (lambda ()
                  (if (gx#stx-pair? _%e147287147297%_)
                      (let ((_%e147290147305%_
                             (gx#syntax-e _%e147287147297%_)))
                        (let ((_%hd147291147308%_ (##car _%e147290147305%_))
                              (_%tl147292147310%_ (##cdr _%e147290147305%_)))
                          (if (gx#stx-pair? _%tl147292147310%_)
                              (let ((_%e147293147313%_
                                     (gx#syntax-e _%tl147292147310%_)))
                                (let ((_%hd147294147316%_
                                       (##car _%e147293147313%_))
                                      (_%tl147295147318%_
                                       (##cdr _%e147293147313%_)))
                                  (let* ((_%hd147321%_ _%hd147294147316%_)
                                         (_%body147323%_ _%tl147295147318%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd147321%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd147321%_
                                            (make-list
                                             (gx#stx-length _%hd147321%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g147325147328%_
                                                     _%g147326147330%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g147325147328%_
                                               _%g147326147330%_
                                               '#t))
                                            _%hd147321%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd147321%_))
                                           (gx#core-expand-local-block
                                            _%stx147286%_
                                            _%body147323%_))
                                         gx#current-expander-context
                                         (let ((__obj149003
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj149003)
                                           __obj149003))
                                        (_%E147289147301%_)))))
                              (_%E147289147301%_))))
                      (_%E147289147301%_)))))
          (_%E147288147333%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx147243%_)
        (if (gx#stx-list? _%stx147243%_)
            (gx#stx-andmap
             (lambda (_%bind147245%_)
               (let* ((_%e147246147256%_ _%bind147245%_)
                      (_%E147248147260%_ (lambda () '#f))
                      (_%E147247147282%_
                       (lambda ()
                         (if (gx#stx-pair? _%e147246147256%_)
                             (let ((_%e147249147264%_
                                    (gx#syntax-e _%e147246147256%_)))
                               (let ((_%hd147250147267%_
                                      (##car _%e147249147264%_))
                                     (_%tl147251147269%_
                                      (##cdr _%e147249147264%_)))
                                 (let ((_%hd147272%_ _%hd147250147267%_))
                                   (if (gx#stx-pair? _%tl147251147269%_)
                                       (let ((_%e147252147274%_
                                              (gx#syntax-e
                                               _%tl147251147269%_)))
                                         (let ((_%hd147253147277%_
                                                (##car _%e147252147274%_))
                                               (_%tl147254147279%_
                                                (##cdr _%e147252147274%_)))
                                           (if (gx#stx-null?
                                                _%tl147254147279%_)
                                               (gx#identifier? _%hd147272%_)
                                               (_%E147248147260%_))))
                                       (_%E147248147260%_)))))
                             (_%E147248147260%_)))))
                 (_%E147247147282%_)))
             _%stx147243%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind147199%_)
        (let* ((_%e147200147210%_ _%bind147199%_)
               (_%E147202147214%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147200147210%_)))
               (_%E147201147239%_
                (lambda ()
                  (if (gx#stx-pair? _%e147200147210%_)
                      (let ((_%e147203147218%_
                             (gx#syntax-e _%e147200147210%_)))
                        (let ((_%hd147204147221%_ (##car _%e147203147218%_))
                              (_%tl147205147223%_ (##cdr _%e147203147218%_)))
                          (if (gx#stx-pair? _%tl147205147223%_)
                              (let ((_%e147206147226%_
                                     (gx#syntax-e _%tl147205147223%_)))
                                (let ((_%hd147207147229%_
                                       (##car _%e147206147226%_))
                                      (_%tl147208147231%_
                                       (##cdr _%e147206147226%_)))
                                  (let ((_%expr147234%_ _%hd147207147229%_))
                                    (if (gx#stx-null? _%tl147208147231%_)
                                        (let ((_g149022_
                                               (gx#core-expand-expression+1
                                                _%expr147234%_)))
                                          (begin
                                            (let ((_g149023_
                                                   (if (##values? _g149022_)
                                                       (##values-length
                                                        _g149022_)
                                                       1)))
                                              (if (not (##fx= _g149023_ 2))
                                                  (error "Context expects 2 values"
                                                         _g149023_)))
                                            (let ((_%_147236%_
                                                   (##values-ref _g149022_ 0))
                                                  (_%e147237%_
                                                   (##values-ref _g149022_ 1)))
                                              _%e147237%_)))
                                        (_%E147202147214%_)))))
                              (_%E147202147214%_))))
                      (_%E147202147214%_)))))
          (_%E147201147239%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind147144%_ _%e147145%_ _%rebind?147146%_)
        (let* ((_%e147147147157%_ _%bind147144%_)
               (_%E147149147161%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147147147157%_)))
               (_%E147148147183%_
                (lambda ()
                  (if (gx#stx-pair? _%e147147147157%_)
                      (let ((_%e147150147165%_
                             (gx#syntax-e _%e147147147157%_)))
                        (let ((_%hd147151147168%_ (##car _%e147150147165%_))
                              (_%tl147152147170%_ (##cdr _%e147150147165%_)))
                          (let ((_%id147173%_ _%hd147151147168%_))
                            (if (gx#stx-pair? _%tl147152147170%_)
                                (let ((_%e147153147175%_
                                       (gx#syntax-e _%tl147152147170%_)))
                                  (let ((_%hd147154147178%_
                                         (##car _%e147153147175%_))
                                        (_%tl147155147180%_
                                         (##cdr _%e147153147175%_)))
                                    (if (gx#stx-null? _%tl147155147180%_)
                                        (gx#core-bind-syntax!__1
                                         _%id147173%_
                                         _%e147145%_
                                         _%rebind?147146%_)
                                        (_%E147149147161%_))))
                                (_%E147149147161%_)))))
                      (_%E147149147161%_)))))
          (_%E147148147183%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind147190%_ _%e147191%_)
        (let ((_%rebind?147193%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind147190%_
           _%e147191%_
           _%rebind?147193%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g149024_
        (let ((_g149025_ (##length _g149024_)))
          (cond ((##fx= _g149025_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g149024_))
                ((##fx= _g149025_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g149024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g149024_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx147102%_)
        (let* ((_%e147103147113%_ _%stx147102%_)
               (_%E147105147117%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147103147113%_)))
               (_%E147104147139%_
                (lambda ()
                  (if (gx#stx-pair? _%e147103147113%_)
                      (let ((_%e147106147121%_
                             (gx#syntax-e _%e147103147113%_)))
                        (let ((_%hd147107147124%_ (##car _%e147106147121%_))
                              (_%tl147108147126%_ (##cdr _%e147106147121%_)))
                          (if (gx#stx-pair? _%tl147108147126%_)
                              (let ((_%e147109147129%_
                                     (gx#syntax-e _%tl147108147126%_)))
                                (let ((_%hd147110147132%_
                                       (##car _%e147109147129%_))
                                      (_%tl147111147134%_
                                       (##cdr _%e147109147129%_)))
                                  (let ((_%expr147137%_ _%hd147110147132%_))
                                    (if (gx#stx-null? _%tl147111147134%_)
                                        (gx#core-expand-expression
                                         _%expr147137%_)
                                        (_%E147105147117%_)))))
                              (_%E147105147117%_))))
                      (_%E147105147117%_)))))
          (_%E147104147139%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx147061%_)
        (let* ((_%e147062147072%_ _%stx147061%_)
               (_%E147064147076%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147062147072%_)))
               (_%E147063147098%_
                (lambda ()
                  (if (gx#stx-pair? _%e147062147072%_)
                      (let ((_%e147065147080%_
                             (gx#syntax-e _%e147062147072%_)))
                        (let ((_%hd147066147083%_ (##car _%e147065147080%_))
                              (_%tl147067147085%_ (##cdr _%e147065147080%_)))
                          (if (gx#stx-pair? _%tl147067147085%_)
                              (let ((_%e147068147088%_
                                     (gx#syntax-e _%tl147067147085%_)))
                                (let ((_%hd147069147091%_
                                       (##car _%e147068147088%_))
                                      (_%tl147070147093%_
                                       (##cdr _%e147068147088%_)))
                                  (let ((_%e147096%_ _%hd147069147091%_))
                                    (if (gx#stx-null? _%tl147070147093%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e147096%_)
                                                     '()))
                                         (gx#stx-source _%stx147061%_))
                                        (_%E147064147076%_)))))
                              (_%E147064147076%_))))
                      (_%E147064147076%_)))))
          (_%E147063147098%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx147020%_)
        (let* ((_%e147021147031%_ _%stx147020%_)
               (_%E147023147035%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147021147031%_)))
               (_%E147022147057%_
                (lambda ()
                  (if (gx#stx-pair? _%e147021147031%_)
                      (let ((_%e147024147039%_
                             (gx#syntax-e _%e147021147031%_)))
                        (let ((_%hd147025147042%_ (##car _%e147024147039%_))
                              (_%tl147026147044%_ (##cdr _%e147024147039%_)))
                          (if (gx#stx-pair? _%tl147026147044%_)
                              (let ((_%e147027147047%_
                                     (gx#syntax-e _%tl147026147044%_)))
                                (let ((_%hd147028147050%_
                                       (##car _%e147027147047%_))
                                      (_%tl147029147052%_
                                       (##cdr _%e147027147047%_)))
                                  (let ((_%e147055%_ _%hd147028147050%_))
                                    (if (gx#stx-null? _%tl147029147052%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e147055%_)
                                                     '()))
                                         (gx#stx-source _%stx147020%_))
                                        (_%E147023147035%_)))))
                              (_%E147023147035%_))))
                      (_%E147023147035%_)))))
          (_%E147022147057%_))))
    (define gx#core-expand-call%
      (lambda (_%stx146914%_)
        (letrec ((_%expand-runtime-call146916%_
                  (lambda (_%rator-expr147017%_ _%args147018%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr147017%_
                      (gx#stx-map1 gx#core-expand-expression _%args147018%_))
                     (gx#stx-source _%stx146914%_)))))
          (let* ((_%e146917146927%_ _%stx146914%_)
                 (_%E146919146931%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146917146927%_)))
                 (_%E146918147013%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146917146927%_)
                        (let ((_%e146920146935%_
                               (gx#syntax-e _%e146917146927%_)))
                          (let ((_%hd146921146938%_ (##car _%e146920146935%_))
                                (_%tl146922146940%_ (##cdr _%e146920146935%_)))
                            (if (gx#stx-pair? _%tl146922146940%_)
                                (let ((_%e146923146943%_
                                       (gx#syntax-e _%tl146922146940%_)))
                                  (let ((_%hd146924146946%_
                                         (##car _%e146923146943%_))
                                        (_%tl146925146948%_
                                         (##cdr _%e146923146943%_)))
                                    (let* ((_%rator146951%_ _%hd146924146946%_)
                                           (_%args146953%_ _%tl146925146948%_))
                                      (if (gx#stx-list? _%args146953%_)
                                          (let* ((_%rator-expr146955%_
                                                  (gx#core-expand-expression
                                                   _%rator146951%_))
                                                 (_%e146956146966%_
                                                  _%rator-expr146955%_)
                                                 (_%E146958146970%_
                                                  (lambda ()
                                                    (_%expand-runtime-call146916%_
                                                     _%rator-expr146955%_
                                                     _%args146953%_)))
                                                 (_%E146957147009%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e146956146966%_)
                                                        (let ((_%e146959146974%_
                                                               (gx#syntax-e
                                                                _%e146956146966%_)))
                                                          (let ((_%hd146960146977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e146959146974%_))
                        (_%tl146961146979%_ (##cdr _%e146959146974%_)))
                    (if (and (gx#identifier? _%hd146960146977%_)
                             (gx#core-identifier=? _%hd146960146977%_ '%#ref))
                        (if (gx#stx-pair? _%tl146961146979%_)
                            (let ((_%e146962146982%_
                                   (gx#syntax-e _%tl146961146979%_)))
                              (let ((_%hd146963146985%_
                                     (##car _%e146962146982%_))
                                    (_%tl146964146987%_
                                     (##cdr _%e146962146982%_)))
                                (let ((_%id146990%_ _%hd146963146985%_))
                                  (if (gx#stx-null? _%tl146964146987%_)
                                      (let ((_%$e146992%_
                                             (gx#resolve-identifier__0
                                              (gx#datum->syntax__0 '#f 'id))))
                                        (if _%$e146992%_
                                            ((lambda (_%bind146995%_)
                                               (let _%again146997%_ ((_%bind146999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind146995%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e147001%_
                                                        (if (##structure-instance-of?
                                                             _%bind146999%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind146999%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e147001%_
                                                       ((lambda (_%macro147004%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro147004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args146953%_)
                    (gx#stx-source _%stx146914%_))))
                _%$e147001%_)
               (if (##structure-direct-instance-of?
                    _%bind146999%_
                    'gx#import-binding::t)
                   (_%again146997%_
                    (##unchecked-structure-ref _%bind146999%_ '5 '#f '#f))
                   (_%expand-runtime-call146916%_
                    _%rator-expr146955%_
                    _%args146953%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e146992%_)
                                            (_%expand-runtime-call146916%_
                                             _%rator-expr146955%_
                                             _%args146953%_)))
                                      (_%E146958146970%_)))))
                            (_%E146958146970%_))
                        (_%E146958146970%_))))
                (_%E146958146970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E146957147009%_))
                                          (_%E146919146931%_)))))
                                (_%E146919146931%_))))
                        (_%E146919146931%_)))))
            (_%E146918147013%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx146847%_)
        (let* ((_%e146848146864%_ _%stx146847%_)
               (_%E146850146868%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146848146864%_)))
               (_%E146849146910%_
                (lambda ()
                  (if (gx#stx-pair? _%e146848146864%_)
                      (let ((_%e146851146872%_
                             (gx#syntax-e _%e146848146864%_)))
                        (let ((_%hd146852146875%_ (##car _%e146851146872%_))
                              (_%tl146853146877%_ (##cdr _%e146851146872%_)))
                          (if (gx#stx-pair? _%tl146853146877%_)
                              (let ((_%e146854146880%_
                                     (gx#syntax-e _%tl146853146877%_)))
                                (let ((_%hd146855146883%_
                                       (##car _%e146854146880%_))
                                      (_%tl146856146885%_
                                       (##cdr _%e146854146880%_)))
                                  (let ((_%test146888%_ _%hd146855146883%_))
                                    (if (gx#stx-pair? _%tl146856146885%_)
                                        (let ((_%e146857146890%_
                                               (gx#syntax-e
                                                _%tl146856146885%_)))
                                          (let ((_%hd146858146893%_
                                                 (##car _%e146857146890%_))
                                                (_%tl146859146895%_
                                                 (##cdr _%e146857146890%_)))
                                            (let ((_%K146898%_
                                                   _%hd146858146893%_))
                                              (if (gx#stx-pair?
                                                   _%tl146859146895%_)
                                                  (let ((_%e146860146900%_
                                                         (gx#syntax-e
                                                          _%tl146859146895%_)))
                                                    (let ((_%hd146861146903%_
                                                           (##car _%e146860146900%_))
                                                          (_%tl146862146905%_
                                                           (##cdr _%e146860146900%_)))
                                                      (let ((_%E146908%_
                                                             _%hd146861146903%_))
                                                        (if (gx#stx-null?
                                                             _%tl146862146905%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test146888%_)
                                 (cons (gx#core-expand-expression _%K146898%_)
                                       (cons (gx#core-expand-expression
                                              _%E146908%_)
                                             '()))))
                     (gx#stx-source _%stx146847%_))
                    (_%E146850146868%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146850146868%_)))))
                                        (_%E146850146868%_)))))
                              (_%E146850146868%_))))
                      (_%E146850146868%_)))))
          (_%E146849146910%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx146806%_)
        (let* ((_%e146807146817%_ _%stx146806%_)
               (_%E146809146821%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146807146817%_)))
               (_%E146808146843%_
                (lambda ()
                  (if (gx#stx-pair? _%e146807146817%_)
                      (let ((_%e146810146825%_
                             (gx#syntax-e _%e146807146817%_)))
                        (let ((_%hd146811146828%_ (##car _%e146810146825%_))
                              (_%tl146812146830%_ (##cdr _%e146810146825%_)))
                          (if (gx#stx-pair? _%tl146812146830%_)
                              (let ((_%e146813146833%_
                                     (gx#syntax-e _%tl146812146830%_)))
                                (let ((_%hd146814146836%_
                                       (##car _%e146813146833%_))
                                      (_%tl146815146838%_
                                       (##cdr _%e146813146833%_)))
                                  (let ((_%id146841%_ _%hd146814146836%_))
                                    (if (gx#stx-null? _%tl146815146838%_)
                                        (if (gx#identifier? _%id146841%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id146841%_
                                                          _%stx146806%_)
                                                         '()))
                                             (gx#stx-source _%stx146806%_))
                                            (_%E146809146821%_))
                                        (_%E146809146821%_)))))
                              (_%E146809146821%_))))
                      (_%E146809146821%_)))))
          (_%E146808146843%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx146752%_)
        (let* ((_%e146753146766%_ _%stx146752%_)
               (_%E146755146770%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146753146766%_)))
               (_%E146754146802%_
                (lambda ()
                  (if (gx#stx-pair? _%e146753146766%_)
                      (let ((_%e146756146774%_
                             (gx#syntax-e _%e146753146766%_)))
                        (let ((_%hd146757146777%_ (##car _%e146756146774%_))
                              (_%tl146758146779%_ (##cdr _%e146756146774%_)))
                          (if (gx#stx-pair? _%tl146758146779%_)
                              (let ((_%e146759146782%_
                                     (gx#syntax-e _%tl146758146779%_)))
                                (let ((_%hd146760146785%_
                                       (##car _%e146759146782%_))
                                      (_%tl146761146787%_
                                       (##cdr _%e146759146782%_)))
                                  (let ((_%id146790%_ _%hd146760146785%_))
                                    (if (gx#stx-pair? _%tl146761146787%_)
                                        (let ((_%e146762146792%_
                                               (gx#syntax-e
                                                _%tl146761146787%_)))
                                          (let ((_%hd146763146795%_
                                                 (##car _%e146762146792%_))
                                                (_%tl146764146797%_
                                                 (##cdr _%e146762146792%_)))
                                            (let ((_%expr146800%_
                                                   _%hd146763146795%_))
                                              (if (gx#stx-null?
                                                   _%tl146764146797%_)
                                                  (if (gx#identifier?
                                                       _%id146790%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id146790%_
                            _%stx146752%_)
                           (cons (gx#core-expand-expression _%expr146800%_)
                                 '())))
               (gx#stx-source _%stx146752%_))
              (_%E146755146770%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146755146770%_)))))
                                        (_%E146755146770%_)))))
                              (_%E146755146770%_))))
                      (_%E146755146770%_)))))
          (_%E146754146802%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx146597%_)
        (letrec ((_%generate146599%_
                  (lambda (_%body146629%_)
                    (let _%lp146631%_ ((_%rest146633%_ _%body146629%_)
                                       (_%ns146634%_
                                        (gx#core-context-namespace__0))
                                       (_%r146635%_ '()))
                      (let* ((_%e146636146651%_ _%rest146633%_)
                             (_%E146649146655%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e146636146651%_)))
                             (_%E146645146659%_
                              (lambda ()
                                (if (gx#stx-null? _%e146636146651%_)
                                    (reverse _%r146635%_)
                                    (_%E146649146655%_))))
                             (_%E146638146716%_
                              (lambda ()
                                (if (gx#stx-pair? _%e146636146651%_)
                                    (let ((_%e146646146663%_
                                           (gx#syntax-e _%e146636146651%_)))
                                      (let ((_%hd146647146666%_
                                             (##car _%e146646146663%_))
                                            (_%tl146648146668%_
                                             (##cdr _%e146646146663%_)))
                                        (let* ((_%hd146671%_
                                                _%hd146647146666%_)
                                               (_%rest146673%_
                                                _%tl146648146668%_))
                                          (if (gx#identifier? _%hd146671%_)
                                              (_%lp146631%_
                                               _%rest146673%_
                                               _%ns146634%_
                                               (cons (cons _%hd146671%_
                                                           (cons (if _%ns146634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd146671%_
                              _%ns146634%_
                              '"#"
                              _%hd146671%_)
                             _%hd146671%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r146635%_))
                                              (let* ((_%e146674146684%_
                                                      _%hd146671%_)
                                                     (_%E146676146688%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e146674146684%_)))
                                                     (_%E146675146712%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e146674146684%_)
                                                            (let ((_%e146677146692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e146674146684%_)))
                      (let ((_%hd146678146695%_ (##car _%e146677146692%_))
                            (_%tl146679146697%_ (##cdr _%e146677146692%_)))
                        (let ((_%id146700%_ _%hd146678146695%_))
                          (if (gx#stx-pair? _%tl146679146697%_)
                              (let ((_%e146680146702%_
                                     (gx#syntax-e _%tl146679146697%_)))
                                (let ((_%hd146681146705%_
                                       (##car _%e146680146702%_))
                                      (_%tl146682146707%_
                                       (##cdr _%e146680146702%_)))
                                  (let ((_%eid146710%_ _%hd146681146705%_))
                                    (if (gx#stx-null? _%tl146682146707%_)
                                        (if (and (gx#identifier? _%id146700%_)
                                                 (gx#identifier?
                                                  _%eid146710%_))
                                            (_%lp146631%_
                                             _%rest146673%_
                                             _%ns146634%_
                                             (cons (cons _%id146700%_
                                                         (cons _%eid146710%_
                                                               '()))
                                                   _%r146635%_))
                                            (_%E146676146688%_))
                                        (_%E146676146688%_)))))
                              (_%E146676146688%_)))))
                    (_%E146676146688%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E146675146712%_))))))
                                    (_%E146645146659%_))))
                             (_%E146637146748%_
                              (lambda ()
                                (if (gx#stx-pair? _%e146636146651%_)
                                    (let ((_%e146639146720%_
                                           (gx#syntax-e _%e146636146651%_)))
                                      (let ((_%hd146640146723%_
                                             (##car _%e146639146720%_))
                                            (_%tl146641146725%_
                                             (##cdr _%e146639146720%_)))
                                        (if (eq? (gx#stx-e _%hd146640146723%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl146641146725%_)
                                                (let ((_%e146642146728%_
                                                       (gx#syntax-e
                                                        _%tl146641146725%_)))
                                                  (let ((_%hd146643146731%_
                                                         (##car _%e146642146728%_))
                                                        (_%tl146644146733%_
                                                         (##cdr _%e146642146728%_)))
                                                    (let* ((_%ns146736%_
                                                            _%hd146643146731%_)
                                                           (_%rest146738%_
                                                            _%tl146644146733%_)
                                                           (_%ns146746%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns146736%_)
                        (symbol->string (gx#stx-e _%ns146736%_))
                        (if (or (gx#stx-string? _%ns146736%_)
                                (gx#stx-false? _%ns146736%_))
                            (gx#stx-e _%ns146736%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx146597%_
                             _%ns146736%_)))))
              (_%lp146631%_ _%rest146738%_ _%ns146746%_ _%r146635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E146638146716%_))
                                            (_%E146638146716%_))))
                                    (_%E146638146716%_)))))
                        (_%E146637146748%_))))))
          (let* ((_%e146600146607%_ _%stx146597%_)
                 (_%E146602146611%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146600146607%_)))
                 (_%E146601146625%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146600146607%_)
                        (let ((_%e146603146615%_
                               (gx#syntax-e _%e146600146607%_)))
                          (let ((_%hd146604146618%_ (##car _%e146603146615%_))
                                (_%tl146605146620%_ (##cdr _%e146603146615%_)))
                            (let ((_%body146623%_ _%tl146605146620%_))
                              (if (gx#stx-list? _%body146623%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate146599%_ _%body146623%_))
                                  (_%E146602146611%_)))))
                        (_%E146602146611%_)))))
            (_%E146601146625%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx146554%_)
        (let* ((_%e146555146565%_ _%stx146554%_)
               (_%E146557146569%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146555146565%_)))
               (_%E146556146593%_
                (lambda ()
                  (if (gx#stx-pair? _%e146555146565%_)
                      (let ((_%e146558146573%_
                             (gx#syntax-e _%e146555146565%_)))
                        (let ((_%hd146559146576%_ (##car _%e146558146573%_))
                              (_%tl146560146578%_ (##cdr _%e146558146573%_)))
                          (if (gx#stx-pair? _%tl146560146578%_)
                              (let ((_%e146561146581%_
                                     (gx#syntax-e _%tl146560146578%_)))
                                (let ((_%hd146562146584%_
                                       (##car _%e146561146581%_))
                                      (_%tl146563146586%_
                                       (##cdr _%e146561146581%_)))
                                  (let* ((_%hd146589%_ _%hd146562146584%_)
                                         (_%body146591%_ _%tl146563146586%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd146589%_)
                                             (gx#stx-list? _%body146591%_)
                                             (not (gx#stx-null?
                                                   _%body146591%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd146589%_)
                                         _%body146591%_)
                                        (_%E146557146569%_)))))
                              (_%E146557146569%_))))
                      (_%E146557146569%_)))))
          (_%E146556146593%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx146490%_)
        (letrec ((_%generate146492%_
                  (lambda (_%clause146522%_)
                    (let* ((_%e146523146530%_ _%clause146522%_)
                           (_%E146525146534%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx146490%_
                               _%clause146522%_)))
                           (_%E146524146550%_
                            (lambda ()
                              (if (gx#stx-pair? _%e146523146530%_)
                                  (let ((_%e146526146538%_
                                         (gx#syntax-e _%e146523146530%_)))
                                    (let ((_%hd146527146541%_
                                           (##car _%e146526146538%_))
                                          (_%tl146528146543%_
                                           (##cdr _%e146526146538%_)))
                                      (let* ((_%hd146546%_ _%hd146527146541%_)
                                             (_%body146548%_
                                              _%tl146528146543%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd146546%_)
                                                 (gx#stx-list? _%body146548%_)
                                                 (not (gx#stx-null?
                                                       _%body146548%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd146546%_)
                                                   _%body146548%_)
                                             (gx#stx-source _%clause146522%_))
                                            (_%E146525146534%_)))))
                                  (_%E146525146534%_)))))
                      (_%E146524146550%_)))))
          (let* ((_%e146493146500%_ _%stx146490%_)
                 (_%E146495146504%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146493146500%_)))
                 (_%E146494146518%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146493146500%_)
                        (let ((_%e146496146508%_
                               (gx#syntax-e _%e146493146500%_)))
                          (let ((_%hd146497146511%_ (##car _%e146496146508%_))
                                (_%tl146498146513%_ (##cdr _%e146496146508%_)))
                            (let ((_%clauses146516%_ _%tl146498146513%_))
                              (if (gx#stx-list? _%clauses146516%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate146492%_
                                    _%clauses146516%_))
                                  (_%E146495146504%_)))))
                        (_%E146495146504%_)))))
            (_%E146494146518%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx146391%_ _%form146392%_)
        (letrec ((_%generate146394%_
                  (lambda (_%bind146437%_)
                    (let* ((_%e146438146448%_ _%bind146437%_)
                           (_%E146440146452%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx146391%_
                               _%bind146437%_)))
                           (_%E146439146476%_
                            (lambda ()
                              (if (gx#stx-pair? _%e146438146448%_)
                                  (let ((_%e146441146456%_
                                         (gx#syntax-e _%e146438146448%_)))
                                    (let ((_%hd146442146459%_
                                           (##car _%e146441146456%_))
                                          (_%tl146443146461%_
                                           (##cdr _%e146441146456%_)))
                                      (let ((_%ids146464%_ _%hd146442146459%_))
                                        (if (gx#stx-pair? _%tl146443146461%_)
                                            (let ((_%e146444146466%_
                                                   (gx#syntax-e
                                                    _%tl146443146461%_)))
                                              (let ((_%hd146445146469%_
                                                     (##car _%e146444146466%_))
                                                    (_%tl146446146471%_
                                                     (##cdr _%e146444146466%_)))
                                                (let ((_%expr146474%_
                                                       _%hd146445146469%_))
                                                  (if (gx#stx-null?
                                                       _%tl146446146471%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids146464%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids146464%_)
                        (cons _%expr146474%_ '()))
                  (_%E146440146452%_))
              (_%E146440146452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E146440146452%_)))))
                                  (_%E146440146452%_)))))
                      (_%E146439146476%_)))))
          (let* ((_%e146395146405%_ _%stx146391%_)
                 (_%E146397146409%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146395146405%_)))
                 (_%E146396146433%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146395146405%_)
                        (let ((_%e146398146413%_
                               (gx#syntax-e _%e146395146405%_)))
                          (let ((_%hd146399146416%_ (##car _%e146398146413%_))
                                (_%tl146400146418%_ (##cdr _%e146398146413%_)))
                            (if (gx#stx-pair? _%tl146400146418%_)
                                (let ((_%e146401146421%_
                                       (gx#syntax-e _%tl146400146418%_)))
                                  (let ((_%hd146402146424%_
                                         (##car _%e146401146421%_))
                                        (_%tl146403146426%_
                                         (##cdr _%e146401146421%_)))
                                    (let* ((_%hd146429%_ _%hd146402146424%_)
                                           (_%body146431%_ _%tl146403146426%_))
                                      (if (and (gx#stx-list? _%hd146429%_)
                                               (gx#stx-list? _%body146431%_)
                                               (not (gx#stx-null?
                                                     _%body146431%_)))
                                          (gx#core-cons*
                                           _%form146392%_
                                           (gx#stx-map1
                                            _%generate146394%_
                                            _%hd146429%_)
                                           _%body146431%_)
                                          (_%E146397146409%_)))))
                                (_%E146397146409%_))))
                        (_%E146397146409%_)))))
            (_%E146396146433%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx146483%_)
        (let ((_%form146485%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx146483%_ _%form146485%_))))
    (define gx#macro-expand-let-values
      (lambda _g149026_
        (let ((_g149027_ (##length _g149026_)))
          (cond ((##fx= _g149027_ 1)
                 (apply gx#macro-expand-let-values__0 _g149026_))
                ((##fx= _g149027_ 2)
                 (apply gx#macro-expand-let-values__% _g149026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g149026_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx146388%_)
        (gx#macro-expand-let-values__% _%stx146388%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx146386%_)
        (gx#macro-expand-let-values__% _%stx146386%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx146277%_)
        (let* ((_%e146278146304%_ _%stx146277%_)
               (_%E146290146308%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146278146304%_)))
               (_%E146280146350%_
                (lambda ()
                  (if (gx#stx-pair? _%e146278146304%_)
                      (let ((_%e146291146312%_
                             (gx#syntax-e _%e146278146304%_)))
                        (let ((_%hd146292146315%_ (##car _%e146291146312%_))
                              (_%tl146293146317%_ (##cdr _%e146291146312%_)))
                          (if (gx#stx-pair? _%tl146293146317%_)
                              (let ((_%e146294146320%_
                                     (gx#syntax-e _%tl146293146317%_)))
                                (let ((_%hd146295146323%_
                                       (##car _%e146294146320%_))
                                      (_%tl146296146325%_
                                       (##cdr _%e146294146320%_)))
                                  (let ((_%test146328%_ _%hd146295146323%_))
                                    (if (gx#stx-pair? _%tl146296146325%_)
                                        (let ((_%e146297146330%_
                                               (gx#syntax-e
                                                _%tl146296146325%_)))
                                          (let ((_%hd146298146333%_
                                                 (##car _%e146297146330%_))
                                                (_%tl146299146335%_
                                                 (##cdr _%e146297146330%_)))
                                            (let ((_%K146338%_
                                                   _%hd146298146333%_))
                                              (if (gx#stx-pair?
                                                   _%tl146299146335%_)
                                                  (let ((_%e146300146340%_
                                                         (gx#syntax-e
                                                          _%tl146299146335%_)))
                                                    (let ((_%hd146301146343%_
                                                           (##car _%e146300146340%_))
                                                          (_%tl146302146345%_
                                                           (##cdr _%e146300146340%_)))
                                                      (let ((_%E146348%_
                                                             _%hd146301146343%_))
                                                        (if (gx#stx-null?
                                                             _%tl146302146345%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test146328%_
                                                             _%K146338%_
                                                             _%E146348%_)
                                                            (_%E146290146308%_)))))
                                                  (_%E146290146308%_)))))
                                        (_%E146290146308%_)))))
                              (_%E146290146308%_))))
                      (_%E146290146308%_))))
               (_%E146279146382%_
                (lambda ()
                  (if (gx#stx-pair? _%e146278146304%_)
                      (let ((_%e146281146354%_
                             (gx#syntax-e _%e146278146304%_)))
                        (let ((_%hd146282146357%_ (##car _%e146281146354%_))
                              (_%tl146283146359%_ (##cdr _%e146281146354%_)))
                          (if (gx#stx-pair? _%tl146283146359%_)
                              (let ((_%e146284146362%_
                                     (gx#syntax-e _%tl146283146359%_)))
                                (let ((_%hd146285146365%_
                                       (##car _%e146284146362%_))
                                      (_%tl146286146367%_
                                       (##cdr _%e146284146362%_)))
                                  (let ((_%test146370%_ _%hd146285146365%_))
                                    (if (gx#stx-pair? _%tl146286146367%_)
                                        (let ((_%e146287146372%_
                                               (gx#syntax-e
                                                _%tl146286146367%_)))
                                          (let ((_%hd146288146375%_
                                                 (##car _%e146287146372%_))
                                                (_%tl146289146377%_
                                                 (##cdr _%e146287146372%_)))
                                            (let ((_%K146380%_
                                                   _%hd146288146375%_))
                                              (if (gx#stx-null?
                                                   _%tl146289146377%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test146370%_
                                                   _%K146380%_
                                                   '#!void)
                                                  (_%E146280146350%_)))))
                                        (_%E146280146350%_)))))
                              (_%E146280146350%_))))
                      (_%E146280146350%_)))))
          (_%E146279146382%_))))
    (define gx#free-identifier=?
      (lambda (_%xid146262%_ _%yid146263%_)
        (let ((_%xe146265%_ (gx#resolve-identifier__0 _%xid146262%_))
              (_%ye146266%_ (gx#resolve-identifier__0 _%yid146263%_)))
          (if (and _%xe146265%_ _%ye146266%_)
              (let ((_%$e146269%_ (eq? _%xe146265%_ _%ye146266%_)))
                (if _%$e146269%_
                    _%$e146269%_
                    (if (##structure-instance-of? _%xe146265%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye146266%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe146265%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye146266%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe146265%_ _%ye146266%_)
                  '#f
                  (gx#stx-eq? _%xid146262%_ _%yid146263%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid146243%_ _%yid146244%_)
        (letrec ((_%context146246%_
                  (lambda (_%e146260%_)
                    (if (##structure-direct-instance-of?
                         _%e146260%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e146260%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks146247%_
                  (lambda (_%e146255%_)
                    (if (symbol? _%e146255%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e146255%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e146255%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e146255%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap146248%_
                  (lambda (_%e146253%_)
                    (if (symbol? _%e146253%_)
                        _%e146253%_
                        (gx#syntax-local-unwrap _%e146253%_)))))
          (let ((_%x146250%_ (_%unwrap146248%_ _%xid146243%_))
                (_%y146251%_ (_%unwrap146248%_ _%yid146244%_)))
            (if (gx#stx-eq? _%x146250%_ _%y146251%_)
                (if (eq? (_%context146246%_ _%x146250%_)
                         (_%context146246%_ _%y146251%_))
                    (equal? (_%marks146247%_ _%x146250%_)
                            (_%marks146247%_ _%y146251%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx146241%_)
        (if (gx#identifier? _%stx146241%_)
            (gx#core-identifier=? _%stx146241%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx146239%_)
        (if (gx#identifier? _%stx146239%_)
            (gx#core-identifier=? _%stx146239%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx146182%_ _%where146183%_)
        (let _%lp146185%_ ((_%rest146187%_ (gx#syntax->list _%stx146182%_)))
          (let* ((_%rest146188146196%_ _%rest146187%_)
                 (_%else146190146204%_ (lambda () '#t))
                 (_%K146192146217%_
                  (lambda (_%rest146207%_ _%hd146208%_)
                    (if (gx#identifier? _%hd146208%_)
                        (if (__find (lambda (_%g146210146212%_)
                                      (gx#bound-identifier=?
                                       _%g146210146212%_
                                       _%hd146208%_))
                                    _%rest146207%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where146183%_
                             _%hd146208%_)
                            (_%lp146185%_ _%rest146207%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where146183%_
                         _%hd146208%_)))))
            (if (pair? _%rest146188146196%_)
                (let ((_%hd146193146220%_ (##car _%rest146188146196%_))
                      (_%tl146194146222%_ (##cdr _%rest146188146196%_)))
                  (let* ((_%hd146225%_ _%hd146193146220%_)
                         (_%rest146227%_ _%tl146194146222%_))
                    (_%K146192146217%_ _%rest146227%_ _%hd146225%_)))
                (_%else146190146204%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx146232%_)
        (let ((_%where146234%_ _%stx146232%_))
          (gx#check-duplicate-identifiers__% _%stx146232%_ _%where146234%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g149028_
        (let ((_g149029_ (##length _g149028_)))
          (cond ((##fx= _g149029_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g149028_))
                ((##fx= _g149029_ 2)
                 (apply gx#check-duplicate-identifiers__% _g149028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g149028_))))))
    (define gx#core-bind-values?
      (lambda (_%stx146174%_)
        (gx#stx-andmap
         (lambda (_%x146176%_)
           (let ((_%$e146178%_ (gx#identifier? _%x146176%_)))
             (if _%$e146178%_ _%$e146178%_ (gx#stx-false? _%x146176%_))))
         _%stx146174%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx146138%_ _%rebind?146139%_ _%phi146140%_ _%ctx146141%_)
        (gx#stx-for-each1
         (lambda (_%id146143%_)
           (if (gx#identifier? _%id146143%_)
               (gx#core-bind-runtime!__%
                _%id146143%_
                _%rebind?146139%_
                _%phi146140%_
                _%ctx146141%_)
               '#!void))
         _%stx146138%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx146148%_)
        (let* ((_%rebind?146150%_ '#f)
               (_%phi146152%_ (gx#current-expander-phi))
               (_%ctx146154%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx146148%_
           _%rebind?146150%_
           _%phi146152%_
           _%ctx146154%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx146156%_ _%rebind?146157%_)
        (let* ((_%phi146159%_ (gx#current-expander-phi))
               (_%ctx146161%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx146156%_
           _%rebind?146157%_
           _%phi146159%_
           _%ctx146161%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx146163%_ _%rebind?146164%_ _%phi146165%_)
        (let ((_%ctx146167%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx146163%_
           _%rebind?146164%_
           _%phi146165%_
           _%ctx146167%_))))
    (define gx#core-bind-values!
      (lambda _g149030_
        (let ((_g149031_ (##length _g149030_)))
          (cond ((##fx= _g149031_ 1) (apply gx#core-bind-values!__0 _g149030_))
                ((##fx= _g149031_ 2) (apply gx#core-bind-values!__1 _g149030_))
                ((##fx= _g149031_ 3) (apply gx#core-bind-values!__2 _g149030_))
                ((##fx= _g149031_ 4) (apply gx#core-bind-values!__% _g149030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g149030_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx146133%_)
        (gx#stx-map1
         (lambda (_%x146135%_)
           (if (gx#identifier? _%x146135%_)
               (gx#core-quote-syntax__0 _%x146135%_)
               '#f))
         _%stx146133%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx146126%_)
        (if (gx#identifier? _%stx146126%_)
            (let* ((_%bind146128%_ (gx#resolve-identifier__0 _%stx146126%_))
                   (_%$e146130%_ (not _%bind146128%_)))
              (if _%$e146130%_
                  _%$e146130%_
                  (##structure-instance-of?
                   _%bind146128%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id146115%_ _%form146116%_)
        (let ((_%bind146118%_ (gx#resolve-identifier__0 _%id146115%_)))
          (if (##structure-instance-of? _%bind146118%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id146115%_)
              (if (not _%bind146118%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id146115%_)))
                      (gx#core-quote-syntax__0 _%id146115%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form146116%_
                       _%id146115%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form146116%_
                   _%id146115%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id146070%_ _%rebind?146071%_ _%phi146072%_ _%ctx146073%_)
        (let* ((_%key146075%_ (gx#core-identifier-key _%id146070%_))
               (_%eid146077%_
                (gx#make-binding-id__%
                 _%key146075%_
                 '#f
                 _%phi146072%_
                 _%ctx146073%_))
               (_%bind146083%_
                (if (##structure-instance-of?
                     _%ctx146073%_
                     'gx#module-context::t)
                    (let ((__obj149007
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
                       __obj149007
                       _%eid146077%_
                       _%key146075%_
                       _%phi146072%_
                       _%ctx146073%_)
                      __obj149007)
                    (if (##structure-instance-of?
                         _%ctx146073%_
                         'gx#top-context::t)
                        (let ((__obj149006
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj149006
                           _%eid146077%_
                           _%key146075%_
                           _%phi146072%_)
                          __obj149006)
                        (if (##structure-instance-of?
                             _%ctx146073%_
                             'gx#local-context::t)
                            (let ((__obj149005
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj149005
                               _%eid146077%_
                               _%key146075%_
                               _%phi146072%_)
                              __obj149005)
                            (let ((__obj149004
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj149004
                               _%eid146077%_
                               _%key146075%_
                               _%phi146072%_)
                              __obj149004))))))
          (gx#bind-identifier!__%
           _%id146070%_
           _%bind146083%_
           _%rebind?146071%_
           _%phi146072%_
           _%ctx146073%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id146089%_)
        (let* ((_%rebind?146091%_ '#f)
               (_%phi146093%_ (gx#current-expander-phi))
               (_%ctx146095%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id146089%_
           _%rebind?146091%_
           _%phi146093%_
           _%ctx146095%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id146097%_ _%rebind?146098%_)
        (let* ((_%phi146100%_ (gx#current-expander-phi))
               (_%ctx146102%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id146097%_
           _%rebind?146098%_
           _%phi146100%_
           _%ctx146102%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id146104%_ _%rebind?146105%_ _%phi146106%_)
        (let ((_%ctx146108%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id146104%_
           _%rebind?146105%_
           _%phi146106%_
           _%ctx146108%_))))
    (define gx#core-bind-runtime!
      (lambda _g149032_
        (let ((_g149033_ (##length _g149032_)))
          (cond ((##fx= _g149033_ 1)
                 (apply gx#core-bind-runtime!__0 _g149032_))
                ((##fx= _g149033_ 2)
                 (apply gx#core-bind-runtime!__1 _g149032_))
                ((##fx= _g149033_ 3)
                 (apply gx#core-bind-runtime!__2 _g149032_))
                ((##fx= _g149033_ 4)
                 (apply gx#core-bind-runtime!__% _g149032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g149032_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id146022%_
               _%eid146023%_
               _%rebind?146024%_
               _%phi146025%_
               _%ctx146026%_)
        (let* ((_%key146028%_ (gx#core-identifier-key _%id146022%_))
               (_%bind146033%_
                (if (##structure-instance-of?
                     _%ctx146026%_
                     'gx#module-context::t)
                    (let ((__obj149010
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
                       __obj149010
                       _%eid146023%_
                       _%key146028%_
                       _%phi146025%_
                       _%ctx146026%_)
                      __obj149010)
                    (if (##structure-instance-of?
                         _%ctx146026%_
                         'gx#top-context::t)
                        (let ((__obj149009
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj149009
                           _%eid146023%_
                           _%key146028%_
                           _%phi146025%_)
                          __obj149009)
                        (let ((__obj149008
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj149008
                           _%eid146023%_
                           _%key146028%_
                           _%phi146025%_)
                          __obj149008)))))
          (gx#bind-identifier!__%
           _%id146022%_
           _%bind146033%_
           _%rebind?146024%_
           _%phi146025%_
           _%ctx146026%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id146039%_ _%eid146040%_)
        (let* ((_%rebind?146042%_ '#f)
               (_%phi146044%_ (gx#current-expander-phi))
               (_%ctx146046%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id146039%_
           _%eid146040%_
           _%rebind?146042%_
           _%phi146044%_
           _%ctx146046%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id146048%_ _%eid146049%_ _%rebind?146050%_)
        (let* ((_%phi146052%_ (gx#current-expander-phi))
               (_%ctx146054%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id146048%_
           _%eid146049%_
           _%rebind?146050%_
           _%phi146052%_
           _%ctx146054%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id146056%_ _%eid146057%_ _%rebind?146058%_ _%phi146059%_)
        (let ((_%ctx146061%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id146056%_
           _%eid146057%_
           _%rebind?146058%_
           _%phi146059%_
           _%ctx146061%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g149034_
        (let ((_g149035_ (##length _g149034_)))
          (cond ((##fx= _g149035_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g149034_))
                ((##fx= _g149035_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g149034_))
                ((##fx= _g149035_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g149034_))
                ((##fx= _g149035_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g149034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g149034_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id145982%_
               _%eid145983%_
               _%rebind?145984%_
               _%phi145985%_
               _%ctx145986%_)
        (gx#bind-identifier!__%
         _%id145982%_
         (let ((__obj149011
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj149011
            _%eid145983%_
            (gx#core-identifier-key _%id145982%_)
            _%phi145985%_)
           __obj149011)
         _%rebind?145984%_
         _%phi145985%_
         _%ctx145986%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id145991%_ _%eid145992%_)
        (let* ((_%rebind?145994%_ '#f)
               (_%phi145996%_ (gx#current-expander-phi))
               (_%ctx145998%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id145991%_
           _%eid145992%_
           _%rebind?145994%_
           _%phi145996%_
           _%ctx145998%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id146000%_ _%eid146001%_ _%rebind?146002%_)
        (let* ((_%phi146004%_ (gx#current-expander-phi))
               (_%ctx146006%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id146000%_
           _%eid146001%_
           _%rebind?146002%_
           _%phi146004%_
           _%ctx146006%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id146008%_ _%eid146009%_ _%rebind?146010%_ _%phi146011%_)
        (let ((_%ctx146013%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id146008%_
           _%eid146009%_
           _%rebind?146010%_
           _%phi146011%_
           _%ctx146013%_))))
    (define gx#core-bind-extern!
      (lambda _g149036_
        (let ((_g149037_ (##length _g149036_)))
          (cond ((##fx= _g149037_ 2) (apply gx#core-bind-extern!__0 _g149036_))
                ((##fx= _g149037_ 3) (apply gx#core-bind-extern!__1 _g149036_))
                ((##fx= _g149037_ 4) (apply gx#core-bind-extern!__2 _g149036_))
                ((##fx= _g149037_ 5) (apply gx#core-bind-extern!__% _g149036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g149036_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id145936%_
               _%e145937%_
               _%rebind?145938%_
               _%phi145939%_
               _%ctx145940%_)
        (gx#bind-identifier!__%
         _%id145936%_
         (let ((_%key145945%_ (gx#core-identifier-key _%id145936%_))
               (_%e145946%_
                (if (or (##structure-instance-of? _%e145937%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e145937%_
                         'gx#expander-context::t))
                    _%e145937%_
                    (##structure
                     gx#user-expander::t
                     _%e145937%_
                     _%ctx145940%_
                     _%phi145939%_))))
           (let ((__obj149012
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj149012
              (gx#make-binding-id__%
               _%key145945%_
               '#t
               _%phi145939%_
               _%ctx145940%_)
              _%key145945%_
              _%phi145939%_
              _%e145946%_)
             __obj149012))
         _%rebind?145938%_
         _%phi145939%_
         _%ctx145940%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id145951%_ _%e145952%_)
        (let* ((_%rebind?145954%_ '#f)
               (_%phi145956%_ (gx#current-expander-phi))
               (_%ctx145958%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id145951%_
           _%e145952%_
           _%rebind?145954%_
           _%phi145956%_
           _%ctx145958%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id145960%_ _%e145961%_ _%rebind?145962%_)
        (let* ((_%phi145964%_ (gx#current-expander-phi))
               (_%ctx145966%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id145960%_
           _%e145961%_
           _%rebind?145962%_
           _%phi145964%_
           _%ctx145966%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id145968%_ _%e145969%_ _%rebind?145970%_ _%phi145971%_)
        (let ((_%ctx145973%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id145968%_
           _%e145969%_
           _%rebind?145970%_
           _%phi145971%_
           _%ctx145973%_))))
    (define gx#core-bind-syntax!
      (lambda _g149038_
        (let ((_g149039_ (##length _g149038_)))
          (cond ((##fx= _g149039_ 2) (apply gx#core-bind-syntax!__0 _g149038_))
                ((##fx= _g149039_ 3) (apply gx#core-bind-syntax!__1 _g149038_))
                ((##fx= _g149039_ 4) (apply gx#core-bind-syntax!__2 _g149038_))
                ((##fx= _g149039_ 5) (apply gx#core-bind-syntax!__% _g149038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g149038_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id145919%_ _%e145920%_ _%rebind?145921%_)
        (gx#core-bind-syntax!__%
         _%id145919%_
         _%e145920%_
         _%rebind?145921%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id145926%_ _%e145927%_)
        (let ((_%rebind?145929%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id145926%_
           _%e145927%_
           _%rebind?145929%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g149040_
        (let ((_g149041_ (##length _g149040_)))
          (cond ((##fx= _g149041_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g149040_))
                ((##fx= _g149041_ 3)
                 (apply gx#core-bind-root-syntax!__% _g149040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g149040_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id145877%_
               _%alias-id145878%_
               _%rebind?145879%_
               _%phi145880%_
               _%ctx145881%_)
        (gx#bind-identifier!__%
         _%id145877%_
         (let* ((_%key145883%_ (gx#core-identifier-key _%id145877%_))
                (__obj149013
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj149013
            (gx#make-binding-id__%
             _%key145883%_
             '#t
             _%phi145880%_
             _%ctx145881%_)
            _%key145883%_
            _%phi145880%_
            _%alias-id145878%_)
           __obj149013)
         _%rebind?145879%_
         _%phi145880%_
         _%ctx145881%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id145888%_ _%alias-id145889%_)
        (let* ((_%rebind?145891%_ '#f)
               (_%phi145893%_ (gx#current-expander-phi))
               (_%ctx145895%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id145888%_
           _%alias-id145889%_
           _%rebind?145891%_
           _%phi145893%_
           _%ctx145895%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id145897%_ _%alias-id145898%_ _%rebind?145899%_)
        (let* ((_%phi145901%_ (gx#current-expander-phi))
               (_%ctx145903%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id145897%_
           _%alias-id145898%_
           _%rebind?145899%_
           _%phi145901%_
           _%ctx145903%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id145905%_ _%alias-id145906%_ _%rebind?145907%_ _%phi145908%_)
        (let ((_%ctx145910%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id145905%_
           _%alias-id145906%_
           _%rebind?145907%_
           _%phi145908%_
           _%ctx145910%_))))
    (define gx#core-bind-alias!
      (lambda _g149042_
        (let ((_g149043_ (##length _g149042_)))
          (cond ((##fx= _g149043_ 2) (apply gx#core-bind-alias!__0 _g149042_))
                ((##fx= _g149043_ 3) (apply gx#core-bind-alias!__1 _g149042_))
                ((##fx= _g149043_ 4) (apply gx#core-bind-alias!__2 _g149042_))
                ((##fx= _g149043_ 5) (apply gx#core-bind-alias!__% _g149042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g149042_))))))
    (define gx#make-binding-id__%
      (lambda (_%key145827%_ _%syntax?145828%_ _%phi145829%_ _%ctx145830%_)
        (if (uninterned-symbol? _%key145827%_)
            (##gensym 'L)
            (if (pair? _%key145827%_)
                (gensym (##car _%key145827%_))
                (if (##structure-instance-of? _%ctx145830%_ 'gx#top-context::t)
                    (let ((_%ns145835%_
                           (gx#core-context-namespace__% _%ctx145830%_)))
                      (if (and (fxzero? _%phi145829%_) (not _%syntax?145828%_))
                          (if _%ns145835%_
                              (make-symbol__1 _%ns145835%_ '"#" _%key145827%_)
                              _%key145827%_)
                          (if _%syntax?145828%_
                              (make-symbol__1
                               (let ((_%$e145839%_ _%ns145835%_))
                                 (if _%$e145839%_ _%$e145839%_ '""))
                               '"[:"
                               (number->string _%phi145829%_)
                               '":]#"
                               _%key145827%_)
                              (make-symbol__1
                               (let ((_%$e145843%_ _%ns145835%_))
                                 (if _%$e145843%_ _%$e145843%_ '""))
                               '"["
                               (number->string _%phi145829%_)
                               '"]#"
                               _%key145827%_))))
                    (gensym _%key145827%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key145850%_)
        (let* ((_%syntax?145852%_ '#f)
               (_%phi145854%_ (gx#current-expander-phi))
               (_%ctx145856%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key145850%_
           _%syntax?145852%_
           _%phi145854%_
           _%ctx145856%_))))
    (define gx#make-binding-id__1
      (lambda (_%key145858%_ _%syntax?145859%_)
        (let* ((_%phi145861%_ (gx#current-expander-phi))
               (_%ctx145863%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key145858%_
           _%syntax?145859%_
           _%phi145861%_
           _%ctx145863%_))))
    (define gx#make-binding-id__2
      (lambda (_%key145865%_ _%syntax?145866%_ _%phi145867%_)
        (let ((_%ctx145869%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key145865%_
           _%syntax?145866%_
           _%phi145867%_
           _%ctx145869%_))))
    (define gx#make-binding-id
      (lambda _g149044_
        (let ((_g149045_ (##length _g149044_)))
          (cond ((##fx= _g149045_ 1) (apply gx#make-binding-id__0 _g149044_))
                ((##fx= _g149045_ 2) (apply gx#make-binding-id__1 _g149044_))
                ((##fx= _g149045_ 3) (apply gx#make-binding-id__2 _g149044_))
                ((##fx= _g149045_ 4) (apply gx#make-binding-id__% _g149044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g149044_))))))))
