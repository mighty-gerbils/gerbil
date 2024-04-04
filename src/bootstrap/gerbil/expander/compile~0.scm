(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712269046)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx127062%_)
        (let* ((_%e127063127070%_ _%stx127062%_)
               (_%E127065127074%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127063127070%_)))
               (_%E127064127088%_
                (lambda ()
                  (if (gx#stx-pair? _%e127063127070%_)
                      (let ((_%e127066127078%_
                             (gx#syntax-e _%e127063127070%_)))
                        (let ((_%hd127067127081%_ (##car _%e127066127078%_))
                              (_%tl127068127083%_ (##cdr _%e127066127078%_)))
                          (let ((_%form127086%_ _%hd127067127081%_))
                            (if '#t
                                (let* ((__self127091
                                        (gx#syntax-local-e__0 _%form127086%_))
                                       (__method127092
                                        (__method-ref
                                         __self127091
                                         'compile-top-syntax)))
                                  (if __method127092
                                      (__method127092
                                       __self127091
                                       _%stx127062%_)
                                      (error '"Missing method"
                                             __self127091
                                             'compile-top-syntax)))
                                (_%E127065127074%_)))))
                      (_%E127065127074%_)))))
          (_%E127064127088%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127010%_ _%stx127011%_)
        (let ((_%self127014%_ _%self127010%_))
          (let* ((_%self127023127031%_ _%self127014%_)
                 (_%E127025127035%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self127023127031%_
                           '((core-expander _ _ K)))
                    '#!void))
                 (_%K127026127048%_
                  (lambda (_%K127038%_)
                    (let ((_%$e127040%_ (gx#stx-source _%stx127011%_)))
                      (if _%$e127040%_
                          ((lambda (_%g127042127044%_)
                             (gx#stx-wrap-source
                              (_%K127038%_ _%stx127011%_)
                              _%g127042127044%_))
                           _%$e127040%_)
                          (let () (_%K127038%_ _%stx127011%_)))))))
            (if '#t
                (let* ((_%e127027127051%_
                        (##unchecked-structure-ref
                         _%self127023127031%_
                         '1
                         '#f
                         '#f))
                       (_%e127028127054%_
                        (##unchecked-structure-ref
                         _%self127023127031%_
                         '2
                         '#f
                         '#f))
                       (_%e127029127057%_
                        (##unchecked-structure-ref
                         _%self127023127031%_
                         '3
                         '#f
                         '#f))
                       (_%K127060%_ _%e127029127057%_))
                  (_%K127026127048%_ _%K127060%_))
                (_%E127025127035%_))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126884%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126884%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126854%_)
        (let* ((_%e126855126862%_ _%stx126854%_)
               (_%E126857126866%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126855126862%_)))
               (_%E126856126880%_
                (lambda ()
                  (if (gx#stx-pair? _%e126855126862%_)
                      (let ((_%e126858126870%_
                             (gx#syntax-e _%e126855126862%_)))
                        (let ((_%hd126859126873%_ (##car _%e126858126870%_))
                              (_%tl126860126875%_ (##cdr _%e126858126870%_)))
                          (let ((_%body126878%_ _%tl126860126875%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126878%_))
                                (_%E126857126866%_)))))
                      (_%E126857126866%_)))))
          (_%E126856126880%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126823%_)
        (let* ((_%e126824126831%_ _%stx126823%_)
               (_%E126826126835%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126824126831%_)))
               (_%E126825126850%_
                (lambda ()
                  (if (gx#stx-pair? _%e126824126831%_)
                      (let ((_%e126827126839%_
                             (gx#syntax-e _%e126824126831%_)))
                        (let ((_%hd126828126842%_ (##car _%e126827126839%_))
                              (_%tl126829126844%_ (##cdr _%e126827126839%_)))
                          (let ((_%body126847%_ _%tl126829126844%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126847%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126826126835%_)))))
                      (_%E126826126835%_)))))
          (_%E126825126850%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126793%_)
        (let* ((_%e126794126801%_ _%stx126793%_)
               (_%E126796126805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126794126801%_)))
               (_%E126795126819%_
                (lambda ()
                  (if (gx#stx-pair? _%e126794126801%_)
                      (let ((_%e126797126809%_
                             (gx#syntax-e _%e126794126801%_)))
                        (let ((_%hd126798126812%_ (##car _%e126797126809%_))
                              (_%tl126799126814%_ (##cdr _%e126797126809%_)))
                          (let ((_%body126817%_ _%tl126799126814%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126817%_)
                                (_%E126796126805%_)))))
                      (_%E126796126805%_)))))
          (_%E126795126819%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126739%_)
        (let* ((_%e126740126753%_ _%stx126739%_)
               (_%E126742126757%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126740126753%_)))
               (_%E126741126789%_
                (lambda ()
                  (if (gx#stx-pair? _%e126740126753%_)
                      (let ((_%e126743126761%_
                             (gx#syntax-e _%e126740126753%_)))
                        (let ((_%hd126744126764%_ (##car _%e126743126761%_))
                              (_%tl126745126766%_ (##cdr _%e126743126761%_)))
                          (if (gx#stx-pair? _%tl126745126766%_)
                              (let ((_%e126746126769%_
                                     (gx#syntax-e _%tl126745126766%_)))
                                (let ((_%hd126747126772%_
                                       (##car _%e126746126769%_))
                                      (_%tl126748126774%_
                                       (##cdr _%e126746126769%_)))
                                  (let ((_%ann126777%_ _%hd126747126772%_))
                                    (if (gx#stx-pair? _%tl126748126774%_)
                                        (let ((_%e126749126779%_
                                               (gx#syntax-e
                                                _%tl126748126774%_)))
                                          (let ((_%hd126750126782%_
                                                 (##car _%e126749126779%_))
                                                (_%tl126751126784%_
                                                 (##cdr _%e126749126779%_)))
                                            (let ((_%expr126787%_
                                                   _%hd126750126782%_))
                                              (if (gx#stx-null?
                                                   _%tl126751126784%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126787%_)
                                                      (_%E126742126757%_))
                                                  (_%E126742126757%_)))))
                                        (_%E126742126757%_)))))
                              (_%E126742126757%_))))
                      (_%E126742126757%_)))))
          (_%E126741126789%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126709%_)
        (let* ((_%e126710126717%_ _%stx126709%_)
               (_%E126712126721%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126710126717%_)))
               (_%E126711126735%_
                (lambda ()
                  (if (gx#stx-pair? _%e126710126717%_)
                      (let ((_%e126713126725%_
                             (gx#syntax-e _%e126710126717%_)))
                        (let ((_%hd126714126728%_ (##car _%e126713126725%_))
                              (_%tl126715126730%_ (##cdr _%e126713126725%_)))
                          (let ((_%body126733%_ _%tl126715126730%_))
                            (if '#t
                                (cons '%#import _%body126733%_)
                                (_%E126712126721%_)))))
                      (_%E126712126721%_)))))
          (_%E126711126735%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126666%_)
        (let* ((_%e126667126677%_ _%stx126666%_)
               (_%E126669126681%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126667126677%_)))
               (_%E126668126705%_
                (lambda ()
                  (if (gx#stx-pair? _%e126667126677%_)
                      (let ((_%e126670126685%_
                             (gx#syntax-e _%e126667126677%_)))
                        (let ((_%hd126671126688%_ (##car _%e126670126685%_))
                              (_%tl126672126690%_ (##cdr _%e126670126685%_)))
                          (if (gx#stx-pair? _%tl126672126690%_)
                              (let ((_%e126673126693%_
                                     (gx#syntax-e _%tl126672126690%_)))
                                (let ((_%hd126674126696%_
                                       (##car _%e126673126693%_))
                                      (_%tl126675126698%_
                                       (##cdr _%e126673126693%_)))
                                  (let* ((_%hd126701%_ _%hd126674126696%_)
                                         (_%body126703%_ _%tl126675126698%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126701%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126703%_)))
                                        (_%E126669126681%_)))))
                              (_%E126669126681%_))))
                      (_%E126669126681%_)))))
          (_%E126668126705%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126636%_)
        (let* ((_%e126637126644%_ _%stx126636%_)
               (_%E126639126648%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126637126644%_)))
               (_%E126638126662%_
                (lambda ()
                  (if (gx#stx-pair? _%e126637126644%_)
                      (let ((_%e126640126652%_
                             (gx#syntax-e _%e126637126644%_)))
                        (let ((_%hd126641126655%_ (##car _%e126640126652%_))
                              (_%tl126642126657%_ (##cdr _%e126640126652%_)))
                          (let ((_%body126660%_ _%tl126642126657%_))
                            (if '#t
                                (cons '%#export _%body126660%_)
                                (_%E126639126648%_)))))
                      (_%E126639126648%_)))))
          (_%E126638126662%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126606%_)
        (let* ((_%e126607126614%_ _%stx126606%_)
               (_%E126609126618%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126607126614%_)))
               (_%E126608126632%_
                (lambda ()
                  (if (gx#stx-pair? _%e126607126614%_)
                      (let ((_%e126610126622%_
                             (gx#syntax-e _%e126607126614%_)))
                        (let ((_%hd126611126625%_ (##car _%e126610126622%_))
                              (_%tl126612126627%_ (##cdr _%e126610126622%_)))
                          (let ((_%body126630%_ _%tl126612126627%_))
                            (if '#t
                                (cons '%#provide _%body126630%_)
                                (_%E126609126618%_)))))
                      (_%E126609126618%_)))))
          (_%E126608126632%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126576%_)
        (let* ((_%e126577126584%_ _%stx126576%_)
               (_%E126579126588%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126577126584%_)))
               (_%E126578126602%_
                (lambda ()
                  (if (gx#stx-pair? _%e126577126584%_)
                      (let ((_%e126580126592%_
                             (gx#syntax-e _%e126577126584%_)))
                        (let ((_%hd126581126595%_ (##car _%e126580126592%_))
                              (_%tl126582126597%_ (##cdr _%e126580126592%_)))
                          (let ((_%body126600%_ _%tl126582126597%_))
                            (if '#t
                                (cons '%#extern _%body126600%_)
                                (_%E126579126588%_)))))
                      (_%E126579126588%_)))))
          (_%E126578126602%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126522%_)
        (let* ((_%e126523126536%_ _%stx126522%_)
               (_%E126525126540%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126523126536%_)))
               (_%E126524126572%_
                (lambda ()
                  (if (gx#stx-pair? _%e126523126536%_)
                      (let ((_%e126526126544%_
                             (gx#syntax-e _%e126523126536%_)))
                        (let ((_%hd126527126547%_ (##car _%e126526126544%_))
                              (_%tl126528126549%_ (##cdr _%e126526126544%_)))
                          (if (gx#stx-pair? _%tl126528126549%_)
                              (let ((_%e126529126552%_
                                     (gx#syntax-e _%tl126528126549%_)))
                                (let ((_%hd126530126555%_
                                       (##car _%e126529126552%_))
                                      (_%tl126531126557%_
                                       (##cdr _%e126529126552%_)))
                                  (let ((_%hd126560%_ _%hd126530126555%_))
                                    (if (gx#stx-pair? _%tl126531126557%_)
                                        (let ((_%e126532126562%_
                                               (gx#syntax-e
                                                _%tl126531126557%_)))
                                          (let ((_%hd126533126565%_
                                                 (##car _%e126532126562%_))
                                                (_%tl126534126567%_
                                                 (##cdr _%e126532126562%_)))
                                            (let ((_%expr126570%_
                                                   _%hd126533126565%_))
                                              (if (gx#stx-null?
                                                   _%tl126534126567%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126560%_)
                          (cons (gx#core-compile-top-syntax _%expr126570%_)
                                '())))
              (_%E126525126540%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126525126540%_)))))
                                        (_%E126525126540%_)))))
                              (_%E126525126540%_))))
                      (_%E126525126540%_)))))
          (_%E126524126572%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx126467%_)
        (let* ((_%e126468126481%_ _%stx126467%_)
               (_%E126470126485%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126468126481%_)))
               (_%E126469126518%_
                (lambda ()
                  (if (gx#stx-pair? _%e126468126481%_)
                      (let ((_%e126471126489%_
                             (gx#syntax-e _%e126468126481%_)))
                        (let ((_%hd126472126492%_ (##car _%e126471126489%_))
                              (_%tl126473126494%_ (##cdr _%e126471126489%_)))
                          (if (gx#stx-pair? _%tl126473126494%_)
                              (let ((_%e126474126497%_
                                     (gx#syntax-e _%tl126473126494%_)))
                                (let ((_%hd126475126500%_
                                       (##car _%e126474126497%_))
                                      (_%tl126476126502%_
                                       (##cdr _%e126474126497%_)))
                                  (let ((_%hd126505%_ _%hd126475126500%_))
                                    (if (gx#stx-pair? _%tl126476126502%_)
                                        (let ((_%e126477126507%_
                                               (gx#syntax-e
                                                _%tl126476126502%_)))
                                          (let ((_%hd126478126510%_
                                                 (##car _%e126477126507%_))
                                                (_%tl126479126512%_
                                                 (##cdr _%e126477126507%_)))
                                            (let ((_%expr126515%_
                                                   _%hd126478126510%_))
                                              (if (gx#stx-null?
                                                   _%tl126479126512%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd126505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126515%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E126470126485%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126470126485%_)))))
                                        (_%E126470126485%_)))))
                              (_%E126470126485%_))))
                      (_%E126470126485%_)))))
          (_%E126469126518%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx126437%_)
        (let* ((_%e126438126445%_ _%stx126437%_)
               (_%E126440126449%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126438126445%_)))
               (_%E126439126463%_
                (lambda ()
                  (if (gx#stx-pair? _%e126438126445%_)
                      (let ((_%e126441126453%_
                             (gx#syntax-e _%e126438126445%_)))
                        (let ((_%hd126442126456%_ (##car _%e126441126453%_))
                              (_%tl126443126458%_ (##cdr _%e126441126453%_)))
                          (let ((_%body126461%_ _%tl126443126458%_))
                            (if '#t
                                (cons '%#define-alias _%body126461%_)
                                (_%E126440126449%_)))))
                      (_%E126440126449%_)))))
          (_%E126439126463%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx126407%_)
        (let* ((_%e126408126415%_ _%stx126407%_)
               (_%E126410126419%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126408126415%_)))
               (_%E126409126433%_
                (lambda ()
                  (if (gx#stx-pair? _%e126408126415%_)
                      (let ((_%e126411126423%_
                             (gx#syntax-e _%e126408126415%_)))
                        (let ((_%hd126412126426%_ (##car _%e126411126423%_))
                              (_%tl126413126428%_ (##cdr _%e126411126423%_)))
                          (let ((_%body126431%_ _%tl126413126428%_))
                            (if '#t
                                (cons '%#define-runtime _%body126431%_)
                                (_%E126410126419%_)))))
                      (_%E126410126419%_)))))
          (_%E126409126433%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx126377%_)
        (let* ((_%e126378126385%_ _%stx126377%_)
               (_%E126380126389%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126378126385%_)))
               (_%E126379126403%_
                (lambda ()
                  (if (gx#stx-pair? _%e126378126385%_)
                      (let ((_%e126381126393%_
                             (gx#syntax-e _%e126378126385%_)))
                        (let ((_%hd126382126396%_ (##car _%e126381126393%_))
                              (_%tl126383126398%_ (##cdr _%e126381126393%_)))
                          (let ((_%decls126401%_ _%tl126383126398%_))
                            (if '#t
                                (cons '%#declare _%decls126401%_)
                                (_%E126380126389%_)))))
                      (_%E126380126389%_)))))
          (_%E126379126403%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx126347%_)
        (let* ((_%e126348126355%_ _%stx126347%_)
               (_%E126350126359%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126348126355%_)))
               (_%E126349126373%_
                (lambda ()
                  (if (gx#stx-pair? _%e126348126355%_)
                      (let ((_%e126351126363%_
                             (gx#syntax-e _%e126348126355%_)))
                        (let ((_%hd126352126366%_ (##car _%e126351126363%_))
                              (_%tl126353126368%_ (##cdr _%e126351126363%_)))
                          (let ((_%clause126371%_ _%tl126353126368%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause126371%_))
                                (_%E126350126359%_)))))
                      (_%E126350126359%_)))))
          (_%E126349126373%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx126304%_)
        (let* ((_%e126305126315%_ _%stx126304%_)
               (_%E126307126319%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126305126315%_)))
               (_%E126306126343%_
                (lambda ()
                  (if (gx#stx-pair? _%e126305126315%_)
                      (let ((_%e126308126323%_
                             (gx#syntax-e _%e126305126315%_)))
                        (let ((_%hd126309126326%_ (##car _%e126308126323%_))
                              (_%tl126310126328%_ (##cdr _%e126308126323%_)))
                          (let ((_%hd126331%_ _%hd126309126326%_))
                            (if (gx#stx-pair? _%tl126310126328%_)
                                (let ((_%e126311126333%_
                                       (gx#syntax-e _%tl126310126328%_)))
                                  (let ((_%hd126312126336%_
                                         (##car _%e126311126333%_))
                                        (_%tl126313126338%_
                                         (##cdr _%e126311126333%_)))
                                    (let ((_%body126341%_ _%hd126312126336%_))
                                      (if (gx#stx-null? _%tl126313126338%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd126331%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body126341%_)
                                                          '()))
                                              (_%E126307126319%_))
                                          (_%E126307126319%_)))))
                                (_%E126307126319%_)))))
                      (_%E126307126319%_)))))
          (_%E126306126343%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx126274%_)
        (let* ((_%e126275126282%_ _%stx126274%_)
               (_%E126277126286%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126275126282%_)))
               (_%E126276126300%_
                (lambda ()
                  (if (gx#stx-pair? _%e126275126282%_)
                      (let ((_%e126278126290%_
                             (gx#syntax-e _%e126275126282%_)))
                        (let ((_%hd126279126293%_ (##car _%e126278126290%_))
                              (_%tl126280126295%_ (##cdr _%e126278126290%_)))
                          (let ((_%clauses126298%_ _%tl126280126295%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses126298%_))
                                (_%E126277126286%_)))))
                      (_%E126277126286%_)))))
          (_%E126276126300%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx126209%_ _%form126210%_)
        (let* ((_%e126211126224%_ _%stx126209%_)
               (_%E126213126228%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126211126224%_)))
               (_%E126212126260%_
                (lambda ()
                  (if (gx#stx-pair? _%e126211126224%_)
                      (let ((_%e126214126232%_
                             (gx#syntax-e _%e126211126224%_)))
                        (let ((_%hd126215126235%_ (##car _%e126214126232%_))
                              (_%tl126216126237%_ (##cdr _%e126214126232%_)))
                          (if (gx#stx-pair? _%tl126216126237%_)
                              (let ((_%e126217126240%_
                                     (gx#syntax-e _%tl126216126237%_)))
                                (let ((_%hd126218126243%_
                                       (##car _%e126217126240%_))
                                      (_%tl126219126245%_
                                       (##cdr _%e126217126240%_)))
                                  (let ((_%hd126248%_ _%hd126218126243%_))
                                    (if (gx#stx-pair? _%tl126219126245%_)
                                        (let ((_%e126220126250%_
                                               (gx#syntax-e
                                                _%tl126219126245%_)))
                                          (let ((_%hd126221126253%_
                                                 (##car _%e126220126250%_))
                                                (_%tl126222126255%_
                                                 (##cdr _%e126220126250%_)))
                                            (let ((_%body126258%_
                                                   _%hd126221126253%_))
                                              (if (gx#stx-null?
                                                   _%tl126222126255%_)
                                                  (if '#t
                                                      (cons _%form126210%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd126248%_)
                          (cons (gx#core-compile-top-syntax _%body126258%_)
                                '())))
              (_%E126213126228%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126213126228%_)))))
                                        (_%E126213126228%_)))))
                              (_%E126213126228%_))))
                      (_%E126213126228%_)))))
          (_%E126212126260%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx126267%_)
        (let ((_%form126269%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx126267%_ _%form126269%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g127094_
        (let ((_g127093_ (##length _g127094_)))
          (cond ((##fx= _g127093_ 1)
                 (apply (lambda (_%stx126267%_)
                          (gx#core-compile-top-let-values%__0 _%stx126267%_))
                        _g127094_))
                ((##fx= _g127093_ 2)
                 (apply (lambda (_%stx126271%_ _%form126272%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx126271%_
                           _%form126272%_))
                        _g127094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g127094_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx126206%_)
        (gx#core-compile-top-let-values%__% _%stx126206%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx126204%_)
        (gx#core-compile-top-let-values%__% _%stx126204%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx126163%_)
        (let* ((_%e126164126174%_ _%stx126163%_)
               (_%E126166126178%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126164126174%_)))
               (_%E126165126200%_
                (lambda ()
                  (if (gx#stx-pair? _%e126164126174%_)
                      (let ((_%e126167126182%_
                             (gx#syntax-e _%e126164126174%_)))
                        (let ((_%hd126168126185%_ (##car _%e126167126182%_))
                              (_%tl126169126187%_ (##cdr _%e126167126182%_)))
                          (if (gx#stx-pair? _%tl126169126187%_)
                              (let ((_%e126170126190%_
                                     (gx#syntax-e _%tl126169126187%_)))
                                (let ((_%hd126171126193%_
                                       (##car _%e126170126190%_))
                                      (_%tl126172126195%_
                                       (##cdr _%e126170126190%_)))
                                  (let ((_%e126198%_ _%hd126171126193%_))
                                    (if (gx#stx-null? _%tl126172126195%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e126198%_)
                                                        '()))
                                            (_%E126166126178%_))
                                        (_%E126166126178%_)))))
                              (_%E126166126178%_))))
                      (_%E126166126178%_)))))
          (_%E126165126200%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx126122%_)
        (let* ((_%e126123126133%_ _%stx126122%_)
               (_%E126125126137%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126123126133%_)))
               (_%E126124126159%_
                (lambda ()
                  (if (gx#stx-pair? _%e126123126133%_)
                      (let ((_%e126126126141%_
                             (gx#syntax-e _%e126123126133%_)))
                        (let ((_%hd126127126144%_ (##car _%e126126126141%_))
                              (_%tl126128126146%_ (##cdr _%e126126126141%_)))
                          (if (gx#stx-pair? _%tl126128126146%_)
                              (let ((_%e126129126149%_
                                     (gx#syntax-e _%tl126128126146%_)))
                                (let ((_%hd126130126152%_
                                       (##car _%e126129126149%_))
                                      (_%tl126131126154%_
                                       (##cdr _%e126129126149%_)))
                                  (let ((_%e126157%_ _%hd126130126152%_))
                                    (if (gx#stx-null? _%tl126131126154%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e126157%_)
                                                        '()))
                                            (_%E126125126137%_))
                                        (_%E126125126137%_)))))
                              (_%E126125126137%_))))
                      (_%E126125126137%_)))))
          (_%E126124126159%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx126079%_)
        (let* ((_%e126080126090%_ _%stx126079%_)
               (_%E126082126094%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126080126090%_)))
               (_%E126081126118%_
                (lambda ()
                  (if (gx#stx-pair? _%e126080126090%_)
                      (let ((_%e126083126098%_
                             (gx#syntax-e _%e126080126090%_)))
                        (let ((_%hd126084126101%_ (##car _%e126083126098%_))
                              (_%tl126085126103%_ (##cdr _%e126083126098%_)))
                          (if (gx#stx-pair? _%tl126085126103%_)
                              (let ((_%e126086126106%_
                                     (gx#syntax-e _%tl126085126103%_)))
                                (let ((_%hd126087126109%_
                                       (##car _%e126086126106%_))
                                      (_%tl126088126111%_
                                       (##cdr _%e126086126106%_)))
                                  (let* ((_%rator126114%_ _%hd126087126109%_)
                                         (_%args126116%_ _%tl126088126111%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator126114%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args126116%_)))
                                        (_%E126082126094%_)))))
                              (_%E126082126094%_))))
                      (_%E126082126094%_)))))
          (_%E126081126118%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx126012%_)
        (let* ((_%e126013126029%_ _%stx126012%_)
               (_%E126015126033%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126013126029%_)))
               (_%E126014126075%_
                (lambda ()
                  (if (gx#stx-pair? _%e126013126029%_)
                      (let ((_%e126016126037%_
                             (gx#syntax-e _%e126013126029%_)))
                        (let ((_%hd126017126040%_ (##car _%e126016126037%_))
                              (_%tl126018126042%_ (##cdr _%e126016126037%_)))
                          (if (gx#stx-pair? _%tl126018126042%_)
                              (let ((_%e126019126045%_
                                     (gx#syntax-e _%tl126018126042%_)))
                                (let ((_%hd126020126048%_
                                       (##car _%e126019126045%_))
                                      (_%tl126021126050%_
                                       (##cdr _%e126019126045%_)))
                                  (let ((_%test126053%_ _%hd126020126048%_))
                                    (if (gx#stx-pair? _%tl126021126050%_)
                                        (let ((_%e126022126055%_
                                               (gx#syntax-e
                                                _%tl126021126050%_)))
                                          (let ((_%hd126023126058%_
                                                 (##car _%e126022126055%_))
                                                (_%tl126024126060%_
                                                 (##cdr _%e126022126055%_)))
                                            (let ((_%K126063%_
                                                   _%hd126023126058%_))
                                              (if (gx#stx-pair?
                                                   _%tl126024126060%_)
                                                  (let ((_%e126025126065%_
                                                         (gx#syntax-e
                                                          _%tl126024126060%_)))
                                                    (let ((_%hd126026126068%_
                                                           (##car _%e126025126065%_))
                                                          (_%tl126027126070%_
                                                           (##cdr _%e126025126065%_)))
                                                      (let ((_%E126073%_
                                                             _%hd126026126068%_))
                                                        (if (gx#stx-null?
                                                             _%tl126027126070%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test126053%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K126063%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E126073%_)
                                                '()))))
                        (_%E126015126033%_))
                    (_%E126015126033%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126015126033%_)))))
                                        (_%E126015126033%_)))))
                              (_%E126015126033%_))))
                      (_%E126015126033%_)))))
          (_%E126014126075%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125971%_)
        (let* ((_%e125972125982%_ _%stx125971%_)
               (_%E125974125986%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125972125982%_)))
               (_%E125973126008%_
                (lambda ()
                  (if (gx#stx-pair? _%e125972125982%_)
                      (let ((_%e125975125990%_
                             (gx#syntax-e _%e125972125982%_)))
                        (let ((_%hd125976125993%_ (##car _%e125975125990%_))
                              (_%tl125977125995%_ (##cdr _%e125975125990%_)))
                          (if (gx#stx-pair? _%tl125977125995%_)
                              (let ((_%e125978125998%_
                                     (gx#syntax-e _%tl125977125995%_)))
                                (let ((_%hd125979126001%_
                                       (##car _%e125978125998%_))
                                      (_%tl125980126003%_
                                       (##cdr _%e125978125998%_)))
                                  (let ((_%id126006%_ _%hd125979126001%_))
                                    (if (gx#stx-null? _%tl125980126003%_)
                                        (if (gx#identifier? _%id126006%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id126006%_)
                                                        '()))
                                            (_%E125974125986%_))
                                        (_%E125974125986%_)))))
                              (_%E125974125986%_))))
                      (_%E125974125986%_)))))
          (_%E125973126008%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125917%_)
        (let* ((_%e125918125931%_ _%stx125917%_)
               (_%E125920125935%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125918125931%_)))
               (_%E125919125967%_
                (lambda ()
                  (if (gx#stx-pair? _%e125918125931%_)
                      (let ((_%e125921125939%_
                             (gx#syntax-e _%e125918125931%_)))
                        (let ((_%hd125922125942%_ (##car _%e125921125939%_))
                              (_%tl125923125944%_ (##cdr _%e125921125939%_)))
                          (if (gx#stx-pair? _%tl125923125944%_)
                              (let ((_%e125924125947%_
                                     (gx#syntax-e _%tl125923125944%_)))
                                (let ((_%hd125925125950%_
                                       (##car _%e125924125947%_))
                                      (_%tl125926125952%_
                                       (##cdr _%e125924125947%_)))
                                  (let ((_%id125955%_ _%hd125925125950%_))
                                    (if (gx#stx-pair? _%tl125926125952%_)
                                        (let ((_%e125927125957%_
                                               (gx#syntax-e
                                                _%tl125926125952%_)))
                                          (let ((_%hd125928125960%_
                                                 (##car _%e125927125957%_))
                                                (_%tl125929125962%_
                                                 (##cdr _%e125927125957%_)))
                                            (let ((_%expr125965%_
                                                   _%hd125928125960%_))
                                              (if (gx#stx-null?
                                                   _%tl125929125962%_)
                                                  (if (gx#identifier?
                                                       _%id125955%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125955%_)
                          (cons (gx#core-compile-top-syntax _%expr125965%_)
                                '())))
              (_%E125920125935%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125920125935%_)))))
                                        (_%E125920125935%_)))))
                              (_%E125920125935%_))))
                      (_%E125920125935%_)))))
          (_%E125919125967%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125911%_)
        (let ((_%$e125913%_ (gx#resolve-identifier__0 _%id125911%_)))
          (if _%$e125913%_
              (##unchecked-structure-ref _%$e125913%_ '1 '#f '#f)
              (let () _%id125911%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125909%_)
        (if (gx#identifier? _%hd125909%_)
            (gx#core-compile-top-runtime-ref _%hd125909%_)
            '#f)))))
