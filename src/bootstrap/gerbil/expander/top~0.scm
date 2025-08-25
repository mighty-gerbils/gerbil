(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1756156300)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx133405%_)
        (letrec ((_%expand-special133407%_
                  (lambda (_%hd133409%_ _%K133410%_ _%rest133411%_ _%r133412%_)
                    (_%K133410%_
                     _%rest133411%_
                     (cons (gx#core-expand-top _%hd133409%_) _%r133412%_)))))
          (gx#core-expand-block__0 _%stx133405%_ _%expand-special133407%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx133158%_)
        (letrec ((_%expand-special133160%_
                  (lambda (_%hd133280%_ _%K133281%_ _%rest133282%_ _%r133283%_)
                    (let* ((_%K133287%_
                            (lambda (_%e133285%_)
                              (_%K133281%_
                               _%rest133282%_
                               (cons _%e133285%_ _%r133283%_))))
                           (_%e133288133317%_ _%hd133280%_)
                           (_%E133312133321%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e133288133317%_)))
                           (_%E133308133333%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133288133317%_)
                                  (let ((_%e133313133325%_
                                         (gx#syntax-e _%e133288133317%_)))
                                    (let ((_%hd133314133328%_
                                           (##car _%e133313133325%_))
                                          (_%tl133315133330%_
                                           (##cdr _%e133313133325%_)))
                                      (if (and (gx#identifier?
                                                _%hd133314133328%_)
                                               (gx#core-identifier=?
                                                _%hd133314133328%_
                                                '%#define-runtime))
                                          (_%K133287%_
                                           (gx#core-expand-define-runtime%
                                            _%hd133280%_))
                                          (_%E133312133321%_))))
                                  (_%E133312133321%_))))
                           (_%E133304133345%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133288133317%_)
                                  (let ((_%e133309133337%_
                                         (gx#syntax-e _%e133288133317%_)))
                                    (let ((_%hd133310133340%_
                                           (##car _%e133309133337%_))
                                          (_%tl133311133342%_
                                           (##cdr _%e133309133337%_)))
                                      (if (and (gx#identifier?
                                                _%hd133310133340%_)
                                               (gx#core-identifier=?
                                                _%hd133310133340%_
                                                '%#define-alias))
                                          (_%K133287%_
                                           (gx#core-expand-define-alias%
                                            _%hd133280%_))
                                          (_%E133308133333%_))))
                                  (_%E133308133333%_))))
                           (_%E133294133357%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133288133317%_)
                                  (let ((_%e133305133349%_
                                         (gx#syntax-e _%e133288133317%_)))
                                    (let ((_%hd133306133352%_
                                           (##car _%e133305133349%_))
                                          (_%tl133307133354%_
                                           (##cdr _%e133305133349%_)))
                                      (if (and (gx#identifier?
                                                _%hd133306133352%_)
                                               (gx#core-identifier=?
                                                _%hd133306133352%_
                                                '%#define-syntax))
                                          (_%K133287%_
                                           (gx#core-expand-define-syntax%
                                            _%hd133280%_))
                                          (_%E133304133345%_))))
                                  (_%E133304133345%_))))
                           (_%E133290133389%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133288133317%_)
                                  (let ((_%e133295133361%_
                                         (gx#syntax-e _%e133288133317%_)))
                                    (let ((_%hd133296133364%_
                                           (##car _%e133295133361%_))
                                          (_%tl133297133366%_
                                           (##cdr _%e133295133361%_)))
                                      (if (and (gx#identifier?
                                                _%hd133296133364%_)
                                               (gx#core-identifier=?
                                                _%hd133296133364%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl133297133366%_)
                                              (let ((_%e133298133369%_
                                                     (gx#syntax-e
                                                      _%tl133297133366%_)))
                                                (let ((_%hd133299133372%_
                                                       (##car _%e133298133369%_))
                                                      (_%tl133300133374%_
                                                       (##cdr _%e133298133369%_)))
                                                  (let ((_%hd-bind133377%_
                                                         _%hd133299133372%_))
                                                    (if (gx#stx-pair?
                                                         _%tl133300133374%_)
                                                        (let ((_%e133301133379%_
                                                               (gx#syntax-e
                                                                _%tl133300133374%_)))
                                                          (let ((_%hd133302133382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e133301133379%_))
                        (_%tl133303133384%_ (##cdr _%e133301133379%_)))
                    (let ((_%expr133387%_ _%hd133302133382%_))
                      (if (gx#stx-null? _%tl133303133384%_)
                          (if (gx#core-bind-values? _%hd-bind133377%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind133377%_)
                                (_%K133287%_ _%hd133280%_))
                              (_%E133294133357%_))
                          (_%E133294133357%_)))))
                (_%E133294133357%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133294133357%_))
                                          (_%E133294133357%_))))
                                  (_%E133294133357%_))))
                           (_%E133289133401%_
                            (lambda ()
                              (if (gx#stx-pair? _%e133288133317%_)
                                  (let ((_%e133291133393%_
                                         (gx#syntax-e _%e133288133317%_)))
                                    (let ((_%hd133292133396%_
                                           (##car _%e133291133393%_))
                                          (_%tl133293133398%_
                                           (##cdr _%e133291133393%_)))
                                      (if (and (gx#identifier?
                                                _%hd133292133396%_)
                                               (gx#core-identifier=?
                                                _%hd133292133396%_
                                                '%#begin-syntax))
                                          (_%K133287%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd133280%_))
                                          (_%E133290133389%_))))
                                  (_%E133290133389%_)))))
                      (_%E133289133401%_))))
                 (_%eval-body133161%_
                  (lambda (_%rbody133169%_)
                    (let _%lp133171%_ ((_%rest133173%_ _%rbody133169%_)
                                       (_%body133174%_ '())
                                       (_%ebody133175%_ '()))
                      (let* ((_%rest133176133184%_ _%rest133173%_)
                             (_%else133178133192%_
                              (lambda ()
                                (values _%body133174%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody133175%_)
                                          (gx#stx-source _%stx133158%_))))))
                             (_%K133180133268%_
                              (lambda (_%rest133195%_ _%hd133196%_)
                                (let* ((_%e133197133214%_ _%hd133196%_)
                                       (_%E133209133218%_
                                        (lambda ()
                                          (_%lp133171%_
                                           _%rest133195%_
                                           (cons _%hd133196%_ _%body133174%_)
                                           (cons _%hd133196%_
                                                 _%ebody133175%_))))
                                       (_%E133199133230%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133197133214%_)
                                              (let ((_%e133210133222%_
                                                     (gx#syntax-e
                                                      _%e133197133214%_)))
                                                (let ((_%hd133211133225%_
                                                       (##car _%e133210133222%_))
                                                      (_%tl133212133227%_
                                                       (##cdr _%e133210133222%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd133211133225%_)
                                                           (gx#core-identifier=?
                                                            _%hd133211133225%_
                                                            '%#begin-syntax))
                                                      (_%lp133171%_
                                                       _%rest133195%_
                                                       (cons _%hd133196%_
                                                             _%body133174%_)
                                                       _%ebody133175%_)
                                                      (_%E133209133218%_))))
                                              (_%E133209133218%_))))
                                       (_%E133198133264%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e133197133214%_)
                                              (let ((_%e133200133234%_
                                                     (gx#syntax-e
                                                      _%e133197133214%_)))
                                                (let ((_%hd133201133237%_
                                                       (##car _%e133200133234%_))
                                                      (_%tl133202133239%_
                                                       (##cdr _%e133200133234%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd133201133237%_)
                                                           (gx#core-identifier=?
                                                            _%hd133201133237%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl133202133239%_)
                                                          (let ((_%e133203133242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl133202133239%_)))
                    (let ((_%hd133204133245%_ (##car _%e133203133242%_))
                          (_%tl133205133247%_ (##cdr _%e133203133242%_)))
                      (let ((_%hd-bind133250%_ _%hd133204133245%_))
                        (if (gx#stx-pair? _%tl133205133247%_)
                            (let ((_%e133206133252%_
                                   (gx#syntax-e _%tl133205133247%_)))
                              (let ((_%hd133207133255%_
                                     (##car _%e133206133252%_))
                                    (_%tl133208133257%_
                                     (##cdr _%e133206133252%_)))
                                (let ((_%expr133260%_ _%hd133207133255%_))
                                  (if (gx#stx-null? _%tl133208133257%_)
                                      (let ((_%ehd133262%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind133250%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr133260%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd133196%_))))
                                        (_%lp133171%_
                                         _%rest133195%_
                                         (cons _%ehd133262%_ _%body133174%_)
                                         (cons _%ehd133262%_ _%ebody133175%_)))
                                      (_%E133199133230%_)))))
                            (_%E133199133230%_)))))
                  (_%E133199133230%_))
              (_%E133199133230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133199133230%_)))))
                                  (_%E133198133264%_)))))
                        (if (pair? _%rest133176133184%_)
                            (let ((_%hd133181133271%_
                                   (##car _%rest133176133184%_))
                                  (_%tl133182133273%_
                                   (##cdr _%rest133176133184%_)))
                              (let* ((_%hd133276%_ _%hd133181133271%_)
                                     (_%rest133278%_ _%tl133182133273%_))
                                (_%K133180133268%_
                                 _%rest133278%_
                                 _%hd133276%_)))
                            (_%else133178133192%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody133164%_
                     (gx#core-expand-block__1
                      _%stx133158%_
                      _%expand-special133160%_
                      '#f))
                    (_g133428_ (_%eval-body133161%_ _%rbody133164%_)))
               (begin
                 (let ((_g133429_
                        (if (##values? _g133428_)
                            (##values-length _g133428_)
                            1)))
                   (if (not (##fx= _g133429_ 2))
                       (error "Context expects 2 values" _g133429_)))
                 (let ((_%expanded-body133166%_ (##values-ref _g133428_ 0))
                       (_%value133167%_ (##values-ref _g133428_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body133166%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value133167%_ '())))
                    (gx#stx-source _%stx133158%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx133128%_)
        (let* ((_%e133129133136%_ _%stx133128%_)
               (_%E133131133140%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133129133136%_)))
               (_%E133130133154%_
                (lambda ()
                  (if (gx#stx-pair? _%e133129133136%_)
                      (let ((_%e133132133144%_
                             (gx#syntax-e _%e133129133136%_)))
                        (let ((_%hd133133133147%_ (##car _%e133132133144%_))
                              (_%tl133134133149%_ (##cdr _%e133132133144%_)))
                          (let ((_%body133152%_ _%tl133134133149%_))
                            (if (gx#stx-list? _%body133152%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body133152%_)
                                 (gx#stx-source _%stx133128%_))
                                (_%E133131133140%_)))))
                      (_%E133131133140%_)))))
          (_%E133130133154%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx133126%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx133126%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx133072%_)
        (let* ((_%e133073133086%_ _%stx133072%_)
               (_%E133075133090%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e133073133086%_)))
               (_%E133074133122%_
                (lambda ()
                  (if (gx#stx-pair? _%e133073133086%_)
                      (let ((_%e133076133094%_
                             (gx#syntax-e _%e133073133086%_)))
                        (let ((_%hd133077133097%_ (##car _%e133076133094%_))
                              (_%tl133078133099%_ (##cdr _%e133076133094%_)))
                          (if (gx#stx-pair? _%tl133078133099%_)
                              (let ((_%e133079133102%_
                                     (gx#syntax-e _%tl133078133099%_)))
                                (let ((_%hd133080133105%_
                                       (##car _%e133079133102%_))
                                      (_%tl133081133107%_
                                       (##cdr _%e133079133102%_)))
                                  (let ((_%ann133110%_ _%hd133080133105%_))
                                    (if (gx#stx-pair? _%tl133081133107%_)
                                        (let ((_%e133082133112%_
                                               (gx#syntax-e
                                                _%tl133081133107%_)))
                                          (let ((_%hd133083133115%_
                                                 (##car _%e133082133112%_))
                                                (_%tl133084133117%_
                                                 (##cdr _%e133082133112%_)))
                                            (let ((_%expr133120%_
                                                   _%hd133083133115%_))
                                              (if (gx#stx-null?
                                                   _%tl133084133117%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann133110%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr133120%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx133072%_))
                                                  (_%E133075133090%_)))))
                                        (_%E133075133090%_)))))
                              (_%E133075133090%_))))
                      (_%E133075133090%_)))))
          (_%E133074133122%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx132796%_ _%body132797%_)
        (letrec ((_%expand-special132799%_
                  (lambda (_%hd133067%_ _%K133068%_ _%rest133069%_ _%r133070%_)
                    (_%K133068%_
                     '()
                     (cons (_%expand-internal132800%_
                            _%hd133067%_
                            _%rest133069%_)
                           _%r133070%_))))
                 (_%expand-internal132800%_
                  (lambda (_%hd133063%_ _%rest133064%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal132802%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd133063%_ _%rest133064%_))
                          (gx#stx-source _%stx132796%_))
                         _%expand-internal-special132801%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj133422
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj133422)
                       __obj133422))))
                 (_%expand-internal-special132801%_
                  (lambda (_%hd132958%_ _%K132959%_ _%rest132960%_ _%r132961%_)
                    (let* ((_%e132962132987%_ _%hd132958%_)
                           (_%E132982132991%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132962132987%_)))
                           (_%E132978133003%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132962132987%_)
                                  (let ((_%e132983132995%_
                                         (gx#syntax-e _%e132962132987%_)))
                                    (let ((_%hd132984132998%_
                                           (##car _%e132983132995%_))
                                          (_%tl132985133000%_
                                           (##cdr _%e132983132995%_)))
                                      (if (and (gx#identifier?
                                                _%hd132984132998%_)
                                               (gx#core-identifier=?
                                                _%hd132984132998%_
                                                '%#declare))
                                          (_%K132959%_
                                           _%rest132960%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd132958%_)
                                                 _%r132961%_))
                                          (_%E132982132991%_))))
                                  (_%E132982132991%_))))
                           (_%E132974133015%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132962132987%_)
                                  (let ((_%e132979133007%_
                                         (gx#syntax-e _%e132962132987%_)))
                                    (let ((_%hd132980133010%_
                                           (##car _%e132979133007%_))
                                          (_%tl132981133012%_
                                           (##cdr _%e132979133007%_)))
                                      (if (and (gx#identifier?
                                                _%hd132980133010%_)
                                               (gx#core-identifier=?
                                                _%hd132980133010%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd132958%_)
                                            (_%K132959%_
                                             _%rest132960%_
                                             _%r132961%_))
                                          (_%E132978133003%_))))
                                  (_%E132978133003%_))))
                           (_%E132964133027%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132962132987%_)
                                  (let ((_%e132975133019%_
                                         (gx#syntax-e _%e132962132987%_)))
                                    (let ((_%hd132976133022%_
                                           (##car _%e132975133019%_))
                                          (_%tl132977133024%_
                                           (##cdr _%e132975133019%_)))
                                      (if (and (gx#identifier?
                                                _%hd132976133022%_)
                                               (gx#core-identifier=?
                                                _%hd132976133022%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd132958%_)
                                            (_%K132959%_
                                             _%rest132960%_
                                             _%r132961%_))
                                          (_%E132974133015%_))))
                                  (_%E132974133015%_))))
                           (_%E132963133059%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132962132987%_)
                                  (let ((_%e132965133031%_
                                         (gx#syntax-e _%e132962132987%_)))
                                    (let ((_%hd132966133034%_
                                           (##car _%e132965133031%_))
                                          (_%tl132967133036%_
                                           (##cdr _%e132965133031%_)))
                                      (if (and (gx#identifier?
                                                _%hd132966133034%_)
                                               (gx#core-identifier=?
                                                _%hd132966133034%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl132967133036%_)
                                              (let ((_%e132968133039%_
                                                     (gx#syntax-e
                                                      _%tl132967133036%_)))
                                                (let ((_%hd132969133042%_
                                                       (##car _%e132968133039%_))
                                                      (_%tl132970133044%_
                                                       (##cdr _%e132968133039%_)))
                                                  (let ((_%hd-bind133047%_
                                                         _%hd132969133042%_))
                                                    (if (gx#stx-pair?
                                                         _%tl132970133044%_)
                                                        (let ((_%e132971133049%_
                                                               (gx#syntax-e
                                                                _%tl132970133044%_)))
                                                          (let ((_%hd132972133052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e132971133049%_))
                        (_%tl132973133054%_ (##cdr _%e132971133049%_)))
                    (let ((_%expr133057%_ _%hd132972133052%_))
                      (if (gx#stx-null? _%tl132973133054%_)
                          (if (gx#core-bind-values? _%hd-bind133047%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind133047%_)
                                (_%K132959%_
                                 _%rest132960%_
                                 (cons _%hd132958%_ _%r132961%_)))
                              (_%E132964133027%_))
                          (_%E132964133027%_)))))
                (_%E132964133027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E132964133027%_))
                                          (_%E132964133027%_))))
                                  (_%E132964133027%_)))))
                      (_%E132963133059%_))))
                 (_%wrap-internal132802%_
                  (lambda (_%rbody132804%_)
                    (let _%lp132806%_ ((_%rest132808%_ _%rbody132804%_)
                                       (_%decls132809%_ '())
                                       (_%bind132810%_ '())
                                       (_%body132811%_ '()))
                      (let* ((_%e132812132819%_ _%rest132808%_)
                             (_%E132814132868%_
                              (lambda ()
                                (let* ((_%body132863%_
                                        (let* ((_%body132822132832%_
                                                _%body132811%_)
                                               (_%else132825132840%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body132811%_)
                                                   (gx#stx-source
                                                    _%stx132796%_)))))
                                          (let ((_%K132830132860%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx132796%_)))
                                                (_%K132827132846%_
                                                 (lambda (_%expr132844%_)
                                                   _%expr132844%_)))
                                            (let ((_%try-match132824132856%_
                                                   (lambda ()
                                                     (if (pair? _%body132822132832%_)
                                                         (let ((_%tl132829132851%_
                                                                (##cdr _%body132822132832%_))
                                                               (_%hd132828132849%_
                                                                (##car _%body132822132832%_)))
                                                           (if (null? _%tl132829132851%_)
                                                               (let ((_%expr132854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd132828132849%_))
                         (_%K132827132846%_ _%expr132854%_))
                       (_%else132825132840%_)))
                 (_%else132825132840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body132822132832%_)
                                                  (_%K132830132860%_)
                                                  (_%try-match132824132856%_))))))
                                       (_%body132865%_
                                        (if (null? _%bind132810%_)
                                            _%body132863%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind132810%_
                                                         (cons _%body132863%_
                                                               '())))
                                             (gx#stx-source _%stx132796%_)))))
                                  (if (null? _%decls132809%_)
                                      _%body132865%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls132809%_
                                                   (cons _%body132865%_ '())))
                                       (gx#stx-source _%stx132796%_))))))
                             (_%E132813132954%_
                              (lambda ()
                                (if (gx#stx-pair? _%e132812132819%_)
                                    (let ((_%e132815132872%_
                                           (gx#syntax-e _%e132812132819%_)))
                                      (let ((_%hd132816132875%_
                                             (##car _%e132815132872%_))
                                            (_%tl132817132877%_
                                             (##cdr _%e132815132872%_)))
                                        (let* ((_%hd132880%_
                                                _%hd132816132875%_)
                                               (_%rest132882%_
                                                _%tl132817132877%_)
                                               (_%e132883132900%_ _%hd132880%_)
                                               (_%E132895132904%_
                                                (lambda ()
                                                  (if (null? _%bind132810%_)
                                                      (_%lp132806%_
                                                       _%rest132882%_
                                                       _%decls132809%_
                                                       _%bind132810%_
                                                       (cons _%hd132880%_
                                                             _%body132811%_))
                                                      (_%lp132806%_
                                                       _%rest132882%_
                                                       _%decls132809%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd132880%_ '()))
                     _%bind132810%_)
               _%body132811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E132885132918%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e132883132900%_)
                                                      (let ((_%e132896132908%_
                                                             (gx#syntax-e
                                                              _%e132883132900%_)))
                                                        (let ((_%hd132897132911%_
                                                               (##car _%e132896132908%_))
                                                              (_%tl132898132913%_
                                                               (##cdr _%e132896132908%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd132897132911%_)
                           (gx#core-identifier=?
                            _%hd132897132911%_
                            '%#declare))
                      (let ((_%xdecls132916%_ _%tl132898132913%_))
                        (_%lp132806%_
                         _%rest132882%_
                         (gx#stx-foldr cons _%decls132809%_ _%xdecls132916%_)
                         _%bind132810%_
                         _%body132811%_))
                      (_%E132895132904%_))))
              (_%E132895132904%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E132884132950%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e132883132900%_)
                                                      (let ((_%e132886132922%_
                                                             (gx#syntax-e
                                                              _%e132883132900%_)))
                                                        (let ((_%hd132887132925%_
                                                               (##car _%e132886132922%_))
                                                              (_%tl132888132927%_
                                                               (##cdr _%e132886132922%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd132887132925%_)
                           (gx#core-identifier=?
                            _%hd132887132925%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl132888132927%_)
                          (let ((_%e132889132930%_
                                 (gx#syntax-e _%tl132888132927%_)))
                            (let ((_%hd132890132933%_
                                   (##car _%e132889132930%_))
                                  (_%tl132891132935%_
                                   (##cdr _%e132889132930%_)))
                              (let ((_%hd-bind132938%_ _%hd132890132933%_))
                                (if (gx#stx-pair? _%tl132891132935%_)
                                    (let ((_%e132892132940%_
                                           (gx#syntax-e _%tl132891132935%_)))
                                      (let ((_%hd132893132943%_
                                             (##car _%e132892132940%_))
                                            (_%tl132894132945%_
                                             (##cdr _%e132892132940%_)))
                                        (let ((_%expr132948%_
                                               _%hd132893132943%_))
                                          (if (gx#stx-null? _%tl132894132945%_)
                                              (_%lp132806%_
                                               _%rest132882%_
                                               _%decls132809%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind132938%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr132948%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind132810%_)
                                               _%body132811%_)
                                              (_%E132885132918%_)))))
                                    (_%E132885132918%_)))))
                          (_%E132885132918%_))
                      (_%E132885132918%_))))
              (_%E132885132918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E132884132950%_))))
                                    (_%E132814132868%_)))))
                        (_%E132813132954%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body132797%_)
            (gx#stx-source _%stx132796%_))
           _%expand-special132799%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx132734%_)
        (let* ((_%e132735132742%_ _%stx132734%_)
               (_%E132737132746%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132735132742%_)))
               (_%E132736132792%_
                (lambda ()
                  (if (gx#stx-pair? _%e132735132742%_)
                      (let ((_%e132738132750%_
                             (gx#syntax-e _%e132735132742%_)))
                        (let ((_%hd132739132753%_ (##car _%e132738132750%_))
                              (_%tl132740132755%_ (##cdr _%e132738132750%_)))
                          (let ((_%body132758%_ _%tl132740132755%_))
                            (if (gx#stx-list? _%body132758%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl132760%_)
                                     (let* ((_%e132761132768%_ _%decl132760%_)
                                            (_%E132763132772%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e132761132768%_)))
                                            (_%E132762132788%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e132761132768%_)
                                                   (let ((_%e132764132776%_
                                                          (gx#syntax-e
                                                           _%e132761132768%_)))
                                                     (let ((_%hd132765132779%_
                                                            (##car _%e132764132776%_))
                                                           (_%tl132766132781%_
                                                            (##cdr _%e132764132776%_)))
                                                       (let* ((_%head132784%_
                                                               _%hd132765132779%_)
                                                              (_%args132786%_
                                                               _%tl132766132781%_))
                                                         (if (gx#stx-list?
                                                              _%args132786%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl132760%_)
                                                             (_%E132763132772%_)))))
                                                   (_%E132763132772%_)))))
                                       (_%E132762132788%_)))
                                   _%body132758%_))
                                 (gx#stx-source _%stx132734%_))
                                (_%E132737132746%_)))))
                      (_%E132737132746%_)))))
          (_%E132736132792%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx132638%_)
        (let* ((_%e132639132646%_ _%stx132638%_)
               (_%E132641132650%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132639132646%_)))
               (_%E132640132730%_
                (lambda ()
                  (if (gx#stx-pair? _%e132639132646%_)
                      (let ((_%e132642132654%_
                             (gx#syntax-e _%e132639132646%_)))
                        (let ((_%hd132643132657%_ (##car _%e132642132654%_))
                              (_%tl132644132659%_ (##cdr _%e132642132654%_)))
                          (let ((_%body132662%_ _%tl132644132659%_))
                            (let _%lp132664%_ ((_%rest132666%_ _%body132662%_)
                                               (_%r132667%_ '()))
                              (let* ((_%e132668132682%_ _%rest132666%_)
                                     (_%E132680132686%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx132638%_)))
                                     (_%E132670132690%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e132668132682%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r132667%_))
                                             (gx#stx-source _%stx132638%_))
                                            (_%E132680132686%_))))
                                     (_%E132669132726%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e132668132682%_)
                                            (let ((_%e132671132694%_
                                                   (gx#syntax-e
                                                    _%e132668132682%_)))
                                              (let ((_%hd132672132697%_
                                                     (##car _%e132671132694%_))
                                                    (_%tl132673132699%_
                                                     (##cdr _%e132671132694%_)))
                                                (if (gx#stx-pair?
                                                     _%hd132672132697%_)
                                                    (let ((_%e132674132702%_
                                                           (gx#syntax-e
                                                            _%hd132672132697%_)))
                                                      (let ((_%hd132675132705%_
                                                             (##car _%e132674132702%_))
                                                            (_%tl132676132707%_
                                                             (##cdr _%e132674132702%_)))
                                                        (let ((_%id132710%_
                                                               _%hd132675132705%_))
                                                          (if (gx#stx-pair?
                                                               _%tl132676132707%_)
                                                              (let ((_%e132677132712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl132676132707%_)))
                        (let ((_%hd132678132715%_ (##car _%e132677132712%_))
                              (_%tl132679132717%_ (##cdr _%e132677132712%_)))
                          (let ((_%eid132720%_ _%hd132678132715%_))
                            (if (gx#stx-null? _%tl132679132717%_)
                                (let ((_%rest132722%_ _%tl132673132699%_))
                                  (if (and (gx#identifier? _%id132710%_)
                                           (gx#identifier? _%eid132720%_))
                                      (let ((_%eid132724%_
                                             (gx#stx-e _%eid132720%_)))
                                        (gx#core-bind-extern!__0
                                         _%id132710%_
                                         _%eid132724%_)
                                        (_%lp132664%_
                                         _%rest132722%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id132710%_)
                                                     (cons _%eid132724%_ '()))
                                               _%r132667%_)))
                                      (_%E132670132690%_)))
                                (_%E132670132690%_)))))
                      (_%E132670132690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E132670132690%_))))
                                            (_%E132670132690%_)))))
                                (_%E132669132726%_))))))
                      (_%E132641132650%_)))))
          (_%E132640132730%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx132584%_)
        (let* ((_%e132585132598%_ _%stx132584%_)
               (_%E132587132602%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132585132598%_)))
               (_%E132586132634%_
                (lambda ()
                  (if (gx#stx-pair? _%e132585132598%_)
                      (let ((_%e132588132606%_
                             (gx#syntax-e _%e132585132598%_)))
                        (let ((_%hd132589132609%_ (##car _%e132588132606%_))
                              (_%tl132590132611%_ (##cdr _%e132588132606%_)))
                          (if (gx#stx-pair? _%tl132590132611%_)
                              (let ((_%e132591132614%_
                                     (gx#syntax-e _%tl132590132611%_)))
                                (let ((_%hd132592132617%_
                                       (##car _%e132591132614%_))
                                      (_%tl132593132619%_
                                       (##cdr _%e132591132614%_)))
                                  (let ((_%hd132622%_ _%hd132592132617%_))
                                    (if (gx#stx-pair? _%tl132593132619%_)
                                        (let ((_%e132594132624%_
                                               (gx#syntax-e
                                                _%tl132593132619%_)))
                                          (let ((_%hd132595132627%_
                                                 (##car _%e132594132624%_))
                                                (_%tl132596132629%_
                                                 (##cdr _%e132594132624%_)))
                                            (let ((_%expr132632%_
                                                   _%hd132595132627%_))
                                              (if (gx#stx-null?
                                                   _%tl132596132629%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd132622%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd132622%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd132622%_)
                             (cons (gx#core-expand-expression _%expr132632%_)
                                   '())))
                 (gx#stx-source _%stx132584%_)))
              (_%E132587132602%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132587132602%_)))))
                                        (_%E132587132602%_)))))
                              (_%E132587132602%_))))
                      (_%E132587132602%_)))))
          (_%E132586132634%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx132528%_)
        (let* ((_%e132529132542%_ _%stx132528%_)
               (_%E132531132546%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132529132542%_)))
               (_%E132530132580%_
                (lambda ()
                  (if (gx#stx-pair? _%e132529132542%_)
                      (let ((_%e132532132550%_
                             (gx#syntax-e _%e132529132542%_)))
                        (let ((_%hd132533132553%_ (##car _%e132532132550%_))
                              (_%tl132534132555%_ (##cdr _%e132532132550%_)))
                          (if (gx#stx-pair? _%tl132534132555%_)
                              (let ((_%e132535132558%_
                                     (gx#syntax-e _%tl132534132555%_)))
                                (let ((_%hd132536132561%_
                                       (##car _%e132535132558%_))
                                      (_%tl132537132563%_
                                       (##cdr _%e132535132558%_)))
                                  (let ((_%id132566%_ _%hd132536132561%_))
                                    (if (gx#stx-pair? _%tl132537132563%_)
                                        (let ((_%e132538132568%_
                                               (gx#syntax-e
                                                _%tl132537132563%_)))
                                          (let ((_%hd132539132571%_
                                                 (##car _%e132538132568%_))
                                                (_%tl132540132573%_
                                                 (##cdr _%e132538132568%_)))
                                            (let ((_%binding-id132576%_
                                                   _%hd132539132571%_))
                                              (if (gx#stx-null?
                                                   _%tl132540132573%_)
                                                  (if (and (gx#identifier?
                                                            _%id132566%_)
                                                           (gx#identifier?
                                                            _%binding-id132576%_))
                                                      (let ((_%eid132578%_
                                                             (gx#stx-e
                                                              _%binding-id132576%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id132566%_
                                                         _%eid132578%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id132566%_)
                             (cons _%eid132578%_ '())))))
              (_%E132531132546%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132531132546%_)))))
                                        (_%E132531132546%_)))))
                              (_%E132531132546%_))))
                      (_%E132531132546%_)))))
          (_%E132530132580%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx132471%_)
        (let* ((_%e132472132485%_ _%stx132471%_)
               (_%E132474132489%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132472132485%_)))
               (_%E132473132524%_
                (lambda ()
                  (if (gx#stx-pair? _%e132472132485%_)
                      (let ((_%e132475132493%_
                             (gx#syntax-e _%e132472132485%_)))
                        (let ((_%hd132476132496%_ (##car _%e132475132493%_))
                              (_%tl132477132498%_ (##cdr _%e132475132493%_)))
                          (if (gx#stx-pair? _%tl132477132498%_)
                              (let ((_%e132478132501%_
                                     (gx#syntax-e _%tl132477132498%_)))
                                (let ((_%hd132479132504%_
                                       (##car _%e132478132501%_))
                                      (_%tl132480132506%_
                                       (##cdr _%e132478132501%_)))
                                  (let ((_%id132509%_ _%hd132479132504%_))
                                    (if (gx#stx-pair? _%tl132480132506%_)
                                        (let ((_%e132481132511%_
                                               (gx#syntax-e
                                                _%tl132480132506%_)))
                                          (let ((_%hd132482132514%_
                                                 (##car _%e132481132511%_))
                                                (_%tl132483132516%_
                                                 (##cdr _%e132481132511%_)))
                                            (let ((_%expr132519%_
                                                   _%hd132482132514%_))
                                              (if (gx#stx-null?
                                                   _%tl132483132516%_)
                                                  (if (gx#identifier?
                                                       _%id132509%_)
                                                      (let ((_g133430_
                                                             (gx#core-expand-expression+1
                                                              _%expr132519%_)))
                                                        (begin
                                                          (let ((_g133431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g133430_)
                             (##values-length _g133430_)
                             1)))
                    (if (not (##fx= _g133431_ 2))
                        (error "Context expects 2 values" _g133431_)))
                  (let ((_%e-stx132521%_ (##values-ref _g133430_ 0))
                        (_%e132522%_ (##values-ref _g133430_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id132509%_ _%e132522%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id132509%_)
                                   (cons _%e-stx132521%_ '())))
                       (gx#stx-source _%stx132471%_))))))
              (_%E132474132489%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132474132489%_)))))
                                        (_%E132474132489%_)))))
                              (_%E132474132489%_))))
                      (_%E132474132489%_)))))
          (_%E132473132524%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx132415%_)
        (let* ((_%e132416132429%_ _%stx132415%_)
               (_%E132418132433%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132416132429%_)))
               (_%E132417132467%_
                (lambda ()
                  (if (gx#stx-pair? _%e132416132429%_)
                      (let ((_%e132419132437%_
                             (gx#syntax-e _%e132416132429%_)))
                        (let ((_%hd132420132440%_ (##car _%e132419132437%_))
                              (_%tl132421132442%_ (##cdr _%e132419132437%_)))
                          (if (gx#stx-pair? _%tl132421132442%_)
                              (let ((_%e132422132445%_
                                     (gx#syntax-e _%tl132421132442%_)))
                                (let ((_%hd132423132448%_
                                       (##car _%e132422132445%_))
                                      (_%tl132424132450%_
                                       (##cdr _%e132422132445%_)))
                                  (let ((_%id132453%_ _%hd132423132448%_))
                                    (if (gx#stx-pair? _%tl132424132450%_)
                                        (let ((_%e132425132455%_
                                               (gx#syntax-e
                                                _%tl132424132450%_)))
                                          (let ((_%hd132426132458%_
                                                 (##car _%e132425132455%_))
                                                (_%tl132427132460%_
                                                 (##cdr _%e132425132455%_)))
                                            (let ((_%alias-id132463%_
                                                   _%hd132426132458%_))
                                              (if (gx#stx-null?
                                                   _%tl132427132460%_)
                                                  (if (and (gx#identifier?
                                                            _%id132453%_)
                                                           (gx#identifier?
                                                            _%alias-id132463%_))
                                                      (let ((_%alias-id132465%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id132463%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id132453%_
                                                         _%alias-id132465%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id132453%_)
                             (cons _%alias-id132465%_ '())))))
              (_%E132418132433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132418132433%_)))))
                                        (_%E132418132433%_)))))
                              (_%E132418132433%_))))
                      (_%E132418132433%_)))))
          (_%E132417132467%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx132358%_ _%wrap?132359%_)
        (let* ((_%e132360132370%_ _%stx132358%_)
               (_%E132362132374%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132360132370%_)))
               (_%E132361132401%_
                (lambda ()
                  (if (gx#stx-pair? _%e132360132370%_)
                      (let ((_%e132363132378%_
                             (gx#syntax-e _%e132360132370%_)))
                        (let ((_%hd132364132381%_ (##car _%e132363132378%_))
                              (_%tl132365132383%_ (##cdr _%e132363132378%_)))
                          (if (gx#stx-pair? _%tl132365132383%_)
                              (let ((_%e132366132386%_
                                     (gx#syntax-e _%tl132365132383%_)))
                                (let ((_%hd132367132389%_
                                       (##car _%e132366132386%_))
                                      (_%tl132368132391%_
                                       (##cdr _%e132366132386%_)))
                                  (let* ((_%hd132394%_ _%hd132367132389%_)
                                         (_%body132396%_ _%tl132368132391%_))
                                    (if (gx#core-bind-values? _%hd132394%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd132394%_)
                                           (let ((_%body132399%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd132394%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx132358%_
                                                               _%body132396%_)
                                                              '()))))
                                             (if _%wrap?132359%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body132399%_)
                                                  (gx#stx-source
                                                   _%stx132358%_))
                                                 _%body132399%_)))
                                         gx#current-expander-context
                                         (let ((__obj133423
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj133423)
                                           __obj133423))
                                        (_%E132362132374%_)))))
                              (_%E132362132374%_))))
                      (_%E132362132374%_)))))
          (_%E132361132401%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx132408%_)
        (let ((_%wrap?132410%_ '#t))
          (gx#core-expand-lambda%__% _%stx132408%_ _%wrap?132410%_))))
    (define gx#core-expand-lambda%
      (lambda _g133432_
        (let ((_g133433_ (##length _g133432_)))
          (cond ((##fx= _g133433_ 1)
                 (apply gx#core-expand-lambda%__0 _g133432_))
                ((##fx= _g133433_ 2)
                 (apply gx#core-expand-lambda%__% _g133432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g133432_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx132322%_)
        (let* ((_%e132323132330%_ _%stx132322%_)
               (_%E132325132334%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132323132330%_)))
               (_%E132324132353%_
                (lambda ()
                  (if (gx#stx-pair? _%e132323132330%_)
                      (let ((_%e132326132338%_
                             (gx#syntax-e _%e132323132330%_)))
                        (let ((_%hd132327132341%_ (##car _%e132326132338%_))
                              (_%tl132328132343%_ (##cdr _%e132326132338%_)))
                          (let ((_%clauses132346%_ _%tl132328132343%_))
                            (if (gx#stx-list? _%clauses132346%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause132348%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause132348%_)
                                       (let ((_%$e132350%_
                                              (gx#stx-source
                                               _%clause132348%_)))
                                         (if _%$e132350%_
                                             _%$e132350%_
                                             (gx#stx-source _%stx132322%_))))
                                      '#f))
                                   _%clauses132346%_))
                                 (gx#stx-source _%stx132322%_))
                                (_%E132325132334%_)))))
                      (_%E132325132334%_)))))
          (_%E132324132353%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx132276%_)
        (let* ((_%e132277132287%_ _%stx132276%_)
               (_%E132279132291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132277132287%_)))
               (_%E132278132318%_
                (lambda ()
                  (if (gx#stx-pair? _%e132277132287%_)
                      (let ((_%e132280132295%_
                             (gx#syntax-e _%e132277132287%_)))
                        (let ((_%hd132281132298%_ (##car _%e132280132295%_))
                              (_%tl132282132300%_ (##cdr _%e132280132295%_)))
                          (if (gx#stx-pair? _%tl132282132300%_)
                              (let ((_%e132283132303%_
                                     (gx#syntax-e _%tl132282132300%_)))
                                (let ((_%hd132284132306%_
                                       (##car _%e132283132303%_))
                                      (_%tl132285132308%_
                                       (##cdr _%e132283132303%_)))
                                  (let* ((_%hd132311%_ _%hd132284132306%_)
                                         (_%body132313%_ _%tl132285132308%_))
                                    (if (gx#core-expand-let-bind? _%hd132311%_)
                                        (let ((_%expressions132315%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd132311%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd132311%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd132311%_
                                                           _%expressions132315%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx132276%_
                         _%body132313%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx132276%_)))
                                           gx#current-expander-context
                                           (let ((__obj133424
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj133424)
                                             __obj133424)))
                                        (_%E132279132291%_)))))
                              (_%E132279132291%_))))
                      (_%E132279132291%_)))))
          (_%E132278132318%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx132221%_ _%form132222%_)
        (let* ((_%e132223132233%_ _%stx132221%_)
               (_%E132225132237%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132223132233%_)))
               (_%E132224132262%_
                (lambda ()
                  (if (gx#stx-pair? _%e132223132233%_)
                      (let ((_%e132226132241%_
                             (gx#syntax-e _%e132223132233%_)))
                        (let ((_%hd132227132244%_ (##car _%e132226132241%_))
                              (_%tl132228132246%_ (##cdr _%e132226132241%_)))
                          (if (gx#stx-pair? _%tl132228132246%_)
                              (let ((_%e132229132249%_
                                     (gx#syntax-e _%tl132228132246%_)))
                                (let ((_%hd132230132252%_
                                       (##car _%e132229132249%_))
                                      (_%tl132231132254%_
                                       (##cdr _%e132229132249%_)))
                                  (let* ((_%hd132257%_ _%hd132230132252%_)
                                         (_%body132259%_ _%tl132231132254%_))
                                    (if (gx#core-expand-let-bind? _%hd132257%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd132257%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form132222%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd132257%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd132257%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx132221%_
                                                               _%body132259%_)
                                                              '())))
                                            (gx#stx-source _%stx132221%_)))
                                         gx#current-expander-context
                                         (let ((__obj133425
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj133425)
                                           __obj133425))
                                        (_%E132225132237%_)))))
                              (_%E132225132237%_))))
                      (_%E132225132237%_)))))
          (_%E132224132262%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx132269%_)
        (let ((_%form132271%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx132269%_ _%form132271%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g133434_
        (let ((_g133435_ (##length _g133434_)))
          (cond ((##fx= _g133435_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g133434_))
                ((##fx= _g133435_ 2)
                 (apply gx#core-expand-letrec-values%__% _g133434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g133434_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx132218%_)
        (gx#core-expand-letrec-values%__% _%stx132218%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx132175%_)
        (if (gx#stx-list? _%stx132175%_)
            (gx#stx-andmap
             (lambda (_%bind132177%_)
               (let* ((_%e132178132188%_ _%bind132177%_)
                      (_%E132180132192%_ (lambda () '#f))
                      (_%E132179132214%_
                       (lambda ()
                         (if (gx#stx-pair? _%e132178132188%_)
                             (let ((_%e132181132196%_
                                    (gx#syntax-e _%e132178132188%_)))
                               (let ((_%hd132182132199%_
                                      (##car _%e132181132196%_))
                                     (_%tl132183132201%_
                                      (##cdr _%e132181132196%_)))
                                 (let ((_%hd132204%_ _%hd132182132199%_))
                                   (if (gx#stx-pair? _%tl132183132201%_)
                                       (let ((_%e132184132206%_
                                              (gx#syntax-e
                                               _%tl132183132201%_)))
                                         (let ((_%hd132185132209%_
                                                (##car _%e132184132206%_))
                                               (_%tl132186132211%_
                                                (##cdr _%e132184132206%_)))
                                           (if (gx#stx-null?
                                                _%tl132186132211%_)
                                               (gx#core-bind-values?
                                                _%hd132204%_)
                                               (_%E132180132192%_))))
                                       (_%E132180132192%_)))))
                             (_%E132180132192%_)))))
                 (_%E132179132214%_)))
             _%stx132175%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind132134%_)
        (let* ((_%e132135132145%_ _%bind132134%_)
               (_%E132137132149%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132135132145%_)))
               (_%E132136132171%_
                (lambda ()
                  (if (gx#stx-pair? _%e132135132145%_)
                      (let ((_%e132138132153%_
                             (gx#syntax-e _%e132135132145%_)))
                        (let ((_%hd132139132156%_ (##car _%e132138132153%_))
                              (_%tl132140132158%_ (##cdr _%e132138132153%_)))
                          (if (gx#stx-pair? _%tl132140132158%_)
                              (let ((_%e132141132161%_
                                     (gx#syntax-e _%tl132140132158%_)))
                                (let ((_%hd132142132164%_
                                       (##car _%e132141132161%_))
                                      (_%tl132143132166%_
                                       (##cdr _%e132141132161%_)))
                                  (let ((_%expr132169%_ _%hd132142132164%_))
                                    (if (gx#stx-null? _%tl132143132166%_)
                                        (gx#core-expand-expression
                                         _%expr132169%_)
                                        (_%E132137132149%_)))))
                              (_%E132137132149%_))))
                      (_%E132137132149%_)))))
          (_%E132136132171%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind132093%_)
        (let* ((_%e132094132104%_ _%bind132093%_)
               (_%E132096132108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132094132104%_)))
               (_%E132095132130%_
                (lambda ()
                  (if (gx#stx-pair? _%e132094132104%_)
                      (let ((_%e132097132112%_
                             (gx#syntax-e _%e132094132104%_)))
                        (let ((_%hd132098132115%_ (##car _%e132097132112%_))
                              (_%tl132099132117%_ (##cdr _%e132097132112%_)))
                          (let ((_%hd132120%_ _%hd132098132115%_))
                            (if (gx#stx-pair? _%tl132099132117%_)
                                (let ((_%e132100132122%_
                                       (gx#syntax-e _%tl132099132117%_)))
                                  (let ((_%hd132101132125%_
                                         (##car _%e132100132122%_))
                                        (_%tl132102132127%_
                                         (##cdr _%e132100132122%_)))
                                    (if (gx#stx-null? _%tl132102132127%_)
                                        (gx#core-bind-values!__0 _%hd132120%_)
                                        (_%E132096132108%_))))
                                (_%E132096132108%_)))))
                      (_%E132096132108%_)))))
          (_%E132095132130%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind132051%_ _%expr132052%_)
        (let* ((_%e132053132063%_ _%bind132051%_)
               (_%E132055132067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132053132063%_)))
               (_%E132054132089%_
                (lambda ()
                  (if (gx#stx-pair? _%e132053132063%_)
                      (let ((_%e132056132071%_
                             (gx#syntax-e _%e132053132063%_)))
                        (let ((_%hd132057132074%_ (##car _%e132056132071%_))
                              (_%tl132058132076%_ (##cdr _%e132056132071%_)))
                          (let ((_%hd132079%_ _%hd132057132074%_))
                            (if (gx#stx-pair? _%tl132058132076%_)
                                (let ((_%e132059132081%_
                                       (gx#syntax-e _%tl132058132076%_)))
                                  (let ((_%hd132060132084%_
                                         (##car _%e132059132081%_))
                                        (_%tl132061132086%_
                                         (##cdr _%e132059132081%_)))
                                    (if (gx#stx-null? _%tl132061132086%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd132079%_)
                                              (cons _%expr132052%_ '()))
                                        (_%E132055132067%_))))
                                (_%E132055132067%_)))))
                      (_%E132055132067%_)))))
          (_%E132054132089%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx132005%_)
        (let* ((_%e132006132016%_ _%stx132005%_)
               (_%E132008132020%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132006132016%_)))
               (_%E132007132047%_
                (lambda ()
                  (if (gx#stx-pair? _%e132006132016%_)
                      (let ((_%e132009132024%_
                             (gx#syntax-e _%e132006132016%_)))
                        (let ((_%hd132010132027%_ (##car _%e132009132024%_))
                              (_%tl132011132029%_ (##cdr _%e132009132024%_)))
                          (if (gx#stx-pair? _%tl132011132029%_)
                              (let ((_%e132012132032%_
                                     (gx#syntax-e _%tl132011132029%_)))
                                (let ((_%hd132013132035%_
                                       (##car _%e132012132032%_))
                                      (_%tl132014132037%_
                                       (##cdr _%e132012132032%_)))
                                  (let* ((_%hd132040%_ _%hd132013132035%_)
                                         (_%body132042%_ _%tl132014132037%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd132040%_)
                                        (let ((_%expanders132044%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd132040%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd132040%_
                                              _%expanders132044%_)
                                             (gx#core-expand-local-block
                                              _%stx132005%_
                                              _%body132042%_))
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
                                             __obj133426)))
                                        (_%E132008132020%_)))))
                              (_%E132008132020%_))))
                      (_%E132008132020%_)))))
          (_%E132007132047%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx131954%_)
        (let* ((_%e131955131965%_ _%stx131954%_)
               (_%E131957131969%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131955131965%_)))
               (_%E131956132001%_
                (lambda ()
                  (if (gx#stx-pair? _%e131955131965%_)
                      (let ((_%e131958131973%_
                             (gx#syntax-e _%e131955131965%_)))
                        (let ((_%hd131959131976%_ (##car _%e131958131973%_))
                              (_%tl131960131978%_ (##cdr _%e131958131973%_)))
                          (if (gx#stx-pair? _%tl131960131978%_)
                              (let ((_%e131961131981%_
                                     (gx#syntax-e _%tl131960131978%_)))
                                (let ((_%hd131962131984%_
                                       (##car _%e131961131981%_))
                                      (_%tl131963131986%_
                                       (##cdr _%e131961131981%_)))
                                  (let* ((_%hd131989%_ _%hd131962131984%_)
                                         (_%body131991%_ _%tl131963131986%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd131989%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd131989%_
                                            (make-list
                                             (gx#stx-length _%hd131989%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g131993131996%_
                                                     _%g131994131998%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g131993131996%_
                                               _%g131994131998%_
                                               '#t))
                                            _%hd131989%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd131989%_))
                                           (gx#core-expand-local-block
                                            _%stx131954%_
                                            _%body131991%_))
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
                                           __obj133427))
                                        (_%E131957131969%_)))))
                              (_%E131957131969%_))))
                      (_%E131957131969%_)))))
          (_%E131956132001%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx131911%_)
        (if (gx#stx-list? _%stx131911%_)
            (gx#stx-andmap
             (lambda (_%bind131913%_)
               (let* ((_%e131914131924%_ _%bind131913%_)
                      (_%E131916131928%_ (lambda () '#f))
                      (_%E131915131950%_
                       (lambda ()
                         (if (gx#stx-pair? _%e131914131924%_)
                             (let ((_%e131917131932%_
                                    (gx#syntax-e _%e131914131924%_)))
                               (let ((_%hd131918131935%_
                                      (##car _%e131917131932%_))
                                     (_%tl131919131937%_
                                      (##cdr _%e131917131932%_)))
                                 (let ((_%hd131940%_ _%hd131918131935%_))
                                   (if (gx#stx-pair? _%tl131919131937%_)
                                       (let ((_%e131920131942%_
                                              (gx#syntax-e
                                               _%tl131919131937%_)))
                                         (let ((_%hd131921131945%_
                                                (##car _%e131920131942%_))
                                               (_%tl131922131947%_
                                                (##cdr _%e131920131942%_)))
                                           (if (gx#stx-null?
                                                _%tl131922131947%_)
                                               (gx#identifier? _%hd131940%_)
                                               (_%E131916131928%_))))
                                       (_%E131916131928%_)))))
                             (_%E131916131928%_)))))
                 (_%E131915131950%_)))
             _%stx131911%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind131867%_)
        (let* ((_%e131868131878%_ _%bind131867%_)
               (_%E131870131882%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131868131878%_)))
               (_%E131869131907%_
                (lambda ()
                  (if (gx#stx-pair? _%e131868131878%_)
                      (let ((_%e131871131886%_
                             (gx#syntax-e _%e131868131878%_)))
                        (let ((_%hd131872131889%_ (##car _%e131871131886%_))
                              (_%tl131873131891%_ (##cdr _%e131871131886%_)))
                          (if (gx#stx-pair? _%tl131873131891%_)
                              (let ((_%e131874131894%_
                                     (gx#syntax-e _%tl131873131891%_)))
                                (let ((_%hd131875131897%_
                                       (##car _%e131874131894%_))
                                      (_%tl131876131899%_
                                       (##cdr _%e131874131894%_)))
                                  (let ((_%expr131902%_ _%hd131875131897%_))
                                    (if (gx#stx-null? _%tl131876131899%_)
                                        (let ((_g133436_
                                               (gx#core-expand-expression+1
                                                _%expr131902%_)))
                                          (begin
                                            (let ((_g133437_
                                                   (if (##values? _g133436_)
                                                       (##values-length
                                                        _g133436_)
                                                       1)))
                                              (if (not (##fx= _g133437_ 2))
                                                  (error "Context expects 2 values"
                                                         _g133437_)))
                                            (let ((_%_131904%_
                                                   (##values-ref _g133436_ 0))
                                                  (_%e131905%_
                                                   (##values-ref _g133436_ 1)))
                                              _%e131905%_)))
                                        (_%E131870131882%_)))))
                              (_%E131870131882%_))))
                      (_%E131870131882%_)))))
          (_%E131869131907%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind131812%_ _%e131813%_ _%rebind?131814%_)
        (let* ((_%e131815131825%_ _%bind131812%_)
               (_%E131817131829%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131815131825%_)))
               (_%E131816131851%_
                (lambda ()
                  (if (gx#stx-pair? _%e131815131825%_)
                      (let ((_%e131818131833%_
                             (gx#syntax-e _%e131815131825%_)))
                        (let ((_%hd131819131836%_ (##car _%e131818131833%_))
                              (_%tl131820131838%_ (##cdr _%e131818131833%_)))
                          (let ((_%id131841%_ _%hd131819131836%_))
                            (if (gx#stx-pair? _%tl131820131838%_)
                                (let ((_%e131821131843%_
                                       (gx#syntax-e _%tl131820131838%_)))
                                  (let ((_%hd131822131846%_
                                         (##car _%e131821131843%_))
                                        (_%tl131823131848%_
                                         (##cdr _%e131821131843%_)))
                                    (if (gx#stx-null? _%tl131823131848%_)
                                        (gx#core-bind-syntax!__1
                                         _%id131841%_
                                         _%e131813%_
                                         _%rebind?131814%_)
                                        (_%E131817131829%_))))
                                (_%E131817131829%_)))))
                      (_%E131817131829%_)))))
          (_%E131816131851%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind131858%_ _%e131859%_)
        (let ((_%rebind?131861%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind131858%_
           _%e131859%_
           _%rebind?131861%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g133438_
        (let ((_g133439_ (##length _g133438_)))
          (cond ((##fx= _g133439_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g133438_))
                ((##fx= _g133439_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g133438_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g133438_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx131770%_)
        (let* ((_%e131771131781%_ _%stx131770%_)
               (_%E131773131785%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131771131781%_)))
               (_%E131772131807%_
                (lambda ()
                  (if (gx#stx-pair? _%e131771131781%_)
                      (let ((_%e131774131789%_
                             (gx#syntax-e _%e131771131781%_)))
                        (let ((_%hd131775131792%_ (##car _%e131774131789%_))
                              (_%tl131776131794%_ (##cdr _%e131774131789%_)))
                          (if (gx#stx-pair? _%tl131776131794%_)
                              (let ((_%e131777131797%_
                                     (gx#syntax-e _%tl131776131794%_)))
                                (let ((_%hd131778131800%_
                                       (##car _%e131777131797%_))
                                      (_%tl131779131802%_
                                       (##cdr _%e131777131797%_)))
                                  (let ((_%expr131805%_ _%hd131778131800%_))
                                    (if (gx#stx-null? _%tl131779131802%_)
                                        (gx#core-expand-expression
                                         _%expr131805%_)
                                        (_%E131773131785%_)))))
                              (_%E131773131785%_))))
                      (_%E131773131785%_)))))
          (_%E131772131807%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx131729%_)
        (let* ((_%e131730131740%_ _%stx131729%_)
               (_%E131732131744%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131730131740%_)))
               (_%E131731131766%_
                (lambda ()
                  (if (gx#stx-pair? _%e131730131740%_)
                      (let ((_%e131733131748%_
                             (gx#syntax-e _%e131730131740%_)))
                        (let ((_%hd131734131751%_ (##car _%e131733131748%_))
                              (_%tl131735131753%_ (##cdr _%e131733131748%_)))
                          (if (gx#stx-pair? _%tl131735131753%_)
                              (let ((_%e131736131756%_
                                     (gx#syntax-e _%tl131735131753%_)))
                                (let ((_%hd131737131759%_
                                       (##car _%e131736131756%_))
                                      (_%tl131738131761%_
                                       (##cdr _%e131736131756%_)))
                                  (let ((_%e131764%_ _%hd131737131759%_))
                                    (if (gx#stx-null? _%tl131738131761%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e131764%_)
                                                     '()))
                                         (gx#stx-source _%stx131729%_))
                                        (_%E131732131744%_)))))
                              (_%E131732131744%_))))
                      (_%E131732131744%_)))))
          (_%E131731131766%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx131688%_)
        (let* ((_%e131689131699%_ _%stx131688%_)
               (_%E131691131703%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131689131699%_)))
               (_%E131690131725%_
                (lambda ()
                  (if (gx#stx-pair? _%e131689131699%_)
                      (let ((_%e131692131707%_
                             (gx#syntax-e _%e131689131699%_)))
                        (let ((_%hd131693131710%_ (##car _%e131692131707%_))
                              (_%tl131694131712%_ (##cdr _%e131692131707%_)))
                          (if (gx#stx-pair? _%tl131694131712%_)
                              (let ((_%e131695131715%_
                                     (gx#syntax-e _%tl131694131712%_)))
                                (let ((_%hd131696131718%_
                                       (##car _%e131695131715%_))
                                      (_%tl131697131720%_
                                       (##cdr _%e131695131715%_)))
                                  (let ((_%e131723%_ _%hd131696131718%_))
                                    (if (gx#stx-null? _%tl131697131720%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e131723%_)
                                                     '()))
                                         (gx#stx-source _%stx131688%_))
                                        (_%E131691131703%_)))))
                              (_%E131691131703%_))))
                      (_%E131691131703%_)))))
          (_%E131690131725%_))))
    (define gx#core-expand-call%
      (lambda (_%stx131645%_)
        (let* ((_%e131646131656%_ _%stx131645%_)
               (_%E131648131660%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131646131656%_)))
               (_%E131647131684%_
                (lambda ()
                  (if (gx#stx-pair? _%e131646131656%_)
                      (let ((_%e131649131664%_
                             (gx#syntax-e _%e131646131656%_)))
                        (let ((_%hd131650131667%_ (##car _%e131649131664%_))
                              (_%tl131651131669%_ (##cdr _%e131649131664%_)))
                          (if (gx#stx-pair? _%tl131651131669%_)
                              (let ((_%e131652131672%_
                                     (gx#syntax-e _%tl131651131669%_)))
                                (let ((_%hd131653131675%_
                                       (##car _%e131652131672%_))
                                      (_%tl131654131677%_
                                       (##cdr _%e131652131672%_)))
                                  (let* ((_%rator131680%_ _%hd131653131675%_)
                                         (_%args131682%_ _%tl131654131677%_))
                                    (if (gx#stx-list? _%args131682%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator131680%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args131682%_))
                                         (gx#stx-source _%stx131645%_))
                                        (_%E131648131660%_)))))
                              (_%E131648131660%_))))
                      (_%E131648131660%_)))))
          (_%E131647131684%_))))
    (define gx#core-expand-if%
      (lambda (_%stx131578%_)
        (let* ((_%e131579131595%_ _%stx131578%_)
               (_%E131581131599%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131579131595%_)))
               (_%E131580131641%_
                (lambda ()
                  (if (gx#stx-pair? _%e131579131595%_)
                      (let ((_%e131582131603%_
                             (gx#syntax-e _%e131579131595%_)))
                        (let ((_%hd131583131606%_ (##car _%e131582131603%_))
                              (_%tl131584131608%_ (##cdr _%e131582131603%_)))
                          (if (gx#stx-pair? _%tl131584131608%_)
                              (let ((_%e131585131611%_
                                     (gx#syntax-e _%tl131584131608%_)))
                                (let ((_%hd131586131614%_
                                       (##car _%e131585131611%_))
                                      (_%tl131587131616%_
                                       (##cdr _%e131585131611%_)))
                                  (let ((_%test131619%_ _%hd131586131614%_))
                                    (if (gx#stx-pair? _%tl131587131616%_)
                                        (let ((_%e131588131621%_
                                               (gx#syntax-e
                                                _%tl131587131616%_)))
                                          (let ((_%hd131589131624%_
                                                 (##car _%e131588131621%_))
                                                (_%tl131590131626%_
                                                 (##cdr _%e131588131621%_)))
                                            (let ((_%K131629%_
                                                   _%hd131589131624%_))
                                              (if (gx#stx-pair?
                                                   _%tl131590131626%_)
                                                  (let ((_%e131591131631%_
                                                         (gx#syntax-e
                                                          _%tl131590131626%_)))
                                                    (let ((_%hd131592131634%_
                                                           (##car _%e131591131631%_))
                                                          (_%tl131593131636%_
                                                           (##cdr _%e131591131631%_)))
                                                      (let ((_%E131639%_
                                                             _%hd131592131634%_))
                                                        (if (gx#stx-null?
                                                             _%tl131593131636%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test131619%_)
                                 (cons (gx#core-expand-expression _%K131629%_)
                                       (cons (gx#core-expand-expression
                                              _%E131639%_)
                                             '()))))
                     (gx#stx-source _%stx131578%_))
                    (_%E131581131599%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131581131599%_)))))
                                        (_%E131581131599%_)))))
                              (_%E131581131599%_))))
                      (_%E131581131599%_)))))
          (_%E131580131641%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx131537%_)
        (let* ((_%e131538131548%_ _%stx131537%_)
               (_%E131540131552%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131538131548%_)))
               (_%E131539131574%_
                (lambda ()
                  (if (gx#stx-pair? _%e131538131548%_)
                      (let ((_%e131541131556%_
                             (gx#syntax-e _%e131538131548%_)))
                        (let ((_%hd131542131559%_ (##car _%e131541131556%_))
                              (_%tl131543131561%_ (##cdr _%e131541131556%_)))
                          (if (gx#stx-pair? _%tl131543131561%_)
                              (let ((_%e131544131564%_
                                     (gx#syntax-e _%tl131543131561%_)))
                                (let ((_%hd131545131567%_
                                       (##car _%e131544131564%_))
                                      (_%tl131546131569%_
                                       (##cdr _%e131544131564%_)))
                                  (let ((_%id131572%_ _%hd131545131567%_))
                                    (if (gx#stx-null? _%tl131546131569%_)
                                        (if (gx#identifier? _%id131572%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id131572%_
                                                          _%stx131537%_)
                                                         '()))
                                             (gx#stx-source _%stx131537%_))
                                            (_%E131540131552%_))
                                        (_%E131540131552%_)))))
                              (_%E131540131552%_))))
                      (_%E131540131552%_)))))
          (_%E131539131574%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx131483%_)
        (let* ((_%e131484131497%_ _%stx131483%_)
               (_%E131486131501%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131484131497%_)))
               (_%E131485131533%_
                (lambda ()
                  (if (gx#stx-pair? _%e131484131497%_)
                      (let ((_%e131487131505%_
                             (gx#syntax-e _%e131484131497%_)))
                        (let ((_%hd131488131508%_ (##car _%e131487131505%_))
                              (_%tl131489131510%_ (##cdr _%e131487131505%_)))
                          (if (gx#stx-pair? _%tl131489131510%_)
                              (let ((_%e131490131513%_
                                     (gx#syntax-e _%tl131489131510%_)))
                                (let ((_%hd131491131516%_
                                       (##car _%e131490131513%_))
                                      (_%tl131492131518%_
                                       (##cdr _%e131490131513%_)))
                                  (let ((_%id131521%_ _%hd131491131516%_))
                                    (if (gx#stx-pair? _%tl131492131518%_)
                                        (let ((_%e131493131523%_
                                               (gx#syntax-e
                                                _%tl131492131518%_)))
                                          (let ((_%hd131494131526%_
                                                 (##car _%e131493131523%_))
                                                (_%tl131495131528%_
                                                 (##cdr _%e131493131523%_)))
                                            (let ((_%expr131531%_
                                                   _%hd131494131526%_))
                                              (if (gx#stx-null?
                                                   _%tl131495131528%_)
                                                  (if (gx#identifier?
                                                       _%id131521%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id131521%_
                            _%stx131483%_)
                           (cons (gx#core-expand-expression _%expr131531%_)
                                 '())))
               (gx#stx-source _%stx131483%_))
              (_%E131486131501%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131486131501%_)))))
                                        (_%E131486131501%_)))))
                              (_%E131486131501%_))))
                      (_%E131486131501%_)))))
          (_%E131485131533%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx131328%_)
        (letrec ((_%generate131330%_
                  (lambda (_%body131360%_)
                    (let _%lp131362%_ ((_%rest131364%_ _%body131360%_)
                                       (_%ns131365%_
                                        (gx#core-context-namespace__0))
                                       (_%r131366%_ '()))
                      (let* ((_%e131367131382%_ _%rest131364%_)
                             (_%E131380131386%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e131367131382%_)))
                             (_%E131376131390%_
                              (lambda ()
                                (if (gx#stx-null? _%e131367131382%_)
                                    (reverse _%r131366%_)
                                    (_%E131380131386%_))))
                             (_%E131369131447%_
                              (lambda ()
                                (if (gx#stx-pair? _%e131367131382%_)
                                    (let ((_%e131377131394%_
                                           (gx#syntax-e _%e131367131382%_)))
                                      (let ((_%hd131378131397%_
                                             (##car _%e131377131394%_))
                                            (_%tl131379131399%_
                                             (##cdr _%e131377131394%_)))
                                        (let* ((_%hd131402%_
                                                _%hd131378131397%_)
                                               (_%rest131404%_
                                                _%tl131379131399%_))
                                          (if (gx#identifier? _%hd131402%_)
                                              (_%lp131362%_
                                               _%rest131404%_
                                               _%ns131365%_
                                               (cons (cons _%hd131402%_
                                                           (cons (if _%ns131365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd131402%_
                              _%ns131365%_
                              '"#"
                              _%hd131402%_)
                             _%hd131402%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r131366%_))
                                              (let* ((_%e131405131415%_
                                                      _%hd131402%_)
                                                     (_%E131407131419%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e131405131415%_)))
                                                     (_%E131406131443%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e131405131415%_)
                                                            (let ((_%e131408131423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e131405131415%_)))
                      (let ((_%hd131409131426%_ (##car _%e131408131423%_))
                            (_%tl131410131428%_ (##cdr _%e131408131423%_)))
                        (let ((_%id131431%_ _%hd131409131426%_))
                          (if (gx#stx-pair? _%tl131410131428%_)
                              (let ((_%e131411131433%_
                                     (gx#syntax-e _%tl131410131428%_)))
                                (let ((_%hd131412131436%_
                                       (##car _%e131411131433%_))
                                      (_%tl131413131438%_
                                       (##cdr _%e131411131433%_)))
                                  (let ((_%eid131441%_ _%hd131412131436%_))
                                    (if (gx#stx-null? _%tl131413131438%_)
                                        (if (and (gx#identifier? _%id131431%_)
                                                 (gx#identifier?
                                                  _%eid131441%_))
                                            (_%lp131362%_
                                             _%rest131404%_
                                             _%ns131365%_
                                             (cons (cons _%id131431%_
                                                         (cons _%eid131441%_
                                                               '()))
                                                   _%r131366%_))
                                            (_%E131407131419%_))
                                        (_%E131407131419%_)))))
                              (_%E131407131419%_)))))
                    (_%E131407131419%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E131406131443%_))))))
                                    (_%E131376131390%_))))
                             (_%E131368131479%_
                              (lambda ()
                                (if (gx#stx-pair? _%e131367131382%_)
                                    (let ((_%e131370131451%_
                                           (gx#syntax-e _%e131367131382%_)))
                                      (let ((_%hd131371131454%_
                                             (##car _%e131370131451%_))
                                            (_%tl131372131456%_
                                             (##cdr _%e131370131451%_)))
                                        (if (eq? (gx#stx-e _%hd131371131454%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl131372131456%_)
                                                (let ((_%e131373131459%_
                                                       (gx#syntax-e
                                                        _%tl131372131456%_)))
                                                  (let ((_%hd131374131462%_
                                                         (##car _%e131373131459%_))
                                                        (_%tl131375131464%_
                                                         (##cdr _%e131373131459%_)))
                                                    (let* ((_%ns131467%_
                                                            _%hd131374131462%_)
                                                           (_%rest131469%_
                                                            _%tl131375131464%_)
                                                           (_%ns131477%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns131467%_)
                        (symbol->string (gx#stx-e _%ns131467%_))
                        (if (or (gx#stx-string? _%ns131467%_)
                                (gx#stx-false? _%ns131467%_))
                            (gx#stx-e _%ns131467%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx131328%_
                             _%ns131467%_)))))
              (_%lp131362%_ _%rest131469%_ _%ns131477%_ _%r131366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E131369131447%_))
                                            (_%E131369131447%_))))
                                    (_%E131369131447%_)))))
                        (_%E131368131479%_))))))
          (let* ((_%e131331131338%_ _%stx131328%_)
                 (_%E131333131342%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131331131338%_)))
                 (_%E131332131356%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131331131338%_)
                        (let ((_%e131334131346%_
                               (gx#syntax-e _%e131331131338%_)))
                          (let ((_%hd131335131349%_ (##car _%e131334131346%_))
                                (_%tl131336131351%_ (##cdr _%e131334131346%_)))
                            (let ((_%body131354%_ _%tl131336131351%_))
                              (if (gx#stx-list? _%body131354%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate131330%_ _%body131354%_))
                                  (_%E131333131342%_)))))
                        (_%E131333131342%_)))))
            (_%E131332131356%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx131274%_)
        (let* ((_%e131275131288%_ _%stx131274%_)
               (_%E131277131292%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131275131288%_)))
               (_%E131276131324%_
                (lambda ()
                  (if (gx#stx-pair? _%e131275131288%_)
                      (let ((_%e131278131296%_
                             (gx#syntax-e _%e131275131288%_)))
                        (let ((_%hd131279131299%_ (##car _%e131278131296%_))
                              (_%tl131280131301%_ (##cdr _%e131278131296%_)))
                          (if (gx#stx-pair? _%tl131280131301%_)
                              (let ((_%e131281131304%_
                                     (gx#syntax-e _%tl131280131301%_)))
                                (let ((_%hd131282131307%_
                                       (##car _%e131281131304%_))
                                      (_%tl131283131309%_
                                       (##cdr _%e131281131304%_)))
                                  (let ((_%hd131312%_ _%hd131282131307%_))
                                    (if (gx#stx-pair? _%tl131283131309%_)
                                        (let ((_%e131284131314%_
                                               (gx#syntax-e
                                                _%tl131283131309%_)))
                                          (let ((_%hd131285131317%_
                                                 (##car _%e131284131314%_))
                                                (_%tl131286131319%_
                                                 (##cdr _%e131284131314%_)))
                                            (let ((_%expr131322%_
                                                   _%hd131285131317%_))
                                              (if (gx#stx-null?
                                                   _%tl131286131319%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd131312%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd131312%_)
                          (cons _%expr131322%_ '())))
              (_%E131277131292%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131277131292%_)))))
                                        (_%E131277131292%_)))))
                              (_%E131277131292%_))))
                      (_%E131277131292%_)))))
          (_%E131276131324%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx131220%_)
        (let* ((_%e131221131234%_ _%stx131220%_)
               (_%E131223131238%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131221131234%_)))
               (_%E131222131270%_
                (lambda ()
                  (if (gx#stx-pair? _%e131221131234%_)
                      (let ((_%e131224131242%_
                             (gx#syntax-e _%e131221131234%_)))
                        (let ((_%hd131225131245%_ (##car _%e131224131242%_))
                              (_%tl131226131247%_ (##cdr _%e131224131242%_)))
                          (if (gx#stx-pair? _%tl131226131247%_)
                              (let ((_%e131227131250%_
                                     (gx#syntax-e _%tl131226131247%_)))
                                (let ((_%hd131228131253%_
                                       (##car _%e131227131250%_))
                                      (_%tl131229131255%_
                                       (##cdr _%e131227131250%_)))
                                  (let ((_%hd131258%_ _%hd131228131253%_))
                                    (if (gx#stx-pair? _%tl131229131255%_)
                                        (let ((_%e131230131260%_
                                               (gx#syntax-e
                                                _%tl131229131255%_)))
                                          (let ((_%hd131231131263%_
                                                 (##car _%e131230131260%_))
                                                (_%tl131232131265%_
                                                 (##cdr _%e131230131260%_)))
                                            (let ((_%expr131268%_
                                                   _%hd131231131263%_))
                                              (if (gx#stx-null?
                                                   _%tl131232131265%_)
                                                  (if (gx#identifier?
                                                       _%hd131258%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd131258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr131268%_ '())))
              (_%E131223131238%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131223131238%_)))))
                                        (_%E131223131238%_)))))
                              (_%E131223131238%_))))
                      (_%E131223131238%_)))))
          (_%E131222131270%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx131166%_)
        (let* ((_%e131167131180%_ _%stx131166%_)
               (_%E131169131184%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131167131180%_)))
               (_%E131168131216%_
                (lambda ()
                  (if (gx#stx-pair? _%e131167131180%_)
                      (let ((_%e131170131188%_
                             (gx#syntax-e _%e131167131180%_)))
                        (let ((_%hd131171131191%_ (##car _%e131170131188%_))
                              (_%tl131172131193%_ (##cdr _%e131170131188%_)))
                          (if (gx#stx-pair? _%tl131172131193%_)
                              (let ((_%e131173131196%_
                                     (gx#syntax-e _%tl131172131193%_)))
                                (let ((_%hd131174131199%_
                                       (##car _%e131173131196%_))
                                      (_%tl131175131201%_
                                       (##cdr _%e131173131196%_)))
                                  (let ((_%id131204%_ _%hd131174131199%_))
                                    (if (gx#stx-pair? _%tl131175131201%_)
                                        (let ((_%e131176131206%_
                                               (gx#syntax-e
                                                _%tl131175131201%_)))
                                          (let ((_%hd131177131209%_
                                                 (##car _%e131176131206%_))
                                                (_%tl131178131211%_
                                                 (##cdr _%e131176131206%_)))
                                            (let ((_%alias-id131214%_
                                                   _%hd131177131209%_))
                                              (if (gx#stx-null?
                                                   _%tl131178131211%_)
                                                  (if (and (gx#identifier?
                                                            _%id131204%_)
                                                           (gx#identifier?
                                                            _%alias-id131214%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id131204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id131214%_ '())))
              (_%E131169131184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131169131184%_)))))
                                        (_%E131169131184%_)))))
                              (_%E131169131184%_))))
                      (_%E131169131184%_)))))
          (_%E131168131216%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx131123%_)
        (let* ((_%e131124131134%_ _%stx131123%_)
               (_%E131126131138%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131124131134%_)))
               (_%E131125131162%_
                (lambda ()
                  (if (gx#stx-pair? _%e131124131134%_)
                      (let ((_%e131127131142%_
                             (gx#syntax-e _%e131124131134%_)))
                        (let ((_%hd131128131145%_ (##car _%e131127131142%_))
                              (_%tl131129131147%_ (##cdr _%e131127131142%_)))
                          (if (gx#stx-pair? _%tl131129131147%_)
                              (let ((_%e131130131150%_
                                     (gx#syntax-e _%tl131129131147%_)))
                                (let ((_%hd131131131153%_
                                       (##car _%e131130131150%_))
                                      (_%tl131132131155%_
                                       (##cdr _%e131130131150%_)))
                                  (let* ((_%hd131158%_ _%hd131131131153%_)
                                         (_%body131160%_ _%tl131132131155%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd131158%_)
                                             (gx#stx-list? _%body131160%_)
                                             (not (gx#stx-null?
                                                   _%body131160%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd131158%_)
                                         _%body131160%_)
                                        (_%E131126131138%_)))))
                              (_%E131126131138%_))))
                      (_%E131126131138%_)))))
          (_%E131125131162%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx131059%_)
        (letrec ((_%generate131061%_
                  (lambda (_%clause131091%_)
                    (let* ((_%e131092131099%_ _%clause131091%_)
                           (_%E131094131103%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx131059%_
                               _%clause131091%_)))
                           (_%E131093131119%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131092131099%_)
                                  (let ((_%e131095131107%_
                                         (gx#syntax-e _%e131092131099%_)))
                                    (let ((_%hd131096131110%_
                                           (##car _%e131095131107%_))
                                          (_%tl131097131112%_
                                           (##cdr _%e131095131107%_)))
                                      (let* ((_%hd131115%_ _%hd131096131110%_)
                                             (_%body131117%_
                                              _%tl131097131112%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd131115%_)
                                                 (gx#stx-list? _%body131117%_)
                                                 (not (gx#stx-null?
                                                       _%body131117%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd131115%_)
                                                   _%body131117%_)
                                             (gx#stx-source _%clause131091%_))
                                            (_%E131094131103%_)))))
                                  (_%E131094131103%_)))))
                      (_%E131093131119%_)))))
          (let* ((_%e131062131069%_ _%stx131059%_)
                 (_%E131064131073%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e131062131069%_)))
                 (_%E131063131087%_
                  (lambda ()
                    (if (gx#stx-pair? _%e131062131069%_)
                        (let ((_%e131065131077%_
                               (gx#syntax-e _%e131062131069%_)))
                          (let ((_%hd131066131080%_ (##car _%e131065131077%_))
                                (_%tl131067131082%_ (##cdr _%e131065131077%_)))
                            (let ((_%clauses131085%_ _%tl131067131082%_))
                              (if (gx#stx-list? _%clauses131085%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate131061%_
                                    _%clauses131085%_))
                                  (_%E131064131073%_)))))
                        (_%E131064131073%_)))))
            (_%E131063131087%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx130960%_ _%form130961%_)
        (letrec ((_%generate130963%_
                  (lambda (_%bind131006%_)
                    (let* ((_%e131007131017%_ _%bind131006%_)
                           (_%E131009131021%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx130960%_
                               _%bind131006%_)))
                           (_%E131008131045%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131007131017%_)
                                  (let ((_%e131010131025%_
                                         (gx#syntax-e _%e131007131017%_)))
                                    (let ((_%hd131011131028%_
                                           (##car _%e131010131025%_))
                                          (_%tl131012131030%_
                                           (##cdr _%e131010131025%_)))
                                      (let ((_%ids131033%_ _%hd131011131028%_))
                                        (if (gx#stx-pair? _%tl131012131030%_)
                                            (let ((_%e131013131035%_
                                                   (gx#syntax-e
                                                    _%tl131012131030%_)))
                                              (let ((_%hd131014131038%_
                                                     (##car _%e131013131035%_))
                                                    (_%tl131015131040%_
                                                     (##cdr _%e131013131035%_)))
                                                (let ((_%expr131043%_
                                                       _%hd131014131038%_))
                                                  (if (gx#stx-null?
                                                       _%tl131015131040%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids131033%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids131033%_)
                        (cons _%expr131043%_ '()))
                  (_%E131009131021%_))
              (_%E131009131021%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E131009131021%_)))))
                                  (_%E131009131021%_)))))
                      (_%E131008131045%_)))))
          (let* ((_%e130964130974%_ _%stx130960%_)
                 (_%E130966130978%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e130964130974%_)))
                 (_%E130965131002%_
                  (lambda ()
                    (if (gx#stx-pair? _%e130964130974%_)
                        (let ((_%e130967130982%_
                               (gx#syntax-e _%e130964130974%_)))
                          (let ((_%hd130968130985%_ (##car _%e130967130982%_))
                                (_%tl130969130987%_ (##cdr _%e130967130982%_)))
                            (if (gx#stx-pair? _%tl130969130987%_)
                                (let ((_%e130970130990%_
                                       (gx#syntax-e _%tl130969130987%_)))
                                  (let ((_%hd130971130993%_
                                         (##car _%e130970130990%_))
                                        (_%tl130972130995%_
                                         (##cdr _%e130970130990%_)))
                                    (let* ((_%hd130998%_ _%hd130971130993%_)
                                           (_%body131000%_ _%tl130972130995%_))
                                      (if (and (gx#stx-list? _%hd130998%_)
                                               (gx#stx-list? _%body131000%_)
                                               (not (gx#stx-null?
                                                     _%body131000%_)))
                                          (gx#core-cons*
                                           _%form130961%_
                                           (gx#stx-map1
                                            _%generate130963%_
                                            _%hd130998%_)
                                           _%body131000%_)
                                          (_%E130966130978%_)))))
                                (_%E130966130978%_))))
                        (_%E130966130978%_)))))
            (_%E130965131002%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx131052%_)
        (let ((_%form131054%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx131052%_ _%form131054%_))))
    (define gx#macro-expand-let-values
      (lambda _g133440_
        (let ((_g133441_ (##length _g133440_)))
          (cond ((##fx= _g133441_ 1)
                 (apply gx#macro-expand-let-values__0 _g133440_))
                ((##fx= _g133441_ 2)
                 (apply gx#macro-expand-let-values__% _g133440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g133440_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx130957%_)
        (gx#macro-expand-let-values__% _%stx130957%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx130955%_)
        (gx#macro-expand-let-values__% _%stx130955%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx130846%_)
        (let* ((_%e130847130873%_ _%stx130846%_)
               (_%E130859130877%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130847130873%_)))
               (_%E130849130919%_
                (lambda ()
                  (if (gx#stx-pair? _%e130847130873%_)
                      (let ((_%e130860130881%_
                             (gx#syntax-e _%e130847130873%_)))
                        (let ((_%hd130861130884%_ (##car _%e130860130881%_))
                              (_%tl130862130886%_ (##cdr _%e130860130881%_)))
                          (if (gx#stx-pair? _%tl130862130886%_)
                              (let ((_%e130863130889%_
                                     (gx#syntax-e _%tl130862130886%_)))
                                (let ((_%hd130864130892%_
                                       (##car _%e130863130889%_))
                                      (_%tl130865130894%_
                                       (##cdr _%e130863130889%_)))
                                  (let ((_%test130897%_ _%hd130864130892%_))
                                    (if (gx#stx-pair? _%tl130865130894%_)
                                        (let ((_%e130866130899%_
                                               (gx#syntax-e
                                                _%tl130865130894%_)))
                                          (let ((_%hd130867130902%_
                                                 (##car _%e130866130899%_))
                                                (_%tl130868130904%_
                                                 (##cdr _%e130866130899%_)))
                                            (let ((_%K130907%_
                                                   _%hd130867130902%_))
                                              (if (gx#stx-pair?
                                                   _%tl130868130904%_)
                                                  (let ((_%e130869130909%_
                                                         (gx#syntax-e
                                                          _%tl130868130904%_)))
                                                    (let ((_%hd130870130912%_
                                                           (##car _%e130869130909%_))
                                                          (_%tl130871130914%_
                                                           (##cdr _%e130869130909%_)))
                                                      (let ((_%E130917%_
                                                             _%hd130870130912%_))
                                                        (if (gx#stx-null?
                                                             _%tl130871130914%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test130897%_
                                                             _%K130907%_
                                                             _%E130917%_)
                                                            (_%E130859130877%_)))))
                                                  (_%E130859130877%_)))))
                                        (_%E130859130877%_)))))
                              (_%E130859130877%_))))
                      (_%E130859130877%_))))
               (_%E130848130951%_
                (lambda ()
                  (if (gx#stx-pair? _%e130847130873%_)
                      (let ((_%e130850130923%_
                             (gx#syntax-e _%e130847130873%_)))
                        (let ((_%hd130851130926%_ (##car _%e130850130923%_))
                              (_%tl130852130928%_ (##cdr _%e130850130923%_)))
                          (if (gx#stx-pair? _%tl130852130928%_)
                              (let ((_%e130853130931%_
                                     (gx#syntax-e _%tl130852130928%_)))
                                (let ((_%hd130854130934%_
                                       (##car _%e130853130931%_))
                                      (_%tl130855130936%_
                                       (##cdr _%e130853130931%_)))
                                  (let ((_%test130939%_ _%hd130854130934%_))
                                    (if (gx#stx-pair? _%tl130855130936%_)
                                        (let ((_%e130856130941%_
                                               (gx#syntax-e
                                                _%tl130855130936%_)))
                                          (let ((_%hd130857130944%_
                                                 (##car _%e130856130941%_))
                                                (_%tl130858130946%_
                                                 (##cdr _%e130856130941%_)))
                                            (let ((_%K130949%_
                                                   _%hd130857130944%_))
                                              (if (gx#stx-null?
                                                   _%tl130858130946%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test130939%_
                                                   _%K130949%_
                                                   '#!void)
                                                  (_%E130849130919%_)))))
                                        (_%E130849130919%_)))))
                              (_%E130849130919%_))))
                      (_%E130849130919%_)))))
          (_%E130848130951%_))))
    (define gx#free-identifier=?
      (lambda (_%xid130831%_ _%yid130832%_)
        (let ((_%xe130834%_ (gx#resolve-identifier__0 _%xid130831%_))
              (_%ye130835%_ (gx#resolve-identifier__0 _%yid130832%_)))
          (if (and _%xe130834%_ _%ye130835%_)
              (let ((_%$e130838%_ (eq? _%xe130834%_ _%ye130835%_)))
                (if _%$e130838%_
                    _%$e130838%_
                    (if (##structure-instance-of? _%xe130834%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye130835%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe130834%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye130835%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe130834%_ _%ye130835%_)
                  '#f
                  (gx#stx-eq? _%xid130831%_ _%yid130832%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid130812%_ _%yid130813%_)
        (letrec ((_%context130815%_
                  (lambda (_%e130829%_)
                    (if (##structure-direct-instance-of?
                         _%e130829%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e130829%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks130816%_
                  (lambda (_%e130824%_)
                    (if (symbol? _%e130824%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e130824%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e130824%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e130824%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap130817%_
                  (lambda (_%e130822%_)
                    (if (symbol? _%e130822%_)
                        _%e130822%_
                        (gx#syntax-local-unwrap _%e130822%_)))))
          (let ((_%x130819%_ (_%unwrap130817%_ _%xid130812%_))
                (_%y130820%_ (_%unwrap130817%_ _%yid130813%_)))
            (if (gx#stx-eq? _%x130819%_ _%y130820%_)
                (if (eq? (_%context130815%_ _%x130819%_)
                         (_%context130815%_ _%y130820%_))
                    (equal? (_%marks130816%_ _%x130819%_)
                            (_%marks130816%_ _%y130820%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx130810%_)
        (if (gx#identifier? _%stx130810%_)
            (gx#core-identifier=? _%stx130810%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx130808%_)
        (if (gx#identifier? _%stx130808%_)
            (gx#core-identifier=? _%stx130808%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx130751%_ _%where130752%_)
        (let _%lp130754%_ ((_%rest130756%_ (gx#syntax->list _%stx130751%_)))
          (let* ((_%rest130757130765%_ _%rest130756%_)
                 (_%else130759130773%_ (lambda () '#t))
                 (_%K130761130786%_
                  (lambda (_%rest130776%_ _%hd130777%_)
                    (if (gx#identifier? _%hd130777%_)
                        (if (__find (lambda (_%g130779130781%_)
                                      (gx#bound-identifier=?
                                       _%g130779130781%_
                                       _%hd130777%_))
                                    _%rest130776%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where130752%_
                             _%hd130777%_)
                            (_%lp130754%_ _%rest130776%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where130752%_
                         _%hd130777%_)))))
            (if (pair? _%rest130757130765%_)
                (let ((_%hd130762130789%_ (##car _%rest130757130765%_))
                      (_%tl130763130791%_ (##cdr _%rest130757130765%_)))
                  (let* ((_%hd130794%_ _%hd130762130789%_)
                         (_%rest130796%_ _%tl130763130791%_))
                    (_%K130761130786%_ _%rest130796%_ _%hd130794%_)))
                (_%else130759130773%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx130801%_)
        (let ((_%where130803%_ _%stx130801%_))
          (gx#check-duplicate-identifiers__% _%stx130801%_ _%where130803%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g133442_
        (let ((_g133443_ (##length _g133442_)))
          (cond ((##fx= _g133443_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g133442_))
                ((##fx= _g133443_ 2)
                 (apply gx#check-duplicate-identifiers__% _g133442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g133442_))))))
    (define gx#core-bind-values?
      (lambda (_%stx130743%_)
        (gx#stx-andmap
         (lambda (_%x130745%_)
           (let ((_%$e130747%_ (gx#identifier? _%x130745%_)))
             (if _%$e130747%_ _%$e130747%_ (gx#stx-false? _%x130745%_))))
         _%stx130743%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx130707%_ _%rebind?130708%_ _%phi130709%_ _%ctx130710%_)
        (gx#stx-for-each1
         (lambda (_%id130712%_)
           (if (gx#identifier? _%id130712%_)
               (gx#core-bind-runtime!__%
                _%id130712%_
                _%rebind?130708%_
                _%phi130709%_
                _%ctx130710%_)
               '#!void))
         _%stx130707%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx130717%_)
        (let* ((_%rebind?130719%_ '#f)
               (_%phi130721%_ (gx#current-expander-phi))
               (_%ctx130723%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx130717%_
           _%rebind?130719%_
           _%phi130721%_
           _%ctx130723%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx130725%_ _%rebind?130726%_)
        (let* ((_%phi130728%_ (gx#current-expander-phi))
               (_%ctx130730%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx130725%_
           _%rebind?130726%_
           _%phi130728%_
           _%ctx130730%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx130732%_ _%rebind?130733%_ _%phi130734%_)
        (let ((_%ctx130736%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx130732%_
           _%rebind?130733%_
           _%phi130734%_
           _%ctx130736%_))))
    (define gx#core-bind-values!
      (lambda _g133444_
        (let ((_g133445_ (##length _g133444_)))
          (cond ((##fx= _g133445_ 1) (apply gx#core-bind-values!__0 _g133444_))
                ((##fx= _g133445_ 2) (apply gx#core-bind-values!__1 _g133444_))
                ((##fx= _g133445_ 3) (apply gx#core-bind-values!__2 _g133444_))
                ((##fx= _g133445_ 4) (apply gx#core-bind-values!__% _g133444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g133444_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx130702%_)
        (gx#stx-map1
         (lambda (_%x130704%_)
           (if (gx#identifier? _%x130704%_)
               (gx#core-quote-syntax__0 _%x130704%_)
               '#f))
         _%stx130702%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx130695%_)
        (if (gx#identifier? _%stx130695%_)
            (let* ((_%bind130697%_ (gx#resolve-identifier__0 _%stx130695%_))
                   (_%$e130699%_ (not _%bind130697%_)))
              (if _%$e130699%_
                  _%$e130699%_
                  (##structure-instance-of?
                   _%bind130697%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id130684%_ _%form130685%_)
        (let ((_%bind130687%_ (gx#resolve-identifier__0 _%id130684%_)))
          (if (##structure-instance-of? _%bind130687%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id130684%_)
              (if (not _%bind130687%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id130684%_)))
                      (gx#core-quote-syntax__0 _%id130684%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form130685%_
                       _%id130684%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form130685%_
                   _%id130684%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id130639%_ _%rebind?130640%_ _%phi130641%_ _%ctx130642%_)
        (let* ((_%key130644%_ (gx#core-identifier-key _%id130639%_))
               (_%eid130646%_
                (gx#make-binding-id__%
                 _%key130644%_
                 '#f
                 _%phi130641%_
                 _%ctx130642%_))
               (_%bind130652%_
                (if (##structure-instance-of?
                     _%ctx130642%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid130646%_
                     _%key130644%_
                     _%phi130641%_
                     _%ctx130642%_)
                    (if (##structure-instance-of?
                         _%ctx130642%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid130646%_
                         _%key130644%_
                         _%phi130641%_)
                        (if (##structure-instance-of?
                             _%ctx130642%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid130646%_
                             _%key130644%_
                             _%phi130641%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid130646%_
                             _%key130644%_
                             _%phi130641%_))))))
          (gx#bind-identifier!__%
           _%id130639%_
           _%bind130652%_
           _%rebind?130640%_
           _%phi130641%_
           _%ctx130642%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id130658%_)
        (let* ((_%rebind?130660%_ '#f)
               (_%phi130662%_ (gx#current-expander-phi))
               (_%ctx130664%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id130658%_
           _%rebind?130660%_
           _%phi130662%_
           _%ctx130664%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id130666%_ _%rebind?130667%_)
        (let* ((_%phi130669%_ (gx#current-expander-phi))
               (_%ctx130671%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id130666%_
           _%rebind?130667%_
           _%phi130669%_
           _%ctx130671%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id130673%_ _%rebind?130674%_ _%phi130675%_)
        (let ((_%ctx130677%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id130673%_
           _%rebind?130674%_
           _%phi130675%_
           _%ctx130677%_))))
    (define gx#core-bind-runtime!
      (lambda _g133446_
        (let ((_g133447_ (##length _g133446_)))
          (cond ((##fx= _g133447_ 1)
                 (apply gx#core-bind-runtime!__0 _g133446_))
                ((##fx= _g133447_ 2)
                 (apply gx#core-bind-runtime!__1 _g133446_))
                ((##fx= _g133447_ 3)
                 (apply gx#core-bind-runtime!__2 _g133446_))
                ((##fx= _g133447_ 4)
                 (apply gx#core-bind-runtime!__% _g133446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g133446_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id130591%_
               _%eid130592%_
               _%rebind?130593%_
               _%phi130594%_
               _%ctx130595%_)
        (let* ((_%key130597%_ (gx#core-identifier-key _%id130591%_))
               (_%bind130602%_
                (if (##structure-instance-of?
                     _%ctx130595%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid130592%_
                     _%key130597%_
                     _%phi130594%_
                     _%ctx130595%_)
                    (if (##structure-instance-of?
                         _%ctx130595%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid130592%_
                         _%key130597%_
                         _%phi130594%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid130592%_
                         _%key130597%_
                         _%phi130594%_)))))
          (gx#bind-identifier!__%
           _%id130591%_
           _%bind130602%_
           _%rebind?130593%_
           _%phi130594%_
           _%ctx130595%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id130608%_ _%eid130609%_)
        (let* ((_%rebind?130611%_ '#f)
               (_%phi130613%_ (gx#current-expander-phi))
               (_%ctx130615%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id130608%_
           _%eid130609%_
           _%rebind?130611%_
           _%phi130613%_
           _%ctx130615%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id130617%_ _%eid130618%_ _%rebind?130619%_)
        (let* ((_%phi130621%_ (gx#current-expander-phi))
               (_%ctx130623%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id130617%_
           _%eid130618%_
           _%rebind?130619%_
           _%phi130621%_
           _%ctx130623%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id130625%_ _%eid130626%_ _%rebind?130627%_ _%phi130628%_)
        (let ((_%ctx130630%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id130625%_
           _%eid130626%_
           _%rebind?130627%_
           _%phi130628%_
           _%ctx130630%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g133448_
        (let ((_g133449_ (##length _g133448_)))
          (cond ((##fx= _g133449_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g133448_))
                ((##fx= _g133449_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g133448_))
                ((##fx= _g133449_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g133448_))
                ((##fx= _g133449_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g133448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g133448_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id130551%_
               _%eid130552%_
               _%rebind?130553%_
               _%phi130554%_
               _%ctx130555%_)
        (gx#bind-identifier!__%
         _%id130551%_
         (##structure
          gx#extern-binding::t
          _%eid130552%_
          (gx#core-identifier-key _%id130551%_)
          _%phi130554%_)
         _%rebind?130553%_
         _%phi130554%_
         _%ctx130555%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id130560%_ _%eid130561%_)
        (let* ((_%rebind?130563%_ '#f)
               (_%phi130565%_ (gx#current-expander-phi))
               (_%ctx130567%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130560%_
           _%eid130561%_
           _%rebind?130563%_
           _%phi130565%_
           _%ctx130567%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id130569%_ _%eid130570%_ _%rebind?130571%_)
        (let* ((_%phi130573%_ (gx#current-expander-phi))
               (_%ctx130575%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130569%_
           _%eid130570%_
           _%rebind?130571%_
           _%phi130573%_
           _%ctx130575%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id130577%_ _%eid130578%_ _%rebind?130579%_ _%phi130580%_)
        (let ((_%ctx130582%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id130577%_
           _%eid130578%_
           _%rebind?130579%_
           _%phi130580%_
           _%ctx130582%_))))
    (define gx#core-bind-extern!
      (lambda _g133450_
        (let ((_g133451_ (##length _g133450_)))
          (cond ((##fx= _g133451_ 2) (apply gx#core-bind-extern!__0 _g133450_))
                ((##fx= _g133451_ 3) (apply gx#core-bind-extern!__1 _g133450_))
                ((##fx= _g133451_ 4) (apply gx#core-bind-extern!__2 _g133450_))
                ((##fx= _g133451_ 5) (apply gx#core-bind-extern!__% _g133450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g133450_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id130505%_
               _%e130506%_
               _%rebind?130507%_
               _%phi130508%_
               _%ctx130509%_)
        (gx#bind-identifier!__%
         _%id130505%_
         (let ((_%key130514%_ (gx#core-identifier-key _%id130505%_))
               (_%e130515%_
                (if (or (##structure-instance-of? _%e130506%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e130506%_
                         'gx#expander-context::t))
                    _%e130506%_
                    (##structure
                     gx#user-expander::t
                     _%e130506%_
                     _%ctx130509%_
                     _%phi130508%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key130514%_
             '#t
             _%phi130508%_
             _%ctx130509%_)
            _%key130514%_
            _%phi130508%_
            _%e130515%_))
         _%rebind?130507%_
         _%phi130508%_
         _%ctx130509%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id130520%_ _%e130521%_)
        (let* ((_%rebind?130523%_ '#f)
               (_%phi130525%_ (gx#current-expander-phi))
               (_%ctx130527%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130520%_
           _%e130521%_
           _%rebind?130523%_
           _%phi130525%_
           _%ctx130527%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id130529%_ _%e130530%_ _%rebind?130531%_)
        (let* ((_%phi130533%_ (gx#current-expander-phi))
               (_%ctx130535%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130529%_
           _%e130530%_
           _%rebind?130531%_
           _%phi130533%_
           _%ctx130535%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id130537%_ _%e130538%_ _%rebind?130539%_ _%phi130540%_)
        (let ((_%ctx130542%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id130537%_
           _%e130538%_
           _%rebind?130539%_
           _%phi130540%_
           _%ctx130542%_))))
    (define gx#core-bind-syntax!
      (lambda _g133452_
        (let ((_g133453_ (##length _g133452_)))
          (cond ((##fx= _g133453_ 2) (apply gx#core-bind-syntax!__0 _g133452_))
                ((##fx= _g133453_ 3) (apply gx#core-bind-syntax!__1 _g133452_))
                ((##fx= _g133453_ 4) (apply gx#core-bind-syntax!__2 _g133452_))
                ((##fx= _g133453_ 5) (apply gx#core-bind-syntax!__% _g133452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g133452_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id130488%_ _%e130489%_ _%rebind?130490%_)
        (gx#core-bind-syntax!__%
         _%id130488%_
         _%e130489%_
         _%rebind?130490%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id130495%_ _%e130496%_)
        (let ((_%rebind?130498%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id130495%_
           _%e130496%_
           _%rebind?130498%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g133454_
        (let ((_g133455_ (##length _g133454_)))
          (cond ((##fx= _g133455_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g133454_))
                ((##fx= _g133455_ 3)
                 (apply gx#core-bind-root-syntax!__% _g133454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g133454_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id130446%_
               _%alias-id130447%_
               _%rebind?130448%_
               _%phi130449%_
               _%ctx130450%_)
        (gx#bind-identifier!__%
         _%id130446%_
         (let ((_%key130452%_ (gx#core-identifier-key _%id130446%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key130452%_
             '#t
             _%phi130449%_
             _%ctx130450%_)
            _%key130452%_
            _%phi130449%_
            _%alias-id130447%_))
         _%rebind?130448%_
         _%phi130449%_
         _%ctx130450%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id130457%_ _%alias-id130458%_)
        (let* ((_%rebind?130460%_ '#f)
               (_%phi130462%_ (gx#current-expander-phi))
               (_%ctx130464%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130457%_
           _%alias-id130458%_
           _%rebind?130460%_
           _%phi130462%_
           _%ctx130464%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id130466%_ _%alias-id130467%_ _%rebind?130468%_)
        (let* ((_%phi130470%_ (gx#current-expander-phi))
               (_%ctx130472%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130466%_
           _%alias-id130467%_
           _%rebind?130468%_
           _%phi130470%_
           _%ctx130472%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id130474%_ _%alias-id130475%_ _%rebind?130476%_ _%phi130477%_)
        (let ((_%ctx130479%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id130474%_
           _%alias-id130475%_
           _%rebind?130476%_
           _%phi130477%_
           _%ctx130479%_))))
    (define gx#core-bind-alias!
      (lambda _g133456_
        (let ((_g133457_ (##length _g133456_)))
          (cond ((##fx= _g133457_ 2) (apply gx#core-bind-alias!__0 _g133456_))
                ((##fx= _g133457_ 3) (apply gx#core-bind-alias!__1 _g133456_))
                ((##fx= _g133457_ 4) (apply gx#core-bind-alias!__2 _g133456_))
                ((##fx= _g133457_ 5) (apply gx#core-bind-alias!__% _g133456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g133456_))))))
    (define gx#make-binding-id__%
      (lambda (_%key130396%_ _%syntax?130397%_ _%phi130398%_ _%ctx130399%_)
        (if (uninterned-symbol? _%key130396%_)
            (##gensym 'L)
            (if (pair? _%key130396%_)
                (gensym (##car _%key130396%_))
                (if (##structure-instance-of? _%ctx130399%_ 'gx#top-context::t)
                    (let ((_%ns130404%_
                           (gx#core-context-namespace__% _%ctx130399%_)))
                      (if (and (fxzero? _%phi130398%_) (not _%syntax?130397%_))
                          (if _%ns130404%_
                              (make-symbol__1 _%ns130404%_ '"#" _%key130396%_)
                              _%key130396%_)
                          (if _%syntax?130397%_
                              (make-symbol__1
                               (let ((_%$e130408%_ _%ns130404%_))
                                 (if _%$e130408%_ _%$e130408%_ '""))
                               '"[:"
                               (number->string _%phi130398%_)
                               '":]#"
                               _%key130396%_)
                              (make-symbol__1
                               (let ((_%$e130412%_ _%ns130404%_))
                                 (if _%$e130412%_ _%$e130412%_ '""))
                               '"["
                               (number->string _%phi130398%_)
                               '"]#"
                               _%key130396%_))))
                    (gensym _%key130396%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key130419%_)
        (let* ((_%syntax?130421%_ '#f)
               (_%phi130423%_ (gx#current-expander-phi))
               (_%ctx130425%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130419%_
           _%syntax?130421%_
           _%phi130423%_
           _%ctx130425%_))))
    (define gx#make-binding-id__1
      (lambda (_%key130427%_ _%syntax?130428%_)
        (let* ((_%phi130430%_ (gx#current-expander-phi))
               (_%ctx130432%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130427%_
           _%syntax?130428%_
           _%phi130430%_
           _%ctx130432%_))))
    (define gx#make-binding-id__2
      (lambda (_%key130434%_ _%syntax?130435%_ _%phi130436%_)
        (let ((_%ctx130438%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key130434%_
           _%syntax?130435%_
           _%phi130436%_
           _%ctx130438%_))))
    (define gx#make-binding-id
      (lambda _g133458_
        (let ((_g133459_ (##length _g133458_)))
          (cond ((##fx= _g133459_ 1) (apply gx#make-binding-id__0 _g133458_))
                ((##fx= _g133459_ 2) (apply gx#make-binding-id__1 _g133458_))
                ((##fx= _g133459_ 3) (apply gx#make-binding-id__2 _g133458_))
                ((##fx= _g133459_ 4) (apply gx#make-binding-id__% _g133458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g133458_))))))))
