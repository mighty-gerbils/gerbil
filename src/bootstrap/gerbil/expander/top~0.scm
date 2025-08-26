(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1756224515)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx133408%_)
        (letrec ((_%expand-special133410%_
                  (lambda (_%hd133412%_ _%K133413%_ _%rest133414%_ _%r133415%_)
                    (_%K133413%_
                     _%rest133414%_
                     (cons (gx#core-expand-top _%hd133412%_) _%r133415%_)))))
          (gx#core-expand-block__0 _%stx133408%_ _%expand-special133410%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx133161%_)
        (letrec ((_%expand-special133163%_
                  (lambda (_%hd133283%_ _%K133284%_ _%rest133285%_ _%r133286%_)
                    (let* ((_%K133290%_
                            (lambda (_%e133288%_)
                              (_%K133284%_
                               _%rest133285%_
                               (cons _%e133288%_ _%r133286%_))))
                           (_%e133291133320%_ _%hd133283%_)
                           (_%E133315133324%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e133291133320%_)))
                           (_%E133311133336%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133291133320%_)
                                  (let ((_%e133316133328%_
                                         (gx#syntax-e _%e133291133320%_)))
                                    (let ((_%hd133317133331%_
                                           (##car _%e133316133328%_))
                                          (_%tl133318133333%_
                                           (##cdr _%e133316133328%_)))
                                      (if (and (gx#identifier?
                                                _%hd133317133331%_)
                                               (gx#core-identifier=?
                                                _%hd133317133331%_
                                                '%#define-runtime))
                                          (_%K133290%_
                                           (gx#core-expand-define-runtime%
                                            _%hd133283%_))
                                          (_%E133315133324%_))))
                                  (_%E133315133324%_))))
                           (_%E133307133348%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133291133320%_)
                                  (let ((_%e133312133340%_
                                         (gx#syntax-e _%e133291133320%_)))
                                    (let ((_%hd133313133343%_
                                           (##car _%e133312133340%_))
                                          (_%tl133314133345%_
                                           (##cdr _%e133312133340%_)))
                                      (if (and (gx#identifier?
                                                _%hd133313133343%_)
                                               (gx#core-identifier=?
                                                _%hd133313133343%_
                                                '%#define-alias))
                                          (_%K133290%_
                                           (gx#core-expand-define-alias%
                                            _%hd133283%_))
                                          (_%E133311133336%_))))
                                  (_%E133311133336%_))))
                           (_%E133297133360%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133291133320%_)
                                  (let ((_%e133308133352%_
                                         (gx#syntax-e _%e133291133320%_)))
                                    (let ((_%hd133309133355%_
                                           (##car _%e133308133352%_))
                                          (_%tl133310133357%_
                                           (##cdr _%e133308133352%_)))
                                      (if (and (gx#identifier?
                                                _%hd133309133355%_)
                                               (gx#core-identifier=?
                                                _%hd133309133355%_
                                                '%#define-syntax))
                                          (_%K133290%_
                                           (gx#core-expand-define-syntax%
                                            _%hd133283%_))
                                          (_%E133307133348%_))))
                                  (_%E133307133348%_))))
                           (_%E133293133392%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133291133320%_)
                                  (let ((_%e133298133364%_
                                         (gx#syntax-e _%e133291133320%_)))
                                    (let ((_%hd133299133367%_
                                           (##car _%e133298133364%_))
                                          (_%tl133300133369%_
                                           (##cdr _%e133298133364%_)))
                                      (if (and (gx#identifier?
                                                _%hd133299133367%_)
                                               (gx#core-identifier=?
                                                _%hd133299133367%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl133300133369%_)
                                              (let ((_%e133301133372%_
                                                     (gx#syntax-e
                                                      _%tl133300133369%_)))
                                                (let ((_%hd133302133375%_
                                                       (##car _%e133301133372%_))
                                                      (_%tl133303133377%_
                                                       (##cdr _%e133301133372%_)))
                                                  (let ((_%hd-bind133380%_
                                                         _%hd133302133375%_))
                                                    (if (gx#stx-pair?
                                                         _%tl133303133377%_)
                                                        (let ((_%e133304133382%_
                                                               (gx#syntax-e
                                                                _%tl133303133377%_)))
                                                          (let ((_%hd133305133385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e133304133382%_))
                        (_%tl133306133387%_ (##cdr _%e133304133382%_)))
                    (let ((_%expr133390%_ _%hd133305133385%_))
                      (if (gx#stx-null? _%tl133306133387%_)
                          (if (gx#core-bind-values? _%hd-bind133380%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind133380%_)
                                (_%K133290%_ _%hd133283%_))
                              (_%E133297133360%_))
                          (_%E133297133360%_)))))
                (_%E133297133360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133297133360%_))
                                          (_%E133297133360%_))))
                                  (_%E133297133360%_))))
                           (_%E133292133404%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133291133320%_)
                                  (let ((_%e133294133396%_
                                         (gx#syntax-e _%e133291133320%_)))
                                    (let ((_%hd133295133399%_
                                           (##car _%e133294133396%_))
                                          (_%tl133296133401%_
                                           (##cdr _%e133294133396%_)))
                                      (if (and (gx#identifier?
                                                _%hd133295133399%_)
                                               (gx#core-identifier=?
                                                _%hd133295133399%_
                                                '%#begin-syntax))
                                          (_%K133290%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd133283%_))
                                          (_%E133293133392%_))))
                                  (_%E133293133392%_)))))
                      (_%E133292133404%_))))
                 (_%eval-body133164%_
                  (lambda (_%rbody133172%_)
                    (let _%lp133174%_ ((_%rest133176%_ _%rbody133172%_)
                                       (_%body133177%_ '())
                                       (_%ebody133178%_ '()))
                      (let* ((_%rest133179133187%_ _%rest133176%_)
                             (_%else133181133195%_
                              (lambda ()
                                (values _%body133177%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody133178%_)
                                          (gx#stx-source _%stx133161%_))))))
                             (_%K133183133271%_
                              (lambda (_%rest133198%_ _%hd133199%_)
                                (let* ((_%e133200133217%_ _%hd133199%_)
                                       (_%E133212133221%_
                                        (lambda ()
                                          (_%lp133174%_
                                           _%rest133198%_
                                           (cons _%hd133199%_ _%body133177%_)
                                           (cons _%hd133199%_
                                                 _%ebody133178%_))))
                                       (_%E133202133233%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133200133217%_)
                                              (let ((_%e133213133225%_
                                                     (gx#syntax-e
                                                      _%e133200133217%_)))
                                                (let ((_%hd133214133228%_
                                                       (##car _%e133213133225%_))
                                                      (_%tl133215133230%_
                                                       (##cdr _%e133213133225%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd133214133228%_)
                                                           (gx#core-identifier=?
                                                            _%hd133214133228%_
                                                            '%#begin-syntax))
                                                      (_%lp133174%_
                                                       _%rest133198%_
                                                       (cons _%hd133199%_
                                                             _%body133177%_)
                                                       _%ebody133178%_)
                                                      (_%E133212133221%_))))
                                              (_%E133212133221%_))))
                                       (_%E133201133267%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133200133217%_)
                                              (let ((_%e133203133237%_
                                                     (gx#syntax-e
                                                      _%e133200133217%_)))
                                                (let ((_%hd133204133240%_
                                                       (##car _%e133203133237%_))
                                                      (_%tl133205133242%_
                                                       (##cdr _%e133203133237%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd133204133240%_)
                                                           (gx#core-identifier=?
                                                            _%hd133204133240%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl133205133242%_)
                                                          (let ((_%e133206133245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl133205133242%_)))
                    (let ((_%hd133207133248%_ (##car _%e133206133245%_))
                          (_%tl133208133250%_ (##cdr _%e133206133245%_)))
                      (let ((_%hd-bind133253%_ _%hd133207133248%_))
                        (if (gx#stx-pair? _%tl133208133250%_)
                            (let ((_%e133209133255%_
                                   (gx#syntax-e _%tl133208133250%_)))
                              (let ((_%hd133210133258%_
                                     (##car _%e133209133255%_))
                                    (_%tl133211133260%_
                                     (##cdr _%e133209133255%_)))
                                (let ((_%expr133263%_ _%hd133210133258%_))
                                  (if (gx#stx-null? _%tl133211133260%_)
                                      (let ((_%ehd133265%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind133253%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr133263%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd133199%_))))
                                        (_%lp133174%_
                                         _%rest133198%_
                                         (cons _%ehd133265%_ _%body133177%_)
                                         (cons _%ehd133265%_ _%ebody133178%_)))
                                      (_%E133202133233%_)))))
                            (_%E133202133233%_)))))
                  (_%E133202133233%_))
              (_%E133202133233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133202133233%_)))))
                                  (_%E133201133267%_)))))
                        (if (pair? _%rest133179133187%_)
                            (let ((_%hd133184133274%_
                                   (##car _%rest133179133187%_))
                                  (_%tl133185133276%_
                                   (##cdr _%rest133179133187%_)))
                              (let* ((_%hd133279%_ _%hd133184133274%_)
                                     (_%rest133281%_ _%tl133185133276%_))
                                (_%K133183133271%_
                                 _%rest133281%_
                                 _%hd133279%_)))
                            (_%else133181133195%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody133167%_
                     (gx#core-expand-block__1
                      _%stx133161%_
                      _%expand-special133163%_
                      '#f))
                    (_g133431_ (_%eval-body133164%_ _%rbody133167%_)))
               (begin
                 (let ((_g133432_
                        (if (##values? _g133431_)
                            (##values-length _g133431_)
                            1)))
                   (if (not (##fx= _g133432_ 2))
                       (error "Context expects 2 values" _g133432_)))
                 (let ((_%expanded-body133169%_ (##values-ref _g133431_ 0))
                       (_%value133170%_ (##values-ref _g133431_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body133169%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value133170%_ '())))
                    (gx#stx-source _%stx133161%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx133131%_)
        (let* ((_%e133132133139%_ _%stx133131%_)
               (_%E133134133143%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133132133139%_)))
               (_%E133133133157%_
                (lambda ()
                  (if (gx#stx-pair? _%e133132133139%_)
                      (let ((_%e133135133147%_
                             (gx#syntax-e _%e133132133139%_)))
                        (let ((_%hd133136133150%_ (##car _%e133135133147%_))
                              (_%tl133137133152%_ (##cdr _%e133135133147%_)))
                          (let ((_%body133155%_ _%tl133137133152%_))
                            (if (gx#stx-list? _%body133155%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body133155%_)
                                 (gx#stx-source _%stx133131%_))
                                (_%E133134133143%_)))))
                      (_%E133134133143%_)))))
          (_%E133133133157%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx133129%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx133129%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx133075%_)
        (let* ((_%e133076133089%_ _%stx133075%_)
               (_%E133078133093%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133076133089%_)))
               (_%E133077133125%_
                (lambda ()
                  (if (gx#stx-pair? _%e133076133089%_)
                      (let ((_%e133079133097%_
                             (gx#syntax-e _%e133076133089%_)))
                        (let ((_%hd133080133100%_ (##car _%e133079133097%_))
                              (_%tl133081133102%_ (##cdr _%e133079133097%_)))
                          (if (gx#stx-pair? _%tl133081133102%_)
                              (let ((_%e133082133105%_
                                     (gx#syntax-e _%tl133081133102%_)))
                                (let ((_%hd133083133108%_
                                       (##car _%e133082133105%_))
                                      (_%tl133084133110%_
                                       (##cdr _%e133082133105%_)))
                                  (let ((_%ann133113%_ _%hd133083133108%_))
                                    (if (gx#stx-pair? _%tl133084133110%_)
                                        (let ((_%e133085133115%_
                                               (gx#syntax-e
                                                _%tl133084133110%_)))
                                          (let ((_%hd133086133118%_
                                                 (##car _%e133085133115%_))
                                                (_%tl133087133120%_
                                                 (##cdr _%e133085133115%_)))
                                            (let ((_%expr133123%_
                                                   _%hd133086133118%_))
                                              (if (gx#stx-null?
                                                   _%tl133087133120%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann133113%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr133123%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx133075%_))
                                                  (_%E133078133093%_)))))
                                        (_%E133078133093%_)))))
                              (_%E133078133093%_))))
                      (_%E133078133093%_)))))
          (_%E133077133125%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx132799%_ _%body132800%_)
        (letrec ((_%expand-special132802%_
                  (lambda (_%hd133070%_ _%K133071%_ _%rest133072%_ _%r133073%_)
                    (_%K133071%_
                     '()
                     (cons (_%expand-internal132803%_
                            _%hd133070%_
                            _%rest133072%_)
                           _%r133073%_))))
                 (_%expand-internal132803%_
                  (lambda (_%hd133066%_ _%rest133067%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal132805%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd133066%_ _%rest133067%_))
                          (gx#stx-source _%stx132799%_))
                         _%expand-internal-special132804%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj133425
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj133425)
                       __obj133425))))
                 (_%expand-internal-special132804%_
                  (lambda (_%hd132961%_ _%K132962%_ _%rest132963%_ _%r132964%_)
                    (let* ((_%e132965132990%_ _%hd132961%_)
                           (_%E132985132994%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132965132990%_)))
                           (_%E132981133006%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132965132990%_)
                                  (let ((_%e132986132998%_
                                         (gx#syntax-e _%e132965132990%_)))
                                    (let ((_%hd132987133001%_
                                           (##car _%e132986132998%_))
                                          (_%tl132988133003%_
                                           (##cdr _%e132986132998%_)))
                                      (if (and (gx#identifier?
                                                _%hd132987133001%_)
                                               (gx#core-identifier=?
                                                _%hd132987133001%_
                                                '%#declare))
                                          (_%K132962%_
                                           _%rest132963%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd132961%_)
                                                 _%r132964%_))
                                          (_%E132985132994%_))))
                                  (_%E132985132994%_))))
                           (_%E132977133018%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132965132990%_)
                                  (let ((_%e132982133010%_
                                         (gx#syntax-e _%e132965132990%_)))
                                    (let ((_%hd132983133013%_
                                           (##car _%e132982133010%_))
                                          (_%tl132984133015%_
                                           (##cdr _%e132982133010%_)))
                                      (if (and (gx#identifier?
                                                _%hd132983133013%_)
                                               (gx#core-identifier=?
                                                _%hd132983133013%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd132961%_)
                                            (_%K132962%_
                                             _%rest132963%_
                                             _%r132964%_))
                                          (_%E132981133006%_))))
                                  (_%E132981133006%_))))
                           (_%E132967133030%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132965132990%_)
                                  (let ((_%e132978133022%_
                                         (gx#syntax-e _%e132965132990%_)))
                                    (let ((_%hd132979133025%_
                                           (##car _%e132978133022%_))
                                          (_%tl132980133027%_
                                           (##cdr _%e132978133022%_)))
                                      (if (and (gx#identifier?
                                                _%hd132979133025%_)
                                               (gx#core-identifier=?
                                                _%hd132979133025%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd132961%_)
                                            (_%K132962%_
                                             _%rest132963%_
                                             _%r132964%_))
                                          (_%E132977133018%_))))
                                  (_%E132977133018%_))))
                           (_%E132966133062%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132965132990%_)
                                  (let ((_%e132968133034%_
                                         (gx#syntax-e _%e132965132990%_)))
                                    (let ((_%hd132969133037%_
                                           (##car _%e132968133034%_))
                                          (_%tl132970133039%_
                                           (##cdr _%e132968133034%_)))
                                      (if (and (gx#identifier?
                                                _%hd132969133037%_)
                                               (gx#core-identifier=?
                                                _%hd132969133037%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl132970133039%_)
                                              (let ((_%e132971133042%_
                                                     (gx#syntax-e
                                                      _%tl132970133039%_)))
                                                (let ((_%hd132972133045%_
                                                       (##car _%e132971133042%_))
                                                      (_%tl132973133047%_
                                                       (##cdr _%e132971133042%_)))
                                                  (let ((_%hd-bind133050%_
                                                         _%hd132972133045%_))
                                                    (if (gx#stx-pair?
                                                         _%tl132973133047%_)
                                                        (let ((_%e132974133052%_
                                                               (gx#syntax-e
                                                                _%tl132973133047%_)))
                                                          (let ((_%hd132975133055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e132974133052%_))
                        (_%tl132976133057%_ (##cdr _%e132974133052%_)))
                    (let ((_%expr133060%_ _%hd132975133055%_))
                      (if (gx#stx-null? _%tl132976133057%_)
                          (if (gx#core-bind-values? _%hd-bind133050%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind133050%_)
                                (_%K132962%_
                                 _%rest132963%_
                                 (cons _%hd132961%_ _%r132964%_)))
                              (_%E132967133030%_))
                          (_%E132967133030%_)))))
                (_%E132967133030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E132967133030%_))
                                          (_%E132967133030%_))))
                                  (_%E132967133030%_)))))
                      (_%E132966133062%_))))
                 (_%wrap-internal132805%_
                  (lambda (_%rbody132807%_)
                    (let _%lp132809%_ ((_%rest132811%_ _%rbody132807%_)
                                       (_%decls132812%_ '())
                                       (_%bind132813%_ '())
                                       (_%body132814%_ '()))
                      (let* ((_%e132815132822%_ _%rest132811%_)
                             (_%E132817132871%_
                              (lambda ()
                                (let* ((_%body132866%_
                                        (let* ((_%body132825132835%_
                                                _%body132814%_)
                                               (_%else132828132843%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body132814%_)
                                                   (gx#stx-source
                                                    _%stx132799%_)))))
                                          (let ((_%K132833132863%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx132799%_)))
                                                (_%K132830132849%_
                                                 (lambda (_%expr132847%_)
                                                   _%expr132847%_)))
                                            (let ((_%try-match132827132859%_
                                                   (lambda ()
                                                     (if (pair? _%body132825132835%_)
                                                         (let ((_%tl132832132854%_
                                                                (##cdr _%body132825132835%_))
                                                               (_%hd132831132852%_
                                                                (##car _%body132825132835%_)))
                                                           (if (null? _%tl132832132854%_)
                                                               (let ((_%expr132857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd132831132852%_))
                         (_%K132830132849%_ _%expr132857%_))
                       (_%else132828132843%_)))
                 (_%else132828132843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body132825132835%_)
                                                  (_%K132833132863%_)
                                                  (_%try-match132827132859%_))))))
                                       (_%body132868%_
                                        (if (null? _%bind132813%_)
                                            _%body132866%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind132813%_
                                                         (cons _%body132866%_
                                                               '())))
                                             (gx#stx-source _%stx132799%_)))))
                                  (if (null? _%decls132812%_)
                                      _%body132868%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls132812%_
                                                   (cons _%body132868%_ '())))
                                       (gx#stx-source _%stx132799%_))))))
                             (_%E132816132957%_
                              (lambda ()
                                (if (gx#stx-pair? _%e132815132822%_)
                                    (let ((_%e132818132875%_
                                           (gx#syntax-e _%e132815132822%_)))
                                      (let ((_%hd132819132878%_
                                             (##car _%e132818132875%_))
                                            (_%tl132820132880%_
                                             (##cdr _%e132818132875%_)))
                                        (let* ((_%hd132883%_
                                                _%hd132819132878%_)
                                               (_%rest132885%_
                                                _%tl132820132880%_)
                                               (_%e132886132903%_ _%hd132883%_)
                                               (_%E132898132907%_
                                                (lambda ()
                                                  (if (null? _%bind132813%_)
                                                      (_%lp132809%_
                                                       _%rest132885%_
                                                       _%decls132812%_
                                                       _%bind132813%_
                                                       (cons _%hd132883%_
                                                             _%body132814%_))
                                                      (_%lp132809%_
                                                       _%rest132885%_
                                                       _%decls132812%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd132883%_ '()))
                     _%bind132813%_)
               _%body132814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E132888132921%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e132886132903%_)
                                                      (let ((_%e132899132911%_
                                                             (gx#syntax-e
                                                              _%e132886132903%_)))
                                                        (let ((_%hd132900132914%_
                                                               (##car _%e132899132911%_))
                                                              (_%tl132901132916%_
                                                               (##cdr _%e132899132911%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd132900132914%_)
                           (gx#core-identifier=?
                            _%hd132900132914%_
                            '%#declare))
                      (let ((_%xdecls132919%_ _%tl132901132916%_))
                        (_%lp132809%_
                         _%rest132885%_
                         (gx#stx-foldr cons _%decls132812%_ _%xdecls132919%_)
                         _%bind132813%_
                         _%body132814%_))
                      (_%E132898132907%_))))
              (_%E132898132907%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E132887132953%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e132886132903%_)
                                                      (let ((_%e132889132925%_
                                                             (gx#syntax-e
                                                              _%e132886132903%_)))
                                                        (let ((_%hd132890132928%_
                                                               (##car _%e132889132925%_))
                                                              (_%tl132891132930%_
                                                               (##cdr _%e132889132925%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd132890132928%_)
                           (gx#core-identifier=?
                            _%hd132890132928%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl132891132930%_)
                          (let ((_%e132892132933%_
                                 (gx#syntax-e _%tl132891132930%_)))
                            (let ((_%hd132893132936%_
                                   (##car _%e132892132933%_))
                                  (_%tl132894132938%_
                                   (##cdr _%e132892132933%_)))
                              (let ((_%hd-bind132941%_ _%hd132893132936%_))
                                (if (gx#stx-pair? _%tl132894132938%_)
                                    (let ((_%e132895132943%_
                                           (gx#syntax-e _%tl132894132938%_)))
                                      (let ((_%hd132896132946%_
                                             (##car _%e132895132943%_))
                                            (_%tl132897132948%_
                                             (##cdr _%e132895132943%_)))
                                        (let ((_%expr132951%_
                                               _%hd132896132946%_))
                                          (if (gx#stx-null? _%tl132897132948%_)
                                              (_%lp132809%_
                                               _%rest132885%_
                                               _%decls132812%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind132941%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr132951%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind132813%_)
                                               _%body132814%_)
                                              (_%E132888132921%_)))))
                                    (_%E132888132921%_)))))
                          (_%E132888132921%_))
                      (_%E132888132921%_))))
              (_%E132888132921%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E132887132953%_))))
                                    (_%E132817132871%_)))))
                        (_%E132816132957%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body132800%_)
            (gx#stx-source _%stx132799%_))
           _%expand-special132802%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx132737%_)
        (let* ((_%e132738132745%_ _%stx132737%_)
               (_%E132740132749%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132738132745%_)))
               (_%E132739132795%_
                (lambda ()
                  (if (gx#stx-pair? _%e132738132745%_)
                      (let ((_%e132741132753%_
                             (gx#syntax-e _%e132738132745%_)))
                        (let ((_%hd132742132756%_ (##car _%e132741132753%_))
                              (_%tl132743132758%_ (##cdr _%e132741132753%_)))
                          (let ((_%body132761%_ _%tl132743132758%_))
                            (if (gx#stx-list? _%body132761%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl132763%_)
                                     (let* ((_%e132764132771%_ _%decl132763%_)
                                            (_%E132766132775%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e132764132771%_)))
                                            (_%E132765132791%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e132764132771%_)
                                                   (let ((_%e132767132779%_
                                                          (gx#syntax-e
                                                           _%e132764132771%_)))
                                                     (let ((_%hd132768132782%_
                                                            (##car _%e132767132779%_))
                                                           (_%tl132769132784%_
                                                            (##cdr _%e132767132779%_)))
                                                       (let* ((_%head132787%_
                                                               _%hd132768132782%_)
                                                              (_%args132789%_
                                                               _%tl132769132784%_))
                                                         (if (gx#stx-list?
                                                              _%args132789%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl132763%_)
                                                             (_%E132766132775%_)))))
                                                   (_%E132766132775%_)))))
                                       (_%E132765132791%_)))
                                   _%body132761%_))
                                 (gx#stx-source _%stx132737%_))
                                (_%E132740132749%_)))))
                      (_%E132740132749%_)))))
          (_%E132739132795%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx132641%_)
        (let* ((_%e132642132649%_ _%stx132641%_)
               (_%E132644132653%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132642132649%_)))
               (_%E132643132733%_
                (lambda ()
                  (if (gx#stx-pair? _%e132642132649%_)
                      (let ((_%e132645132657%_
                             (gx#syntax-e _%e132642132649%_)))
                        (let ((_%hd132646132660%_ (##car _%e132645132657%_))
                              (_%tl132647132662%_ (##cdr _%e132645132657%_)))
                          (let ((_%body132665%_ _%tl132647132662%_))
                            (let _%lp132667%_ ((_%rest132669%_ _%body132665%_)
                                               (_%r132670%_ '()))
                              (let* ((_%e132671132685%_ _%rest132669%_)
                                     (_%E132683132689%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx132641%_)))
                                     (_%E132673132693%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e132671132685%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r132670%_))
                                             (gx#stx-source _%stx132641%_))
                                            (_%E132683132689%_))))
                                     (_%E132672132729%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e132671132685%_)
                                            (let ((_%e132674132697%_
                                                   (gx#syntax-e
                                                    _%e132671132685%_)))
                                              (let ((_%hd132675132700%_
                                                     (##car _%e132674132697%_))
                                                    (_%tl132676132702%_
                                                     (##cdr _%e132674132697%_)))
                                                (if (gx#stx-pair?
                                                     _%hd132675132700%_)
                                                    (let ((_%e132677132705%_
                                                           (gx#syntax-e
                                                            _%hd132675132700%_)))
                                                      (let ((_%hd132678132708%_
                                                             (##car _%e132677132705%_))
                                                            (_%tl132679132710%_
                                                             (##cdr _%e132677132705%_)))
                                                        (let ((_%id132713%_
                                                               _%hd132678132708%_))
                                                          (if (gx#stx-pair?
                                                               _%tl132679132710%_)
                                                              (let ((_%e132680132715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl132679132710%_)))
                        (let ((_%hd132681132718%_ (##car _%e132680132715%_))
                              (_%tl132682132720%_ (##cdr _%e132680132715%_)))
                          (let ((_%eid132723%_ _%hd132681132718%_))
                            (if (gx#stx-null? _%tl132682132720%_)
                                (let ((_%rest132725%_ _%tl132676132702%_))
                                  (if (and (gx#identifier? _%id132713%_)
                                           (gx#identifier? _%eid132723%_))
                                      (let ((_%eid132727%_
                                             (gx#stx-e _%eid132723%_)))
                                        (gx#core-bind-extern!__0
                                         _%id132713%_
                                         _%eid132727%_)
                                        (_%lp132667%_
                                         _%rest132725%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id132713%_)
                                                     (cons _%eid132727%_ '()))
                                               _%r132670%_)))
                                      (_%E132673132693%_)))
                                (_%E132673132693%_)))))
                      (_%E132673132693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132673132693%_))))
                                            (_%E132673132693%_)))))
                                (_%E132672132729%_))))))
                      (_%E132644132653%_)))))
          (_%E132643132733%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx132587%_)
        (let* ((_%e132588132601%_ _%stx132587%_)
               (_%E132590132605%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132588132601%_)))
               (_%E132589132637%_
                (lambda ()
                  (if (gx#stx-pair? _%e132588132601%_)
                      (let ((_%e132591132609%_
                             (gx#syntax-e _%e132588132601%_)))
                        (let ((_%hd132592132612%_ (##car _%e132591132609%_))
                              (_%tl132593132614%_ (##cdr _%e132591132609%_)))
                          (if (gx#stx-pair? _%tl132593132614%_)
                              (let ((_%e132594132617%_
                                     (gx#syntax-e _%tl132593132614%_)))
                                (let ((_%hd132595132620%_
                                       (##car _%e132594132617%_))
                                      (_%tl132596132622%_
                                       (##cdr _%e132594132617%_)))
                                  (let ((_%hd132625%_ _%hd132595132620%_))
                                    (if (gx#stx-pair? _%tl132596132622%_)
                                        (let ((_%e132597132627%_
                                               (gx#syntax-e
                                                _%tl132596132622%_)))
                                          (let ((_%hd132598132630%_
                                                 (##car _%e132597132627%_))
                                                (_%tl132599132632%_
                                                 (##cdr _%e132597132627%_)))
                                            (let ((_%expr132635%_
                                                   _%hd132598132630%_))
                                              (if (gx#stx-null?
                                                   _%tl132599132632%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd132625%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd132625%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd132625%_)
                             (cons (gx#core-expand-expression _%expr132635%_)
                                   '())))
                 (gx#stx-source _%stx132587%_)))
              (_%E132590132605%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132590132605%_)))))
                                        (_%E132590132605%_)))))
                              (_%E132590132605%_))))
                      (_%E132590132605%_)))))
          (_%E132589132637%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx132531%_)
        (let* ((_%e132532132545%_ _%stx132531%_)
               (_%E132534132549%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132532132545%_)))
               (_%E132533132583%_
                (lambda ()
                  (if (gx#stx-pair? _%e132532132545%_)
                      (let ((_%e132535132553%_
                             (gx#syntax-e _%e132532132545%_)))
                        (let ((_%hd132536132556%_ (##car _%e132535132553%_))
                              (_%tl132537132558%_ (##cdr _%e132535132553%_)))
                          (if (gx#stx-pair? _%tl132537132558%_)
                              (let ((_%e132538132561%_
                                     (gx#syntax-e _%tl132537132558%_)))
                                (let ((_%hd132539132564%_
                                       (##car _%e132538132561%_))
                                      (_%tl132540132566%_
                                       (##cdr _%e132538132561%_)))
                                  (let ((_%id132569%_ _%hd132539132564%_))
                                    (if (gx#stx-pair? _%tl132540132566%_)
                                        (let ((_%e132541132571%_
                                               (gx#syntax-e
                                                _%tl132540132566%_)))
                                          (let ((_%hd132542132574%_
                                                 (##car _%e132541132571%_))
                                                (_%tl132543132576%_
                                                 (##cdr _%e132541132571%_)))
                                            (let ((_%binding-id132579%_
                                                   _%hd132542132574%_))
                                              (if (gx#stx-null?
                                                   _%tl132543132576%_)
                                                  (if (and (gx#identifier?
                                                            _%id132569%_)
                                                           (gx#identifier?
                                                            _%binding-id132579%_))
                                                      (let ((_%eid132581%_
                                                             (gx#stx-e
                                                              _%binding-id132579%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id132569%_
                                                         _%eid132581%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id132569%_)
                             (cons _%eid132581%_ '())))))
              (_%E132534132549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132534132549%_)))))
                                        (_%E132534132549%_)))))
                              (_%E132534132549%_))))
                      (_%E132534132549%_)))))
          (_%E132533132583%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx132474%_)
        (let* ((_%e132475132488%_ _%stx132474%_)
               (_%E132477132492%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132475132488%_)))
               (_%E132476132527%_
                (lambda ()
                  (if (gx#stx-pair? _%e132475132488%_)
                      (let ((_%e132478132496%_
                             (gx#syntax-e _%e132475132488%_)))
                        (let ((_%hd132479132499%_ (##car _%e132478132496%_))
                              (_%tl132480132501%_ (##cdr _%e132478132496%_)))
                          (if (gx#stx-pair? _%tl132480132501%_)
                              (let ((_%e132481132504%_
                                     (gx#syntax-e _%tl132480132501%_)))
                                (let ((_%hd132482132507%_
                                       (##car _%e132481132504%_))
                                      (_%tl132483132509%_
                                       (##cdr _%e132481132504%_)))
                                  (let ((_%id132512%_ _%hd132482132507%_))
                                    (if (gx#stx-pair? _%tl132483132509%_)
                                        (let ((_%e132484132514%_
                                               (gx#syntax-e
                                                _%tl132483132509%_)))
                                          (let ((_%hd132485132517%_
                                                 (##car _%e132484132514%_))
                                                (_%tl132486132519%_
                                                 (##cdr _%e132484132514%_)))
                                            (let ((_%expr132522%_
                                                   _%hd132485132517%_))
                                              (if (gx#stx-null?
                                                   _%tl132486132519%_)
                                                  (if (gx#identifier?
                                                       _%id132512%_)
                                                      (let ((_g133433_
                                                             (gx#core-expand-expression+1
                                                              _%expr132522%_)))
                                                        (begin
                                                          (let ((_g133434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g133433_)
                             (##values-length _g133433_)
                             1)))
                    (if (not (##fx= _g133434_ 2))
                        (error "Context expects 2 values" _g133434_)))
                  (let ((_%e-stx132524%_ (##values-ref _g133433_ 0))
                        (_%e132525%_ (##values-ref _g133433_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id132512%_ _%e132525%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id132512%_)
                                   (cons _%e-stx132524%_ '())))
                       (gx#stx-source _%stx132474%_))))))
              (_%E132477132492%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132477132492%_)))))
                                        (_%E132477132492%_)))))
                              (_%E132477132492%_))))
                      (_%E132477132492%_)))))
          (_%E132476132527%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx132418%_)
        (let* ((_%e132419132432%_ _%stx132418%_)
               (_%E132421132436%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132419132432%_)))
               (_%E132420132470%_
                (lambda ()
                  (if (gx#stx-pair? _%e132419132432%_)
                      (let ((_%e132422132440%_
                             (gx#syntax-e _%e132419132432%_)))
                        (let ((_%hd132423132443%_ (##car _%e132422132440%_))
                              (_%tl132424132445%_ (##cdr _%e132422132440%_)))
                          (if (gx#stx-pair? _%tl132424132445%_)
                              (let ((_%e132425132448%_
                                     (gx#syntax-e _%tl132424132445%_)))
                                (let ((_%hd132426132451%_
                                       (##car _%e132425132448%_))
                                      (_%tl132427132453%_
                                       (##cdr _%e132425132448%_)))
                                  (let ((_%id132456%_ _%hd132426132451%_))
                                    (if (gx#stx-pair? _%tl132427132453%_)
                                        (let ((_%e132428132458%_
                                               (gx#syntax-e
                                                _%tl132427132453%_)))
                                          (let ((_%hd132429132461%_
                                                 (##car _%e132428132458%_))
                                                (_%tl132430132463%_
                                                 (##cdr _%e132428132458%_)))
                                            (let ((_%alias-id132466%_
                                                   _%hd132429132461%_))
                                              (if (gx#stx-null?
                                                   _%tl132430132463%_)
                                                  (if (and (gx#identifier?
                                                            _%id132456%_)
                                                           (gx#identifier?
                                                            _%alias-id132466%_))
                                                      (let ((_%alias-id132468%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id132466%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id132456%_
                                                         _%alias-id132468%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id132456%_)
                             (cons _%alias-id132468%_ '())))))
              (_%E132421132436%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132421132436%_)))))
                                        (_%E132421132436%_)))))
                              (_%E132421132436%_))))
                      (_%E132421132436%_)))))
          (_%E132420132470%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx132361%_ _%wrap?132362%_)
        (let* ((_%e132363132373%_ _%stx132361%_)
               (_%E132365132377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132363132373%_)))
               (_%E132364132404%_
                (lambda ()
                  (if (gx#stx-pair? _%e132363132373%_)
                      (let ((_%e132366132381%_
                             (gx#syntax-e _%e132363132373%_)))
                        (let ((_%hd132367132384%_ (##car _%e132366132381%_))
                              (_%tl132368132386%_ (##cdr _%e132366132381%_)))
                          (if (gx#stx-pair? _%tl132368132386%_)
                              (let ((_%e132369132389%_
                                     (gx#syntax-e _%tl132368132386%_)))
                                (let ((_%hd132370132392%_
                                       (##car _%e132369132389%_))
                                      (_%tl132371132394%_
                                       (##cdr _%e132369132389%_)))
                                  (let* ((_%hd132397%_ _%hd132370132392%_)
                                         (_%body132399%_ _%tl132371132394%_))
                                    (if (gx#core-bind-values? _%hd132397%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd132397%_)
                                           (let ((_%body132402%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd132397%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx132361%_
                                                               _%body132399%_)
                                                              '()))))
                                             (if _%wrap?132362%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body132402%_)
                                                  (gx#stx-source
                                                   _%stx132361%_))
                                                 _%body132402%_)))
                                         gx#current-expander-context
                                         (let ((__obj133426
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj133426)
                                           __obj133426))
                                        (_%E132365132377%_)))))
                              (_%E132365132377%_))))
                      (_%E132365132377%_)))))
          (_%E132364132404%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx132411%_)
        (let ((_%wrap?132413%_ '#t))
          (gx#core-expand-lambda%__% _%stx132411%_ _%wrap?132413%_))))
    (define gx#core-expand-lambda%
      (lambda _g133435_
        (let ((_g133436_ (##length _g133435_)))
          (cond ((##fx= _g133436_ 1)
                 (apply gx#core-expand-lambda%__0 _g133435_))
                ((##fx= _g133436_ 2)
                 (apply gx#core-expand-lambda%__% _g133435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g133435_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx132325%_)
        (let* ((_%e132326132333%_ _%stx132325%_)
               (_%E132328132337%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132326132333%_)))
               (_%E132327132356%_
                (lambda ()
                  (if (gx#stx-pair? _%e132326132333%_)
                      (let ((_%e132329132341%_
                             (gx#syntax-e _%e132326132333%_)))
                        (let ((_%hd132330132344%_ (##car _%e132329132341%_))
                              (_%tl132331132346%_ (##cdr _%e132329132341%_)))
                          (let ((_%clauses132349%_ _%tl132331132346%_))
                            (if (gx#stx-list? _%clauses132349%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause132351%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause132351%_)
                                       (let ((_%$e132353%_
                                              (gx#stx-source
                                               _%clause132351%_)))
                                         (if _%$e132353%_
                                             _%$e132353%_
                                             (gx#stx-source _%stx132325%_))))
                                      '#f))
                                   _%clauses132349%_))
                                 (gx#stx-source _%stx132325%_))
                                (_%E132328132337%_)))))
                      (_%E132328132337%_)))))
          (_%E132327132356%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx132279%_)
        (let* ((_%e132280132290%_ _%stx132279%_)
               (_%E132282132294%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132280132290%_)))
               (_%E132281132321%_
                (lambda ()
                  (if (gx#stx-pair? _%e132280132290%_)
                      (let ((_%e132283132298%_
                             (gx#syntax-e _%e132280132290%_)))
                        (let ((_%hd132284132301%_ (##car _%e132283132298%_))
                              (_%tl132285132303%_ (##cdr _%e132283132298%_)))
                          (if (gx#stx-pair? _%tl132285132303%_)
                              (let ((_%e132286132306%_
                                     (gx#syntax-e _%tl132285132303%_)))
                                (let ((_%hd132287132309%_
                                       (##car _%e132286132306%_))
                                      (_%tl132288132311%_
                                       (##cdr _%e132286132306%_)))
                                  (let* ((_%hd132314%_ _%hd132287132309%_)
                                         (_%body132316%_ _%tl132288132311%_))
                                    (if (gx#core-expand-let-bind? _%hd132314%_)
                                        (let ((_%expressions132318%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd132314%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd132314%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd132314%_
                                                           _%expressions132318%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx132279%_
                         _%body132316%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx132279%_)))
                                           gx#current-expander-context
                                           (let ((__obj133427
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj133427)
                                             __obj133427)))
                                        (_%E132282132294%_)))))
                              (_%E132282132294%_))))
                      (_%E132282132294%_)))))
          (_%E132281132321%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx132224%_ _%form132225%_)
        (let* ((_%e132226132236%_ _%stx132224%_)
               (_%E132228132240%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132226132236%_)))
               (_%E132227132265%_
                (lambda ()
                  (if (gx#stx-pair? _%e132226132236%_)
                      (let ((_%e132229132244%_
                             (gx#syntax-e _%e132226132236%_)))
                        (let ((_%hd132230132247%_ (##car _%e132229132244%_))
                              (_%tl132231132249%_ (##cdr _%e132229132244%_)))
                          (if (gx#stx-pair? _%tl132231132249%_)
                              (let ((_%e132232132252%_
                                     (gx#syntax-e _%tl132231132249%_)))
                                (let ((_%hd132233132255%_
                                       (##car _%e132232132252%_))
                                      (_%tl132234132257%_
                                       (##cdr _%e132232132252%_)))
                                  (let* ((_%hd132260%_ _%hd132233132255%_)
                                         (_%body132262%_ _%tl132234132257%_))
                                    (if (gx#core-expand-let-bind? _%hd132260%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd132260%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form132225%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd132260%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd132260%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx132224%_
                                                               _%body132262%_)
                                                              '())))
                                            (gx#stx-source _%stx132224%_)))
                                         gx#current-expander-context
                                         (let ((__obj133428
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj133428)
                                           __obj133428))
                                        (_%E132228132240%_)))))
                              (_%E132228132240%_))))
                      (_%E132228132240%_)))))
          (_%E132227132265%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx132272%_)
        (let ((_%form132274%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx132272%_ _%form132274%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g133437_
        (let ((_g133438_ (##length _g133437_)))
          (cond ((##fx= _g133438_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g133437_))
                ((##fx= _g133438_ 2)
                 (apply gx#core-expand-letrec-values%__% _g133437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g133437_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx132221%_)
        (gx#core-expand-letrec-values%__% _%stx132221%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx132178%_)
        (if (gx#stx-list? _%stx132178%_)
            (gx#stx-andmap
             (lambda (_%bind132180%_)
               (let* ((_%e132181132191%_ _%bind132180%_)
                      (_%E132183132195%_ (lambda () '#f))
                      (_%E132182132217%_
                       (lambda ()
                         (if (gx#stx-pair? _%e132181132191%_)
                             (let ((_%e132184132199%_
                                    (gx#syntax-e _%e132181132191%_)))
                               (let ((_%hd132185132202%_
                                      (##car _%e132184132199%_))
                                     (_%tl132186132204%_
                                      (##cdr _%e132184132199%_)))
                                 (let ((_%hd132207%_ _%hd132185132202%_))
                                   (if (gx#stx-pair? _%tl132186132204%_)
                                       (let ((_%e132187132209%_
                                              (gx#syntax-e
                                               _%tl132186132204%_)))
                                         (let ((_%hd132188132212%_
                                                (##car _%e132187132209%_))
                                               (_%tl132189132214%_
                                                (##cdr _%e132187132209%_)))
                                           (if (gx#stx-null?
                                                _%tl132189132214%_)
                                               (gx#core-bind-values?
                                                _%hd132207%_)
                                               (_%E132183132195%_))))
                                       (_%E132183132195%_)))))
                             (_%E132183132195%_)))))
                 (_%E132182132217%_)))
             _%stx132178%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind132137%_)
        (let* ((_%e132138132148%_ _%bind132137%_)
               (_%E132140132152%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132138132148%_)))
               (_%E132139132174%_
                (lambda ()
                  (if (gx#stx-pair? _%e132138132148%_)
                      (let ((_%e132141132156%_
                             (gx#syntax-e _%e132138132148%_)))
                        (let ((_%hd132142132159%_ (##car _%e132141132156%_))
                              (_%tl132143132161%_ (##cdr _%e132141132156%_)))
                          (if (gx#stx-pair? _%tl132143132161%_)
                              (let ((_%e132144132164%_
                                     (gx#syntax-e _%tl132143132161%_)))
                                (let ((_%hd132145132167%_
                                       (##car _%e132144132164%_))
                                      (_%tl132146132169%_
                                       (##cdr _%e132144132164%_)))
                                  (let ((_%expr132172%_ _%hd132145132167%_))
                                    (if (gx#stx-null? _%tl132146132169%_)
                                        (gx#core-expand-expression
                                         _%expr132172%_)
                                        (_%E132140132152%_)))))
                              (_%E132140132152%_))))
                      (_%E132140132152%_)))))
          (_%E132139132174%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind132096%_)
        (let* ((_%e132097132107%_ _%bind132096%_)
               (_%E132099132111%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132097132107%_)))
               (_%E132098132133%_
                (lambda ()
                  (if (gx#stx-pair? _%e132097132107%_)
                      (let ((_%e132100132115%_
                             (gx#syntax-e _%e132097132107%_)))
                        (let ((_%hd132101132118%_ (##car _%e132100132115%_))
                              (_%tl132102132120%_ (##cdr _%e132100132115%_)))
                          (let ((_%hd132123%_ _%hd132101132118%_))
                            (if (gx#stx-pair? _%tl132102132120%_)
                                (let ((_%e132103132125%_
                                       (gx#syntax-e _%tl132102132120%_)))
                                  (let ((_%hd132104132128%_
                                         (##car _%e132103132125%_))
                                        (_%tl132105132130%_
                                         (##cdr _%e132103132125%_)))
                                    (if (gx#stx-null? _%tl132105132130%_)
                                        (gx#core-bind-values!__0 _%hd132123%_)
                                        (_%E132099132111%_))))
                                (_%E132099132111%_)))))
                      (_%E132099132111%_)))))
          (_%E132098132133%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind132054%_ _%expr132055%_)
        (let* ((_%e132056132066%_ _%bind132054%_)
               (_%E132058132070%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132056132066%_)))
               (_%E132057132092%_
                (lambda ()
                  (if (gx#stx-pair? _%e132056132066%_)
                      (let ((_%e132059132074%_
                             (gx#syntax-e _%e132056132066%_)))
                        (let ((_%hd132060132077%_ (##car _%e132059132074%_))
                              (_%tl132061132079%_ (##cdr _%e132059132074%_)))
                          (let ((_%hd132082%_ _%hd132060132077%_))
                            (if (gx#stx-pair? _%tl132061132079%_)
                                (let ((_%e132062132084%_
                                       (gx#syntax-e _%tl132061132079%_)))
                                  (let ((_%hd132063132087%_
                                         (##car _%e132062132084%_))
                                        (_%tl132064132089%_
                                         (##cdr _%e132062132084%_)))
                                    (if (gx#stx-null? _%tl132064132089%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd132082%_)
                                              (cons _%expr132055%_ '()))
                                        (_%E132058132070%_))))
                                (_%E132058132070%_)))))
                      (_%E132058132070%_)))))
          (_%E132057132092%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx132008%_)
        (let* ((_%e132009132019%_ _%stx132008%_)
               (_%E132011132023%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132009132019%_)))
               (_%E132010132050%_
                (lambda ()
                  (if (gx#stx-pair? _%e132009132019%_)
                      (let ((_%e132012132027%_
                             (gx#syntax-e _%e132009132019%_)))
                        (let ((_%hd132013132030%_ (##car _%e132012132027%_))
                              (_%tl132014132032%_ (##cdr _%e132012132027%_)))
                          (if (gx#stx-pair? _%tl132014132032%_)
                              (let ((_%e132015132035%_
                                     (gx#syntax-e _%tl132014132032%_)))
                                (let ((_%hd132016132038%_
                                       (##car _%e132015132035%_))
                                      (_%tl132017132040%_
                                       (##cdr _%e132015132035%_)))
                                  (let* ((_%hd132043%_ _%hd132016132038%_)
                                         (_%body132045%_ _%tl132017132040%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd132043%_)
                                        (let ((_%expanders132047%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd132043%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd132043%_
                                              _%expanders132047%_)
                                             (gx#core-expand-local-block
                                              _%stx132008%_
                                              _%body132045%_))
                                           gx#current-expander-context
                                           (let ((__obj133429
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj133429)
                                             __obj133429)))
                                        (_%E132011132023%_)))))
                              (_%E132011132023%_))))
                      (_%E132011132023%_)))))
          (_%E132010132050%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx131957%_)
        (let* ((_%e131958131968%_ _%stx131957%_)
               (_%E131960131972%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131958131968%_)))
               (_%E131959132004%_
                (lambda ()
                  (if (gx#stx-pair? _%e131958131968%_)
                      (let ((_%e131961131976%_
                             (gx#syntax-e _%e131958131968%_)))
                        (let ((_%hd131962131979%_ (##car _%e131961131976%_))
                              (_%tl131963131981%_ (##cdr _%e131961131976%_)))
                          (if (gx#stx-pair? _%tl131963131981%_)
                              (let ((_%e131964131984%_
                                     (gx#syntax-e _%tl131963131981%_)))
                                (let ((_%hd131965131987%_
                                       (##car _%e131964131984%_))
                                      (_%tl131966131989%_
                                       (##cdr _%e131964131984%_)))
                                  (let* ((_%hd131992%_ _%hd131965131987%_)
                                         (_%body131994%_ _%tl131966131989%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd131992%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd131992%_
                                            (make-list
                                             (gx#stx-length _%hd131992%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g131996131999%_
                                                     _%g131997132001%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g131996131999%_
                                               _%g131997132001%_
                                               '#t))
                                            _%hd131992%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd131992%_))
                                           (gx#core-expand-local-block
                                            _%stx131957%_
                                            _%body131994%_))
                                         gx#current-expander-context
                                         (let ((__obj133430
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj133430)
                                           __obj133430))
                                        (_%E131960131972%_)))))
                              (_%E131960131972%_))))
                      (_%E131960131972%_)))))
          (_%E131959132004%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx131914%_)
        (if (gx#stx-list? _%stx131914%_)
            (gx#stx-andmap
             (lambda (_%bind131916%_)
               (let* ((_%e131917131927%_ _%bind131916%_)
                      (_%E131919131931%_ (lambda () '#f))
                      (_%E131918131953%_
                       (lambda ()
                         (if (gx#stx-pair? _%e131917131927%_)
                             (let ((_%e131920131935%_
                                    (gx#syntax-e _%e131917131927%_)))
                               (let ((_%hd131921131938%_
                                      (##car _%e131920131935%_))
                                     (_%tl131922131940%_
                                      (##cdr _%e131920131935%_)))
                                 (let ((_%hd131943%_ _%hd131921131938%_))
                                   (if (gx#stx-pair? _%tl131922131940%_)
                                       (let ((_%e131923131945%_
                                              (gx#syntax-e
                                               _%tl131922131940%_)))
                                         (let ((_%hd131924131948%_
                                                (##car _%e131923131945%_))
                                               (_%tl131925131950%_
                                                (##cdr _%e131923131945%_)))
                                           (if (gx#stx-null?
                                                _%tl131925131950%_)
                                               (gx#identifier? _%hd131943%_)
                                               (_%E131919131931%_))))
                                       (_%E131919131931%_)))))
                             (_%E131919131931%_)))))
                 (_%E131918131953%_)))
             _%stx131914%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind131870%_)
        (let* ((_%e131871131881%_ _%bind131870%_)
               (_%E131873131885%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131871131881%_)))
               (_%E131872131910%_
                (lambda ()
                  (if (gx#stx-pair? _%e131871131881%_)
                      (let ((_%e131874131889%_
                             (gx#syntax-e _%e131871131881%_)))
                        (let ((_%hd131875131892%_ (##car _%e131874131889%_))
                              (_%tl131876131894%_ (##cdr _%e131874131889%_)))
                          (if (gx#stx-pair? _%tl131876131894%_)
                              (let ((_%e131877131897%_
                                     (gx#syntax-e _%tl131876131894%_)))
                                (let ((_%hd131878131900%_
                                       (##car _%e131877131897%_))
                                      (_%tl131879131902%_
                                       (##cdr _%e131877131897%_)))
                                  (let ((_%expr131905%_ _%hd131878131900%_))
                                    (if (gx#stx-null? _%tl131879131902%_)
                                        (let ((_g133439_
                                               (gx#core-expand-expression+1
                                                _%expr131905%_)))
                                          (begin
                                            (let ((_g133440_
                                                   (if (##values? _g133439_)
                                                       (##values-length
                                                        _g133439_)
                                                       1)))
                                              (if (not (##fx= _g133440_ 2))
                                                  (error "Context expects 2 values"
                                                         _g133440_)))
                                            (let ((_%_131907%_
                                                   (##values-ref _g133439_ 0))
                                                  (_%e131908%_
                                                   (##values-ref _g133439_ 1)))
                                              _%e131908%_)))
                                        (_%E131873131885%_)))))
                              (_%E131873131885%_))))
                      (_%E131873131885%_)))))
          (_%E131872131910%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind131815%_ _%e131816%_ _%rebind?131817%_)
        (let* ((_%e131818131828%_ _%bind131815%_)
               (_%E131820131832%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131818131828%_)))
               (_%E131819131854%_
                (lambda ()
                  (if (gx#stx-pair? _%e131818131828%_)
                      (let ((_%e131821131836%_
                             (gx#syntax-e _%e131818131828%_)))
                        (let ((_%hd131822131839%_ (##car _%e131821131836%_))
                              (_%tl131823131841%_ (##cdr _%e131821131836%_)))
                          (let ((_%id131844%_ _%hd131822131839%_))
                            (if (gx#stx-pair? _%tl131823131841%_)
                                (let ((_%e131824131846%_
                                       (gx#syntax-e _%tl131823131841%_)))
                                  (let ((_%hd131825131849%_
                                         (##car _%e131824131846%_))
                                        (_%tl131826131851%_
                                         (##cdr _%e131824131846%_)))
                                    (if (gx#stx-null? _%tl131826131851%_)
                                        (gx#core-bind-syntax!__1
                                         _%id131844%_
                                         _%e131816%_
                                         _%rebind?131817%_)
                                        (_%E131820131832%_))))
                                (_%E131820131832%_)))))
                      (_%E131820131832%_)))))
          (_%E131819131854%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind131861%_ _%e131862%_)
        (let ((_%rebind?131864%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind131861%_
           _%e131862%_
           _%rebind?131864%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g133441_
        (let ((_g133442_ (##length _g133441_)))
          (cond ((##fx= _g133442_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g133441_))
                ((##fx= _g133442_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g133441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g133441_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx131773%_)
        (let* ((_%e131774131784%_ _%stx131773%_)
               (_%E131776131788%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131774131784%_)))
               (_%E131775131810%_
                (lambda ()
                  (if (gx#stx-pair? _%e131774131784%_)
                      (let ((_%e131777131792%_
                             (gx#syntax-e _%e131774131784%_)))
                        (let ((_%hd131778131795%_ (##car _%e131777131792%_))
                              (_%tl131779131797%_ (##cdr _%e131777131792%_)))
                          (if (gx#stx-pair? _%tl131779131797%_)
                              (let ((_%e131780131800%_
                                     (gx#syntax-e _%tl131779131797%_)))
                                (let ((_%hd131781131803%_
                                       (##car _%e131780131800%_))
                                      (_%tl131782131805%_
                                       (##cdr _%e131780131800%_)))
                                  (let ((_%expr131808%_ _%hd131781131803%_))
                                    (if (gx#stx-null? _%tl131782131805%_)
                                        (gx#core-expand-expression
                                         _%expr131808%_)
                                        (_%E131776131788%_)))))
                              (_%E131776131788%_))))
                      (_%E131776131788%_)))))
          (_%E131775131810%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx131732%_)
        (let* ((_%e131733131743%_ _%stx131732%_)
               (_%E131735131747%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131733131743%_)))
               (_%E131734131769%_
                (lambda ()
                  (if (gx#stx-pair? _%e131733131743%_)
                      (let ((_%e131736131751%_
                             (gx#syntax-e _%e131733131743%_)))
                        (let ((_%hd131737131754%_ (##car _%e131736131751%_))
                              (_%tl131738131756%_ (##cdr _%e131736131751%_)))
                          (if (gx#stx-pair? _%tl131738131756%_)
                              (let ((_%e131739131759%_
                                     (gx#syntax-e _%tl131738131756%_)))
                                (let ((_%hd131740131762%_
                                       (##car _%e131739131759%_))
                                      (_%tl131741131764%_
                                       (##cdr _%e131739131759%_)))
                                  (let ((_%e131767%_ _%hd131740131762%_))
                                    (if (gx#stx-null? _%tl131741131764%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e131767%_)
                                                     '()))
                                         (gx#stx-source _%stx131732%_))
                                        (_%E131735131747%_)))))
                              (_%E131735131747%_))))
                      (_%E131735131747%_)))))
          (_%E131734131769%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx131691%_)
        (let* ((_%e131692131702%_ _%stx131691%_)
               (_%E131694131706%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131692131702%_)))
               (_%E131693131728%_
                (lambda ()
                  (if (gx#stx-pair? _%e131692131702%_)
                      (let ((_%e131695131710%_
                             (gx#syntax-e _%e131692131702%_)))
                        (let ((_%hd131696131713%_ (##car _%e131695131710%_))
                              (_%tl131697131715%_ (##cdr _%e131695131710%_)))
                          (if (gx#stx-pair? _%tl131697131715%_)
                              (let ((_%e131698131718%_
                                     (gx#syntax-e _%tl131697131715%_)))
                                (let ((_%hd131699131721%_
                                       (##car _%e131698131718%_))
                                      (_%tl131700131723%_
                                       (##cdr _%e131698131718%_)))
                                  (let ((_%e131726%_ _%hd131699131721%_))
                                    (if (gx#stx-null? _%tl131700131723%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e131726%_)
                                                     '()))
                                         (gx#stx-source _%stx131691%_))
                                        (_%E131694131706%_)))))
                              (_%E131694131706%_))))
                      (_%E131694131706%_)))))
          (_%E131693131728%_))))
    (define gx#core-expand-call%
      (lambda (_%stx131648%_)
        (let* ((_%e131649131659%_ _%stx131648%_)
               (_%E131651131663%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131649131659%_)))
               (_%E131650131687%_
                (lambda ()
                  (if (gx#stx-pair? _%e131649131659%_)
                      (let ((_%e131652131667%_
                             (gx#syntax-e _%e131649131659%_)))
                        (let ((_%hd131653131670%_ (##car _%e131652131667%_))
                              (_%tl131654131672%_ (##cdr _%e131652131667%_)))
                          (if (gx#stx-pair? _%tl131654131672%_)
                              (let ((_%e131655131675%_
                                     (gx#syntax-e _%tl131654131672%_)))
                                (let ((_%hd131656131678%_
                                       (##car _%e131655131675%_))
                                      (_%tl131657131680%_
                                       (##cdr _%e131655131675%_)))
                                  (let* ((_%rator131683%_ _%hd131656131678%_)
                                         (_%args131685%_ _%tl131657131680%_))
                                    (if (gx#stx-list? _%args131685%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator131683%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args131685%_))
                                         (gx#stx-source _%stx131648%_))
                                        (_%E131651131663%_)))))
                              (_%E131651131663%_))))
                      (_%E131651131663%_)))))
          (_%E131650131687%_))))
    (define gx#core-expand-if%
      (lambda (_%stx131581%_)
        (let* ((_%e131582131598%_ _%stx131581%_)
               (_%E131584131602%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131582131598%_)))
               (_%E131583131644%_
                (lambda ()
                  (if (gx#stx-pair? _%e131582131598%_)
                      (let ((_%e131585131606%_
                             (gx#syntax-e _%e131582131598%_)))
                        (let ((_%hd131586131609%_ (##car _%e131585131606%_))
                              (_%tl131587131611%_ (##cdr _%e131585131606%_)))
                          (if (gx#stx-pair? _%tl131587131611%_)
                              (let ((_%e131588131614%_
                                     (gx#syntax-e _%tl131587131611%_)))
                                (let ((_%hd131589131617%_
                                       (##car _%e131588131614%_))
                                      (_%tl131590131619%_
                                       (##cdr _%e131588131614%_)))
                                  (let ((_%test131622%_ _%hd131589131617%_))
                                    (if (gx#stx-pair? _%tl131590131619%_)
                                        (let ((_%e131591131624%_
                                               (gx#syntax-e
                                                _%tl131590131619%_)))
                                          (let ((_%hd131592131627%_
                                                 (##car _%e131591131624%_))
                                                (_%tl131593131629%_
                                                 (##cdr _%e131591131624%_)))
                                            (let ((_%K131632%_
                                                   _%hd131592131627%_))
                                              (if (gx#stx-pair?
                                                   _%tl131593131629%_)
                                                  (let ((_%e131594131634%_
                                                         (gx#syntax-e
                                                          _%tl131593131629%_)))
                                                    (let ((_%hd131595131637%_
                                                           (##car _%e131594131634%_))
                                                          (_%tl131596131639%_
                                                           (##cdr _%e131594131634%_)))
                                                      (let ((_%E131642%_
                                                             _%hd131595131637%_))
                                                        (if (gx#stx-null?
                                                             _%tl131596131639%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test131622%_)
                                 (cons (gx#core-expand-expression _%K131632%_)
                                       (cons (gx#core-expand-expression
                                              _%E131642%_)
                                             '()))))
                     (gx#stx-source _%stx131581%_))
                    (_%E131584131602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131584131602%_)))))
                                        (_%E131584131602%_)))))
                              (_%E131584131602%_))))
                      (_%E131584131602%_)))))
          (_%E131583131644%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx131540%_)
        (let* ((_%e131541131551%_ _%stx131540%_)
               (_%E131543131555%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131541131551%_)))
               (_%E131542131577%_
                (lambda ()
                  (if (gx#stx-pair? _%e131541131551%_)
                      (let ((_%e131544131559%_
                             (gx#syntax-e _%e131541131551%_)))
                        (let ((_%hd131545131562%_ (##car _%e131544131559%_))
                              (_%tl131546131564%_ (##cdr _%e131544131559%_)))
                          (if (gx#stx-pair? _%tl131546131564%_)
                              (let ((_%e131547131567%_
                                     (gx#syntax-e _%tl131546131564%_)))
                                (let ((_%hd131548131570%_
                                       (##car _%e131547131567%_))
                                      (_%tl131549131572%_
                                       (##cdr _%e131547131567%_)))
                                  (let ((_%id131575%_ _%hd131548131570%_))
                                    (if (gx#stx-null? _%tl131549131572%_)
                                        (if (gx#identifier? _%id131575%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id131575%_
                                                          _%stx131540%_)
                                                         '()))
                                             (gx#stx-source _%stx131540%_))
                                            (_%E131543131555%_))
                                        (_%E131543131555%_)))))
                              (_%E131543131555%_))))
                      (_%E131543131555%_)))))
          (_%E131542131577%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx131486%_)
        (let* ((_%e131487131500%_ _%stx131486%_)
               (_%E131489131504%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131487131500%_)))
               (_%E131488131536%_
                (lambda ()
                  (if (gx#stx-pair? _%e131487131500%_)
                      (let ((_%e131490131508%_
                             (gx#syntax-e _%e131487131500%_)))
                        (let ((_%hd131491131511%_ (##car _%e131490131508%_))
                              (_%tl131492131513%_ (##cdr _%e131490131508%_)))
                          (if (gx#stx-pair? _%tl131492131513%_)
                              (let ((_%e131493131516%_
                                     (gx#syntax-e _%tl131492131513%_)))
                                (let ((_%hd131494131519%_
                                       (##car _%e131493131516%_))
                                      (_%tl131495131521%_
                                       (##cdr _%e131493131516%_)))
                                  (let ((_%id131524%_ _%hd131494131519%_))
                                    (if (gx#stx-pair? _%tl131495131521%_)
                                        (let ((_%e131496131526%_
                                               (gx#syntax-e
                                                _%tl131495131521%_)))
                                          (let ((_%hd131497131529%_
                                                 (##car _%e131496131526%_))
                                                (_%tl131498131531%_
                                                 (##cdr _%e131496131526%_)))
                                            (let ((_%expr131534%_
                                                   _%hd131497131529%_))
                                              (if (gx#stx-null?
                                                   _%tl131498131531%_)
                                                  (if (gx#identifier?
                                                       _%id131524%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id131524%_
                            _%stx131486%_)
                           (cons (gx#core-expand-expression _%expr131534%_)
                                 '())))
               (gx#stx-source _%stx131486%_))
              (_%E131489131504%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131489131504%_)))))
                                        (_%E131489131504%_)))))
                              (_%E131489131504%_))))
                      (_%E131489131504%_)))))
          (_%E131488131536%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx131331%_)
        (letrec ((_%generate131333%_
                  (lambda (_%body131363%_)
                    (let _%lp131365%_ ((_%rest131367%_ _%body131363%_)
                                       (_%ns131368%_
                                        (gx#core-context-namespace__0))
                                       (_%r131369%_ '()))
                      (let* ((_%e131370131385%_ _%rest131367%_)
                             (_%E131383131389%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e131370131385%_)))
                             (_%E131379131393%_
                              (lambda ()
                                (if (gx#stx-null? _%e131370131385%_)
                                    (reverse _%r131369%_)
                                    (_%E131383131389%_))))
                             (_%E131372131450%_
                              (lambda ()
                                (if (gx#stx-pair? _%e131370131385%_)
                                    (let ((_%e131380131397%_
                                           (gx#syntax-e _%e131370131385%_)))
                                      (let ((_%hd131381131400%_
                                             (##car _%e131380131397%_))
                                            (_%tl131382131402%_
                                             (##cdr _%e131380131397%_)))
                                        (let* ((_%hd131405%_
                                                _%hd131381131400%_)
                                               (_%rest131407%_
                                                _%tl131382131402%_))
                                          (if (gx#identifier? _%hd131405%_)
                                              (_%lp131365%_
                                               _%rest131407%_
                                               _%ns131368%_
                                               (cons (cons _%hd131405%_
                                                           (cons (if _%ns131368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd131405%_
                              _%ns131368%_
                              '"#"
                              _%hd131405%_)
                             _%hd131405%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r131369%_))
                                              (let* ((_%e131408131418%_
                                                      _%hd131405%_)
                                                     (_%E131410131422%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e131408131418%_)))
                                                     (_%E131409131446%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e131408131418%_)
                                                            (let ((_%e131411131426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e131408131418%_)))
                      (let ((_%hd131412131429%_ (##car _%e131411131426%_))
                            (_%tl131413131431%_ (##cdr _%e131411131426%_)))
                        (let ((_%id131434%_ _%hd131412131429%_))
                          (if (gx#stx-pair? _%tl131413131431%_)
                              (let ((_%e131414131436%_
                                     (gx#syntax-e _%tl131413131431%_)))
                                (let ((_%hd131415131439%_
                                       (##car _%e131414131436%_))
                                      (_%tl131416131441%_
                                       (##cdr _%e131414131436%_)))
                                  (let ((_%eid131444%_ _%hd131415131439%_))
                                    (if (gx#stx-null? _%tl131416131441%_)
                                        (if (and (gx#identifier? _%id131434%_)
                                                 (gx#identifier?
                                                  _%eid131444%_))
                                            (_%lp131365%_
                                             _%rest131407%_
                                             _%ns131368%_
                                             (cons (cons _%id131434%_
                                                         (cons _%eid131444%_
                                                               '()))
                                                   _%r131369%_))
                                            (_%E131410131422%_))
                                        (_%E131410131422%_)))))
                              (_%E131410131422%_)))))
                    (_%E131410131422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E131409131446%_))))))
                                    (_%E131379131393%_))))
                             (_%E131371131482%_
                              (lambda ()
                                (if (gx#stx-pair? _%e131370131385%_)
                                    (let ((_%e131373131454%_
                                           (gx#syntax-e _%e131370131385%_)))
                                      (let ((_%hd131374131457%_
                                             (##car _%e131373131454%_))
                                            (_%tl131375131459%_
                                             (##cdr _%e131373131454%_)))
                                        (if (eq? (gx#stx-e _%hd131374131457%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl131375131459%_)
                                                (let ((_%e131376131462%_
                                                       (gx#syntax-e
                                                        _%tl131375131459%_)))
                                                  (let ((_%hd131377131465%_
                                                         (##car _%e131376131462%_))
                                                        (_%tl131378131467%_
                                                         (##cdr _%e131376131462%_)))
                                                    (let* ((_%ns131470%_
                                                            _%hd131377131465%_)
                                                           (_%rest131472%_
                                                            _%tl131378131467%_)
                                                           (_%ns131480%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns131470%_)
                        (symbol->string (gx#stx-e _%ns131470%_))
                        (if (or (gx#stx-string? _%ns131470%_)
                                (gx#stx-false? _%ns131470%_))
                            (gx#stx-e _%ns131470%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx131331%_
                             _%ns131470%_)))))
              (_%lp131365%_ _%rest131472%_ _%ns131480%_ _%r131369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E131372131450%_))
                                            (_%E131372131450%_))))
                                    (_%E131372131450%_)))))
                        (_%E131371131482%_))))))
          (let* ((_%e131334131341%_ _%stx131331%_)
                 (_%E131336131345%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131334131341%_)))
                 (_%E131335131359%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131334131341%_)
                        (let ((_%e131337131349%_
                               (gx#syntax-e _%e131334131341%_)))
                          (let ((_%hd131338131352%_ (##car _%e131337131349%_))
                                (_%tl131339131354%_ (##cdr _%e131337131349%_)))
                            (let ((_%body131357%_ _%tl131339131354%_))
                              (if (gx#stx-list? _%body131357%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate131333%_ _%body131357%_))
                                  (_%E131336131345%_)))))
                        (_%E131336131345%_)))))
            (_%E131335131359%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx131277%_)
        (let* ((_%e131278131291%_ _%stx131277%_)
               (_%E131280131295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131278131291%_)))
               (_%E131279131327%_
                (lambda ()
                  (if (gx#stx-pair? _%e131278131291%_)
                      (let ((_%e131281131299%_
                             (gx#syntax-e _%e131278131291%_)))
                        (let ((_%hd131282131302%_ (##car _%e131281131299%_))
                              (_%tl131283131304%_ (##cdr _%e131281131299%_)))
                          (if (gx#stx-pair? _%tl131283131304%_)
                              (let ((_%e131284131307%_
                                     (gx#syntax-e _%tl131283131304%_)))
                                (let ((_%hd131285131310%_
                                       (##car _%e131284131307%_))
                                      (_%tl131286131312%_
                                       (##cdr _%e131284131307%_)))
                                  (let ((_%hd131315%_ _%hd131285131310%_))
                                    (if (gx#stx-pair? _%tl131286131312%_)
                                        (let ((_%e131287131317%_
                                               (gx#syntax-e
                                                _%tl131286131312%_)))
                                          (let ((_%hd131288131320%_
                                                 (##car _%e131287131317%_))
                                                (_%tl131289131322%_
                                                 (##cdr _%e131287131317%_)))
                                            (let ((_%expr131325%_
                                                   _%hd131288131320%_))
                                              (if (gx#stx-null?
                                                   _%tl131289131322%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd131315%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd131315%_)
                          (cons _%expr131325%_ '())))
              (_%E131280131295%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131280131295%_)))))
                                        (_%E131280131295%_)))))
                              (_%E131280131295%_))))
                      (_%E131280131295%_)))))
          (_%E131279131327%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx131223%_)
        (let* ((_%e131224131237%_ _%stx131223%_)
               (_%E131226131241%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131224131237%_)))
               (_%E131225131273%_
                (lambda ()
                  (if (gx#stx-pair? _%e131224131237%_)
                      (let ((_%e131227131245%_
                             (gx#syntax-e _%e131224131237%_)))
                        (let ((_%hd131228131248%_ (##car _%e131227131245%_))
                              (_%tl131229131250%_ (##cdr _%e131227131245%_)))
                          (if (gx#stx-pair? _%tl131229131250%_)
                              (let ((_%e131230131253%_
                                     (gx#syntax-e _%tl131229131250%_)))
                                (let ((_%hd131231131256%_
                                       (##car _%e131230131253%_))
                                      (_%tl131232131258%_
                                       (##cdr _%e131230131253%_)))
                                  (let ((_%hd131261%_ _%hd131231131256%_))
                                    (if (gx#stx-pair? _%tl131232131258%_)
                                        (let ((_%e131233131263%_
                                               (gx#syntax-e
                                                _%tl131232131258%_)))
                                          (let ((_%hd131234131266%_
                                                 (##car _%e131233131263%_))
                                                (_%tl131235131268%_
                                                 (##cdr _%e131233131263%_)))
                                            (let ((_%expr131271%_
                                                   _%hd131234131266%_))
                                              (if (gx#stx-null?
                                                   _%tl131235131268%_)
                                                  (if (gx#identifier?
                                                       _%hd131261%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd131261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr131271%_ '())))
              (_%E131226131241%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131226131241%_)))))
                                        (_%E131226131241%_)))))
                              (_%E131226131241%_))))
                      (_%E131226131241%_)))))
          (_%E131225131273%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx131169%_)
        (let* ((_%e131170131183%_ _%stx131169%_)
               (_%E131172131187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131170131183%_)))
               (_%E131171131219%_
                (lambda ()
                  (if (gx#stx-pair? _%e131170131183%_)
                      (let ((_%e131173131191%_
                             (gx#syntax-e _%e131170131183%_)))
                        (let ((_%hd131174131194%_ (##car _%e131173131191%_))
                              (_%tl131175131196%_ (##cdr _%e131173131191%_)))
                          (if (gx#stx-pair? _%tl131175131196%_)
                              (let ((_%e131176131199%_
                                     (gx#syntax-e _%tl131175131196%_)))
                                (let ((_%hd131177131202%_
                                       (##car _%e131176131199%_))
                                      (_%tl131178131204%_
                                       (##cdr _%e131176131199%_)))
                                  (let ((_%id131207%_ _%hd131177131202%_))
                                    (if (gx#stx-pair? _%tl131178131204%_)
                                        (let ((_%e131179131209%_
                                               (gx#syntax-e
                                                _%tl131178131204%_)))
                                          (let ((_%hd131180131212%_
                                                 (##car _%e131179131209%_))
                                                (_%tl131181131214%_
                                                 (##cdr _%e131179131209%_)))
                                            (let ((_%alias-id131217%_
                                                   _%hd131180131212%_))
                                              (if (gx#stx-null?
                                                   _%tl131181131214%_)
                                                  (if (and (gx#identifier?
                                                            _%id131207%_)
                                                           (gx#identifier?
                                                            _%alias-id131217%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id131207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id131217%_ '())))
              (_%E131172131187%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131172131187%_)))))
                                        (_%E131172131187%_)))))
                              (_%E131172131187%_))))
                      (_%E131172131187%_)))))
          (_%E131171131219%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx131126%_)
        (let* ((_%e131127131137%_ _%stx131126%_)
               (_%E131129131141%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131127131137%_)))
               (_%E131128131165%_
                (lambda ()
                  (if (gx#stx-pair? _%e131127131137%_)
                      (let ((_%e131130131145%_
                             (gx#syntax-e _%e131127131137%_)))
                        (let ((_%hd131131131148%_ (##car _%e131130131145%_))
                              (_%tl131132131150%_ (##cdr _%e131130131145%_)))
                          (if (gx#stx-pair? _%tl131132131150%_)
                              (let ((_%e131133131153%_
                                     (gx#syntax-e _%tl131132131150%_)))
                                (let ((_%hd131134131156%_
                                       (##car _%e131133131153%_))
                                      (_%tl131135131158%_
                                       (##cdr _%e131133131153%_)))
                                  (let* ((_%hd131161%_ _%hd131134131156%_)
                                         (_%body131163%_ _%tl131135131158%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd131161%_)
                                             (gx#stx-list? _%body131163%_)
                                             (not (gx#stx-null?
                                                   _%body131163%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd131161%_)
                                         _%body131163%_)
                                        (_%E131129131141%_)))))
                              (_%E131129131141%_))))
                      (_%E131129131141%_)))))
          (_%E131128131165%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx131062%_)
        (letrec ((_%generate131064%_
                  (lambda (_%clause131094%_)
                    (let* ((_%e131095131102%_ _%clause131094%_)
                           (_%E131097131106%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx131062%_
                               _%clause131094%_)))
                           (_%E131096131122%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131095131102%_)
                                  (let ((_%e131098131110%_
                                         (gx#syntax-e _%e131095131102%_)))
                                    (let ((_%hd131099131113%_
                                           (##car _%e131098131110%_))
                                          (_%tl131100131115%_
                                           (##cdr _%e131098131110%_)))
                                      (let* ((_%hd131118%_ _%hd131099131113%_)
                                             (_%body131120%_
                                              _%tl131100131115%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd131118%_)
                                                 (gx#stx-list? _%body131120%_)
                                                 (not (gx#stx-null?
                                                       _%body131120%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd131118%_)
                                                   _%body131120%_)
                                             (gx#stx-source _%clause131094%_))
                                            (_%E131097131106%_)))))
                                  (_%E131097131106%_)))))
                      (_%E131096131122%_)))))
          (let* ((_%e131065131072%_ _%stx131062%_)
                 (_%E131067131076%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131065131072%_)))
                 (_%E131066131090%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131065131072%_)
                        (let ((_%e131068131080%_
                               (gx#syntax-e _%e131065131072%_)))
                          (let ((_%hd131069131083%_ (##car _%e131068131080%_))
                                (_%tl131070131085%_ (##cdr _%e131068131080%_)))
                            (let ((_%clauses131088%_ _%tl131070131085%_))
                              (if (gx#stx-list? _%clauses131088%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate131064%_
                                    _%clauses131088%_))
                                  (_%E131067131076%_)))))
                        (_%E131067131076%_)))))
            (_%E131066131090%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx130963%_ _%form130964%_)
        (letrec ((_%generate130966%_
                  (lambda (_%bind131009%_)
                    (let* ((_%e131010131020%_ _%bind131009%_)
                           (_%E131012131024%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx130963%_
                               _%bind131009%_)))
                           (_%E131011131048%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131010131020%_)
                                  (let ((_%e131013131028%_
                                         (gx#syntax-e _%e131010131020%_)))
                                    (let ((_%hd131014131031%_
                                           (##car _%e131013131028%_))
                                          (_%tl131015131033%_
                                           (##cdr _%e131013131028%_)))
                                      (let ((_%ids131036%_ _%hd131014131031%_))
                                        (if (gx#stx-pair? _%tl131015131033%_)
                                            (let ((_%e131016131038%_
                                                   (gx#syntax-e
                                                    _%tl131015131033%_)))
                                              (let ((_%hd131017131041%_
                                                     (##car _%e131016131038%_))
                                                    (_%tl131018131043%_
                                                     (##cdr _%e131016131038%_)))
                                                (let ((_%expr131046%_
                                                       _%hd131017131041%_))
                                                  (if (gx#stx-null?
                                                       _%tl131018131043%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids131036%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids131036%_)
                        (cons _%expr131046%_ '()))
                  (_%E131012131024%_))
              (_%E131012131024%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E131012131024%_)))))
                                  (_%E131012131024%_)))))
                      (_%E131011131048%_)))))
          (let* ((_%e130967130977%_ _%stx130963%_)
                 (_%E130969130981%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e130967130977%_)))
                 (_%E130968131005%_
                  (lambda ()
                    (if (gx#stx-pair? _%e130967130977%_)
                        (let ((_%e130970130985%_
                               (gx#syntax-e _%e130967130977%_)))
                          (let ((_%hd130971130988%_ (##car _%e130970130985%_))
                                (_%tl130972130990%_ (##cdr _%e130970130985%_)))
                            (if (gx#stx-pair? _%tl130972130990%_)
                                (let ((_%e130973130993%_
                                       (gx#syntax-e _%tl130972130990%_)))
                                  (let ((_%hd130974130996%_
                                         (##car _%e130973130993%_))
                                        (_%tl130975130998%_
                                         (##cdr _%e130973130993%_)))
                                    (let* ((_%hd131001%_ _%hd130974130996%_)
                                           (_%body131003%_ _%tl130975130998%_))
                                      (if (and (gx#stx-list? _%hd131001%_)
                                               (gx#stx-list? _%body131003%_)
                                               (not (gx#stx-null?
                                                     _%body131003%_)))
                                          (gx#core-cons*
                                           _%form130964%_
                                           (gx#stx-map1
                                            _%generate130966%_
                                            _%hd131001%_)
                                           _%body131003%_)
                                          (_%E130969130981%_)))))
                                (_%E130969130981%_))))
                        (_%E130969130981%_)))))
            (_%E130968131005%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx131055%_)
        (let ((_%form131057%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx131055%_ _%form131057%_))))
    (define gx#macro-expand-let-values
      (lambda _g133443_
        (let ((_g133444_ (##length _g133443_)))
          (cond ((##fx= _g133444_ 1)
                 (apply gx#macro-expand-let-values__0 _g133443_))
                ((##fx= _g133444_ 2)
                 (apply gx#macro-expand-let-values__% _g133443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g133443_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx130960%_)
        (gx#macro-expand-let-values__% _%stx130960%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx130958%_)
        (gx#macro-expand-let-values__% _%stx130958%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx130849%_)
        (let* ((_%e130850130876%_ _%stx130849%_)
               (_%E130862130880%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130850130876%_)))
               (_%E130852130922%_
                (lambda ()
                  (if (gx#stx-pair? _%e130850130876%_)
                      (let ((_%e130863130884%_
                             (gx#syntax-e _%e130850130876%_)))
                        (let ((_%hd130864130887%_ (##car _%e130863130884%_))
                              (_%tl130865130889%_ (##cdr _%e130863130884%_)))
                          (if (gx#stx-pair? _%tl130865130889%_)
                              (let ((_%e130866130892%_
                                     (gx#syntax-e _%tl130865130889%_)))
                                (let ((_%hd130867130895%_
                                       (##car _%e130866130892%_))
                                      (_%tl130868130897%_
                                       (##cdr _%e130866130892%_)))
                                  (let ((_%test130900%_ _%hd130867130895%_))
                                    (if (gx#stx-pair? _%tl130868130897%_)
                                        (let ((_%e130869130902%_
                                               (gx#syntax-e
                                                _%tl130868130897%_)))
                                          (let ((_%hd130870130905%_
                                                 (##car _%e130869130902%_))
                                                (_%tl130871130907%_
                                                 (##cdr _%e130869130902%_)))
                                            (let ((_%K130910%_
                                                   _%hd130870130905%_))
                                              (if (gx#stx-pair?
                                                   _%tl130871130907%_)
                                                  (let ((_%e130872130912%_
                                                         (gx#syntax-e
                                                          _%tl130871130907%_)))
                                                    (let ((_%hd130873130915%_
                                                           (##car _%e130872130912%_))
                                                          (_%tl130874130917%_
                                                           (##cdr _%e130872130912%_)))
                                                      (let ((_%E130920%_
                                                             _%hd130873130915%_))
                                                        (if (gx#stx-null?
                                                             _%tl130874130917%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test130900%_
                                                             _%K130910%_
                                                             _%E130920%_)
                                                            (_%E130862130880%_)))))
                                                  (_%E130862130880%_)))))
                                        (_%E130862130880%_)))))
                              (_%E130862130880%_))))
                      (_%E130862130880%_))))
               (_%E130851130954%_
                (lambda ()
                  (if (gx#stx-pair? _%e130850130876%_)
                      (let ((_%e130853130926%_
                             (gx#syntax-e _%e130850130876%_)))
                        (let ((_%hd130854130929%_ (##car _%e130853130926%_))
                              (_%tl130855130931%_ (##cdr _%e130853130926%_)))
                          (if (gx#stx-pair? _%tl130855130931%_)
                              (let ((_%e130856130934%_
                                     (gx#syntax-e _%tl130855130931%_)))
                                (let ((_%hd130857130937%_
                                       (##car _%e130856130934%_))
                                      (_%tl130858130939%_
                                       (##cdr _%e130856130934%_)))
                                  (let ((_%test130942%_ _%hd130857130937%_))
                                    (if (gx#stx-pair? _%tl130858130939%_)
                                        (let ((_%e130859130944%_
                                               (gx#syntax-e
                                                _%tl130858130939%_)))
                                          (let ((_%hd130860130947%_
                                                 (##car _%e130859130944%_))
                                                (_%tl130861130949%_
                                                 (##cdr _%e130859130944%_)))
                                            (let ((_%K130952%_
                                                   _%hd130860130947%_))
                                              (if (gx#stx-null?
                                                   _%tl130861130949%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test130942%_
                                                   _%K130952%_
                                                   '#!void)
                                                  (_%E130852130922%_)))))
                                        (_%E130852130922%_)))))
                              (_%E130852130922%_))))
                      (_%E130852130922%_)))))
          (_%E130851130954%_))))
    (define gx#free-identifier=?
      (lambda (_%xid130834%_ _%yid130835%_)
        (let ((_%xe130837%_ (gx#resolve-identifier__0 _%xid130834%_))
              (_%ye130838%_ (gx#resolve-identifier__0 _%yid130835%_)))
          (if (and _%xe130837%_ _%ye130838%_)
              (let ((_%$e130841%_ (eq? _%xe130837%_ _%ye130838%_)))
                (if _%$e130841%_
                    _%$e130841%_
                    (if (##structure-instance-of? _%xe130837%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye130838%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe130837%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye130838%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe130837%_ _%ye130838%_)
                  '#f
                  (gx#stx-eq? _%xid130834%_ _%yid130835%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid130815%_ _%yid130816%_)
        (letrec ((_%context130818%_
                  (lambda (_%e130832%_)
                    (if (##structure-direct-instance-of?
                         _%e130832%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e130832%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks130819%_
                  (lambda (_%e130827%_)
                    (if (symbol? _%e130827%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e130827%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e130827%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e130827%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap130820%_
                  (lambda (_%e130825%_)
                    (if (symbol? _%e130825%_)
                        _%e130825%_
                        (gx#syntax-local-unwrap _%e130825%_)))))
          (let ((_%x130822%_ (_%unwrap130820%_ _%xid130815%_))
                (_%y130823%_ (_%unwrap130820%_ _%yid130816%_)))
            (if (gx#stx-eq? _%x130822%_ _%y130823%_)
                (if (eq? (_%context130818%_ _%x130822%_)
                         (_%context130818%_ _%y130823%_))
                    (equal? (_%marks130819%_ _%x130822%_)
                            (_%marks130819%_ _%y130823%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx130813%_)
        (if (gx#identifier? _%stx130813%_)
            (gx#core-identifier=? _%stx130813%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx130811%_)
        (if (gx#identifier? _%stx130811%_)
            (gx#core-identifier=? _%stx130811%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx130754%_ _%where130755%_)
        (let _%lp130757%_ ((_%rest130759%_ (gx#syntax->list _%stx130754%_)))
          (let* ((_%rest130760130768%_ _%rest130759%_)
                 (_%else130762130776%_ (lambda () '#t))
                 (_%K130764130789%_
                  (lambda (_%rest130779%_ _%hd130780%_)
                    (if (gx#identifier? _%hd130780%_)
                        (if (__find (lambda (_%g130782130784%_)
                                      (gx#bound-identifier=?
                                       _%g130782130784%_
                                       _%hd130780%_))
                                    _%rest130779%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where130755%_
                             _%hd130780%_)
                            (_%lp130757%_ _%rest130779%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where130755%_
                         _%hd130780%_)))))
            (if (pair? _%rest130760130768%_)
                (let ((_%hd130765130792%_ (##car _%rest130760130768%_))
                      (_%tl130766130794%_ (##cdr _%rest130760130768%_)))
                  (let* ((_%hd130797%_ _%hd130765130792%_)
                         (_%rest130799%_ _%tl130766130794%_))
                    (_%K130764130789%_ _%rest130799%_ _%hd130797%_)))
                (_%else130762130776%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx130804%_)
        (let ((_%where130806%_ _%stx130804%_))
          (gx#check-duplicate-identifiers__% _%stx130804%_ _%where130806%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g133445_
        (let ((_g133446_ (##length _g133445_)))
          (cond ((##fx= _g133446_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g133445_))
                ((##fx= _g133446_ 2)
                 (apply gx#check-duplicate-identifiers__% _g133445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g133445_))))))
    (define gx#core-bind-values?
      (lambda (_%stx130746%_)
        (gx#stx-andmap
         (lambda (_%x130748%_)
           (let ((_%$e130750%_ (gx#identifier? _%x130748%_)))
             (if _%$e130750%_ _%$e130750%_ (gx#stx-false? _%x130748%_))))
         _%stx130746%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx130710%_ _%rebind?130711%_ _%phi130712%_ _%ctx130713%_)
        (gx#stx-for-each1
         (lambda (_%id130715%_)
           (if (gx#identifier? _%id130715%_)
               (gx#core-bind-runtime!__%
                _%id130715%_
                _%rebind?130711%_
                _%phi130712%_
                _%ctx130713%_)
               '#!void))
         _%stx130710%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx130720%_)
        (let* ((_%rebind?130722%_ '#f)
               (_%phi130724%_ (gx#current-expander-phi))
               (_%ctx130726%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx130720%_
           _%rebind?130722%_
           _%phi130724%_
           _%ctx130726%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx130728%_ _%rebind?130729%_)
        (let* ((_%phi130731%_ (gx#current-expander-phi))
               (_%ctx130733%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx130728%_
           _%rebind?130729%_
           _%phi130731%_
           _%ctx130733%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx130735%_ _%rebind?130736%_ _%phi130737%_)
        (let ((_%ctx130739%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx130735%_
           _%rebind?130736%_
           _%phi130737%_
           _%ctx130739%_))))
    (define gx#core-bind-values!
      (lambda _g133447_
        (let ((_g133448_ (##length _g133447_)))
          (cond ((##fx= _g133448_ 1) (apply gx#core-bind-values!__0 _g133447_))
                ((##fx= _g133448_ 2) (apply gx#core-bind-values!__1 _g133447_))
                ((##fx= _g133448_ 3) (apply gx#core-bind-values!__2 _g133447_))
                ((##fx= _g133448_ 4) (apply gx#core-bind-values!__% _g133447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g133447_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx130705%_)
        (gx#stx-map1
         (lambda (_%x130707%_)
           (if (gx#identifier? _%x130707%_)
               (gx#core-quote-syntax__0 _%x130707%_)
               '#f))
         _%stx130705%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx130698%_)
        (if (gx#identifier? _%stx130698%_)
            (let* ((_%bind130700%_ (gx#resolve-identifier__0 _%stx130698%_))
                   (_%$e130702%_ (not _%bind130700%_)))
              (if _%$e130702%_
                  _%$e130702%_
                  (##structure-instance-of?
                   _%bind130700%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id130687%_ _%form130688%_)
        (let ((_%bind130690%_ (gx#resolve-identifier__0 _%id130687%_)))
          (if (##structure-instance-of? _%bind130690%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id130687%_)
              (if (not _%bind130690%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id130687%_)))
                      (gx#core-quote-syntax__0 _%id130687%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form130688%_
                       _%id130687%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form130688%_
                   _%id130687%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id130642%_ _%rebind?130643%_ _%phi130644%_ _%ctx130645%_)
        (let* ((_%key130647%_ (gx#core-identifier-key _%id130642%_))
               (_%eid130649%_
                (gx#make-binding-id__%
                 _%key130647%_
                 '#f
                 _%phi130644%_
                 _%ctx130645%_))
               (_%bind130655%_
                (if (##structure-instance-of?
                     _%ctx130645%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid130649%_
                     _%key130647%_
                     _%phi130644%_
                     _%ctx130645%_)
                    (if (##structure-instance-of?
                         _%ctx130645%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid130649%_
                         _%key130647%_
                         _%phi130644%_)
                        (if (##structure-instance-of?
                             _%ctx130645%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid130649%_
                             _%key130647%_
                             _%phi130644%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid130649%_
                             _%key130647%_
                             _%phi130644%_))))))
          (gx#bind-identifier!__%
           _%id130642%_
           _%bind130655%_
           _%rebind?130643%_
           _%phi130644%_
           _%ctx130645%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id130661%_)
        (let* ((_%rebind?130663%_ '#f)
               (_%phi130665%_ (gx#current-expander-phi))
               (_%ctx130667%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id130661%_
           _%rebind?130663%_
           _%phi130665%_
           _%ctx130667%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id130669%_ _%rebind?130670%_)
        (let* ((_%phi130672%_ (gx#current-expander-phi))
               (_%ctx130674%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id130669%_
           _%rebind?130670%_
           _%phi130672%_
           _%ctx130674%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id130676%_ _%rebind?130677%_ _%phi130678%_)
        (let ((_%ctx130680%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id130676%_
           _%rebind?130677%_
           _%phi130678%_
           _%ctx130680%_))))
    (define gx#core-bind-runtime!
      (lambda _g133449_
        (let ((_g133450_ (##length _g133449_)))
          (cond ((##fx= _g133450_ 1)
                 (apply gx#core-bind-runtime!__0 _g133449_))
                ((##fx= _g133450_ 2)
                 (apply gx#core-bind-runtime!__1 _g133449_))
                ((##fx= _g133450_ 3)
                 (apply gx#core-bind-runtime!__2 _g133449_))
                ((##fx= _g133450_ 4)
                 (apply gx#core-bind-runtime!__% _g133449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g133449_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id130594%_
               _%eid130595%_
               _%rebind?130596%_
               _%phi130597%_
               _%ctx130598%_)
        (let* ((_%key130600%_ (gx#core-identifier-key _%id130594%_))
               (_%bind130605%_
                (if (##structure-instance-of?
                     _%ctx130598%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid130595%_
                     _%key130600%_
                     _%phi130597%_
                     _%ctx130598%_)
                    (if (##structure-instance-of?
                         _%ctx130598%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid130595%_
                         _%key130600%_
                         _%phi130597%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid130595%_
                         _%key130600%_
                         _%phi130597%_)))))
          (gx#bind-identifier!__%
           _%id130594%_
           _%bind130605%_
           _%rebind?130596%_
           _%phi130597%_
           _%ctx130598%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id130611%_ _%eid130612%_)
        (let* ((_%rebind?130614%_ '#f)
               (_%phi130616%_ (gx#current-expander-phi))
               (_%ctx130618%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id130611%_
           _%eid130612%_
           _%rebind?130614%_
           _%phi130616%_
           _%ctx130618%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id130620%_ _%eid130621%_ _%rebind?130622%_)
        (let* ((_%phi130624%_ (gx#current-expander-phi))
               (_%ctx130626%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id130620%_
           _%eid130621%_
           _%rebind?130622%_
           _%phi130624%_
           _%ctx130626%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id130628%_ _%eid130629%_ _%rebind?130630%_ _%phi130631%_)
        (let ((_%ctx130633%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id130628%_
           _%eid130629%_
           _%rebind?130630%_
           _%phi130631%_
           _%ctx130633%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g133451_
        (let ((_g133452_ (##length _g133451_)))
          (cond ((##fx= _g133452_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g133451_))
                ((##fx= _g133452_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g133451_))
                ((##fx= _g133452_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g133451_))
                ((##fx= _g133452_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g133451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g133451_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id130554%_
               _%eid130555%_
               _%rebind?130556%_
               _%phi130557%_
               _%ctx130558%_)
        (gx#bind-identifier!__%
         _%id130554%_
         (##structure
          gx#extern-binding::t
          _%eid130555%_
          (gx#core-identifier-key _%id130554%_)
          _%phi130557%_)
         _%rebind?130556%_
         _%phi130557%_
         _%ctx130558%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id130563%_ _%eid130564%_)
        (let* ((_%rebind?130566%_ '#f)
               (_%phi130568%_ (gx#current-expander-phi))
               (_%ctx130570%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130563%_
           _%eid130564%_
           _%rebind?130566%_
           _%phi130568%_
           _%ctx130570%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id130572%_ _%eid130573%_ _%rebind?130574%_)
        (let* ((_%phi130576%_ (gx#current-expander-phi))
               (_%ctx130578%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130572%_
           _%eid130573%_
           _%rebind?130574%_
           _%phi130576%_
           _%ctx130578%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id130580%_ _%eid130581%_ _%rebind?130582%_ _%phi130583%_)
        (let ((_%ctx130585%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130580%_
           _%eid130581%_
           _%rebind?130582%_
           _%phi130583%_
           _%ctx130585%_))))
    (define gx#core-bind-extern!
      (lambda _g133453_
        (let ((_g133454_ (##length _g133453_)))
          (cond ((##fx= _g133454_ 2) (apply gx#core-bind-extern!__0 _g133453_))
                ((##fx= _g133454_ 3) (apply gx#core-bind-extern!__1 _g133453_))
                ((##fx= _g133454_ 4) (apply gx#core-bind-extern!__2 _g133453_))
                ((##fx= _g133454_ 5) (apply gx#core-bind-extern!__% _g133453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g133453_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id130508%_
               _%e130509%_
               _%rebind?130510%_
               _%phi130511%_
               _%ctx130512%_)
        (gx#bind-identifier!__%
         _%id130508%_
         (let ((_%key130517%_ (gx#core-identifier-key _%id130508%_))
               (_%e130518%_
                (if (or (##structure-instance-of? _%e130509%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e130509%_
                         'gx#expander-context::t))
                    _%e130509%_
                    (##structure
                     gx#user-expander::t
                     _%e130509%_
                     _%ctx130512%_
                     _%phi130511%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key130517%_
             '#t
             _%phi130511%_
             _%ctx130512%_)
            _%key130517%_
            _%phi130511%_
            _%e130518%_))
         _%rebind?130510%_
         _%phi130511%_
         _%ctx130512%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id130523%_ _%e130524%_)
        (let* ((_%rebind?130526%_ '#f)
               (_%phi130528%_ (gx#current-expander-phi))
               (_%ctx130530%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130523%_
           _%e130524%_
           _%rebind?130526%_
           _%phi130528%_
           _%ctx130530%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id130532%_ _%e130533%_ _%rebind?130534%_)
        (let* ((_%phi130536%_ (gx#current-expander-phi))
               (_%ctx130538%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130532%_
           _%e130533%_
           _%rebind?130534%_
           _%phi130536%_
           _%ctx130538%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id130540%_ _%e130541%_ _%rebind?130542%_ _%phi130543%_)
        (let ((_%ctx130545%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130540%_
           _%e130541%_
           _%rebind?130542%_
           _%phi130543%_
           _%ctx130545%_))))
    (define gx#core-bind-syntax!
      (lambda _g133455_
        (let ((_g133456_ (##length _g133455_)))
          (cond ((##fx= _g133456_ 2) (apply gx#core-bind-syntax!__0 _g133455_))
                ((##fx= _g133456_ 3) (apply gx#core-bind-syntax!__1 _g133455_))
                ((##fx= _g133456_ 4) (apply gx#core-bind-syntax!__2 _g133455_))
                ((##fx= _g133456_ 5) (apply gx#core-bind-syntax!__% _g133455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g133455_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id130491%_ _%e130492%_ _%rebind?130493%_)
        (gx#core-bind-syntax!__%
         _%id130491%_
         _%e130492%_
         _%rebind?130493%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id130498%_ _%e130499%_)
        (let ((_%rebind?130501%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id130498%_
           _%e130499%_
           _%rebind?130501%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g133457_
        (let ((_g133458_ (##length _g133457_)))
          (cond ((##fx= _g133458_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g133457_))
                ((##fx= _g133458_ 3)
                 (apply gx#core-bind-root-syntax!__% _g133457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g133457_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id130449%_
               _%alias-id130450%_
               _%rebind?130451%_
               _%phi130452%_
               _%ctx130453%_)
        (gx#bind-identifier!__%
         _%id130449%_
         (let ((_%key130455%_ (gx#core-identifier-key _%id130449%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key130455%_
             '#t
             _%phi130452%_
             _%ctx130453%_)
            _%key130455%_
            _%phi130452%_
            _%alias-id130450%_))
         _%rebind?130451%_
         _%phi130452%_
         _%ctx130453%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id130460%_ _%alias-id130461%_)
        (let* ((_%rebind?130463%_ '#f)
               (_%phi130465%_ (gx#current-expander-phi))
               (_%ctx130467%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130460%_
           _%alias-id130461%_
           _%rebind?130463%_
           _%phi130465%_
           _%ctx130467%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id130469%_ _%alias-id130470%_ _%rebind?130471%_)
        (let* ((_%phi130473%_ (gx#current-expander-phi))
               (_%ctx130475%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130469%_
           _%alias-id130470%_
           _%rebind?130471%_
           _%phi130473%_
           _%ctx130475%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id130477%_ _%alias-id130478%_ _%rebind?130479%_ _%phi130480%_)
        (let ((_%ctx130482%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130477%_
           _%alias-id130478%_
           _%rebind?130479%_
           _%phi130480%_
           _%ctx130482%_))))
    (define gx#core-bind-alias!
      (lambda _g133459_
        (let ((_g133460_ (##length _g133459_)))
          (cond ((##fx= _g133460_ 2) (apply gx#core-bind-alias!__0 _g133459_))
                ((##fx= _g133460_ 3) (apply gx#core-bind-alias!__1 _g133459_))
                ((##fx= _g133460_ 4) (apply gx#core-bind-alias!__2 _g133459_))
                ((##fx= _g133460_ 5) (apply gx#core-bind-alias!__% _g133459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g133459_))))))
    (define gx#make-binding-id__%
      (lambda (_%key130399%_ _%syntax?130400%_ _%phi130401%_ _%ctx130402%_)
        (if (uninterned-symbol? _%key130399%_)
            (##gensym 'L)
            (if (pair? _%key130399%_)
                (gensym (##car _%key130399%_))
                (if (##structure-instance-of? _%ctx130402%_ 'gx#top-context::t)
                    (let ((_%ns130407%_
                           (gx#core-context-namespace__% _%ctx130402%_)))
                      (if (and (fxzero? _%phi130401%_) (not _%syntax?130400%_))
                          (if _%ns130407%_
                              (make-symbol__1 _%ns130407%_ '"#" _%key130399%_)
                              _%key130399%_)
                          (if _%syntax?130400%_
                              (make-symbol__1
                               (let ((_%$e130411%_ _%ns130407%_))
                                 (if _%$e130411%_ _%$e130411%_ '""))
                               '"[:"
                               (number->string _%phi130401%_)
                               '":]#"
                               _%key130399%_)
                              (make-symbol__1
                               (let ((_%$e130415%_ _%ns130407%_))
                                 (if _%$e130415%_ _%$e130415%_ '""))
                               '"["
                               (number->string _%phi130401%_)
                               '"]#"
                               _%key130399%_))))
                    (gensym _%key130399%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key130422%_)
        (let* ((_%syntax?130424%_ '#f)
               (_%phi130426%_ (gx#current-expander-phi))
               (_%ctx130428%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130422%_
           _%syntax?130424%_
           _%phi130426%_
           _%ctx130428%_))))
    (define gx#make-binding-id__1
      (lambda (_%key130430%_ _%syntax?130431%_)
        (let* ((_%phi130433%_ (gx#current-expander-phi))
               (_%ctx130435%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130430%_
           _%syntax?130431%_
           _%phi130433%_
           _%ctx130435%_))))
    (define gx#make-binding-id__2
      (lambda (_%key130437%_ _%syntax?130438%_ _%phi130439%_)
        (let ((_%ctx130441%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130437%_
           _%syntax?130438%_
           _%phi130439%_
           _%ctx130441%_))))
    (define gx#make-binding-id
      (lambda _g133461_
        (let ((_g133462_ (##length _g133461_)))
          (cond ((##fx= _g133462_ 1) (apply gx#make-binding-id__0 _g133461_))
                ((##fx= _g133462_ 2) (apply gx#make-binding-id__1 _g133461_))
                ((##fx= _g133462_ 3) (apply gx#make-binding-id__2 _g133461_))
                ((##fx= _g133462_ 4) (apply gx#make-binding-id__% _g133461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g133461_))))))))
