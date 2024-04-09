(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712696213)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx127088%_)
        (let* ((_%e127089127096%_ _%stx127088%_)
               (_%E127091127100%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127089127096%_)))
               (_%E127090127114%_
                (lambda ()
                  (if (gx#stx-pair? _%e127089127096%_)
                      (let ((_%e127092127104%_
                             (gx#syntax-e _%e127089127096%_)))
                        (let ((_%hd127093127107%_ (##car _%e127092127104%_))
                              (_%tl127094127109%_ (##cdr _%e127092127104%_)))
                          (let ((_%form127112%_ _%hd127093127107%_))
                            (if '#t
                                (let* ((__self127117
                                        (gx#syntax-local-e__0 _%form127112%_))
                                       (__method127118
                                        (__method-ref
                                         __self127117
                                         'compile-top-syntax)))
                                  (if __method127118
                                      (__method127118
                                       __self127117
                                       _%stx127088%_)
                                      (error '"Missing method"
                                             __self127117
                                             'compile-top-syntax)))
                                (_%E127091127100%_)))))
                      (_%E127091127100%_)))))
          (_%E127090127114%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127036%_ _%stx127037%_)
        (let ((_%self127040%_ _%self127036%_))
          (let* ((_%self127049127057%_ _%self127040%_)
                 (_%E127051127061%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self127049127057%_
                           '((core-expander _ _ K)))
                    '#!void))
                 (_%K127052127074%_
                  (lambda (_%K127064%_)
                    (let ((_%$e127066%_ (gx#stx-source _%stx127037%_)))
                      (if _%$e127066%_
                          ((lambda (_%g127068127070%_)
                             (gx#stx-wrap-source
                              (_%K127064%_ _%stx127037%_)
                              _%g127068127070%_))
                           _%$e127066%_)
                          (let () (_%K127064%_ _%stx127037%_)))))))
            (if '#t
                (let* ((_%e127053127077%_
                        (##unchecked-structure-ref
                         _%self127049127057%_
                         '1
                         '#f
                         '#f))
                       (_%e127054127080%_
                        (##unchecked-structure-ref
                         _%self127049127057%_
                         '2
                         '#f
                         '#f))
                       (_%e127055127083%_
                        (##unchecked-structure-ref
                         _%self127049127057%_
                         '3
                         '#f
                         '#f))
                       (_%K127086%_ _%e127055127083%_))
                  (_%K127052127074%_ _%K127086%_))
                (_%E127051127061%_))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126910%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126910%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126880%_)
        (let* ((_%e126881126888%_ _%stx126880%_)
               (_%E126883126892%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126881126888%_)))
               (_%E126882126906%_
                (lambda ()
                  (if (gx#stx-pair? _%e126881126888%_)
                      (let ((_%e126884126896%_
                             (gx#syntax-e _%e126881126888%_)))
                        (let ((_%hd126885126899%_ (##car _%e126884126896%_))
                              (_%tl126886126901%_ (##cdr _%e126884126896%_)))
                          (let ((_%body126904%_ _%tl126886126901%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126904%_))
                                (_%E126883126892%_)))))
                      (_%E126883126892%_)))))
          (_%E126882126906%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126849%_)
        (let* ((_%e126850126857%_ _%stx126849%_)
               (_%E126852126861%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126850126857%_)))
               (_%E126851126876%_
                (lambda ()
                  (if (gx#stx-pair? _%e126850126857%_)
                      (let ((_%e126853126865%_
                             (gx#syntax-e _%e126850126857%_)))
                        (let ((_%hd126854126868%_ (##car _%e126853126865%_))
                              (_%tl126855126870%_ (##cdr _%e126853126865%_)))
                          (let ((_%body126873%_ _%tl126855126870%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126873%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126852126861%_)))))
                      (_%E126852126861%_)))))
          (_%E126851126876%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126819%_)
        (let* ((_%e126820126827%_ _%stx126819%_)
               (_%E126822126831%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126820126827%_)))
               (_%E126821126845%_
                (lambda ()
                  (if (gx#stx-pair? _%e126820126827%_)
                      (let ((_%e126823126835%_
                             (gx#syntax-e _%e126820126827%_)))
                        (let ((_%hd126824126838%_ (##car _%e126823126835%_))
                              (_%tl126825126840%_ (##cdr _%e126823126835%_)))
                          (let ((_%body126843%_ _%tl126825126840%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126843%_)
                                (_%E126822126831%_)))))
                      (_%E126822126831%_)))))
          (_%E126821126845%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126765%_)
        (let* ((_%e126766126779%_ _%stx126765%_)
               (_%E126768126783%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126766126779%_)))
               (_%E126767126815%_
                (lambda ()
                  (if (gx#stx-pair? _%e126766126779%_)
                      (let ((_%e126769126787%_
                             (gx#syntax-e _%e126766126779%_)))
                        (let ((_%hd126770126790%_ (##car _%e126769126787%_))
                              (_%tl126771126792%_ (##cdr _%e126769126787%_)))
                          (if (gx#stx-pair? _%tl126771126792%_)
                              (let ((_%e126772126795%_
                                     (gx#syntax-e _%tl126771126792%_)))
                                (let ((_%hd126773126798%_
                                       (##car _%e126772126795%_))
                                      (_%tl126774126800%_
                                       (##cdr _%e126772126795%_)))
                                  (let ((_%ann126803%_ _%hd126773126798%_))
                                    (if (gx#stx-pair? _%tl126774126800%_)
                                        (let ((_%e126775126805%_
                                               (gx#syntax-e
                                                _%tl126774126800%_)))
                                          (let ((_%hd126776126808%_
                                                 (##car _%e126775126805%_))
                                                (_%tl126777126810%_
                                                 (##cdr _%e126775126805%_)))
                                            (let ((_%expr126813%_
                                                   _%hd126776126808%_))
                                              (if (gx#stx-null?
                                                   _%tl126777126810%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126813%_)
                                                      (_%E126768126783%_))
                                                  (_%E126768126783%_)))))
                                        (_%E126768126783%_)))))
                              (_%E126768126783%_))))
                      (_%E126768126783%_)))))
          (_%E126767126815%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126735%_)
        (let* ((_%e126736126743%_ _%stx126735%_)
               (_%E126738126747%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126736126743%_)))
               (_%E126737126761%_
                (lambda ()
                  (if (gx#stx-pair? _%e126736126743%_)
                      (let ((_%e126739126751%_
                             (gx#syntax-e _%e126736126743%_)))
                        (let ((_%hd126740126754%_ (##car _%e126739126751%_))
                              (_%tl126741126756%_ (##cdr _%e126739126751%_)))
                          (let ((_%body126759%_ _%tl126741126756%_))
                            (if '#t
                                (cons '%#import _%body126759%_)
                                (_%E126738126747%_)))))
                      (_%E126738126747%_)))))
          (_%E126737126761%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126692%_)
        (let* ((_%e126693126703%_ _%stx126692%_)
               (_%E126695126707%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126693126703%_)))
               (_%E126694126731%_
                (lambda ()
                  (if (gx#stx-pair? _%e126693126703%_)
                      (let ((_%e126696126711%_
                             (gx#syntax-e _%e126693126703%_)))
                        (let ((_%hd126697126714%_ (##car _%e126696126711%_))
                              (_%tl126698126716%_ (##cdr _%e126696126711%_)))
                          (if (gx#stx-pair? _%tl126698126716%_)
                              (let ((_%e126699126719%_
                                     (gx#syntax-e _%tl126698126716%_)))
                                (let ((_%hd126700126722%_
                                       (##car _%e126699126719%_))
                                      (_%tl126701126724%_
                                       (##cdr _%e126699126719%_)))
                                  (let* ((_%hd126727%_ _%hd126700126722%_)
                                         (_%body126729%_ _%tl126701126724%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126727%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126729%_)))
                                        (_%E126695126707%_)))))
                              (_%E126695126707%_))))
                      (_%E126695126707%_)))))
          (_%E126694126731%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126662%_)
        (let* ((_%e126663126670%_ _%stx126662%_)
               (_%E126665126674%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126663126670%_)))
               (_%E126664126688%_
                (lambda ()
                  (if (gx#stx-pair? _%e126663126670%_)
                      (let ((_%e126666126678%_
                             (gx#syntax-e _%e126663126670%_)))
                        (let ((_%hd126667126681%_ (##car _%e126666126678%_))
                              (_%tl126668126683%_ (##cdr _%e126666126678%_)))
                          (let ((_%body126686%_ _%tl126668126683%_))
                            (if '#t
                                (cons '%#export _%body126686%_)
                                (_%E126665126674%_)))))
                      (_%E126665126674%_)))))
          (_%E126664126688%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126632%_)
        (let* ((_%e126633126640%_ _%stx126632%_)
               (_%E126635126644%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126633126640%_)))
               (_%E126634126658%_
                (lambda ()
                  (if (gx#stx-pair? _%e126633126640%_)
                      (let ((_%e126636126648%_
                             (gx#syntax-e _%e126633126640%_)))
                        (let ((_%hd126637126651%_ (##car _%e126636126648%_))
                              (_%tl126638126653%_ (##cdr _%e126636126648%_)))
                          (let ((_%body126656%_ _%tl126638126653%_))
                            (if '#t
                                (cons '%#provide _%body126656%_)
                                (_%E126635126644%_)))))
                      (_%E126635126644%_)))))
          (_%E126634126658%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126602%_)
        (let* ((_%e126603126610%_ _%stx126602%_)
               (_%E126605126614%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126603126610%_)))
               (_%E126604126628%_
                (lambda ()
                  (if (gx#stx-pair? _%e126603126610%_)
                      (let ((_%e126606126618%_
                             (gx#syntax-e _%e126603126610%_)))
                        (let ((_%hd126607126621%_ (##car _%e126606126618%_))
                              (_%tl126608126623%_ (##cdr _%e126606126618%_)))
                          (let ((_%body126626%_ _%tl126608126623%_))
                            (if '#t
                                (cons '%#extern _%body126626%_)
                                (_%E126605126614%_)))))
                      (_%E126605126614%_)))))
          (_%E126604126628%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126548%_)
        (let* ((_%e126549126562%_ _%stx126548%_)
               (_%E126551126566%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126549126562%_)))
               (_%E126550126598%_
                (lambda ()
                  (if (gx#stx-pair? _%e126549126562%_)
                      (let ((_%e126552126570%_
                             (gx#syntax-e _%e126549126562%_)))
                        (let ((_%hd126553126573%_ (##car _%e126552126570%_))
                              (_%tl126554126575%_ (##cdr _%e126552126570%_)))
                          (if (gx#stx-pair? _%tl126554126575%_)
                              (let ((_%e126555126578%_
                                     (gx#syntax-e _%tl126554126575%_)))
                                (let ((_%hd126556126581%_
                                       (##car _%e126555126578%_))
                                      (_%tl126557126583%_
                                       (##cdr _%e126555126578%_)))
                                  (let ((_%hd126586%_ _%hd126556126581%_))
                                    (if (gx#stx-pair? _%tl126557126583%_)
                                        (let ((_%e126558126588%_
                                               (gx#syntax-e
                                                _%tl126557126583%_)))
                                          (let ((_%hd126559126591%_
                                                 (##car _%e126558126588%_))
                                                (_%tl126560126593%_
                                                 (##cdr _%e126558126588%_)))
                                            (let ((_%expr126596%_
                                                   _%hd126559126591%_))
                                              (if (gx#stx-null?
                                                   _%tl126560126593%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126586%_)
                          (cons (gx#core-compile-top-syntax _%expr126596%_)
                                '())))
              (_%E126551126566%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126551126566%_)))))
                                        (_%E126551126566%_)))))
                              (_%E126551126566%_))))
                      (_%E126551126566%_)))))
          (_%E126550126598%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx126493%_)
        (let* ((_%e126494126507%_ _%stx126493%_)
               (_%E126496126511%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126494126507%_)))
               (_%E126495126544%_
                (lambda ()
                  (if (gx#stx-pair? _%e126494126507%_)
                      (let ((_%e126497126515%_
                             (gx#syntax-e _%e126494126507%_)))
                        (let ((_%hd126498126518%_ (##car _%e126497126515%_))
                              (_%tl126499126520%_ (##cdr _%e126497126515%_)))
                          (if (gx#stx-pair? _%tl126499126520%_)
                              (let ((_%e126500126523%_
                                     (gx#syntax-e _%tl126499126520%_)))
                                (let ((_%hd126501126526%_
                                       (##car _%e126500126523%_))
                                      (_%tl126502126528%_
                                       (##cdr _%e126500126523%_)))
                                  (let ((_%hd126531%_ _%hd126501126526%_))
                                    (if (gx#stx-pair? _%tl126502126528%_)
                                        (let ((_%e126503126533%_
                                               (gx#syntax-e
                                                _%tl126502126528%_)))
                                          (let ((_%hd126504126536%_
                                                 (##car _%e126503126533%_))
                                                (_%tl126505126538%_
                                                 (##cdr _%e126503126533%_)))
                                            (let ((_%expr126541%_
                                                   _%hd126504126536%_))
                                              (if (gx#stx-null?
                                                   _%tl126505126538%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd126531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126541%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E126496126511%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126496126511%_)))))
                                        (_%E126496126511%_)))))
                              (_%E126496126511%_))))
                      (_%E126496126511%_)))))
          (_%E126495126544%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx126463%_)
        (let* ((_%e126464126471%_ _%stx126463%_)
               (_%E126466126475%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126464126471%_)))
               (_%E126465126489%_
                (lambda ()
                  (if (gx#stx-pair? _%e126464126471%_)
                      (let ((_%e126467126479%_
                             (gx#syntax-e _%e126464126471%_)))
                        (let ((_%hd126468126482%_ (##car _%e126467126479%_))
                              (_%tl126469126484%_ (##cdr _%e126467126479%_)))
                          (let ((_%body126487%_ _%tl126469126484%_))
                            (if '#t
                                (cons '%#define-alias _%body126487%_)
                                (_%E126466126475%_)))))
                      (_%E126466126475%_)))))
          (_%E126465126489%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx126433%_)
        (let* ((_%e126434126441%_ _%stx126433%_)
               (_%E126436126445%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126434126441%_)))
               (_%E126435126459%_
                (lambda ()
                  (if (gx#stx-pair? _%e126434126441%_)
                      (let ((_%e126437126449%_
                             (gx#syntax-e _%e126434126441%_)))
                        (let ((_%hd126438126452%_ (##car _%e126437126449%_))
                              (_%tl126439126454%_ (##cdr _%e126437126449%_)))
                          (let ((_%body126457%_ _%tl126439126454%_))
                            (if '#t
                                (cons '%#define-runtime _%body126457%_)
                                (_%E126436126445%_)))))
                      (_%E126436126445%_)))))
          (_%E126435126459%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx126403%_)
        (let* ((_%e126404126411%_ _%stx126403%_)
               (_%E126406126415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126404126411%_)))
               (_%E126405126429%_
                (lambda ()
                  (if (gx#stx-pair? _%e126404126411%_)
                      (let ((_%e126407126419%_
                             (gx#syntax-e _%e126404126411%_)))
                        (let ((_%hd126408126422%_ (##car _%e126407126419%_))
                              (_%tl126409126424%_ (##cdr _%e126407126419%_)))
                          (let ((_%decls126427%_ _%tl126409126424%_))
                            (if '#t
                                (cons '%#declare _%decls126427%_)
                                (_%E126406126415%_)))))
                      (_%E126406126415%_)))))
          (_%E126405126429%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx126373%_)
        (let* ((_%e126374126381%_ _%stx126373%_)
               (_%E126376126385%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126374126381%_)))
               (_%E126375126399%_
                (lambda ()
                  (if (gx#stx-pair? _%e126374126381%_)
                      (let ((_%e126377126389%_
                             (gx#syntax-e _%e126374126381%_)))
                        (let ((_%hd126378126392%_ (##car _%e126377126389%_))
                              (_%tl126379126394%_ (##cdr _%e126377126389%_)))
                          (let ((_%clause126397%_ _%tl126379126394%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause126397%_))
                                (_%E126376126385%_)))))
                      (_%E126376126385%_)))))
          (_%E126375126399%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx126330%_)
        (let* ((_%e126331126341%_ _%stx126330%_)
               (_%E126333126345%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126331126341%_)))
               (_%E126332126369%_
                (lambda ()
                  (if (gx#stx-pair? _%e126331126341%_)
                      (let ((_%e126334126349%_
                             (gx#syntax-e _%e126331126341%_)))
                        (let ((_%hd126335126352%_ (##car _%e126334126349%_))
                              (_%tl126336126354%_ (##cdr _%e126334126349%_)))
                          (let ((_%hd126357%_ _%hd126335126352%_))
                            (if (gx#stx-pair? _%tl126336126354%_)
                                (let ((_%e126337126359%_
                                       (gx#syntax-e _%tl126336126354%_)))
                                  (let ((_%hd126338126362%_
                                         (##car _%e126337126359%_))
                                        (_%tl126339126364%_
                                         (##cdr _%e126337126359%_)))
                                    (let ((_%body126367%_ _%hd126338126362%_))
                                      (if (gx#stx-null? _%tl126339126364%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd126357%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body126367%_)
                                                          '()))
                                              (_%E126333126345%_))
                                          (_%E126333126345%_)))))
                                (_%E126333126345%_)))))
                      (_%E126333126345%_)))))
          (_%E126332126369%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx126300%_)
        (let* ((_%e126301126308%_ _%stx126300%_)
               (_%E126303126312%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126301126308%_)))
               (_%E126302126326%_
                (lambda ()
                  (if (gx#stx-pair? _%e126301126308%_)
                      (let ((_%e126304126316%_
                             (gx#syntax-e _%e126301126308%_)))
                        (let ((_%hd126305126319%_ (##car _%e126304126316%_))
                              (_%tl126306126321%_ (##cdr _%e126304126316%_)))
                          (let ((_%clauses126324%_ _%tl126306126321%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses126324%_))
                                (_%E126303126312%_)))))
                      (_%E126303126312%_)))))
          (_%E126302126326%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx126235%_ _%form126236%_)
        (let* ((_%e126237126250%_ _%stx126235%_)
               (_%E126239126254%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126237126250%_)))
               (_%E126238126286%_
                (lambda ()
                  (if (gx#stx-pair? _%e126237126250%_)
                      (let ((_%e126240126258%_
                             (gx#syntax-e _%e126237126250%_)))
                        (let ((_%hd126241126261%_ (##car _%e126240126258%_))
                              (_%tl126242126263%_ (##cdr _%e126240126258%_)))
                          (if (gx#stx-pair? _%tl126242126263%_)
                              (let ((_%e126243126266%_
                                     (gx#syntax-e _%tl126242126263%_)))
                                (let ((_%hd126244126269%_
                                       (##car _%e126243126266%_))
                                      (_%tl126245126271%_
                                       (##cdr _%e126243126266%_)))
                                  (let ((_%hd126274%_ _%hd126244126269%_))
                                    (if (gx#stx-pair? _%tl126245126271%_)
                                        (let ((_%e126246126276%_
                                               (gx#syntax-e
                                                _%tl126245126271%_)))
                                          (let ((_%hd126247126279%_
                                                 (##car _%e126246126276%_))
                                                (_%tl126248126281%_
                                                 (##cdr _%e126246126276%_)))
                                            (let ((_%body126284%_
                                                   _%hd126247126279%_))
                                              (if (gx#stx-null?
                                                   _%tl126248126281%_)
                                                  (if '#t
                                                      (cons _%form126236%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd126274%_)
                          (cons (gx#core-compile-top-syntax _%body126284%_)
                                '())))
              (_%E126239126254%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126239126254%_)))))
                                        (_%E126239126254%_)))))
                              (_%E126239126254%_))))
                      (_%E126239126254%_)))))
          (_%E126238126286%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx126293%_)
        (let ((_%form126295%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx126293%_ _%form126295%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g127120_
        (let ((_g127119_ (##length _g127120_)))
          (cond ((##fx= _g127119_ 1)
                 (apply (lambda (_%stx126293%_)
                          (gx#core-compile-top-let-values%__0 _%stx126293%_))
                        _g127120_))
                ((##fx= _g127119_ 2)
                 (apply (lambda (_%stx126297%_ _%form126298%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx126297%_
                           _%form126298%_))
                        _g127120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g127120_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx126232%_)
        (gx#core-compile-top-let-values%__% _%stx126232%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx126230%_)
        (gx#core-compile-top-let-values%__% _%stx126230%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx126189%_)
        (let* ((_%e126190126200%_ _%stx126189%_)
               (_%E126192126204%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126190126200%_)))
               (_%E126191126226%_
                (lambda ()
                  (if (gx#stx-pair? _%e126190126200%_)
                      (let ((_%e126193126208%_
                             (gx#syntax-e _%e126190126200%_)))
                        (let ((_%hd126194126211%_ (##car _%e126193126208%_))
                              (_%tl126195126213%_ (##cdr _%e126193126208%_)))
                          (if (gx#stx-pair? _%tl126195126213%_)
                              (let ((_%e126196126216%_
                                     (gx#syntax-e _%tl126195126213%_)))
                                (let ((_%hd126197126219%_
                                       (##car _%e126196126216%_))
                                      (_%tl126198126221%_
                                       (##cdr _%e126196126216%_)))
                                  (let ((_%e126224%_ _%hd126197126219%_))
                                    (if (gx#stx-null? _%tl126198126221%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e126224%_)
                                                        '()))
                                            (_%E126192126204%_))
                                        (_%E126192126204%_)))))
                              (_%E126192126204%_))))
                      (_%E126192126204%_)))))
          (_%E126191126226%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx126148%_)
        (let* ((_%e126149126159%_ _%stx126148%_)
               (_%E126151126163%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126149126159%_)))
               (_%E126150126185%_
                (lambda ()
                  (if (gx#stx-pair? _%e126149126159%_)
                      (let ((_%e126152126167%_
                             (gx#syntax-e _%e126149126159%_)))
                        (let ((_%hd126153126170%_ (##car _%e126152126167%_))
                              (_%tl126154126172%_ (##cdr _%e126152126167%_)))
                          (if (gx#stx-pair? _%tl126154126172%_)
                              (let ((_%e126155126175%_
                                     (gx#syntax-e _%tl126154126172%_)))
                                (let ((_%hd126156126178%_
                                       (##car _%e126155126175%_))
                                      (_%tl126157126180%_
                                       (##cdr _%e126155126175%_)))
                                  (let ((_%e126183%_ _%hd126156126178%_))
                                    (if (gx#stx-null? _%tl126157126180%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e126183%_)
                                                        '()))
                                            (_%E126151126163%_))
                                        (_%E126151126163%_)))))
                              (_%E126151126163%_))))
                      (_%E126151126163%_)))))
          (_%E126150126185%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx126105%_)
        (let* ((_%e126106126116%_ _%stx126105%_)
               (_%E126108126120%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126106126116%_)))
               (_%E126107126144%_
                (lambda ()
                  (if (gx#stx-pair? _%e126106126116%_)
                      (let ((_%e126109126124%_
                             (gx#syntax-e _%e126106126116%_)))
                        (let ((_%hd126110126127%_ (##car _%e126109126124%_))
                              (_%tl126111126129%_ (##cdr _%e126109126124%_)))
                          (if (gx#stx-pair? _%tl126111126129%_)
                              (let ((_%e126112126132%_
                                     (gx#syntax-e _%tl126111126129%_)))
                                (let ((_%hd126113126135%_
                                       (##car _%e126112126132%_))
                                      (_%tl126114126137%_
                                       (##cdr _%e126112126132%_)))
                                  (let* ((_%rator126140%_ _%hd126113126135%_)
                                         (_%args126142%_ _%tl126114126137%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator126140%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args126142%_)))
                                        (_%E126108126120%_)))))
                              (_%E126108126120%_))))
                      (_%E126108126120%_)))))
          (_%E126107126144%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx126038%_)
        (let* ((_%e126039126055%_ _%stx126038%_)
               (_%E126041126059%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126039126055%_)))
               (_%E126040126101%_
                (lambda ()
                  (if (gx#stx-pair? _%e126039126055%_)
                      (let ((_%e126042126063%_
                             (gx#syntax-e _%e126039126055%_)))
                        (let ((_%hd126043126066%_ (##car _%e126042126063%_))
                              (_%tl126044126068%_ (##cdr _%e126042126063%_)))
                          (if (gx#stx-pair? _%tl126044126068%_)
                              (let ((_%e126045126071%_
                                     (gx#syntax-e _%tl126044126068%_)))
                                (let ((_%hd126046126074%_
                                       (##car _%e126045126071%_))
                                      (_%tl126047126076%_
                                       (##cdr _%e126045126071%_)))
                                  (let ((_%test126079%_ _%hd126046126074%_))
                                    (if (gx#stx-pair? _%tl126047126076%_)
                                        (let ((_%e126048126081%_
                                               (gx#syntax-e
                                                _%tl126047126076%_)))
                                          (let ((_%hd126049126084%_
                                                 (##car _%e126048126081%_))
                                                (_%tl126050126086%_
                                                 (##cdr _%e126048126081%_)))
                                            (let ((_%K126089%_
                                                   _%hd126049126084%_))
                                              (if (gx#stx-pair?
                                                   _%tl126050126086%_)
                                                  (let ((_%e126051126091%_
                                                         (gx#syntax-e
                                                          _%tl126050126086%_)))
                                                    (let ((_%hd126052126094%_
                                                           (##car _%e126051126091%_))
                                                          (_%tl126053126096%_
                                                           (##cdr _%e126051126091%_)))
                                                      (let ((_%E126099%_
                                                             _%hd126052126094%_))
                                                        (if (gx#stx-null?
                                                             _%tl126053126096%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test126079%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K126089%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E126099%_)
                                                '()))))
                        (_%E126041126059%_))
                    (_%E126041126059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126041126059%_)))))
                                        (_%E126041126059%_)))))
                              (_%E126041126059%_))))
                      (_%E126041126059%_)))))
          (_%E126040126101%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx125997%_)
        (let* ((_%e125998126008%_ _%stx125997%_)
               (_%E126000126012%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125998126008%_)))
               (_%E125999126034%_
                (lambda ()
                  (if (gx#stx-pair? _%e125998126008%_)
                      (let ((_%e126001126016%_
                             (gx#syntax-e _%e125998126008%_)))
                        (let ((_%hd126002126019%_ (##car _%e126001126016%_))
                              (_%tl126003126021%_ (##cdr _%e126001126016%_)))
                          (if (gx#stx-pair? _%tl126003126021%_)
                              (let ((_%e126004126024%_
                                     (gx#syntax-e _%tl126003126021%_)))
                                (let ((_%hd126005126027%_
                                       (##car _%e126004126024%_))
                                      (_%tl126006126029%_
                                       (##cdr _%e126004126024%_)))
                                  (let ((_%id126032%_ _%hd126005126027%_))
                                    (if (gx#stx-null? _%tl126006126029%_)
                                        (if (gx#identifier? _%id126032%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id126032%_)
                                                        '()))
                                            (_%E126000126012%_))
                                        (_%E126000126012%_)))))
                              (_%E126000126012%_))))
                      (_%E126000126012%_)))))
          (_%E125999126034%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125943%_)
        (let* ((_%e125944125957%_ _%stx125943%_)
               (_%E125946125961%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125944125957%_)))
               (_%E125945125993%_
                (lambda ()
                  (if (gx#stx-pair? _%e125944125957%_)
                      (let ((_%e125947125965%_
                             (gx#syntax-e _%e125944125957%_)))
                        (let ((_%hd125948125968%_ (##car _%e125947125965%_))
                              (_%tl125949125970%_ (##cdr _%e125947125965%_)))
                          (if (gx#stx-pair? _%tl125949125970%_)
                              (let ((_%e125950125973%_
                                     (gx#syntax-e _%tl125949125970%_)))
                                (let ((_%hd125951125976%_
                                       (##car _%e125950125973%_))
                                      (_%tl125952125978%_
                                       (##cdr _%e125950125973%_)))
                                  (let ((_%id125981%_ _%hd125951125976%_))
                                    (if (gx#stx-pair? _%tl125952125978%_)
                                        (let ((_%e125953125983%_
                                               (gx#syntax-e
                                                _%tl125952125978%_)))
                                          (let ((_%hd125954125986%_
                                                 (##car _%e125953125983%_))
                                                (_%tl125955125988%_
                                                 (##cdr _%e125953125983%_)))
                                            (let ((_%expr125991%_
                                                   _%hd125954125986%_))
                                              (if (gx#stx-null?
                                                   _%tl125955125988%_)
                                                  (if (gx#identifier?
                                                       _%id125981%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id125981%_)
                          (cons (gx#core-compile-top-syntax _%expr125991%_)
                                '())))
              (_%E125946125961%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125946125961%_)))))
                                        (_%E125946125961%_)))))
                              (_%E125946125961%_))))
                      (_%E125946125961%_)))))
          (_%E125945125993%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125937%_)
        (let ((_%$e125939%_ (gx#resolve-identifier__0 _%id125937%_)))
          (if _%$e125939%_
              (##unchecked-structure-ref _%$e125939%_ '1 '#f '#f)
              (let () _%id125937%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125935%_)
        (if (gx#identifier? _%hd125935%_)
            (gx#core-compile-top-runtime-ref _%hd125935%_)
            '#f)))))
