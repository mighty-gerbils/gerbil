(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1770313935)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx149025%_)
        (letrec ((_%expand-special149027%_
                  (lambda (_%hd149029%_ _%K149030%_ _%rest149031%_ _%r149032%_)
                    (_%K149030%_
                     _%rest149031%_
                     (cons (gx#core-expand-top _%hd149029%_) _%r149032%_)))))
          (gx#core-expand-block__0 _%stx149025%_ _%expand-special149027%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx148778%_)
        (letrec ((_%expand-special148780%_
                  (lambda (_%hd148900%_ _%K148901%_ _%rest148902%_ _%r148903%_)
                    (let* ((_%K148907%_
                            (lambda (_%e148905%_)
                              (_%K148901%_
                               _%rest148902%_
                               (cons _%e148905%_ _%r148903%_))))
                           (_%e148908148937%_ _%hd148900%_)
                           (_%E148932148941%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148908148937%_)))
                           (_%E148928148953%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148908148937%_)
                                  (let ((_%e148933148945%_
                                         (gx#syntax-e _%e148908148937%_)))
                                    (let ((_%hd148934148948%_
                                           (##car _%e148933148945%_))
                                          (_%tl148935148950%_
                                           (##cdr _%e148933148945%_)))
                                      (if (and (gx#identifier?
                                                _%hd148934148948%_)
                                               (gx#core-identifier=?
                                                _%hd148934148948%_
                                                '%#define-runtime))
                                          (_%K148907%_
                                           (gx#core-expand-define-runtime%
                                            _%hd148900%_))
                                          (_%E148932148941%_))))
                                  (_%E148932148941%_))))
                           (_%E148924148965%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148908148937%_)
                                  (let ((_%e148929148957%_
                                         (gx#syntax-e _%e148908148937%_)))
                                    (let ((_%hd148930148960%_
                                           (##car _%e148929148957%_))
                                          (_%tl148931148962%_
                                           (##cdr _%e148929148957%_)))
                                      (if (and (gx#identifier?
                                                _%hd148930148960%_)
                                               (gx#core-identifier=?
                                                _%hd148930148960%_
                                                '%#define-alias))
                                          (_%K148907%_
                                           (gx#core-expand-define-alias%
                                            _%hd148900%_))
                                          (_%E148928148953%_))))
                                  (_%E148928148953%_))))
                           (_%E148914148977%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148908148937%_)
                                  (let ((_%e148925148969%_
                                         (gx#syntax-e _%e148908148937%_)))
                                    (let ((_%hd148926148972%_
                                           (##car _%e148925148969%_))
                                          (_%tl148927148974%_
                                           (##cdr _%e148925148969%_)))
                                      (if (and (gx#identifier?
                                                _%hd148926148972%_)
                                               (gx#core-identifier=?
                                                _%hd148926148972%_
                                                '%#define-syntax))
                                          (_%K148907%_
                                           (gx#core-expand-define-syntax%
                                            _%hd148900%_))
                                          (_%E148924148965%_))))
                                  (_%E148924148965%_))))
                           (_%E148910149009%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148908148937%_)
                                  (let ((_%e148915148981%_
                                         (gx#syntax-e _%e148908148937%_)))
                                    (let ((_%hd148916148984%_
                                           (##car _%e148915148981%_))
                                          (_%tl148917148986%_
                                           (##cdr _%e148915148981%_)))
                                      (if (and (gx#identifier?
                                                _%hd148916148984%_)
                                               (gx#core-identifier=?
                                                _%hd148916148984%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148917148986%_)
                                              (let ((_%e148918148989%_
                                                     (gx#syntax-e
                                                      _%tl148917148986%_)))
                                                (let ((_%hd148919148992%_
                                                       (##car _%e148918148989%_))
                                                      (_%tl148920148994%_
                                                       (##cdr _%e148918148989%_)))
                                                  (let ((_%hd-bind148997%_
                                                         _%hd148919148992%_))
                                                    (if (gx#stx-pair?
                                                         _%tl148920148994%_)
                                                        (let ((_%e148921148999%_
                                                               (gx#syntax-e
                                                                _%tl148920148994%_)))
                                                          (let ((_%hd148922149002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e148921148999%_))
                        (_%tl148923149004%_ (##cdr _%e148921148999%_)))
                    (let ((_%expr149007%_ _%hd148922149002%_))
                      (if (gx#stx-null? _%tl148923149004%_)
                          (if (gx#core-bind-values? _%hd-bind148997%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind148997%_)
                                (_%K148907%_ _%hd148900%_))
                              (_%E148914148977%_))
                          (_%E148914148977%_)))))
                (_%E148914148977%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148914148977%_))
                                          (_%E148914148977%_))))
                                  (_%E148914148977%_))))
                           (_%E148909149021%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148908148937%_)
                                  (let ((_%e148911149013%_
                                         (gx#syntax-e _%e148908148937%_)))
                                    (let ((_%hd148912149016%_
                                           (##car _%e148911149013%_))
                                          (_%tl148913149018%_
                                           (##cdr _%e148911149013%_)))
                                      (if (and (gx#identifier?
                                                _%hd148912149016%_)
                                               (gx#core-identifier=?
                                                _%hd148912149016%_
                                                '%#begin-syntax))
                                          (_%K148907%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd148900%_))
                                          (_%E148910149009%_))))
                                  (_%E148910149009%_)))))
                      (_%E148909149021%_))))
                 (_%eval-body148781%_
                  (lambda (_%rbody148789%_)
                    (let _%lp148791%_ ((_%rest148793%_ _%rbody148789%_)
                                       (_%body148794%_ '())
                                       (_%ebody148795%_ '()))
                      (let* ((_%rest148796148804%_ _%rest148793%_)
                             (_%else148798148812%_
                              (lambda ()
                                (values _%body148794%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody148795%_)
                                          (gx#stx-source _%stx148778%_))))))
                             (_%K148800148888%_
                              (lambda (_%rest148815%_ _%hd148816%_)
                                (let* ((_%e148817148834%_ _%hd148816%_)
                                       (_%E148829148838%_
                                        (lambda ()
                                          (_%lp148791%_
                                           _%rest148815%_
                                           (cons _%hd148816%_ _%body148794%_)
                                           (cons _%hd148816%_
                                                 _%ebody148795%_))))
                                       (_%E148819148850%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148817148834%_)
                                              (let ((_%e148830148842%_
                                                     (gx#syntax-e
                                                      _%e148817148834%_)))
                                                (let ((_%hd148831148845%_
                                                       (##car _%e148830148842%_))
                                                      (_%tl148832148847%_
                                                       (##cdr _%e148830148842%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd148831148845%_)
                                                           (gx#core-identifier=?
                                                            _%hd148831148845%_
                                                            '%#begin-syntax))
                                                      (_%lp148791%_
                                                       _%rest148815%_
                                                       (cons _%hd148816%_
                                                             _%body148794%_)
                                                       _%ebody148795%_)
                                                      (_%E148829148838%_))))
                                              (_%E148829148838%_))))
                                       (_%E148818148884%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e148817148834%_)
                                              (let ((_%e148820148854%_
                                                     (gx#syntax-e
                                                      _%e148817148834%_)))
                                                (let ((_%hd148821148857%_
                                                       (##car _%e148820148854%_))
                                                      (_%tl148822148859%_
                                                       (##cdr _%e148820148854%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd148821148857%_)
                                                           (gx#core-identifier=?
                                                            _%hd148821148857%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl148822148859%_)
                                                          (let ((_%e148823148862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl148822148859%_)))
                    (let ((_%hd148824148865%_ (##car _%e148823148862%_))
                          (_%tl148825148867%_ (##cdr _%e148823148862%_)))
                      (let ((_%hd-bind148870%_ _%hd148824148865%_))
                        (if (gx#stx-pair? _%tl148825148867%_)
                            (let ((_%e148826148872%_
                                   (gx#syntax-e _%tl148825148867%_)))
                              (let ((_%hd148827148875%_
                                     (##car _%e148826148872%_))
                                    (_%tl148828148877%_
                                     (##cdr _%e148826148872%_)))
                                (let ((_%expr148880%_ _%hd148827148875%_))
                                  (if (gx#stx-null? _%tl148828148877%_)
                                      (let ((_%ehd148882%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind148870%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr148880%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd148816%_))))
                                        (_%lp148791%_
                                         _%rest148815%_
                                         (cons _%ehd148882%_ _%body148794%_)
                                         (cons _%ehd148882%_ _%ebody148795%_)))
                                      (_%E148819148850%_)))))
                            (_%E148819148850%_)))))
                  (_%E148819148850%_))
              (_%E148819148850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148819148850%_)))))
                                  (_%E148818148884%_)))))
                        (if (pair? _%rest148796148804%_)
                            (let ((_%hd148801148891%_
                                   (##car _%rest148796148804%_))
                                  (_%tl148802148893%_
                                   (##cdr _%rest148796148804%_)))
                              (let* ((_%hd148896%_ _%hd148801148891%_)
                                     (_%rest148898%_ _%tl148802148893%_))
                                (_%K148800148888%_
                                 _%rest148898%_
                                 _%hd148896%_)))
                            (_%else148798148812%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody148784%_
                     (gx#core-expand-block__1
                      _%stx148778%_
                      _%expand-special148780%_
                      '#f))
                    (_g149058_ (_%eval-body148781%_ _%rbody148784%_)))
               (begin
                 (let ((_g149059_
                        (if (##values? _g149058_)
                            (##values-length _g149058_)
                            1)))
                   (if (not (##fx= _g149059_ 2))
                       (error "Context expects 2 values" _g149059_)))
                 (let ((_%expanded-body148786%_ (##values-ref _g149058_ 0))
                       (_%value148787%_ (##values-ref _g149058_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body148786%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value148787%_ '())))
                    (gx#stx-source _%stx148778%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx148748%_)
        (let* ((_%e148749148756%_ _%stx148748%_)
               (_%E148751148760%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148749148756%_)))
               (_%E148750148774%_
                (lambda ()
                  (if (gx#stx-pair? _%e148749148756%_)
                      (let ((_%e148752148764%_
                             (gx#syntax-e _%e148749148756%_)))
                        (let ((_%hd148753148767%_ (##car _%e148752148764%_))
                              (_%tl148754148769%_ (##cdr _%e148752148764%_)))
                          (let ((_%body148772%_ _%tl148754148769%_))
                            (if (gx#stx-list? _%body148772%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body148772%_)
                                 (gx#stx-source _%stx148748%_))
                                (_%E148751148760%_)))))
                      (_%E148751148760%_)))))
          (_%E148750148774%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx148746%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx148746%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx148692%_)
        (let* ((_%e148693148706%_ _%stx148692%_)
               (_%E148695148710%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148693148706%_)))
               (_%E148694148742%_
                (lambda ()
                  (if (gx#stx-pair? _%e148693148706%_)
                      (let ((_%e148696148714%_
                             (gx#syntax-e _%e148693148706%_)))
                        (let ((_%hd148697148717%_ (##car _%e148696148714%_))
                              (_%tl148698148719%_ (##cdr _%e148696148714%_)))
                          (if (gx#stx-pair? _%tl148698148719%_)
                              (let ((_%e148699148722%_
                                     (gx#syntax-e _%tl148698148719%_)))
                                (let ((_%hd148700148725%_
                                       (##car _%e148699148722%_))
                                      (_%tl148701148727%_
                                       (##cdr _%e148699148722%_)))
                                  (let ((_%ann148730%_ _%hd148700148725%_))
                                    (if (gx#stx-pair? _%tl148701148727%_)
                                        (let ((_%e148702148732%_
                                               (gx#syntax-e
                                                _%tl148701148727%_)))
                                          (let ((_%hd148703148735%_
                                                 (##car _%e148702148732%_))
                                                (_%tl148704148737%_
                                                 (##cdr _%e148702148732%_)))
                                            (let ((_%expr148740%_
                                                   _%hd148703148735%_))
                                              (if (gx#stx-null?
                                                   _%tl148704148737%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann148730%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr148740%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx148692%_))
                                                  (_%E148695148710%_)))))
                                        (_%E148695148710%_)))))
                              (_%E148695148710%_))))
                      (_%E148695148710%_)))))
          (_%E148694148742%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx148416%_ _%body148417%_)
        (letrec ((_%expand-special148419%_
                  (lambda (_%hd148687%_ _%K148688%_ _%rest148689%_ _%r148690%_)
                    (_%K148688%_
                     '()
                     (cons (_%expand-internal148420%_
                            _%hd148687%_
                            _%rest148689%_)
                           _%r148690%_))))
                 (_%expand-internal148420%_
                  (lambda (_%hd148683%_ _%rest148684%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal148422%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd148683%_ _%rest148684%_))
                          (gx#stx-source _%stx148416%_))
                         _%expand-internal-special148421%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj149042
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj149042)
                       __obj149042))))
                 (_%expand-internal-special148421%_
                  (lambda (_%hd148578%_ _%K148579%_ _%rest148580%_ _%r148581%_)
                    (let* ((_%e148582148607%_ _%hd148578%_)
                           (_%E148602148611%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e148582148607%_)))
                           (_%E148598148623%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148582148607%_)
                                  (let ((_%e148603148615%_
                                         (gx#syntax-e _%e148582148607%_)))
                                    (let ((_%hd148604148618%_
                                           (##car _%e148603148615%_))
                                          (_%tl148605148620%_
                                           (##cdr _%e148603148615%_)))
                                      (if (and (gx#identifier?
                                                _%hd148604148618%_)
                                               (gx#core-identifier=?
                                                _%hd148604148618%_
                                                '%#declare))
                                          (_%K148579%_
                                           _%rest148580%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd148578%_)
                                                 _%r148581%_))
                                          (_%E148602148611%_))))
                                  (_%E148602148611%_))))
                           (_%E148594148635%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148582148607%_)
                                  (let ((_%e148599148627%_
                                         (gx#syntax-e _%e148582148607%_)))
                                    (let ((_%hd148600148630%_
                                           (##car _%e148599148627%_))
                                          (_%tl148601148632%_
                                           (##cdr _%e148599148627%_)))
                                      (if (and (gx#identifier?
                                                _%hd148600148630%_)
                                               (gx#core-identifier=?
                                                _%hd148600148630%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd148578%_)
                                            (_%K148579%_
                                             _%rest148580%_
                                             _%r148581%_))
                                          (_%E148598148623%_))))
                                  (_%E148598148623%_))))
                           (_%E148584148647%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148582148607%_)
                                  (let ((_%e148595148639%_
                                         (gx#syntax-e _%e148582148607%_)))
                                    (let ((_%hd148596148642%_
                                           (##car _%e148595148639%_))
                                          (_%tl148597148644%_
                                           (##cdr _%e148595148639%_)))
                                      (if (and (gx#identifier?
                                                _%hd148596148642%_)
                                               (gx#core-identifier=?
                                                _%hd148596148642%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd148578%_)
                                            (_%K148579%_
                                             _%rest148580%_
                                             _%r148581%_))
                                          (_%E148594148635%_))))
                                  (_%E148594148635%_))))
                           (_%E148583148679%_
                            (lambda ()
                              (if (gx#stx-pair? _%e148582148607%_)
                                  (let ((_%e148585148651%_
                                         (gx#syntax-e _%e148582148607%_)))
                                    (let ((_%hd148586148654%_
                                           (##car _%e148585148651%_))
                                          (_%tl148587148656%_
                                           (##cdr _%e148585148651%_)))
                                      (if (and (gx#identifier?
                                                _%hd148586148654%_)
                                               (gx#core-identifier=?
                                                _%hd148586148654%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl148587148656%_)
                                              (let ((_%e148588148659%_
                                                     (gx#syntax-e
                                                      _%tl148587148656%_)))
                                                (let ((_%hd148589148662%_
                                                       (##car _%e148588148659%_))
                                                      (_%tl148590148664%_
                                                       (##cdr _%e148588148659%_)))
                                                  (let ((_%hd-bind148667%_
                                                         _%hd148589148662%_))
                                                    (if (gx#stx-pair?
                                                         _%tl148590148664%_)
                                                        (let ((_%e148591148669%_
                                                               (gx#syntax-e
                                                                _%tl148590148664%_)))
                                                          (let ((_%hd148592148672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e148591148669%_))
                        (_%tl148593148674%_ (##cdr _%e148591148669%_)))
                    (let ((_%expr148677%_ _%hd148592148672%_))
                      (if (gx#stx-null? _%tl148593148674%_)
                          (if (gx#core-bind-values? _%hd-bind148667%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind148667%_)
                                (_%K148579%_
                                 _%rest148580%_
                                 (cons _%hd148578%_ _%r148581%_)))
                              (_%E148584148647%_))
                          (_%E148584148647%_)))))
                (_%E148584148647%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E148584148647%_))
                                          (_%E148584148647%_))))
                                  (_%E148584148647%_)))))
                      (_%E148583148679%_))))
                 (_%wrap-internal148422%_
                  (lambda (_%rbody148424%_)
                    (let _%lp148426%_ ((_%rest148428%_ _%rbody148424%_)
                                       (_%decls148429%_ '())
                                       (_%bind148430%_ '())
                                       (_%body148431%_ '()))
                      (let* ((_%e148432148439%_ _%rest148428%_)
                             (_%E148434148488%_
                              (lambda ()
                                (let* ((_%body148483%_
                                        (let* ((_%body148442148452%_
                                                _%body148431%_)
                                               (_%else148445148460%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body148431%_)
                                                   (gx#stx-source
                                                    _%stx148416%_)))))
                                          (let ((_%K148450148480%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx148416%_)))
                                                (_%K148447148466%_
                                                 (lambda (_%expr148464%_)
                                                   _%expr148464%_)))
                                            (let ((_%try-match148444148476%_
                                                   (lambda ()
                                                     (if (pair? _%body148442148452%_)
                                                         (let ((_%tl148449148471%_
                                                                (##cdr _%body148442148452%_))
                                                               (_%hd148448148469%_
                                                                (##car _%body148442148452%_)))
                                                           (if (null? _%tl148449148471%_)
                                                               (let ((_%expr148474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd148448148469%_))
                         (_%K148447148466%_ _%expr148474%_))
                       (_%else148445148460%_)))
                 (_%else148445148460%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body148442148452%_)
                                                  (_%K148450148480%_)
                                                  (_%try-match148444148476%_))))))
                                       (_%body148485%_
                                        (if (null? _%bind148430%_)
                                            _%body148483%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind148430%_
                                                         (cons _%body148483%_
                                                               '())))
                                             (gx#stx-source _%stx148416%_)))))
                                  (if (null? _%decls148429%_)
                                      _%body148485%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls148429%_
                                                   (cons _%body148485%_ '())))
                                       (gx#stx-source _%stx148416%_))))))
                             (_%E148433148574%_
                              (lambda ()
                                (if (gx#stx-pair? _%e148432148439%_)
                                    (let ((_%e148435148492%_
                                           (gx#syntax-e _%e148432148439%_)))
                                      (let ((_%hd148436148495%_
                                             (##car _%e148435148492%_))
                                            (_%tl148437148497%_
                                             (##cdr _%e148435148492%_)))
                                        (let* ((_%hd148500%_
                                                _%hd148436148495%_)
                                               (_%rest148502%_
                                                _%tl148437148497%_)
                                               (_%e148503148520%_ _%hd148500%_)
                                               (_%E148515148524%_
                                                (lambda ()
                                                  (if (null? _%bind148430%_)
                                                      (_%lp148426%_
                                                       _%rest148502%_
                                                       _%decls148429%_
                                                       _%bind148430%_
                                                       (cons _%hd148500%_
                                                             _%body148431%_))
                                                      (_%lp148426%_
                                                       _%rest148502%_
                                                       _%decls148429%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd148500%_ '()))
                     _%bind148430%_)
               _%body148431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E148505148538%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e148503148520%_)
                                                      (let ((_%e148516148528%_
                                                             (gx#syntax-e
                                                              _%e148503148520%_)))
                                                        (let ((_%hd148517148531%_
                                                               (##car _%e148516148528%_))
                                                              (_%tl148518148533%_
                                                               (##cdr _%e148516148528%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd148517148531%_)
                           (gx#core-identifier=?
                            _%hd148517148531%_
                            '%#declare))
                      (let ((_%xdecls148536%_ _%tl148518148533%_))
                        (_%lp148426%_
                         _%rest148502%_
                         (gx#stx-foldr cons _%decls148429%_ _%xdecls148536%_)
                         _%bind148430%_
                         _%body148431%_))
                      (_%E148515148524%_))))
              (_%E148515148524%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E148504148570%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e148503148520%_)
                                                      (let ((_%e148506148542%_
                                                             (gx#syntax-e
                                                              _%e148503148520%_)))
                                                        (let ((_%hd148507148545%_
                                                               (##car _%e148506148542%_))
                                                              (_%tl148508148547%_
                                                               (##cdr _%e148506148542%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd148507148545%_)
                           (gx#core-identifier=?
                            _%hd148507148545%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl148508148547%_)
                          (let ((_%e148509148550%_
                                 (gx#syntax-e _%tl148508148547%_)))
                            (let ((_%hd148510148553%_
                                   (##car _%e148509148550%_))
                                  (_%tl148511148555%_
                                   (##cdr _%e148509148550%_)))
                              (let ((_%hd-bind148558%_ _%hd148510148553%_))
                                (if (gx#stx-pair? _%tl148511148555%_)
                                    (let ((_%e148512148560%_
                                           (gx#syntax-e _%tl148511148555%_)))
                                      (let ((_%hd148513148563%_
                                             (##car _%e148512148560%_))
                                            (_%tl148514148565%_
                                             (##cdr _%e148512148560%_)))
                                        (let ((_%expr148568%_
                                               _%hd148513148563%_))
                                          (if (gx#stx-null? _%tl148514148565%_)
                                              (_%lp148426%_
                                               _%rest148502%_
                                               _%decls148429%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind148558%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr148568%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind148430%_)
                                               _%body148431%_)
                                              (_%E148505148538%_)))))
                                    (_%E148505148538%_)))))
                          (_%E148505148538%_))
                      (_%E148505148538%_))))
              (_%E148505148538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E148504148570%_))))
                                    (_%E148434148488%_)))))
                        (_%E148433148574%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body148417%_)
            (gx#stx-source _%stx148416%_))
           _%expand-special148419%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx148354%_)
        (let* ((_%e148355148362%_ _%stx148354%_)
               (_%E148357148366%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148355148362%_)))
               (_%E148356148412%_
                (lambda ()
                  (if (gx#stx-pair? _%e148355148362%_)
                      (let ((_%e148358148370%_
                             (gx#syntax-e _%e148355148362%_)))
                        (let ((_%hd148359148373%_ (##car _%e148358148370%_))
                              (_%tl148360148375%_ (##cdr _%e148358148370%_)))
                          (let ((_%body148378%_ _%tl148360148375%_))
                            (if (gx#stx-list? _%body148378%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl148380%_)
                                     (let* ((_%e148381148388%_ _%decl148380%_)
                                            (_%E148383148392%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e148381148388%_)))
                                            (_%E148382148408%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e148381148388%_)
                                                   (let ((_%e148384148396%_
                                                          (gx#syntax-e
                                                           _%e148381148388%_)))
                                                     (let ((_%hd148385148399%_
                                                            (##car _%e148384148396%_))
                                                           (_%tl148386148401%_
                                                            (##cdr _%e148384148396%_)))
                                                       (let* ((_%head148404%_
                                                               _%hd148385148399%_)
                                                              (_%args148406%_
                                                               _%tl148386148401%_))
                                                         (if (gx#stx-list?
                                                              _%args148406%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl148380%_)
                                                             (_%E148383148392%_)))))
                                                   (_%E148383148392%_)))))
                                       (_%E148382148408%_)))
                                   _%body148378%_))
                                 (gx#stx-source _%stx148354%_))
                                (_%E148357148366%_)))))
                      (_%E148357148366%_)))))
          (_%E148356148412%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx148258%_)
        (let* ((_%e148259148266%_ _%stx148258%_)
               (_%E148261148270%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148259148266%_)))
               (_%E148260148350%_
                (lambda ()
                  (if (gx#stx-pair? _%e148259148266%_)
                      (let ((_%e148262148274%_
                             (gx#syntax-e _%e148259148266%_)))
                        (let ((_%hd148263148277%_ (##car _%e148262148274%_))
                              (_%tl148264148279%_ (##cdr _%e148262148274%_)))
                          (let ((_%body148282%_ _%tl148264148279%_))
                            (let _%lp148284%_ ((_%rest148286%_ _%body148282%_)
                                               (_%r148287%_ '()))
                              (let* ((_%e148288148302%_ _%rest148286%_)
                                     (_%E148300148306%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx148258%_)))
                                     (_%E148290148310%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e148288148302%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r148287%_))
                                             (gx#stx-source _%stx148258%_))
                                            (_%E148300148306%_))))
                                     (_%E148289148346%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e148288148302%_)
                                            (let ((_%e148291148314%_
                                                   (gx#syntax-e
                                                    _%e148288148302%_)))
                                              (let ((_%hd148292148317%_
                                                     (##car _%e148291148314%_))
                                                    (_%tl148293148319%_
                                                     (##cdr _%e148291148314%_)))
                                                (if (gx#stx-pair?
                                                     _%hd148292148317%_)
                                                    (let ((_%e148294148322%_
                                                           (gx#syntax-e
                                                            _%hd148292148317%_)))
                                                      (let ((_%hd148295148325%_
                                                             (##car _%e148294148322%_))
                                                            (_%tl148296148327%_
                                                             (##cdr _%e148294148322%_)))
                                                        (let ((_%id148330%_
                                                               _%hd148295148325%_))
                                                          (if (gx#stx-pair?
                                                               _%tl148296148327%_)
                                                              (let ((_%e148297148332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl148296148327%_)))
                        (let ((_%hd148298148335%_ (##car _%e148297148332%_))
                              (_%tl148299148337%_ (##cdr _%e148297148332%_)))
                          (let ((_%eid148340%_ _%hd148298148335%_))
                            (if (gx#stx-null? _%tl148299148337%_)
                                (let ((_%rest148342%_ _%tl148293148319%_))
                                  (if (and (gx#identifier? _%id148330%_)
                                           (gx#identifier? _%eid148340%_))
                                      (let ((_%eid148344%_
                                             (gx#stx-e _%eid148340%_)))
                                        (gx#core-bind-extern!__0
                                         _%id148330%_
                                         _%eid148344%_)
                                        (_%lp148284%_
                                         _%rest148342%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id148330%_)
                                                     (cons _%eid148344%_ '()))
                                               _%r148287%_)))
                                      (_%E148290148310%_)))
                                (_%E148290148310%_)))))
                      (_%E148290148310%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E148290148310%_))))
                                            (_%E148290148310%_)))))
                                (_%E148289148346%_))))))
                      (_%E148261148270%_)))))
          (_%E148260148350%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx148147%_)
        (let* ((_%e148148148174%_ _%stx148147%_)
               (_%E148163148178%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148148148174%_)))
               (_%E148150148210%_
                (lambda ()
                  (if (gx#stx-pair? _%e148148148174%_)
                      (let ((_%e148164148182%_
                             (gx#syntax-e _%e148148148174%_)))
                        (let ((_%hd148165148185%_ (##car _%e148164148182%_))
                              (_%tl148166148187%_ (##cdr _%e148164148182%_)))
                          (if (gx#stx-pair? _%tl148166148187%_)
                              (let ((_%e148167148190%_
                                     (gx#syntax-e _%tl148166148187%_)))
                                (let ((_%hd148168148193%_
                                       (##car _%e148167148190%_))
                                      (_%tl148169148195%_
                                       (##cdr _%e148167148190%_)))
                                  (let ((_%hd148198%_ _%hd148168148193%_))
                                    (if (gx#stx-pair? _%tl148169148195%_)
                                        (let ((_%e148170148200%_
                                               (gx#syntax-e
                                                _%tl148169148195%_)))
                                          (let ((_%hd148171148203%_
                                                 (##car _%e148170148200%_))
                                                (_%tl148172148205%_
                                                 (##cdr _%e148170148200%_)))
                                            (let ((_%expr148208%_
                                                   _%hd148171148203%_))
                                              (if (gx#stx-null?
                                                   _%tl148172148205%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd148198%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd148198%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd148198%_)
                             (cons (gx#core-expand-expression _%expr148208%_)
                                   '())))
                 (gx#stx-source _%stx148147%_)))
              (_%E148163148178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E148163148178%_)))))
                                        (_%E148163148178%_)))))
                              (_%E148163148178%_))))
                      (_%E148163148178%_))))
               (_%E148149148254%_
                (lambda ()
                  (if (gx#stx-pair? _%e148148148174%_)
                      (let ((_%e148151148214%_
                             (gx#syntax-e _%e148148148174%_)))
                        (let ((_%hd148152148217%_ (##car _%e148151148214%_))
                              (_%tl148153148219%_ (##cdr _%e148151148214%_)))
                          (if (gx#stx-pair? _%tl148153148219%_)
                              (let ((_%e148154148222%_
                                     (gx#syntax-e _%tl148153148219%_)))
                                (let ((_%hd148155148225%_
                                       (##car _%e148154148222%_))
                                      (_%tl148156148227%_
                                       (##cdr _%e148154148222%_)))
                                  (if (gx#stx-pair? _%hd148155148225%_)
                                      (let ((_%e148160148230%_
                                             (gx#syntax-e _%hd148155148225%_)))
                                        (let ((_%hd148161148233%_
                                               (##car _%e148160148230%_))
                                              (_%tl148162148235%_
                                               (##cdr _%e148160148230%_)))
                                          (let ((_%id148238%_
                                                 _%hd148161148233%_))
                                            (if (gx#stx-null?
                                                 _%tl148162148235%_)
                                                (if (gx#stx-pair?
                                                     _%tl148156148227%_)
                                                    (let ((_%e148157148240%_
                                                           (gx#syntax-e
                                                            _%tl148156148227%_)))
                                                      (let ((_%hd148158148243%_
                                                             (##car _%e148157148240%_))
                                                            (_%tl148159148245%_
                                                             (##cdr _%e148157148240%_)))
                                                        (let* ((_%expr148248%_
                                                                _%hd148158148243%_)
                                                               (_%props148250%_
                                                                _%tl148159148245%_))
                                                          (if (gx#identifier?
                                                               _%id148238%_)
                                                              (let ((_%bind148252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id148238%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind148252%_
                         _%props148250%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id148238%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr148248%_)
                                           '())))
                         (gx#stx-source _%stx148147%_)))
                      (_%E148150148210%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E148150148210%_))
                                                (_%E148150148210%_)))))
                                      (_%E148150148210%_))))
                              (_%E148150148210%_))))
                      (_%E148150148210%_)))))
          (_%E148149148254%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx148086%_)
        (let* ((_%e148087148100%_ _%stx148086%_)
               (_%E148089148104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e148087148100%_)))
               (_%E148088148143%_
                (lambda ()
                  (if (gx#stx-pair? _%e148087148100%_)
                      (let ((_%e148090148108%_
                             (gx#syntax-e _%e148087148100%_)))
                        (let ((_%hd148091148111%_ (##car _%e148090148108%_))
                              (_%tl148092148113%_ (##cdr _%e148090148108%_)))
                          (if (gx#stx-pair? _%tl148092148113%_)
                              (let ((_%e148093148116%_
                                     (gx#syntax-e _%tl148092148113%_)))
                                (let ((_%hd148094148119%_
                                       (##car _%e148093148116%_))
                                      (_%tl148095148121%_
                                       (##cdr _%e148093148116%_)))
                                  (let ((_%id148124%_ _%hd148094148119%_))
                                    (if (gx#stx-pair? _%tl148095148121%_)
                                        (let ((_%e148096148126%_
                                               (gx#syntax-e
                                                _%tl148095148121%_)))
                                          (let ((_%hd148097148129%_
                                                 (##car _%e148096148126%_))
                                                (_%tl148098148131%_
                                                 (##cdr _%e148096148126%_)))
                                            (let* ((_%binding-id148134%_
                                                    _%hd148097148129%_)
                                                   (_%props148136%_
                                                    _%tl148098148131%_))
                                              (if (and (gx#identifier?
                                                        _%id148124%_)
                                                       (gx#identifier?
                                                        _%binding-id148134%_)
                                                       (gx#stx-list?
                                                        _%props148136%_))
                                                  (let* ((_%eid148138%_
                                                          (gx#stx-e
                                                           _%binding-id148134%_))
                                                         (_%bind148140%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id148124%_
                                                           _%eid148138%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind148140%_
                                                     _%props148136%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id148124%_)
                         (cons _%eid148138%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E148089148104%_)))))
                                        (_%E148089148104%_)))))
                              (_%E148089148104%_))))
                      (_%E148089148104%_)))))
          (_%E148088148143%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind148022%_ _%props148023%_)
        (let _%loop148025%_ ((_%rest148027%_ _%props148023%_)
                             (_%props148028%_ '()))
          (let* ((_%e148029148040%_ _%rest148027%_)
                 (_%E148038148044%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e148029148040%_)))
                 (_%E148031148048%_
                  (lambda ()
                    (if (gx#stx-null? _%e148029148040%_)
                        (if (null? _%props148028%_)
                            '#!void
                            (##structure-set!
                             _%bind148022%_
                             (reverse! _%props148028%_)
                             '4
                             gx#binding::t
                             '#f))
                        (_%E148038148044%_))))
                 (_%E148030148082%_
                  (lambda ()
                    (if (gx#stx-pair? _%e148029148040%_)
                        (let ((_%e148032148052%_
                               (gx#syntax-e _%e148029148040%_)))
                          (let ((_%hd148033148055%_ (##car _%e148032148052%_))
                                (_%tl148034148057%_ (##cdr _%e148032148052%_)))
                            (let ((_%key148060%_ _%hd148033148055%_))
                              (if (gx#stx-pair? _%tl148034148057%_)
                                  (let ((_%e148035148062%_
                                         (gx#syntax-e _%tl148034148057%_)))
                                    (let ((_%hd148036148065%_
                                           (##car _%e148035148062%_))
                                          (_%tl148037148067%_
                                           (##cdr _%e148035148062%_)))
                                      (let* ((_%prop148070%_
                                              _%hd148036148065%_)
                                             (_%rest148072%_
                                              _%tl148037148067%_))
                                        (if (gx#stx-keyword? _%key148060%_)
                                            (let ((_%key148076%_
                                                   (gx#stx-e _%key148060%_))
                                                  (_%eval-prop148077%_
                                                   (lambda ()
                                                     (call-with-parameters__1
                                                      (lambda ()
                                                        (gx#eval-syntax__0
                                                         _%prop148070%_))
                                                      gx#current-expander-phi
                                                      (##fx+ (gx#current-expander-phi)
                                                             '1)))))
                                              (let ((_%$e148079%_
                                                     _%key148076%_))
                                                (if (eq? 'macro: _%$e148079%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind148022%_
                                                       (_%eval-prop148077%_)
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop148025%_
                                                       _%rest148072%_
                                                       _%props148028%_))
                                                    (if (eq? 'type:
                                                             _%$e148079%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind148022%_
                                                           (_%eval-prop148077%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop148025%_
                                                           _%rest148072%_
                                                           _%props148028%_))
                                                        (_%loop148025%_
                                                         _%rest148072%_
                                                         (cons (_%eval-prop148077%_)
                                                               (cons _%key148076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props148028%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E148031148048%_)))))
                                  (_%E148031148048%_)))))
                        (_%E148031148048%_)))))
            (_%E148030148082%_)))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx147965%_)
        (let* ((_%e147966147979%_ _%stx147965%_)
               (_%E147968147983%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147966147979%_)))
               (_%E147967148018%_
                (lambda ()
                  (if (gx#stx-pair? _%e147966147979%_)
                      (let ((_%e147969147987%_
                             (gx#syntax-e _%e147966147979%_)))
                        (let ((_%hd147970147990%_ (##car _%e147969147987%_))
                              (_%tl147971147992%_ (##cdr _%e147969147987%_)))
                          (if (gx#stx-pair? _%tl147971147992%_)
                              (let ((_%e147972147995%_
                                     (gx#syntax-e _%tl147971147992%_)))
                                (let ((_%hd147973147998%_
                                       (##car _%e147972147995%_))
                                      (_%tl147974148000%_
                                       (##cdr _%e147972147995%_)))
                                  (let ((_%id148003%_ _%hd147973147998%_))
                                    (if (gx#stx-pair? _%tl147974148000%_)
                                        (let ((_%e147975148005%_
                                               (gx#syntax-e
                                                _%tl147974148000%_)))
                                          (let ((_%hd147976148008%_
                                                 (##car _%e147975148005%_))
                                                (_%tl147977148010%_
                                                 (##cdr _%e147975148005%_)))
                                            (let ((_%expr148013%_
                                                   _%hd147976148008%_))
                                              (if (gx#stx-null?
                                                   _%tl147977148010%_)
                                                  (if (gx#identifier?
                                                       _%id148003%_)
                                                      (let ((_g149060_
                                                             (gx#core-expand-expression+1
                                                              _%expr148013%_)))
                                                        (begin
                                                          (let ((_g149061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g149060_)
                             (##values-length _g149060_)
                             1)))
                    (if (not (##fx= _g149061_ 2))
                        (error "Context expects 2 values" _g149061_)))
                  (let ((_%e-stx148015%_ (##values-ref _g149060_ 0))
                        (_%e148016%_ (##values-ref _g149060_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id148003%_ _%e148016%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id148003%_)
                                   (cons _%e-stx148015%_ '())))
                       (gx#stx-source _%stx147965%_))))))
              (_%E147968147983%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147968147983%_)))))
                                        (_%E147968147983%_)))))
                              (_%E147968147983%_))))
                      (_%E147968147983%_)))))
          (_%E147967148018%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx147909%_)
        (let* ((_%e147910147923%_ _%stx147909%_)
               (_%E147912147927%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147910147923%_)))
               (_%E147911147961%_
                (lambda ()
                  (if (gx#stx-pair? _%e147910147923%_)
                      (let ((_%e147913147931%_
                             (gx#syntax-e _%e147910147923%_)))
                        (let ((_%hd147914147934%_ (##car _%e147913147931%_))
                              (_%tl147915147936%_ (##cdr _%e147913147931%_)))
                          (if (gx#stx-pair? _%tl147915147936%_)
                              (let ((_%e147916147939%_
                                     (gx#syntax-e _%tl147915147936%_)))
                                (let ((_%hd147917147942%_
                                       (##car _%e147916147939%_))
                                      (_%tl147918147944%_
                                       (##cdr _%e147916147939%_)))
                                  (let ((_%id147947%_ _%hd147917147942%_))
                                    (if (gx#stx-pair? _%tl147918147944%_)
                                        (let ((_%e147919147949%_
                                               (gx#syntax-e
                                                _%tl147918147944%_)))
                                          (let ((_%hd147920147952%_
                                                 (##car _%e147919147949%_))
                                                (_%tl147921147954%_
                                                 (##cdr _%e147919147949%_)))
                                            (let ((_%alias-id147957%_
                                                   _%hd147920147952%_))
                                              (if (gx#stx-null?
                                                   _%tl147921147954%_)
                                                  (if (and (gx#identifier?
                                                            _%id147947%_)
                                                           (gx#identifier?
                                                            _%alias-id147957%_))
                                                      (let ((_%alias-id147959%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id147957%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id147947%_
                                                         _%alias-id147959%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id147947%_)
                             (cons _%alias-id147959%_ '())))))
              (_%E147912147927%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147912147927%_)))))
                                        (_%E147912147927%_)))))
                              (_%E147912147927%_))))
                      (_%E147912147927%_)))))
          (_%E147911147961%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx147852%_ _%wrap?147853%_)
        (let* ((_%e147854147864%_ _%stx147852%_)
               (_%E147856147868%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147854147864%_)))
               (_%E147855147895%_
                (lambda ()
                  (if (gx#stx-pair? _%e147854147864%_)
                      (let ((_%e147857147872%_
                             (gx#syntax-e _%e147854147864%_)))
                        (let ((_%hd147858147875%_ (##car _%e147857147872%_))
                              (_%tl147859147877%_ (##cdr _%e147857147872%_)))
                          (if (gx#stx-pair? _%tl147859147877%_)
                              (let ((_%e147860147880%_
                                     (gx#syntax-e _%tl147859147877%_)))
                                (let ((_%hd147861147883%_
                                       (##car _%e147860147880%_))
                                      (_%tl147862147885%_
                                       (##cdr _%e147860147880%_)))
                                  (let* ((_%hd147888%_ _%hd147861147883%_)
                                         (_%body147890%_ _%tl147862147885%_))
                                    (if (gx#core-bind-values? _%hd147888%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd147888%_)
                                           (let ((_%body147893%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd147888%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx147852%_
                                                               _%body147890%_)
                                                              '()))))
                                             (if _%wrap?147853%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body147893%_)
                                                  (gx#stx-source
                                                   _%stx147852%_))
                                                 _%body147893%_)))
                                         gx#current-expander-context
                                         (let ((__obj149043
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj149043)
                                           __obj149043))
                                        (_%E147856147868%_)))))
                              (_%E147856147868%_))))
                      (_%E147856147868%_)))))
          (_%E147855147895%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx147902%_)
        (let ((_%wrap?147904%_ '#t))
          (gx#core-expand-lambda%__% _%stx147902%_ _%wrap?147904%_))))
    (define gx#core-expand-lambda%
      (lambda _g149062_
        (let ((_g149063_ (##length _g149062_)))
          (cond ((##fx= _g149063_ 1)
                 (apply gx#core-expand-lambda%__0 _g149062_))
                ((##fx= _g149063_ 2)
                 (apply gx#core-expand-lambda%__% _g149062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g149062_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx147816%_)
        (let* ((_%e147817147824%_ _%stx147816%_)
               (_%E147819147828%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147817147824%_)))
               (_%E147818147847%_
                (lambda ()
                  (if (gx#stx-pair? _%e147817147824%_)
                      (let ((_%e147820147832%_
                             (gx#syntax-e _%e147817147824%_)))
                        (let ((_%hd147821147835%_ (##car _%e147820147832%_))
                              (_%tl147822147837%_ (##cdr _%e147820147832%_)))
                          (let ((_%clauses147840%_ _%tl147822147837%_))
                            (if (gx#stx-list? _%clauses147840%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause147842%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause147842%_)
                                       (let ((_%$e147844%_
                                              (gx#stx-source
                                               _%clause147842%_)))
                                         (if _%$e147844%_
                                             _%$e147844%_
                                             (gx#stx-source _%stx147816%_))))
                                      '#f))
                                   _%clauses147840%_))
                                 (gx#stx-source _%stx147816%_))
                                (_%E147819147828%_)))))
                      (_%E147819147828%_)))))
          (_%E147818147847%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx147770%_)
        (let* ((_%e147771147781%_ _%stx147770%_)
               (_%E147773147785%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147771147781%_)))
               (_%E147772147812%_
                (lambda ()
                  (if (gx#stx-pair? _%e147771147781%_)
                      (let ((_%e147774147789%_
                             (gx#syntax-e _%e147771147781%_)))
                        (let ((_%hd147775147792%_ (##car _%e147774147789%_))
                              (_%tl147776147794%_ (##cdr _%e147774147789%_)))
                          (if (gx#stx-pair? _%tl147776147794%_)
                              (let ((_%e147777147797%_
                                     (gx#syntax-e _%tl147776147794%_)))
                                (let ((_%hd147778147800%_
                                       (##car _%e147777147797%_))
                                      (_%tl147779147802%_
                                       (##cdr _%e147777147797%_)))
                                  (let* ((_%hd147805%_ _%hd147778147800%_)
                                         (_%body147807%_ _%tl147779147802%_))
                                    (if (gx#core-expand-let-bind? _%hd147805%_)
                                        (let ((_%expressions147809%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd147805%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd147805%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd147805%_
                                                           _%expressions147809%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx147770%_
                         _%body147807%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx147770%_)))
                                           gx#current-expander-context
                                           (let ((__obj149044
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj149044)
                                             __obj149044)))
                                        (_%E147773147785%_)))))
                              (_%E147773147785%_))))
                      (_%E147773147785%_)))))
          (_%E147772147812%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx147715%_ _%form147716%_)
        (let* ((_%e147717147727%_ _%stx147715%_)
               (_%E147719147731%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147717147727%_)))
               (_%E147718147756%_
                (lambda ()
                  (if (gx#stx-pair? _%e147717147727%_)
                      (let ((_%e147720147735%_
                             (gx#syntax-e _%e147717147727%_)))
                        (let ((_%hd147721147738%_ (##car _%e147720147735%_))
                              (_%tl147722147740%_ (##cdr _%e147720147735%_)))
                          (if (gx#stx-pair? _%tl147722147740%_)
                              (let ((_%e147723147743%_
                                     (gx#syntax-e _%tl147722147740%_)))
                                (let ((_%hd147724147746%_
                                       (##car _%e147723147743%_))
                                      (_%tl147725147748%_
                                       (##cdr _%e147723147743%_)))
                                  (let* ((_%hd147751%_ _%hd147724147746%_)
                                         (_%body147753%_ _%tl147725147748%_))
                                    (if (gx#core-expand-let-bind? _%hd147751%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd147751%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form147716%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd147751%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd147751%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx147715%_
                                                               _%body147753%_)
                                                              '())))
                                            (gx#stx-source _%stx147715%_)))
                                         gx#current-expander-context
                                         (let ((__obj149045
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj149045)
                                           __obj149045))
                                        (_%E147719147731%_)))))
                              (_%E147719147731%_))))
                      (_%E147719147731%_)))))
          (_%E147718147756%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx147763%_)
        (let ((_%form147765%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx147763%_ _%form147765%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g149064_
        (let ((_g149065_ (##length _g149064_)))
          (cond ((##fx= _g149065_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g149064_))
                ((##fx= _g149065_ 2)
                 (apply gx#core-expand-letrec-values%__% _g149064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g149064_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx147712%_)
        (gx#core-expand-letrec-values%__% _%stx147712%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx147669%_)
        (if (gx#stx-list? _%stx147669%_)
            (gx#stx-andmap
             (lambda (_%bind147671%_)
               (let* ((_%e147672147682%_ _%bind147671%_)
                      (_%E147674147686%_ (lambda () '#f))
                      (_%E147673147708%_
                       (lambda ()
                         (if (gx#stx-pair? _%e147672147682%_)
                             (let ((_%e147675147690%_
                                    (gx#syntax-e _%e147672147682%_)))
                               (let ((_%hd147676147693%_
                                      (##car _%e147675147690%_))
                                     (_%tl147677147695%_
                                      (##cdr _%e147675147690%_)))
                                 (let ((_%hd147698%_ _%hd147676147693%_))
                                   (if (gx#stx-pair? _%tl147677147695%_)
                                       (let ((_%e147678147700%_
                                              (gx#syntax-e
                                               _%tl147677147695%_)))
                                         (let ((_%hd147679147703%_
                                                (##car _%e147678147700%_))
                                               (_%tl147680147705%_
                                                (##cdr _%e147678147700%_)))
                                           (if (gx#stx-null?
                                                _%tl147680147705%_)
                                               (gx#core-bind-values?
                                                _%hd147698%_)
                                               (_%E147674147686%_))))
                                       (_%E147674147686%_)))))
                             (_%E147674147686%_)))))
                 (_%E147673147708%_)))
             _%stx147669%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind147628%_)
        (let* ((_%e147629147639%_ _%bind147628%_)
               (_%E147631147643%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147629147639%_)))
               (_%E147630147665%_
                (lambda ()
                  (if (gx#stx-pair? _%e147629147639%_)
                      (let ((_%e147632147647%_
                             (gx#syntax-e _%e147629147639%_)))
                        (let ((_%hd147633147650%_ (##car _%e147632147647%_))
                              (_%tl147634147652%_ (##cdr _%e147632147647%_)))
                          (if (gx#stx-pair? _%tl147634147652%_)
                              (let ((_%e147635147655%_
                                     (gx#syntax-e _%tl147634147652%_)))
                                (let ((_%hd147636147658%_
                                       (##car _%e147635147655%_))
                                      (_%tl147637147660%_
                                       (##cdr _%e147635147655%_)))
                                  (let ((_%expr147663%_ _%hd147636147658%_))
                                    (if (gx#stx-null? _%tl147637147660%_)
                                        (gx#core-expand-expression
                                         _%expr147663%_)
                                        (_%E147631147643%_)))))
                              (_%E147631147643%_))))
                      (_%E147631147643%_)))))
          (_%E147630147665%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind147587%_)
        (let* ((_%e147588147598%_ _%bind147587%_)
               (_%E147590147602%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147588147598%_)))
               (_%E147589147624%_
                (lambda ()
                  (if (gx#stx-pair? _%e147588147598%_)
                      (let ((_%e147591147606%_
                             (gx#syntax-e _%e147588147598%_)))
                        (let ((_%hd147592147609%_ (##car _%e147591147606%_))
                              (_%tl147593147611%_ (##cdr _%e147591147606%_)))
                          (let ((_%hd147614%_ _%hd147592147609%_))
                            (if (gx#stx-pair? _%tl147593147611%_)
                                (let ((_%e147594147616%_
                                       (gx#syntax-e _%tl147593147611%_)))
                                  (let ((_%hd147595147619%_
                                         (##car _%e147594147616%_))
                                        (_%tl147596147621%_
                                         (##cdr _%e147594147616%_)))
                                    (if (gx#stx-null? _%tl147596147621%_)
                                        (gx#core-bind-values!__0 _%hd147614%_)
                                        (_%E147590147602%_))))
                                (_%E147590147602%_)))))
                      (_%E147590147602%_)))))
          (_%E147589147624%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind147545%_ _%expr147546%_)
        (let* ((_%e147547147557%_ _%bind147545%_)
               (_%E147549147561%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147547147557%_)))
               (_%E147548147583%_
                (lambda ()
                  (if (gx#stx-pair? _%e147547147557%_)
                      (let ((_%e147550147565%_
                             (gx#syntax-e _%e147547147557%_)))
                        (let ((_%hd147551147568%_ (##car _%e147550147565%_))
                              (_%tl147552147570%_ (##cdr _%e147550147565%_)))
                          (let ((_%hd147573%_ _%hd147551147568%_))
                            (if (gx#stx-pair? _%tl147552147570%_)
                                (let ((_%e147553147575%_
                                       (gx#syntax-e _%tl147552147570%_)))
                                  (let ((_%hd147554147578%_
                                         (##car _%e147553147575%_))
                                        (_%tl147555147580%_
                                         (##cdr _%e147553147575%_)))
                                    (if (gx#stx-null? _%tl147555147580%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd147573%_)
                                              (cons _%expr147546%_ '()))
                                        (_%E147549147561%_))))
                                (_%E147549147561%_)))))
                      (_%E147549147561%_)))))
          (_%E147548147583%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx147499%_)
        (let* ((_%e147500147510%_ _%stx147499%_)
               (_%E147502147514%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147500147510%_)))
               (_%E147501147541%_
                (lambda ()
                  (if (gx#stx-pair? _%e147500147510%_)
                      (let ((_%e147503147518%_
                             (gx#syntax-e _%e147500147510%_)))
                        (let ((_%hd147504147521%_ (##car _%e147503147518%_))
                              (_%tl147505147523%_ (##cdr _%e147503147518%_)))
                          (if (gx#stx-pair? _%tl147505147523%_)
                              (let ((_%e147506147526%_
                                     (gx#syntax-e _%tl147505147523%_)))
                                (let ((_%hd147507147529%_
                                       (##car _%e147506147526%_))
                                      (_%tl147508147531%_
                                       (##cdr _%e147506147526%_)))
                                  (let* ((_%hd147534%_ _%hd147507147529%_)
                                         (_%body147536%_ _%tl147508147531%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd147534%_)
                                        (let ((_%expanders147538%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd147534%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd147534%_
                                              _%expanders147538%_)
                                             (gx#core-expand-local-block
                                              _%stx147499%_
                                              _%body147536%_))
                                           gx#current-expander-context
                                           (let ((__obj149046
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj149046)
                                             __obj149046)))
                                        (_%E147502147514%_)))))
                              (_%E147502147514%_))))
                      (_%E147502147514%_)))))
          (_%E147501147541%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx147448%_)
        (let* ((_%e147449147459%_ _%stx147448%_)
               (_%E147451147463%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147449147459%_)))
               (_%E147450147495%_
                (lambda ()
                  (if (gx#stx-pair? _%e147449147459%_)
                      (let ((_%e147452147467%_
                             (gx#syntax-e _%e147449147459%_)))
                        (let ((_%hd147453147470%_ (##car _%e147452147467%_))
                              (_%tl147454147472%_ (##cdr _%e147452147467%_)))
                          (if (gx#stx-pair? _%tl147454147472%_)
                              (let ((_%e147455147475%_
                                     (gx#syntax-e _%tl147454147472%_)))
                                (let ((_%hd147456147478%_
                                       (##car _%e147455147475%_))
                                      (_%tl147457147480%_
                                       (##cdr _%e147455147475%_)))
                                  (let* ((_%hd147483%_ _%hd147456147478%_)
                                         (_%body147485%_ _%tl147457147480%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd147483%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd147483%_
                                            (make-list
                                             (gx#stx-length _%hd147483%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g147487147490%_
                                                     _%g147488147492%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g147487147490%_
                                               _%g147488147492%_
                                               '#t))
                                            _%hd147483%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd147483%_))
                                           (gx#core-expand-local-block
                                            _%stx147448%_
                                            _%body147485%_))
                                         gx#current-expander-context
                                         (let ((__obj149047
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj149047)
                                           __obj149047))
                                        (_%E147451147463%_)))))
                              (_%E147451147463%_))))
                      (_%E147451147463%_)))))
          (_%E147450147495%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx147405%_)
        (if (gx#stx-list? _%stx147405%_)
            (gx#stx-andmap
             (lambda (_%bind147407%_)
               (let* ((_%e147408147418%_ _%bind147407%_)
                      (_%E147410147422%_ (lambda () '#f))
                      (_%E147409147444%_
                       (lambda ()
                         (if (gx#stx-pair? _%e147408147418%_)
                             (let ((_%e147411147426%_
                                    (gx#syntax-e _%e147408147418%_)))
                               (let ((_%hd147412147429%_
                                      (##car _%e147411147426%_))
                                     (_%tl147413147431%_
                                      (##cdr _%e147411147426%_)))
                                 (let ((_%hd147434%_ _%hd147412147429%_))
                                   (if (gx#stx-pair? _%tl147413147431%_)
                                       (let ((_%e147414147436%_
                                              (gx#syntax-e
                                               _%tl147413147431%_)))
                                         (let ((_%hd147415147439%_
                                                (##car _%e147414147436%_))
                                               (_%tl147416147441%_
                                                (##cdr _%e147414147436%_)))
                                           (if (gx#stx-null?
                                                _%tl147416147441%_)
                                               (gx#identifier? _%hd147434%_)
                                               (_%E147410147422%_))))
                                       (_%E147410147422%_)))))
                             (_%E147410147422%_)))))
                 (_%E147409147444%_)))
             _%stx147405%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind147361%_)
        (let* ((_%e147362147372%_ _%bind147361%_)
               (_%E147364147376%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147362147372%_)))
               (_%E147363147401%_
                (lambda ()
                  (if (gx#stx-pair? _%e147362147372%_)
                      (let ((_%e147365147380%_
                             (gx#syntax-e _%e147362147372%_)))
                        (let ((_%hd147366147383%_ (##car _%e147365147380%_))
                              (_%tl147367147385%_ (##cdr _%e147365147380%_)))
                          (if (gx#stx-pair? _%tl147367147385%_)
                              (let ((_%e147368147388%_
                                     (gx#syntax-e _%tl147367147385%_)))
                                (let ((_%hd147369147391%_
                                       (##car _%e147368147388%_))
                                      (_%tl147370147393%_
                                       (##cdr _%e147368147388%_)))
                                  (let ((_%expr147396%_ _%hd147369147391%_))
                                    (if (gx#stx-null? _%tl147370147393%_)
                                        (let ((_g149066_
                                               (gx#core-expand-expression+1
                                                _%expr147396%_)))
                                          (begin
                                            (let ((_g149067_
                                                   (if (##values? _g149066_)
                                                       (##values-length
                                                        _g149066_)
                                                       1)))
                                              (if (not (##fx= _g149067_ 2))
                                                  (error "Context expects 2 values"
                                                         _g149067_)))
                                            (let ((_%_147398%_
                                                   (##values-ref _g149066_ 0))
                                                  (_%e147399%_
                                                   (##values-ref _g149066_ 1)))
                                              _%e147399%_)))
                                        (_%E147364147376%_)))))
                              (_%E147364147376%_))))
                      (_%E147364147376%_)))))
          (_%E147363147401%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind147306%_ _%e147307%_ _%rebind?147308%_)
        (let* ((_%e147309147319%_ _%bind147306%_)
               (_%E147311147323%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147309147319%_)))
               (_%E147310147345%_
                (lambda ()
                  (if (gx#stx-pair? _%e147309147319%_)
                      (let ((_%e147312147327%_
                             (gx#syntax-e _%e147309147319%_)))
                        (let ((_%hd147313147330%_ (##car _%e147312147327%_))
                              (_%tl147314147332%_ (##cdr _%e147312147327%_)))
                          (let ((_%id147335%_ _%hd147313147330%_))
                            (if (gx#stx-pair? _%tl147314147332%_)
                                (let ((_%e147315147337%_
                                       (gx#syntax-e _%tl147314147332%_)))
                                  (let ((_%hd147316147340%_
                                         (##car _%e147315147337%_))
                                        (_%tl147317147342%_
                                         (##cdr _%e147315147337%_)))
                                    (if (gx#stx-null? _%tl147317147342%_)
                                        (gx#core-bind-syntax!__1
                                         _%id147335%_
                                         _%e147307%_
                                         _%rebind?147308%_)
                                        (_%E147311147323%_))))
                                (_%E147311147323%_)))))
                      (_%E147311147323%_)))))
          (_%E147310147345%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind147352%_ _%e147353%_)
        (let ((_%rebind?147355%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind147352%_
           _%e147353%_
           _%rebind?147355%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g149068_
        (let ((_g149069_ (##length _g149068_)))
          (cond ((##fx= _g149069_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g149068_))
                ((##fx= _g149069_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g149068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g149068_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx147264%_)
        (let* ((_%e147265147275%_ _%stx147264%_)
               (_%E147267147279%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147265147275%_)))
               (_%E147266147301%_
                (lambda ()
                  (if (gx#stx-pair? _%e147265147275%_)
                      (let ((_%e147268147283%_
                             (gx#syntax-e _%e147265147275%_)))
                        (let ((_%hd147269147286%_ (##car _%e147268147283%_))
                              (_%tl147270147288%_ (##cdr _%e147268147283%_)))
                          (if (gx#stx-pair? _%tl147270147288%_)
                              (let ((_%e147271147291%_
                                     (gx#syntax-e _%tl147270147288%_)))
                                (let ((_%hd147272147294%_
                                       (##car _%e147271147291%_))
                                      (_%tl147273147296%_
                                       (##cdr _%e147271147291%_)))
                                  (let ((_%expr147299%_ _%hd147272147294%_))
                                    (if (gx#stx-null? _%tl147273147296%_)
                                        (gx#core-expand-expression
                                         _%expr147299%_)
                                        (_%E147267147279%_)))))
                              (_%E147267147279%_))))
                      (_%E147267147279%_)))))
          (_%E147266147301%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx147223%_)
        (let* ((_%e147224147234%_ _%stx147223%_)
               (_%E147226147238%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147224147234%_)))
               (_%E147225147260%_
                (lambda ()
                  (if (gx#stx-pair? _%e147224147234%_)
                      (let ((_%e147227147242%_
                             (gx#syntax-e _%e147224147234%_)))
                        (let ((_%hd147228147245%_ (##car _%e147227147242%_))
                              (_%tl147229147247%_ (##cdr _%e147227147242%_)))
                          (if (gx#stx-pair? _%tl147229147247%_)
                              (let ((_%e147230147250%_
                                     (gx#syntax-e _%tl147229147247%_)))
                                (let ((_%hd147231147253%_
                                       (##car _%e147230147250%_))
                                      (_%tl147232147255%_
                                       (##cdr _%e147230147250%_)))
                                  (let ((_%e147258%_ _%hd147231147253%_))
                                    (if (gx#stx-null? _%tl147232147255%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e147258%_)
                                                     '()))
                                         (gx#stx-source _%stx147223%_))
                                        (_%E147226147238%_)))))
                              (_%E147226147238%_))))
                      (_%E147226147238%_)))))
          (_%E147225147260%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx147182%_)
        (let* ((_%e147183147193%_ _%stx147182%_)
               (_%E147185147197%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147183147193%_)))
               (_%E147184147219%_
                (lambda ()
                  (if (gx#stx-pair? _%e147183147193%_)
                      (let ((_%e147186147201%_
                             (gx#syntax-e _%e147183147193%_)))
                        (let ((_%hd147187147204%_ (##car _%e147186147201%_))
                              (_%tl147188147206%_ (##cdr _%e147186147201%_)))
                          (if (gx#stx-pair? _%tl147188147206%_)
                              (let ((_%e147189147209%_
                                     (gx#syntax-e _%tl147188147206%_)))
                                (let ((_%hd147190147212%_
                                       (##car _%e147189147209%_))
                                      (_%tl147191147214%_
                                       (##cdr _%e147189147209%_)))
                                  (let ((_%e147217%_ _%hd147190147212%_))
                                    (if (gx#stx-null? _%tl147191147214%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e147217%_)
                                                     '()))
                                         (gx#stx-source _%stx147182%_))
                                        (_%E147185147197%_)))))
                              (_%E147185147197%_))))
                      (_%E147185147197%_)))))
          (_%E147184147219%_))))
    (define gx#core-expand-call%
      (lambda (_%stx147076%_)
        (letrec ((_%expand-runtime-call147078%_
                  (lambda (_%rator-expr147179%_ _%args147180%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr147179%_
                      (gx#stx-map1 gx#core-expand-expression _%args147180%_))
                     (gx#stx-source _%stx147076%_)))))
          (let* ((_%e147079147089%_ _%stx147076%_)
                 (_%E147081147093%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e147079147089%_)))
                 (_%E147080147175%_
                  (lambda ()
                    (if (gx#stx-pair? _%e147079147089%_)
                        (let ((_%e147082147097%_
                               (gx#syntax-e _%e147079147089%_)))
                          (let ((_%hd147083147100%_ (##car _%e147082147097%_))
                                (_%tl147084147102%_ (##cdr _%e147082147097%_)))
                            (if (gx#stx-pair? _%tl147084147102%_)
                                (let ((_%e147085147105%_
                                       (gx#syntax-e _%tl147084147102%_)))
                                  (let ((_%hd147086147108%_
                                         (##car _%e147085147105%_))
                                        (_%tl147087147110%_
                                         (##cdr _%e147085147105%_)))
                                    (let* ((_%rator147113%_ _%hd147086147108%_)
                                           (_%args147115%_ _%tl147087147110%_))
                                      (if (gx#stx-list? _%args147115%_)
                                          (let* ((_%rator-expr147117%_
                                                  (gx#core-expand-expression
                                                   _%rator147113%_))
                                                 (_%e147118147128%_
                                                  _%rator-expr147117%_)
                                                 (_%E147120147132%_
                                                  (lambda ()
                                                    (_%expand-runtime-call147078%_
                                                     _%rator-expr147117%_
                                                     _%args147115%_)))
                                                 (_%E147119147171%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e147118147128%_)
                                                        (let ((_%e147121147136%_
                                                               (gx#syntax-e
                                                                _%e147118147128%_)))
                                                          (let ((_%hd147122147139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e147121147136%_))
                        (_%tl147123147141%_ (##cdr _%e147121147136%_)))
                    (if (and (gx#identifier? _%hd147122147139%_)
                             (gx#core-identifier=? _%hd147122147139%_ '%#ref))
                        (if (gx#stx-pair? _%tl147123147141%_)
                            (let ((_%e147124147144%_
                                   (gx#syntax-e _%tl147123147141%_)))
                              (let ((_%hd147125147147%_
                                     (##car _%e147124147144%_))
                                    (_%tl147126147149%_
                                     (##cdr _%e147124147144%_)))
                                (let ((_%id147152%_ _%hd147125147147%_))
                                  (if (gx#stx-null? _%tl147126147149%_)
                                      (let ((_%$e147154%_
                                             (gx#resolve-identifier__0
                                              (gx#datum->syntax__0 '#f 'id))))
                                        (if _%$e147154%_
                                            ((lambda (_%bind147157%_)
                                               (let _%again147159%_ ((_%bind147161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind147157%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e147163%_
                                                        (if (##structure-instance-of?
                                                             _%bind147161%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind147161%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e147163%_
                                                       ((lambda (_%macro147166%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro147166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args147115%_)
                    (gx#stx-source _%stx147076%_))))
                _%$e147163%_)
               (if (##structure-direct-instance-of?
                    _%bind147161%_
                    'gx#import-binding::t)
                   (_%again147159%_
                    (##unchecked-structure-ref _%bind147161%_ '5 '#f '#f))
                   (_%expand-runtime-call147078%_
                    _%rator-expr147117%_
                    _%args147115%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e147154%_)
                                            (_%expand-runtime-call147078%_
                                             _%rator-expr147117%_
                                             _%args147115%_)))
                                      (_%E147120147132%_)))))
                            (_%E147120147132%_))
                        (_%E147120147132%_))))
                (_%E147120147132%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E147119147171%_))
                                          (_%E147081147093%_)))))
                                (_%E147081147093%_))))
                        (_%E147081147093%_)))))
            (_%E147080147175%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx147009%_)
        (let* ((_%e147010147026%_ _%stx147009%_)
               (_%E147012147030%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e147010147026%_)))
               (_%E147011147072%_
                (lambda ()
                  (if (gx#stx-pair? _%e147010147026%_)
                      (let ((_%e147013147034%_
                             (gx#syntax-e _%e147010147026%_)))
                        (let ((_%hd147014147037%_ (##car _%e147013147034%_))
                              (_%tl147015147039%_ (##cdr _%e147013147034%_)))
                          (if (gx#stx-pair? _%tl147015147039%_)
                              (let ((_%e147016147042%_
                                     (gx#syntax-e _%tl147015147039%_)))
                                (let ((_%hd147017147045%_
                                       (##car _%e147016147042%_))
                                      (_%tl147018147047%_
                                       (##cdr _%e147016147042%_)))
                                  (let ((_%test147050%_ _%hd147017147045%_))
                                    (if (gx#stx-pair? _%tl147018147047%_)
                                        (let ((_%e147019147052%_
                                               (gx#syntax-e
                                                _%tl147018147047%_)))
                                          (let ((_%hd147020147055%_
                                                 (##car _%e147019147052%_))
                                                (_%tl147021147057%_
                                                 (##cdr _%e147019147052%_)))
                                            (let ((_%K147060%_
                                                   _%hd147020147055%_))
                                              (if (gx#stx-pair?
                                                   _%tl147021147057%_)
                                                  (let ((_%e147022147062%_
                                                         (gx#syntax-e
                                                          _%tl147021147057%_)))
                                                    (let ((_%hd147023147065%_
                                                           (##car _%e147022147062%_))
                                                          (_%tl147024147067%_
                                                           (##cdr _%e147022147062%_)))
                                                      (let ((_%E147070%_
                                                             _%hd147023147065%_))
                                                        (if (gx#stx-null?
                                                             _%tl147024147067%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test147050%_)
                                 (cons (gx#core-expand-expression _%K147060%_)
                                       (cons (gx#core-expand-expression
                                              _%E147070%_)
                                             '()))))
                     (gx#stx-source _%stx147009%_))
                    (_%E147012147030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E147012147030%_)))))
                                        (_%E147012147030%_)))))
                              (_%E147012147030%_))))
                      (_%E147012147030%_)))))
          (_%E147011147072%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx146968%_)
        (let* ((_%e146969146979%_ _%stx146968%_)
               (_%E146971146983%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146969146979%_)))
               (_%E146970147005%_
                (lambda ()
                  (if (gx#stx-pair? _%e146969146979%_)
                      (let ((_%e146972146987%_
                             (gx#syntax-e _%e146969146979%_)))
                        (let ((_%hd146973146990%_ (##car _%e146972146987%_))
                              (_%tl146974146992%_ (##cdr _%e146972146987%_)))
                          (if (gx#stx-pair? _%tl146974146992%_)
                              (let ((_%e146975146995%_
                                     (gx#syntax-e _%tl146974146992%_)))
                                (let ((_%hd146976146998%_
                                       (##car _%e146975146995%_))
                                      (_%tl146977147000%_
                                       (##cdr _%e146975146995%_)))
                                  (let ((_%id147003%_ _%hd146976146998%_))
                                    (if (gx#stx-null? _%tl146977147000%_)
                                        (if (gx#identifier? _%id147003%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id147003%_
                                                          _%stx146968%_)
                                                         '()))
                                             (gx#stx-source _%stx146968%_))
                                            (_%E146971146983%_))
                                        (_%E146971146983%_)))))
                              (_%E146971146983%_))))
                      (_%E146971146983%_)))))
          (_%E146970147005%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx146914%_)
        (let* ((_%e146915146928%_ _%stx146914%_)
               (_%E146917146932%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146915146928%_)))
               (_%E146916146964%_
                (lambda ()
                  (if (gx#stx-pair? _%e146915146928%_)
                      (let ((_%e146918146936%_
                             (gx#syntax-e _%e146915146928%_)))
                        (let ((_%hd146919146939%_ (##car _%e146918146936%_))
                              (_%tl146920146941%_ (##cdr _%e146918146936%_)))
                          (if (gx#stx-pair? _%tl146920146941%_)
                              (let ((_%e146921146944%_
                                     (gx#syntax-e _%tl146920146941%_)))
                                (let ((_%hd146922146947%_
                                       (##car _%e146921146944%_))
                                      (_%tl146923146949%_
                                       (##cdr _%e146921146944%_)))
                                  (let ((_%id146952%_ _%hd146922146947%_))
                                    (if (gx#stx-pair? _%tl146923146949%_)
                                        (let ((_%e146924146954%_
                                               (gx#syntax-e
                                                _%tl146923146949%_)))
                                          (let ((_%hd146925146957%_
                                                 (##car _%e146924146954%_))
                                                (_%tl146926146959%_
                                                 (##cdr _%e146924146954%_)))
                                            (let ((_%expr146962%_
                                                   _%hd146925146957%_))
                                              (if (gx#stx-null?
                                                   _%tl146926146959%_)
                                                  (if (gx#identifier?
                                                       _%id146952%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id146952%_
                            _%stx146914%_)
                           (cons (gx#core-expand-expression _%expr146962%_)
                                 '())))
               (gx#stx-source _%stx146914%_))
              (_%E146917146932%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146917146932%_)))))
                                        (_%E146917146932%_)))))
                              (_%E146917146932%_))))
                      (_%E146917146932%_)))))
          (_%E146916146964%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx146759%_)
        (letrec ((_%generate146761%_
                  (lambda (_%body146791%_)
                    (let _%lp146793%_ ((_%rest146795%_ _%body146791%_)
                                       (_%ns146796%_
                                        (gx#core-context-namespace__0))
                                       (_%r146797%_ '()))
                      (let* ((_%e146798146813%_ _%rest146795%_)
                             (_%E146811146817%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e146798146813%_)))
                             (_%E146807146821%_
                              (lambda ()
                                (if (gx#stx-null? _%e146798146813%_)
                                    (reverse _%r146797%_)
                                    (_%E146811146817%_))))
                             (_%E146800146878%_
                              (lambda ()
                                (if (gx#stx-pair? _%e146798146813%_)
                                    (let ((_%e146808146825%_
                                           (gx#syntax-e _%e146798146813%_)))
                                      (let ((_%hd146809146828%_
                                             (##car _%e146808146825%_))
                                            (_%tl146810146830%_
                                             (##cdr _%e146808146825%_)))
                                        (let* ((_%hd146833%_
                                                _%hd146809146828%_)
                                               (_%rest146835%_
                                                _%tl146810146830%_))
                                          (if (gx#identifier? _%hd146833%_)
                                              (_%lp146793%_
                                               _%rest146835%_
                                               _%ns146796%_
                                               (cons (cons _%hd146833%_
                                                           (cons (if _%ns146796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd146833%_
                              _%ns146796%_
                              '"#"
                              _%hd146833%_)
                             _%hd146833%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r146797%_))
                                              (let* ((_%e146836146846%_
                                                      _%hd146833%_)
                                                     (_%E146838146850%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e146836146846%_)))
                                                     (_%E146837146874%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e146836146846%_)
                                                            (let ((_%e146839146854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e146836146846%_)))
                      (let ((_%hd146840146857%_ (##car _%e146839146854%_))
                            (_%tl146841146859%_ (##cdr _%e146839146854%_)))
                        (let ((_%id146862%_ _%hd146840146857%_))
                          (if (gx#stx-pair? _%tl146841146859%_)
                              (let ((_%e146842146864%_
                                     (gx#syntax-e _%tl146841146859%_)))
                                (let ((_%hd146843146867%_
                                       (##car _%e146842146864%_))
                                      (_%tl146844146869%_
                                       (##cdr _%e146842146864%_)))
                                  (let ((_%eid146872%_ _%hd146843146867%_))
                                    (if (gx#stx-null? _%tl146844146869%_)
                                        (if (and (gx#identifier? _%id146862%_)
                                                 (gx#identifier?
                                                  _%eid146872%_))
                                            (_%lp146793%_
                                             _%rest146835%_
                                             _%ns146796%_
                                             (cons (cons _%id146862%_
                                                         (cons _%eid146872%_
                                                               '()))
                                                   _%r146797%_))
                                            (_%E146838146850%_))
                                        (_%E146838146850%_)))))
                              (_%E146838146850%_)))))
                    (_%E146838146850%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E146837146874%_))))))
                                    (_%E146807146821%_))))
                             (_%E146799146910%_
                              (lambda ()
                                (if (gx#stx-pair? _%e146798146813%_)
                                    (let ((_%e146801146882%_
                                           (gx#syntax-e _%e146798146813%_)))
                                      (let ((_%hd146802146885%_
                                             (##car _%e146801146882%_))
                                            (_%tl146803146887%_
                                             (##cdr _%e146801146882%_)))
                                        (if (eq? (gx#stx-e _%hd146802146885%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl146803146887%_)
                                                (let ((_%e146804146890%_
                                                       (gx#syntax-e
                                                        _%tl146803146887%_)))
                                                  (let ((_%hd146805146893%_
                                                         (##car _%e146804146890%_))
                                                        (_%tl146806146895%_
                                                         (##cdr _%e146804146890%_)))
                                                    (let* ((_%ns146898%_
                                                            _%hd146805146893%_)
                                                           (_%rest146900%_
                                                            _%tl146806146895%_)
                                                           (_%ns146908%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns146898%_)
                        (symbol->string (gx#stx-e _%ns146898%_))
                        (if (or (gx#stx-string? _%ns146898%_)
                                (gx#stx-false? _%ns146898%_))
                            (gx#stx-e _%ns146898%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx146759%_
                             _%ns146898%_)))))
              (_%lp146793%_ _%rest146900%_ _%ns146908%_ _%r146797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E146800146878%_))
                                            (_%E146800146878%_))))
                                    (_%E146800146878%_)))))
                        (_%E146799146910%_))))))
          (let* ((_%e146762146769%_ _%stx146759%_)
                 (_%E146764146773%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e146762146769%_)))
                 (_%E146763146787%_
                  (lambda ()
                    (if (gx#stx-pair? _%e146762146769%_)
                        (let ((_%e146765146777%_
                               (gx#syntax-e _%e146762146769%_)))
                          (let ((_%hd146766146780%_ (##car _%e146765146777%_))
                                (_%tl146767146782%_ (##cdr _%e146765146777%_)))
                            (let ((_%body146785%_ _%tl146767146782%_))
                              (if (gx#stx-list? _%body146785%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate146761%_ _%body146785%_))
                                  (_%E146764146773%_)))))
                        (_%E146764146773%_)))))
            (_%E146763146787%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx146705%_)
        (let* ((_%e146706146719%_ _%stx146705%_)
               (_%E146708146723%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146706146719%_)))
               (_%E146707146755%_
                (lambda ()
                  (if (gx#stx-pair? _%e146706146719%_)
                      (let ((_%e146709146727%_
                             (gx#syntax-e _%e146706146719%_)))
                        (let ((_%hd146710146730%_ (##car _%e146709146727%_))
                              (_%tl146711146732%_ (##cdr _%e146709146727%_)))
                          (if (gx#stx-pair? _%tl146711146732%_)
                              (let ((_%e146712146735%_
                                     (gx#syntax-e _%tl146711146732%_)))
                                (let ((_%hd146713146738%_
                                       (##car _%e146712146735%_))
                                      (_%tl146714146740%_
                                       (##cdr _%e146712146735%_)))
                                  (let ((_%hd146743%_ _%hd146713146738%_))
                                    (if (gx#stx-pair? _%tl146714146740%_)
                                        (let ((_%e146715146745%_
                                               (gx#syntax-e
                                                _%tl146714146740%_)))
                                          (let ((_%hd146716146748%_
                                                 (##car _%e146715146745%_))
                                                (_%tl146717146750%_
                                                 (##cdr _%e146715146745%_)))
                                            (let ((_%expr146753%_
                                                   _%hd146716146748%_))
                                              (if (gx#stx-null?
                                                   _%tl146717146750%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd146743%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd146743%_)
                          (cons _%expr146753%_ '())))
              (_%E146708146723%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146708146723%_)))))
                                        (_%E146708146723%_)))))
                              (_%E146708146723%_))))
                      (_%E146708146723%_)))))
          (_%E146707146755%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx146651%_)
        (let* ((_%e146652146665%_ _%stx146651%_)
               (_%E146654146669%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146652146665%_)))
               (_%E146653146701%_
                (lambda ()
                  (if (gx#stx-pair? _%e146652146665%_)
                      (let ((_%e146655146673%_
                             (gx#syntax-e _%e146652146665%_)))
                        (let ((_%hd146656146676%_ (##car _%e146655146673%_))
                              (_%tl146657146678%_ (##cdr _%e146655146673%_)))
                          (if (gx#stx-pair? _%tl146657146678%_)
                              (let ((_%e146658146681%_
                                     (gx#syntax-e _%tl146657146678%_)))
                                (let ((_%hd146659146684%_
                                       (##car _%e146658146681%_))
                                      (_%tl146660146686%_
                                       (##cdr _%e146658146681%_)))
                                  (let ((_%hd146689%_ _%hd146659146684%_))
                                    (if (gx#stx-pair? _%tl146660146686%_)
                                        (let ((_%e146661146691%_
                                               (gx#syntax-e
                                                _%tl146660146686%_)))
                                          (let ((_%hd146662146694%_
                                                 (##car _%e146661146691%_))
                                                (_%tl146663146696%_
                                                 (##cdr _%e146661146691%_)))
                                            (let ((_%expr146699%_
                                                   _%hd146662146694%_))
                                              (if (gx#stx-null?
                                                   _%tl146663146696%_)
                                                  (if (gx#identifier?
                                                       _%hd146689%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd146689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr146699%_ '())))
              (_%E146654146669%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146654146669%_)))))
                                        (_%E146654146669%_)))))
                              (_%E146654146669%_))))
                      (_%E146654146669%_)))))
          (_%E146653146701%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx146597%_)
        (let* ((_%e146598146611%_ _%stx146597%_)
               (_%E146600146615%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e146598146611%_)))
               (_%E146599146647%_
                (lambda ()
                  (if (gx#stx-pair? _%e146598146611%_)
                      (let ((_%e146601146619%_
                             (gx#syntax-e _%e146598146611%_)))
                        (let ((_%hd146602146622%_ (##car _%e146601146619%_))
                              (_%tl146603146624%_ (##cdr _%e146601146619%_)))
                          (if (gx#stx-pair? _%tl146603146624%_)
                              (let ((_%e146604146627%_
                                     (gx#syntax-e _%tl146603146624%_)))
                                (let ((_%hd146605146630%_
                                       (##car _%e146604146627%_))
                                      (_%tl146606146632%_
                                       (##cdr _%e146604146627%_)))
                                  (let ((_%id146635%_ _%hd146605146630%_))
                                    (if (gx#stx-pair? _%tl146606146632%_)
                                        (let ((_%e146607146637%_
                                               (gx#syntax-e
                                                _%tl146606146632%_)))
                                          (let ((_%hd146608146640%_
                                                 (##car _%e146607146637%_))
                                                (_%tl146609146642%_
                                                 (##cdr _%e146607146637%_)))
                                            (let ((_%alias-id146645%_
                                                   _%hd146608146640%_))
                                              (if (gx#stx-null?
                                                   _%tl146609146642%_)
                                                  (if (and (gx#identifier?
                                                            _%id146635%_)
                                                           (gx#identifier?
                                                            _%alias-id146645%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id146635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id146645%_ '())))
              (_%E146600146615%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E146600146615%_)))))
                                        (_%E146600146615%_)))))
                              (_%E146600146615%_))))
                      (_%E146600146615%_)))))
          (_%E146599146647%_))))
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
      (lambda _g149070_
        (let ((_g149071_ (##length _g149070_)))
          (cond ((##fx= _g149071_ 1)
                 (apply gx#macro-expand-let-values__0 _g149070_))
                ((##fx= _g149071_ 2)
                 (apply gx#macro-expand-let-values__% _g149070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g149070_))))))
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
      (lambda _g149072_
        (let ((_g149073_ (##length _g149072_)))
          (cond ((##fx= _g149073_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g149072_))
                ((##fx= _g149073_ 2)
                 (apply gx#check-duplicate-identifiers__% _g149072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g149072_))))))
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
      (lambda _g149074_
        (let ((_g149075_ (##length _g149074_)))
          (cond ((##fx= _g149075_ 1) (apply gx#core-bind-values!__0 _g149074_))
                ((##fx= _g149075_ 2) (apply gx#core-bind-values!__1 _g149074_))
                ((##fx= _g149075_ 3) (apply gx#core-bind-values!__2 _g149074_))
                ((##fx= _g149075_ 4) (apply gx#core-bind-values!__% _g149074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g149074_))))))
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
                    (let ((__obj149051
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
                       __obj149051
                       _%eid146077%_
                       _%key146075%_
                       _%phi146072%_
                       _%ctx146073%_)
                      __obj149051)
                    (if (##structure-instance-of?
                         _%ctx146073%_
                         'gx#top-context::t)
                        (let ((__obj149050
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj149050
                           _%eid146077%_
                           _%key146075%_
                           _%phi146072%_)
                          __obj149050)
                        (if (##structure-instance-of?
                             _%ctx146073%_
                             'gx#local-context::t)
                            (let ((__obj149049
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj149049
                               _%eid146077%_
                               _%key146075%_
                               _%phi146072%_)
                              __obj149049)
                            (let ((__obj149048
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj149048
                               _%eid146077%_
                               _%key146075%_
                               _%phi146072%_)
                              __obj149048))))))
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
      (lambda _g149076_
        (let ((_g149077_ (##length _g149076_)))
          (cond ((##fx= _g149077_ 1)
                 (apply gx#core-bind-runtime!__0 _g149076_))
                ((##fx= _g149077_ 2)
                 (apply gx#core-bind-runtime!__1 _g149076_))
                ((##fx= _g149077_ 3)
                 (apply gx#core-bind-runtime!__2 _g149076_))
                ((##fx= _g149077_ 4)
                 (apply gx#core-bind-runtime!__% _g149076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g149076_))))))
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
                    (let ((__obj149054
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
                       __obj149054
                       _%eid146023%_
                       _%key146028%_
                       _%phi146025%_
                       _%ctx146026%_)
                      __obj149054)
                    (if (##structure-instance-of?
                         _%ctx146026%_
                         'gx#top-context::t)
                        (let ((__obj149053
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj149053
                           _%eid146023%_
                           _%key146028%_
                           _%phi146025%_)
                          __obj149053)
                        (let ((__obj149052
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj149052
                           _%eid146023%_
                           _%key146028%_
                           _%phi146025%_)
                          __obj149052)))))
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
      (lambda _g149078_
        (let ((_g149079_ (##length _g149078_)))
          (cond ((##fx= _g149079_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g149078_))
                ((##fx= _g149079_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g149078_))
                ((##fx= _g149079_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g149078_))
                ((##fx= _g149079_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g149078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g149078_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id145982%_
               _%eid145983%_
               _%rebind?145984%_
               _%phi145985%_
               _%ctx145986%_)
        (gx#bind-identifier!__%
         _%id145982%_
         (let ((__obj149055
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj149055
            _%eid145983%_
            (gx#core-identifier-key _%id145982%_)
            _%phi145985%_)
           __obj149055)
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
      (lambda _g149080_
        (let ((_g149081_ (##length _g149080_)))
          (cond ((##fx= _g149081_ 2) (apply gx#core-bind-extern!__0 _g149080_))
                ((##fx= _g149081_ 3) (apply gx#core-bind-extern!__1 _g149080_))
                ((##fx= _g149081_ 4) (apply gx#core-bind-extern!__2 _g149080_))
                ((##fx= _g149081_ 5) (apply gx#core-bind-extern!__% _g149080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g149080_))))))
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
           (let ((__obj149056
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj149056
              (gx#make-binding-id__%
               _%key145945%_
               '#t
               _%phi145939%_
               _%ctx145940%_)
              _%key145945%_
              _%phi145939%_
              _%e145946%_)
             __obj149056))
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
      (lambda _g149082_
        (let ((_g149083_ (##length _g149082_)))
          (cond ((##fx= _g149083_ 2) (apply gx#core-bind-syntax!__0 _g149082_))
                ((##fx= _g149083_ 3) (apply gx#core-bind-syntax!__1 _g149082_))
                ((##fx= _g149083_ 4) (apply gx#core-bind-syntax!__2 _g149082_))
                ((##fx= _g149083_ 5) (apply gx#core-bind-syntax!__% _g149082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g149082_))))))
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
      (lambda _g149084_
        (let ((_g149085_ (##length _g149084_)))
          (cond ((##fx= _g149085_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g149084_))
                ((##fx= _g149085_ 3)
                 (apply gx#core-bind-root-syntax!__% _g149084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g149084_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id145877%_
               _%alias-id145878%_
               _%rebind?145879%_
               _%phi145880%_
               _%ctx145881%_)
        (gx#bind-identifier!__%
         _%id145877%_
         (let* ((_%key145883%_ (gx#core-identifier-key _%id145877%_))
                (__obj149057
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj149057
            (gx#make-binding-id__%
             _%key145883%_
             '#t
             _%phi145880%_
             _%ctx145881%_)
            _%key145883%_
            _%phi145880%_
            _%alias-id145878%_)
           __obj149057)
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
      (lambda _g149086_
        (let ((_g149087_ (##length _g149086_)))
          (cond ((##fx= _g149087_ 2) (apply gx#core-bind-alias!__0 _g149086_))
                ((##fx= _g149087_ 3) (apply gx#core-bind-alias!__1 _g149086_))
                ((##fx= _g149087_ 4) (apply gx#core-bind-alias!__2 _g149086_))
                ((##fx= _g149087_ 5) (apply gx#core-bind-alias!__% _g149086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g149086_))))))
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
      (lambda _g149088_
        (let ((_g149089_ (##length _g149088_)))
          (cond ((##fx= _g149089_ 1) (apply gx#make-binding-id__0 _g149088_))
                ((##fx= _g149089_ 2) (apply gx#make-binding-id__1 _g149088_))
                ((##fx= _g149089_ 3) (apply gx#make-binding-id__2 _g149088_))
                ((##fx= _g149089_ 4) (apply gx#make-binding-id__% _g149088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g149088_))))))))
