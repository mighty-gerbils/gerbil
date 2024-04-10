(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712757955)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx121819%_)
        (letrec ((_%expand-special121821%_
                  (lambda (_%hd121823%_ _%K121824%_ _%rest121825%_ _%r121826%_)
                    (_%K121824%_
                     _%rest121825%_
                     (cons (gx#core-expand-top _%hd121823%_) _%r121826%_)))))
          (gx#core-expand-block__0 _%stx121819%_ _%expand-special121821%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121572%_)
        (letrec ((_%expand-special121574%_
                  (lambda (_%hd121694%_ _%K121695%_ _%rest121696%_ _%r121697%_)
                    (let* ((_%K121701%_
                            (lambda (_%e121699%_)
                              (_%K121695%_
                               _%rest121696%_
                               (cons _%e121699%_ _%r121697%_))))
                           (_%e121702121731%_ _%hd121694%_)
                           (_%E121726121735%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121702121731%_)))
                           (_%E121722121747%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121702121731%_)
                                  (let ((_%e121727121739%_
                                         (gx#syntax-e _%e121702121731%_)))
                                    (let ((_%hd121728121742%_
                                           (##car _%e121727121739%_))
                                          (_%tl121729121744%_
                                           (##cdr _%e121727121739%_)))
                                      (if (and (gx#identifier?
                                                _%hd121728121742%_)
                                               (gx#core-identifier=?
                                                _%hd121728121742%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121701%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121694%_))
                                              (_%E121726121735%_))
                                          (_%E121726121735%_))))
                                  (_%E121726121735%_))))
                           (_%E121718121759%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121702121731%_)
                                  (let ((_%e121723121751%_
                                         (gx#syntax-e _%e121702121731%_)))
                                    (let ((_%hd121724121754%_
                                           (##car _%e121723121751%_))
                                          (_%tl121725121756%_
                                           (##cdr _%e121723121751%_)))
                                      (if (and (gx#identifier?
                                                _%hd121724121754%_)
                                               (gx#core-identifier=?
                                                _%hd121724121754%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121701%_
                                               (gx#core-expand-define-alias%
                                                _%hd121694%_))
                                              (_%E121722121747%_))
                                          (_%E121722121747%_))))
                                  (_%E121722121747%_))))
                           (_%E121708121771%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121702121731%_)
                                  (let ((_%e121719121763%_
                                         (gx#syntax-e _%e121702121731%_)))
                                    (let ((_%hd121720121766%_
                                           (##car _%e121719121763%_))
                                          (_%tl121721121768%_
                                           (##cdr _%e121719121763%_)))
                                      (if (and (gx#identifier?
                                                _%hd121720121766%_)
                                               (gx#core-identifier=?
                                                _%hd121720121766%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121701%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121694%_))
                                              (_%E121718121759%_))
                                          (_%E121718121759%_))))
                                  (_%E121718121759%_))))
                           (_%E121704121803%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121702121731%_)
                                  (let ((_%e121709121775%_
                                         (gx#syntax-e _%e121702121731%_)))
                                    (let ((_%hd121710121778%_
                                           (##car _%e121709121775%_))
                                          (_%tl121711121780%_
                                           (##cdr _%e121709121775%_)))
                                      (if (and (gx#identifier?
                                                _%hd121710121778%_)
                                               (gx#core-identifier=?
                                                _%hd121710121778%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121711121780%_)
                                              (let ((_%e121712121783%_
                                                     (gx#syntax-e
                                                      _%tl121711121780%_)))
                                                (let ((_%hd121713121786%_
                                                       (##car _%e121712121783%_))
                                                      (_%tl121714121788%_
                                                       (##cdr _%e121712121783%_)))
                                                  (let ((_%hd-bind121791%_
                                                         _%hd121713121786%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121714121788%_)
                                                        (let ((_%e121715121793%_
                                                               (gx#syntax-e
                                                                _%tl121714121788%_)))
                                                          (let ((_%hd121716121796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121715121793%_))
                        (_%tl121717121798%_ (##cdr _%e121715121793%_)))
                    (let ((_%expr121801%_ _%hd121716121796%_))
                      (if (gx#stx-null? _%tl121717121798%_)
                          (if (gx#core-bind-values? _%hd-bind121791%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121791%_)
                                (_%K121701%_ _%hd121694%_))
                              (_%E121708121771%_))
                          (_%E121708121771%_)))))
                (_%E121708121771%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121708121771%_))
                                          (_%E121708121771%_))))
                                  (_%E121708121771%_))))
                           (_%E121703121815%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121702121731%_)
                                  (let ((_%e121705121807%_
                                         (gx#syntax-e _%e121702121731%_)))
                                    (let ((_%hd121706121810%_
                                           (##car _%e121705121807%_))
                                          (_%tl121707121812%_
                                           (##cdr _%e121705121807%_)))
                                      (if (and (gx#identifier?
                                                _%hd121706121810%_)
                                               (gx#core-identifier=?
                                                _%hd121706121810%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121701%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121694%_))
                                              (_%E121704121803%_))
                                          (_%E121704121803%_))))
                                  (_%E121704121803%_)))))
                      (_%E121703121815%_))))
                 (_%eval-body121575%_
                  (lambda (_%rbody121583%_)
                    (let _%lp121585%_ ((_%rest121587%_ _%rbody121583%_)
                                       (_%body121588%_ '())
                                       (_%ebody121589%_ '()))
                      (let* ((_%rest121590121598%_ _%rest121587%_)
                             (_%else121592121606%_
                              (lambda ()
                                (values _%body121588%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121589%_)
                                          (gx#stx-source _%stx121572%_))))))
                             (_%K121594121682%_
                              (lambda (_%rest121609%_ _%hd121610%_)
                                (let* ((_%e121611121628%_ _%hd121610%_)
                                       (_%E121623121632%_
                                        (lambda ()
                                          (_%lp121585%_
                                           _%rest121609%_
                                           (cons _%hd121610%_ _%body121588%_)
                                           (cons _%hd121610%_
                                                 _%ebody121589%_))))
                                       (_%E121613121644%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121611121628%_)
                                              (let ((_%e121624121636%_
                                                     (gx#syntax-e
                                                      _%e121611121628%_)))
                                                (let ((_%hd121625121639%_
                                                       (##car _%e121624121636%_))
                                                      (_%tl121626121641%_
                                                       (##cdr _%e121624121636%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121625121639%_)
                                                           (gx#core-identifier=?
                                                            _%hd121625121639%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121585%_
                                                           _%rest121609%_
                                                           (cons _%hd121610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121588%_)
                   _%ebody121589%_)
                  (_%E121623121632%_))
              (_%E121623121632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121623121632%_))))
                                       (_%E121612121678%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121611121628%_)
                                              (let ((_%e121614121648%_
                                                     (gx#syntax-e
                                                      _%e121611121628%_)))
                                                (let ((_%hd121615121651%_
                                                       (##car _%e121614121648%_))
                                                      (_%tl121616121653%_
                                                       (##cdr _%e121614121648%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121615121651%_)
                                                           (gx#core-identifier=?
                                                            _%hd121615121651%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121616121653%_)
                                                          (let ((_%e121617121656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121616121653%_)))
                    (let ((_%hd121618121659%_ (##car _%e121617121656%_))
                          (_%tl121619121661%_ (##cdr _%e121617121656%_)))
                      (let ((_%hd-bind121664%_ _%hd121618121659%_))
                        (if (gx#stx-pair? _%tl121619121661%_)
                            (let ((_%e121620121666%_
                                   (gx#syntax-e _%tl121619121661%_)))
                              (let ((_%hd121621121669%_
                                     (##car _%e121620121666%_))
                                    (_%tl121622121671%_
                                     (##cdr _%e121620121666%_)))
                                (let ((_%expr121674%_ _%hd121621121669%_))
                                  (if (gx#stx-null? _%tl121622121671%_)
                                      (if '#t
                                          (let ((_%ehd121676%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121664%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121674%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121610%_))))
                                            (_%lp121585%_
                                             _%rest121609%_
                                             (cons _%ehd121676%_
                                                   _%body121588%_)
                                             (cons _%ehd121676%_
                                                   _%ebody121589%_)))
                                          (_%E121613121644%_))
                                      (_%E121613121644%_)))))
                            (_%E121613121644%_)))))
                  (_%E121613121644%_))
              (_%E121613121644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121613121644%_)))))
                                  (_%E121612121678%_)))))
                        (if (##pair? _%rest121590121598%_)
                            (let ((_%hd121595121685%_
                                   (##car _%rest121590121598%_))
                                  (_%tl121596121687%_
                                   (##cdr _%rest121590121598%_)))
                              (let* ((_%hd121690%_ _%hd121595121685%_)
                                     (_%rest121692%_ _%tl121596121687%_))
                                (_%K121594121682%_
                                 _%rest121692%_
                                 _%hd121690%_)))
                            (_%else121592121606%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121578%_
                     (gx#core-expand-block__1
                      _%stx121572%_
                      _%expand-special121574%_
                      '#f))
                    (_g121842_ (_%eval-body121575%_ _%rbody121578%_)))
               (begin
                 (let ((_g121843_
                        (if (##values? _g121842_)
                            (##vector-length _g121842_)
                            1)))
                   (if (not (##fx= _g121843_ 2))
                       (error "Context expects 2 values" _g121843_)))
                 (let ((_%expanded-body121580%_ (##vector-ref _g121842_ 0))
                       (_%value121581%_ (##vector-ref _g121842_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121580%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121581%_ '())))
                    (gx#stx-source _%stx121572%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121542%_)
        (let* ((_%e121543121550%_ _%stx121542%_)
               (_%E121545121554%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121543121550%_)))
               (_%E121544121568%_
                (lambda ()
                  (if (gx#stx-pair? _%e121543121550%_)
                      (let ((_%e121546121558%_
                             (gx#syntax-e _%e121543121550%_)))
                        (let ((_%hd121547121561%_ (##car _%e121546121558%_))
                              (_%tl121548121563%_ (##cdr _%e121546121558%_)))
                          (let ((_%body121566%_ _%tl121548121563%_))
                            (if (gx#stx-list? _%body121566%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121566%_)
                                 (gx#stx-source _%stx121542%_))
                                (_%E121545121554%_)))))
                      (_%E121545121554%_)))))
          (_%E121544121568%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121540%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121540%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121486%_)
        (let* ((_%e121487121500%_ _%stx121486%_)
               (_%E121489121504%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121487121500%_)))
               (_%E121488121536%_
                (lambda ()
                  (if (gx#stx-pair? _%e121487121500%_)
                      (let ((_%e121490121508%_
                             (gx#syntax-e _%e121487121500%_)))
                        (let ((_%hd121491121511%_ (##car _%e121490121508%_))
                              (_%tl121492121513%_ (##cdr _%e121490121508%_)))
                          (if (gx#stx-pair? _%tl121492121513%_)
                              (let ((_%e121493121516%_
                                     (gx#syntax-e _%tl121492121513%_)))
                                (let ((_%hd121494121519%_
                                       (##car _%e121493121516%_))
                                      (_%tl121495121521%_
                                       (##cdr _%e121493121516%_)))
                                  (let ((_%ann121524%_ _%hd121494121519%_))
                                    (if (gx#stx-pair? _%tl121495121521%_)
                                        (let ((_%e121496121526%_
                                               (gx#syntax-e
                                                _%tl121495121521%_)))
                                          (let ((_%hd121497121529%_
                                                 (##car _%e121496121526%_))
                                                (_%tl121498121531%_
                                                 (##cdr _%e121496121526%_)))
                                            (let ((_%expr121534%_
                                                   _%hd121497121529%_))
                                              (if (gx#stx-null?
                                                   _%tl121498121531%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121534%_)
                                 '())))
               (gx#stx-source _%stx121486%_))
              (_%E121489121504%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121489121504%_)))))
                                        (_%E121489121504%_)))))
                              (_%E121489121504%_))))
                      (_%E121489121504%_)))))
          (_%E121488121536%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx121210%_ _%body121211%_)
        (letrec ((_%expand-special121213%_
                  (lambda (_%hd121481%_ _%K121482%_ _%rest121483%_ _%r121484%_)
                    (_%K121482%_
                     '()
                     (cons (_%expand-internal121214%_
                            _%hd121481%_
                            _%rest121483%_)
                           _%r121484%_))))
                 (_%expand-internal121214%_
                  (lambda (_%hd121477%_ _%rest121478%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal121216%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121477%_ _%rest121478%_))
                          (gx#stx-source _%stx121210%_))
                         _%expand-internal-special121215%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj121836
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj121836)
                       __obj121836))))
                 (_%expand-internal-special121215%_
                  (lambda (_%hd121372%_ _%K121373%_ _%rest121374%_ _%r121375%_)
                    (let* ((_%e121376121401%_ _%hd121372%_)
                           (_%E121396121405%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121376121401%_)))
                           (_%E121392121417%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121376121401%_)
                                  (let ((_%e121397121409%_
                                         (gx#syntax-e _%e121376121401%_)))
                                    (let ((_%hd121398121412%_
                                           (##car _%e121397121409%_))
                                          (_%tl121399121414%_
                                           (##cdr _%e121397121409%_)))
                                      (if (and (gx#identifier?
                                                _%hd121398121412%_)
                                               (gx#core-identifier=?
                                                _%hd121398121412%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121373%_
                                               _%rest121374%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121372%_)
                                                     _%r121375%_))
                                              (_%E121396121405%_))
                                          (_%E121396121405%_))))
                                  (_%E121396121405%_))))
                           (_%E121388121429%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121376121401%_)
                                  (let ((_%e121393121421%_
                                         (gx#syntax-e _%e121376121401%_)))
                                    (let ((_%hd121394121424%_
                                           (##car _%e121393121421%_))
                                          (_%tl121395121426%_
                                           (##cdr _%e121393121421%_)))
                                      (if (and (gx#identifier?
                                                _%hd121394121424%_)
                                               (gx#core-identifier=?
                                                _%hd121394121424%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121372%_)
                                                (_%K121373%_
                                                 _%rest121374%_
                                                 _%r121375%_))
                                              (_%E121392121417%_))
                                          (_%E121392121417%_))))
                                  (_%E121392121417%_))))
                           (_%E121378121441%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121376121401%_)
                                  (let ((_%e121389121433%_
                                         (gx#syntax-e _%e121376121401%_)))
                                    (let ((_%hd121390121436%_
                                           (##car _%e121389121433%_))
                                          (_%tl121391121438%_
                                           (##cdr _%e121389121433%_)))
                                      (if (and (gx#identifier?
                                                _%hd121390121436%_)
                                               (gx#core-identifier=?
                                                _%hd121390121436%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121372%_)
                                                (_%K121373%_
                                                 _%rest121374%_
                                                 _%r121375%_))
                                              (_%E121388121429%_))
                                          (_%E121388121429%_))))
                                  (_%E121388121429%_))))
                           (_%E121377121473%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121376121401%_)
                                  (let ((_%e121379121445%_
                                         (gx#syntax-e _%e121376121401%_)))
                                    (let ((_%hd121380121448%_
                                           (##car _%e121379121445%_))
                                          (_%tl121381121450%_
                                           (##cdr _%e121379121445%_)))
                                      (if (and (gx#identifier?
                                                _%hd121380121448%_)
                                               (gx#core-identifier=?
                                                _%hd121380121448%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121381121450%_)
                                              (let ((_%e121382121453%_
                                                     (gx#syntax-e
                                                      _%tl121381121450%_)))
                                                (let ((_%hd121383121456%_
                                                       (##car _%e121382121453%_))
                                                      (_%tl121384121458%_
                                                       (##cdr _%e121382121453%_)))
                                                  (let ((_%hd-bind121461%_
                                                         _%hd121383121456%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121384121458%_)
                                                        (let ((_%e121385121463%_
                                                               (gx#syntax-e
                                                                _%tl121384121458%_)))
                                                          (let ((_%hd121386121466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121385121463%_))
                        (_%tl121387121468%_ (##cdr _%e121385121463%_)))
                    (let ((_%expr121471%_ _%hd121386121466%_))
                      (if (gx#stx-null? _%tl121387121468%_)
                          (if (gx#core-bind-values? _%hd-bind121461%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121461%_)
                                (_%K121373%_
                                 _%rest121374%_
                                 (cons _%hd121372%_ _%r121375%_)))
                              (_%E121378121441%_))
                          (_%E121378121441%_)))))
                (_%E121378121441%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121378121441%_))
                                          (_%E121378121441%_))))
                                  (_%E121378121441%_)))))
                      (_%E121377121473%_))))
                 (_%wrap-internal121216%_
                  (lambda (_%rbody121218%_)
                    (let _%lp121220%_ ((_%rest121222%_ _%rbody121218%_)
                                       (_%decls121223%_ '())
                                       (_%bind121224%_ '())
                                       (_%body121225%_ '()))
                      (let* ((_%e121226121233%_ _%rest121222%_)
                             (_%E121228121282%_
                              (lambda ()
                                (let* ((_%body121277%_
                                        (let* ((_%body121236121246%_
                                                _%body121225%_)
                                               (_%else121239121254%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body121225%_)
                                                   (gx#stx-source
                                                    _%stx121210%_)))))
                                          (let ((_%K121244121274%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx121210%_)))
                                                (_%K121241121260%_
                                                 (lambda (_%expr121258%_)
                                                   _%expr121258%_)))
                                            (let ((_%try-match121238121270%_
                                                   (lambda ()
                                                     (if (##pair? _%body121236121246%_)
                                                         (let ((_%tl121243121265%_
                                                                (##cdr _%body121236121246%_))
                                                               (_%hd121242121263%_
                                                                (##car _%body121236121246%_)))
                                                           (if (##null? _%tl121243121265%_)
                                                               (let ((_%expr121268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121242121263%_))
                         (_%K121241121260%_ _%expr121268%_))
                       (_%else121239121254%_)))
                 (_%else121239121254%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body121236121246%_)
                                                  (_%K121244121274%_)
                                                  (_%try-match121238121270%_))))))
                                       (_%body121279%_
                                        (if (null? _%bind121224%_)
                                            _%body121277%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind121224%_
                                                         (cons _%body121277%_
                                                               '())))
                                             (gx#stx-source _%stx121210%_)))))
                                  (if (null? _%decls121223%_)
                                      _%body121279%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls121223%_
                                                   (cons _%body121279%_ '())))
                                       (gx#stx-source _%stx121210%_))))))
                             (_%E121227121368%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121226121233%_)
                                    (let ((_%e121229121286%_
                                           (gx#syntax-e _%e121226121233%_)))
                                      (let ((_%hd121230121289%_
                                             (##car _%e121229121286%_))
                                            (_%tl121231121291%_
                                             (##cdr _%e121229121286%_)))
                                        (let* ((_%hd121294%_
                                                _%hd121230121289%_)
                                               (_%rest121296%_
                                                _%tl121231121291%_))
                                          (if '#t
                                              (let* ((_%e121297121314%_
                                                      _%hd121294%_)
                                                     (_%E121309121318%_
                                                      (lambda ()
                                                        (if (null? _%bind121224%_)
                                                            (_%lp121220%_
                                                             _%rest121296%_
                                                             _%decls121223%_
                                                             _%bind121224%_
                                                             (cons _%hd121294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body121225%_))
                    (_%lp121220%_
                     _%rest121296%_
                     _%decls121223%_
                     (cons (cons '#f (cons _%hd121294%_ '())) _%bind121224%_)
                     _%body121225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121299121332%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121297121314%_)
                                                            (let ((_%e121310121322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121297121314%_)))
                      (let ((_%hd121311121325%_ (##car _%e121310121322%_))
                            (_%tl121312121327%_ (##cdr _%e121310121322%_)))
                        (if (and (gx#identifier? _%hd121311121325%_)
                                 (gx#core-identifier=?
                                  _%hd121311121325%_
                                  '%#declare))
                            (let ((_%xdecls121330%_ _%tl121312121327%_))
                              (if '#t
                                  (_%lp121220%_
                                   _%rest121296%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls121223%_
                                    _%xdecls121330%_)
                                   _%bind121224%_
                                   _%body121225%_)
                                  (_%E121309121318%_)))
                            (_%E121309121318%_))))
                    (_%E121309121318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121298121364%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121297121314%_)
                                                            (let ((_%e121300121336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121297121314%_)))
                      (let ((_%hd121301121339%_ (##car _%e121300121336%_))
                            (_%tl121302121341%_ (##cdr _%e121300121336%_)))
                        (if (and (gx#identifier? _%hd121301121339%_)
                                 (gx#core-identifier=?
                                  _%hd121301121339%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121302121341%_)
                                (let ((_%e121303121344%_
                                       (gx#syntax-e _%tl121302121341%_)))
                                  (let ((_%hd121304121347%_
                                         (##car _%e121303121344%_))
                                        (_%tl121305121349%_
                                         (##cdr _%e121303121344%_)))
                                    (let ((_%hd-bind121352%_
                                           _%hd121304121347%_))
                                      (if (gx#stx-pair? _%tl121305121349%_)
                                          (let ((_%e121306121354%_
                                                 (gx#syntax-e
                                                  _%tl121305121349%_)))
                                            (let ((_%hd121307121357%_
                                                   (##car _%e121306121354%_))
                                                  (_%tl121308121359%_
                                                   (##cdr _%e121306121354%_)))
                                              (let ((_%expr121362%_
                                                     _%hd121307121357%_))
                                                (if (gx#stx-null?
                                                     _%tl121308121359%_)
                                                    (if '#t
                                                        (_%lp121220%_
                                                         _%rest121296%_
                                                         _%decls121223%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121352%_)
                             (cons (gx#core-expand-expression _%expr121362%_)
                                   '()))
                       _%bind121224%_)
                 _%body121225%_)
                (_%E121299121332%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121299121332%_)))))
                                          (_%E121299121332%_)))))
                                (_%E121299121332%_))
                            (_%E121299121332%_))))
                    (_%E121299121332%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121298121364%_))
                                              (_%E121228121282%_)))))
                                    (_%E121228121282%_)))))
                        (_%E121227121368%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body121211%_)
            (gx#stx-source _%stx121210%_))
           _%expand-special121213%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx121148%_)
        (let* ((_%e121149121156%_ _%stx121148%_)
               (_%E121151121160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121149121156%_)))
               (_%E121150121206%_
                (lambda ()
                  (if (gx#stx-pair? _%e121149121156%_)
                      (let ((_%e121152121164%_
                             (gx#syntax-e _%e121149121156%_)))
                        (let ((_%hd121153121167%_ (##car _%e121152121164%_))
                              (_%tl121154121169%_ (##cdr _%e121152121164%_)))
                          (let ((_%body121172%_ _%tl121154121169%_))
                            (if (gx#stx-list? _%body121172%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl121174%_)
                                     (let* ((_%e121175121182%_ _%decl121174%_)
                                            (_%E121177121186%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e121175121182%_)))
                                            (_%E121176121202%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e121175121182%_)
                                                   (let ((_%e121178121190%_
                                                          (gx#syntax-e
                                                           _%e121175121182%_)))
                                                     (let ((_%hd121179121193%_
                                                            (##car _%e121178121190%_))
                                                           (_%tl121180121195%_
                                                            (##cdr _%e121178121190%_)))
                                                       (let* ((_%head121198%_
                                                               _%hd121179121193%_)
                                                              (_%args121200%_
                                                               _%tl121180121195%_))
                                                         (if (gx#stx-list?
                                                              _%args121200%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl121174%_)
                                                             (_%E121177121186%_)))))
                                                   (_%E121177121186%_)))))
                                       (_%E121176121202%_)))
                                   _%body121172%_))
                                 (gx#stx-source _%stx121148%_))
                                (_%E121151121160%_)))))
                      (_%E121151121160%_)))))
          (_%E121150121206%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx121052%_)
        (let* ((_%e121053121060%_ _%stx121052%_)
               (_%E121055121064%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121053121060%_)))
               (_%E121054121144%_
                (lambda ()
                  (if (gx#stx-pair? _%e121053121060%_)
                      (let ((_%e121056121068%_
                             (gx#syntax-e _%e121053121060%_)))
                        (let ((_%hd121057121071%_ (##car _%e121056121068%_))
                              (_%tl121058121073%_ (##cdr _%e121056121068%_)))
                          (let ((_%body121076%_ _%tl121058121073%_))
                            (if '#t
                                (let _%lp121078%_ ((_%rest121080%_
                                                    _%body121076%_)
                                                   (_%r121081%_ '()))
                                  (let* ((_%e121082121096%_ _%rest121080%_)
                                         (_%E121094121100%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx121052%_)))
                                         (_%E121084121104%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e121082121096%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r121081%_))
                                                     (gx#stx-source
                                                      _%stx121052%_))
                                                    (_%E121094121100%_))
                                                (_%E121094121100%_))))
                                         (_%E121083121140%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e121082121096%_)
                                                (let ((_%e121085121108%_
                                                       (gx#syntax-e
                                                        _%e121082121096%_)))
                                                  (let ((_%hd121086121111%_
                                                         (##car _%e121085121108%_))
                                                        (_%tl121087121113%_
                                                         (##cdr _%e121085121108%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd121086121111%_)
                                                        (let ((_%e121088121116%_
                                                               (gx#syntax-e
                                                                _%hd121086121111%_)))
                                                          (let ((_%hd121089121119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121088121116%_))
                        (_%tl121090121121%_ (##cdr _%e121088121116%_)))
                    (let ((_%id121124%_ _%hd121089121119%_))
                      (if (gx#stx-pair? _%tl121090121121%_)
                          (let ((_%e121091121126%_
                                 (gx#syntax-e _%tl121090121121%_)))
                            (let ((_%hd121092121129%_
                                   (##car _%e121091121126%_))
                                  (_%tl121093121131%_
                                   (##cdr _%e121091121126%_)))
                              (let ((_%eid121134%_ _%hd121092121129%_))
                                (if (gx#stx-null? _%tl121093121131%_)
                                    (let ((_%rest121136%_ _%tl121087121113%_))
                                      (if (and (gx#identifier? _%id121124%_)
                                               (gx#identifier? _%eid121134%_))
                                          (let ((_%eid121138%_
                                                 (gx#stx-e _%eid121134%_)))
                                            (gx#core-bind-extern!__0
                                             _%id121124%_
                                             _%eid121138%_)
                                            (_%lp121078%_
                                             _%rest121136%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id121124%_)
                                                         (cons _%eid121138%_
                                                               '()))
                                                   _%r121081%_)))
                                          (_%E121084121104%_)))
                                    (_%E121084121104%_)))))
                          (_%E121084121104%_)))))
                (_%E121084121104%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121084121104%_)))))
                                    (_%E121083121140%_)))
                                (_%E121055121064%_)))))
                      (_%E121055121064%_)))))
          (_%E121054121144%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx120998%_)
        (let* ((_%e120999121012%_ _%stx120998%_)
               (_%E121001121016%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120999121012%_)))
               (_%E121000121048%_
                (lambda ()
                  (if (gx#stx-pair? _%e120999121012%_)
                      (let ((_%e121002121020%_
                             (gx#syntax-e _%e120999121012%_)))
                        (let ((_%hd121003121023%_ (##car _%e121002121020%_))
                              (_%tl121004121025%_ (##cdr _%e121002121020%_)))
                          (if (gx#stx-pair? _%tl121004121025%_)
                              (let ((_%e121005121028%_
                                     (gx#syntax-e _%tl121004121025%_)))
                                (let ((_%hd121006121031%_
                                       (##car _%e121005121028%_))
                                      (_%tl121007121033%_
                                       (##cdr _%e121005121028%_)))
                                  (let ((_%hd121036%_ _%hd121006121031%_))
                                    (if (gx#stx-pair? _%tl121007121033%_)
                                        (let ((_%e121008121038%_
                                               (gx#syntax-e
                                                _%tl121007121033%_)))
                                          (let ((_%hd121009121041%_
                                                 (##car _%e121008121038%_))
                                                (_%tl121010121043%_
                                                 (##cdr _%e121008121038%_)))
                                            (let ((_%expr121046%_
                                                   _%hd121009121041%_))
                                              (if (gx#stx-null?
                                                   _%tl121010121043%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd121036%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd121036%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121036%_)
                             (cons (gx#core-expand-expression _%expr121046%_)
                                   '())))
                 (gx#stx-source _%stx120998%_)))
              (_%E121001121016%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121001121016%_)))))
                                        (_%E121001121016%_)))))
                              (_%E121001121016%_))))
                      (_%E121001121016%_)))))
          (_%E121000121048%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx120942%_)
        (let* ((_%e120943120956%_ _%stx120942%_)
               (_%E120945120960%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120943120956%_)))
               (_%E120944120994%_
                (lambda ()
                  (if (gx#stx-pair? _%e120943120956%_)
                      (let ((_%e120946120964%_
                             (gx#syntax-e _%e120943120956%_)))
                        (let ((_%hd120947120967%_ (##car _%e120946120964%_))
                              (_%tl120948120969%_ (##cdr _%e120946120964%_)))
                          (if (gx#stx-pair? _%tl120948120969%_)
                              (let ((_%e120949120972%_
                                     (gx#syntax-e _%tl120948120969%_)))
                                (let ((_%hd120950120975%_
                                       (##car _%e120949120972%_))
                                      (_%tl120951120977%_
                                       (##cdr _%e120949120972%_)))
                                  (let ((_%id120980%_ _%hd120950120975%_))
                                    (if (gx#stx-pair? _%tl120951120977%_)
                                        (let ((_%e120952120982%_
                                               (gx#syntax-e
                                                _%tl120951120977%_)))
                                          (let ((_%hd120953120985%_
                                                 (##car _%e120952120982%_))
                                                (_%tl120954120987%_
                                                 (##cdr _%e120952120982%_)))
                                            (let ((_%binding-id120990%_
                                                   _%hd120953120985%_))
                                              (if (gx#stx-null?
                                                   _%tl120954120987%_)
                                                  (if (and (gx#identifier?
                                                            _%id120980%_)
                                                           (gx#identifier?
                                                            _%binding-id120990%_))
                                                      (let ((_%eid120992%_
                                                             (gx#stx-e
                                                              _%binding-id120990%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id120980%_
                                                         _%eid120992%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120980%_)
                             (cons _%eid120992%_ '())))))
              (_%E120945120960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120945120960%_)))))
                                        (_%E120945120960%_)))))
                              (_%E120945120960%_))))
                      (_%E120945120960%_)))))
          (_%E120944120994%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx120885%_)
        (let* ((_%e120886120899%_ _%stx120885%_)
               (_%E120888120903%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120886120899%_)))
               (_%E120887120938%_
                (lambda ()
                  (if (gx#stx-pair? _%e120886120899%_)
                      (let ((_%e120889120907%_
                             (gx#syntax-e _%e120886120899%_)))
                        (let ((_%hd120890120910%_ (##car _%e120889120907%_))
                              (_%tl120891120912%_ (##cdr _%e120889120907%_)))
                          (if (gx#stx-pair? _%tl120891120912%_)
                              (let ((_%e120892120915%_
                                     (gx#syntax-e _%tl120891120912%_)))
                                (let ((_%hd120893120918%_
                                       (##car _%e120892120915%_))
                                      (_%tl120894120920%_
                                       (##cdr _%e120892120915%_)))
                                  (let ((_%id120923%_ _%hd120893120918%_))
                                    (if (gx#stx-pair? _%tl120894120920%_)
                                        (let ((_%e120895120925%_
                                               (gx#syntax-e
                                                _%tl120894120920%_)))
                                          (let ((_%hd120896120928%_
                                                 (##car _%e120895120925%_))
                                                (_%tl120897120930%_
                                                 (##cdr _%e120895120925%_)))
                                            (let ((_%expr120933%_
                                                   _%hd120896120928%_))
                                              (if (gx#stx-null?
                                                   _%tl120897120930%_)
                                                  (if (gx#identifier?
                                                       _%id120923%_)
                                                      (let ((_g121844_
                                                             (gx#core-expand-expression+1
                                                              _%expr120933%_)))
                                                        (begin
                                                          (let ((_g121845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g121844_)
                             (##vector-length _g121844_)
                             1)))
                    (if (not (##fx= _g121845_ 2))
                        (error "Context expects 2 values" _g121845_)))
                  (let ((_%e-stx120935%_ (##vector-ref _g121844_ 0))
                        (_%e120936%_ (##vector-ref _g121844_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id120923%_ _%e120936%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id120923%_)
                                   (cons _%e-stx120935%_ '())))
                       (gx#stx-source _%stx120885%_))))))
              (_%E120888120903%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120888120903%_)))))
                                        (_%E120888120903%_)))))
                              (_%E120888120903%_))))
                      (_%E120888120903%_)))))
          (_%E120887120938%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx120829%_)
        (let* ((_%e120830120843%_ _%stx120829%_)
               (_%E120832120847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120830120843%_)))
               (_%E120831120881%_
                (lambda ()
                  (if (gx#stx-pair? _%e120830120843%_)
                      (let ((_%e120833120851%_
                             (gx#syntax-e _%e120830120843%_)))
                        (let ((_%hd120834120854%_ (##car _%e120833120851%_))
                              (_%tl120835120856%_ (##cdr _%e120833120851%_)))
                          (if (gx#stx-pair? _%tl120835120856%_)
                              (let ((_%e120836120859%_
                                     (gx#syntax-e _%tl120835120856%_)))
                                (let ((_%hd120837120862%_
                                       (##car _%e120836120859%_))
                                      (_%tl120838120864%_
                                       (##cdr _%e120836120859%_)))
                                  (let ((_%id120867%_ _%hd120837120862%_))
                                    (if (gx#stx-pair? _%tl120838120864%_)
                                        (let ((_%e120839120869%_
                                               (gx#syntax-e
                                                _%tl120838120864%_)))
                                          (let ((_%hd120840120872%_
                                                 (##car _%e120839120869%_))
                                                (_%tl120841120874%_
                                                 (##cdr _%e120839120869%_)))
                                            (let ((_%alias-id120877%_
                                                   _%hd120840120872%_))
                                              (if (gx#stx-null?
                                                   _%tl120841120874%_)
                                                  (if (and (gx#identifier?
                                                            _%id120867%_)
                                                           (gx#identifier?
                                                            _%alias-id120877%_))
                                                      (let ((_%alias-id120879%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id120877%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id120867%_
                                                         _%alias-id120879%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120867%_)
                             (cons _%alias-id120879%_ '())))))
              (_%E120832120847%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120832120847%_)))))
                                        (_%E120832120847%_)))))
                              (_%E120832120847%_))))
                      (_%E120832120847%_)))))
          (_%E120831120881%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120772%_ _%wrap?120773%_)
        (let* ((_%e120774120784%_ _%stx120772%_)
               (_%E120776120788%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120774120784%_)))
               (_%E120775120815%_
                (lambda ()
                  (if (gx#stx-pair? _%e120774120784%_)
                      (let ((_%e120777120792%_
                             (gx#syntax-e _%e120774120784%_)))
                        (let ((_%hd120778120795%_ (##car _%e120777120792%_))
                              (_%tl120779120797%_ (##cdr _%e120777120792%_)))
                          (if (gx#stx-pair? _%tl120779120797%_)
                              (let ((_%e120780120800%_
                                     (gx#syntax-e _%tl120779120797%_)))
                                (let ((_%hd120781120803%_
                                       (##car _%e120780120800%_))
                                      (_%tl120782120805%_
                                       (##cdr _%e120780120800%_)))
                                  (let* ((_%hd120808%_ _%hd120781120803%_)
                                         (_%body120810%_ _%tl120782120805%_))
                                    (if (gx#core-bind-values? _%hd120808%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd120808%_)
                                           (let ((_%body120813%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd120808%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120772%_
                                                               _%body120810%_)
                                                              '()))))
                                             (if _%wrap?120773%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body120813%_)
                                                  (gx#stx-source
                                                   _%stx120772%_))
                                                 _%body120813%_)))
                                         gx#current-expander-context
                                         (let ((__obj121837
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121837)
                                           __obj121837))
                                        (_%E120776120788%_)))))
                              (_%E120776120788%_))))
                      (_%E120776120788%_)))))
          (_%E120775120815%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx120822%_)
        (let ((_%wrap?120824%_ '#t))
          (gx#core-expand-lambda%__% _%stx120822%_ _%wrap?120824%_))))
    (define gx#core-expand-lambda%
      (lambda _g121847_
        (let ((_g121846_ (##length _g121847_)))
          (cond ((##fx= _g121846_ 1)
                 (apply gx#core-expand-lambda%__0 _g121847_))
                ((##fx= _g121846_ 2)
                 (apply gx#core-expand-lambda%__% _g121847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g121847_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120736%_)
        (let* ((_%e120737120744%_ _%stx120736%_)
               (_%E120739120748%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120737120744%_)))
               (_%E120738120767%_
                (lambda ()
                  (if (gx#stx-pair? _%e120737120744%_)
                      (let ((_%e120740120752%_
                             (gx#syntax-e _%e120737120744%_)))
                        (let ((_%hd120741120755%_ (##car _%e120740120752%_))
                              (_%tl120742120757%_ (##cdr _%e120740120752%_)))
                          (let ((_%clauses120760%_ _%tl120742120757%_))
                            (if (gx#stx-list? _%clauses120760%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120762%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120762%_)
                                       (let ((_%$e120764%_
                                              (gx#stx-source
                                               _%clause120762%_)))
                                         (if _%$e120764%_
                                             _%$e120764%_
                                             (gx#stx-source _%stx120736%_))))
                                      '#f))
                                   _%clauses120760%_))
                                 (gx#stx-source _%stx120736%_))
                                (_%E120739120748%_)))))
                      (_%E120739120748%_)))))
          (_%E120738120767%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120690%_)
        (let* ((_%e120691120701%_ _%stx120690%_)
               (_%E120693120705%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120691120701%_)))
               (_%E120692120732%_
                (lambda ()
                  (if (gx#stx-pair? _%e120691120701%_)
                      (let ((_%e120694120709%_
                             (gx#syntax-e _%e120691120701%_)))
                        (let ((_%hd120695120712%_ (##car _%e120694120709%_))
                              (_%tl120696120714%_ (##cdr _%e120694120709%_)))
                          (if (gx#stx-pair? _%tl120696120714%_)
                              (let ((_%e120697120717%_
                                     (gx#syntax-e _%tl120696120714%_)))
                                (let ((_%hd120698120720%_
                                       (##car _%e120697120717%_))
                                      (_%tl120699120722%_
                                       (##cdr _%e120697120717%_)))
                                  (let* ((_%hd120725%_ _%hd120698120720%_)
                                         (_%body120727%_ _%tl120699120722%_))
                                    (if (gx#core-expand-let-bind? _%hd120725%_)
                                        (let ((_%expressions120729%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120725%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120725%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120725%_
                                                           _%expressions120729%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120690%_
                         _%body120727%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120690%_)))
                                           gx#current-expander-context
                                           (let ((__obj121838
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121838)
                                             __obj121838)))
                                        (_%E120693120705%_)))))
                              (_%E120693120705%_))))
                      (_%E120693120705%_)))))
          (_%E120692120732%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120635%_ _%form120636%_)
        (let* ((_%e120637120647%_ _%stx120635%_)
               (_%E120639120651%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120637120647%_)))
               (_%E120638120676%_
                (lambda ()
                  (if (gx#stx-pair? _%e120637120647%_)
                      (let ((_%e120640120655%_
                             (gx#syntax-e _%e120637120647%_)))
                        (let ((_%hd120641120658%_ (##car _%e120640120655%_))
                              (_%tl120642120660%_ (##cdr _%e120640120655%_)))
                          (if (gx#stx-pair? _%tl120642120660%_)
                              (let ((_%e120643120663%_
                                     (gx#syntax-e _%tl120642120660%_)))
                                (let ((_%hd120644120666%_
                                       (##car _%e120643120663%_))
                                      (_%tl120645120668%_
                                       (##cdr _%e120643120663%_)))
                                  (let* ((_%hd120671%_ _%hd120644120666%_)
                                         (_%body120673%_ _%tl120645120668%_))
                                    (if (gx#core-expand-let-bind? _%hd120671%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120671%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120636%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120671%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120671%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120635%_
                                                               _%body120673%_)
                                                              '())))
                                            (gx#stx-source _%stx120635%_)))
                                         gx#current-expander-context
                                         (let ((__obj121839
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121839)
                                           __obj121839))
                                        (_%E120639120651%_)))))
                              (_%E120639120651%_))))
                      (_%E120639120651%_)))))
          (_%E120638120676%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120683%_)
        (let ((_%form120685%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120683%_ _%form120685%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g121849_
        (let ((_g121848_ (##length _g121849_)))
          (cond ((##fx= _g121848_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g121849_))
                ((##fx= _g121848_ 2)
                 (apply gx#core-expand-letrec-values%__% _g121849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g121849_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120632%_)
        (gx#core-expand-letrec-values%__% _%stx120632%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120589%_)
        (if (gx#stx-list? _%stx120589%_)
            (gx#stx-andmap
             (lambda (_%bind120591%_)
               (let* ((_%e120592120602%_ _%bind120591%_)
                      (_%E120594120606%_ (lambda () '#f))
                      (_%E120593120628%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120592120602%_)
                             (let ((_%e120595120610%_
                                    (gx#syntax-e _%e120592120602%_)))
                               (let ((_%hd120596120613%_
                                      (##car _%e120595120610%_))
                                     (_%tl120597120615%_
                                      (##cdr _%e120595120610%_)))
                                 (let ((_%hd120618%_ _%hd120596120613%_))
                                   (if (gx#stx-pair? _%tl120597120615%_)
                                       (let ((_%e120598120620%_
                                              (gx#syntax-e
                                               _%tl120597120615%_)))
                                         (let ((_%hd120599120623%_
                                                (##car _%e120598120620%_))
                                               (_%tl120600120625%_
                                                (##cdr _%e120598120620%_)))
                                           (if (gx#stx-null?
                                                _%tl120600120625%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120618%_)
                                                   (_%E120594120606%_))
                                               (_%E120594120606%_))))
                                       (_%E120594120606%_)))))
                             (_%E120594120606%_)))))
                 (_%E120593120628%_)))
             _%stx120589%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120548%_)
        (let* ((_%e120549120559%_ _%bind120548%_)
               (_%E120551120563%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120549120559%_)))
               (_%E120550120585%_
                (lambda ()
                  (if (gx#stx-pair? _%e120549120559%_)
                      (let ((_%e120552120567%_
                             (gx#syntax-e _%e120549120559%_)))
                        (let ((_%hd120553120570%_ (##car _%e120552120567%_))
                              (_%tl120554120572%_ (##cdr _%e120552120567%_)))
                          (if (gx#stx-pair? _%tl120554120572%_)
                              (let ((_%e120555120575%_
                                     (gx#syntax-e _%tl120554120572%_)))
                                (let ((_%hd120556120578%_
                                       (##car _%e120555120575%_))
                                      (_%tl120557120580%_
                                       (##cdr _%e120555120575%_)))
                                  (let ((_%expr120583%_ _%hd120556120578%_))
                                    (if (gx#stx-null? _%tl120557120580%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120583%_)
                                            (_%E120551120563%_))
                                        (_%E120551120563%_)))))
                              (_%E120551120563%_))))
                      (_%E120551120563%_)))))
          (_%E120550120585%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120507%_)
        (let* ((_%e120508120518%_ _%bind120507%_)
               (_%E120510120522%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120508120518%_)))
               (_%E120509120544%_
                (lambda ()
                  (if (gx#stx-pair? _%e120508120518%_)
                      (let ((_%e120511120526%_
                             (gx#syntax-e _%e120508120518%_)))
                        (let ((_%hd120512120529%_ (##car _%e120511120526%_))
                              (_%tl120513120531%_ (##cdr _%e120511120526%_)))
                          (let ((_%hd120534%_ _%hd120512120529%_))
                            (if (gx#stx-pair? _%tl120513120531%_)
                                (let ((_%e120514120536%_
                                       (gx#syntax-e _%tl120513120531%_)))
                                  (let ((_%hd120515120539%_
                                         (##car _%e120514120536%_))
                                        (_%tl120516120541%_
                                         (##cdr _%e120514120536%_)))
                                    (if (gx#stx-null? _%tl120516120541%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120534%_)
                                            (_%E120510120522%_))
                                        (_%E120510120522%_))))
                                (_%E120510120522%_)))))
                      (_%E120510120522%_)))))
          (_%E120509120544%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120465%_ _%expr120466%_)
        (let* ((_%e120467120477%_ _%bind120465%_)
               (_%E120469120481%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120467120477%_)))
               (_%E120468120503%_
                (lambda ()
                  (if (gx#stx-pair? _%e120467120477%_)
                      (let ((_%e120470120485%_
                             (gx#syntax-e _%e120467120477%_)))
                        (let ((_%hd120471120488%_ (##car _%e120470120485%_))
                              (_%tl120472120490%_ (##cdr _%e120470120485%_)))
                          (let ((_%hd120493%_ _%hd120471120488%_))
                            (if (gx#stx-pair? _%tl120472120490%_)
                                (let ((_%e120473120495%_
                                       (gx#syntax-e _%tl120472120490%_)))
                                  (let ((_%hd120474120498%_
                                         (##car _%e120473120495%_))
                                        (_%tl120475120500%_
                                         (##cdr _%e120473120495%_)))
                                    (if (gx#stx-null? _%tl120475120500%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120493%_)
                                                  (cons _%expr120466%_ '()))
                                            (_%E120469120481%_))
                                        (_%E120469120481%_))))
                                (_%E120469120481%_)))))
                      (_%E120469120481%_)))))
          (_%E120468120503%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120419%_)
        (let* ((_%e120420120430%_ _%stx120419%_)
               (_%E120422120434%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120420120430%_)))
               (_%E120421120461%_
                (lambda ()
                  (if (gx#stx-pair? _%e120420120430%_)
                      (let ((_%e120423120438%_
                             (gx#syntax-e _%e120420120430%_)))
                        (let ((_%hd120424120441%_ (##car _%e120423120438%_))
                              (_%tl120425120443%_ (##cdr _%e120423120438%_)))
                          (if (gx#stx-pair? _%tl120425120443%_)
                              (let ((_%e120426120446%_
                                     (gx#syntax-e _%tl120425120443%_)))
                                (let ((_%hd120427120449%_
                                       (##car _%e120426120446%_))
                                      (_%tl120428120451%_
                                       (##cdr _%e120426120446%_)))
                                  (let* ((_%hd120454%_ _%hd120427120449%_)
                                         (_%body120456%_ _%tl120428120451%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120454%_)
                                        (let ((_%expanders120458%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120454%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120454%_
                                              _%expanders120458%_)
                                             (gx#core-expand-local-block
                                              _%stx120419%_
                                              _%body120456%_))
                                           gx#current-expander-context
                                           (let ((__obj121840
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121840)
                                             __obj121840)))
                                        (_%E120422120434%_)))))
                              (_%E120422120434%_))))
                      (_%E120422120434%_)))))
          (_%E120421120461%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120368%_)
        (let* ((_%e120369120379%_ _%stx120368%_)
               (_%E120371120383%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120369120379%_)))
               (_%E120370120415%_
                (lambda ()
                  (if (gx#stx-pair? _%e120369120379%_)
                      (let ((_%e120372120387%_
                             (gx#syntax-e _%e120369120379%_)))
                        (let ((_%hd120373120390%_ (##car _%e120372120387%_))
                              (_%tl120374120392%_ (##cdr _%e120372120387%_)))
                          (if (gx#stx-pair? _%tl120374120392%_)
                              (let ((_%e120375120395%_
                                     (gx#syntax-e _%tl120374120392%_)))
                                (let ((_%hd120376120398%_
                                       (##car _%e120375120395%_))
                                      (_%tl120377120400%_
                                       (##cdr _%e120375120395%_)))
                                  (let* ((_%hd120403%_ _%hd120376120398%_)
                                         (_%body120405%_ _%tl120377120400%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120403%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120403%_
                                            (make-list
                                             (gx#stx-length _%hd120403%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120407120410%_
                                                     _%g120408120412%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120407120410%_
                                               _%g120408120412%_
                                               '#t))
                                            _%hd120403%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120403%_))
                                           (gx#core-expand-local-block
                                            _%stx120368%_
                                            _%body120405%_))
                                         gx#current-expander-context
                                         (let ((__obj121841
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121841)
                                           __obj121841))
                                        (_%E120371120383%_)))))
                              (_%E120371120383%_))))
                      (_%E120371120383%_)))))
          (_%E120370120415%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120325%_)
        (if (gx#stx-list? _%stx120325%_)
            (gx#stx-andmap
             (lambda (_%bind120327%_)
               (let* ((_%e120328120338%_ _%bind120327%_)
                      (_%E120330120342%_ (lambda () '#f))
                      (_%E120329120364%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120328120338%_)
                             (let ((_%e120331120346%_
                                    (gx#syntax-e _%e120328120338%_)))
                               (let ((_%hd120332120349%_
                                      (##car _%e120331120346%_))
                                     (_%tl120333120351%_
                                      (##cdr _%e120331120346%_)))
                                 (let ((_%hd120354%_ _%hd120332120349%_))
                                   (if (gx#stx-pair? _%tl120333120351%_)
                                       (let ((_%e120334120356%_
                                              (gx#syntax-e
                                               _%tl120333120351%_)))
                                         (let ((_%hd120335120359%_
                                                (##car _%e120334120356%_))
                                               (_%tl120336120361%_
                                                (##cdr _%e120334120356%_)))
                                           (if (gx#stx-null?
                                                _%tl120336120361%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120354%_)
                                                   (_%E120330120342%_))
                                               (_%E120330120342%_))))
                                       (_%E120330120342%_)))))
                             (_%E120330120342%_)))))
                 (_%E120329120364%_)))
             _%stx120325%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind120281%_)
        (let* ((_%e120282120292%_ _%bind120281%_)
               (_%E120284120296%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120282120292%_)))
               (_%E120283120321%_
                (lambda ()
                  (if (gx#stx-pair? _%e120282120292%_)
                      (let ((_%e120285120300%_
                             (gx#syntax-e _%e120282120292%_)))
                        (let ((_%hd120286120303%_ (##car _%e120285120300%_))
                              (_%tl120287120305%_ (##cdr _%e120285120300%_)))
                          (if (gx#stx-pair? _%tl120287120305%_)
                              (let ((_%e120288120308%_
                                     (gx#syntax-e _%tl120287120305%_)))
                                (let ((_%hd120289120311%_
                                       (##car _%e120288120308%_))
                                      (_%tl120290120313%_
                                       (##cdr _%e120288120308%_)))
                                  (let ((_%expr120316%_ _%hd120289120311%_))
                                    (if (gx#stx-null? _%tl120290120313%_)
                                        (if '#t
                                            (let ((_g121850_
                                                   (gx#core-expand-expression+1
                                                    _%expr120316%_)))
                                              (begin
                                                (let ((_g121851_
                                                       (if (##values?
                                                            _g121850_)
                                                           (##vector-length
                                                            _g121850_)
                                                           1)))
                                                  (if (not (##fx= _g121851_ 2))
                                                      (error "Context expects 2 values"
                                                             _g121851_)))
                                                (let ((_%_120318%_
                                                       (##vector-ref
                                                        _g121850_
                                                        0))
                                                      (_%e120319%_
                                                       (##vector-ref
                                                        _g121850_
                                                        1)))
                                                  _%e120319%_)))
                                            (_%E120284120296%_))
                                        (_%E120284120296%_)))))
                              (_%E120284120296%_))))
                      (_%E120284120296%_)))))
          (_%E120283120321%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind120226%_ _%e120227%_ _%rebind?120228%_)
        (let* ((_%e120229120239%_ _%bind120226%_)
               (_%E120231120243%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120229120239%_)))
               (_%E120230120265%_
                (lambda ()
                  (if (gx#stx-pair? _%e120229120239%_)
                      (let ((_%e120232120247%_
                             (gx#syntax-e _%e120229120239%_)))
                        (let ((_%hd120233120250%_ (##car _%e120232120247%_))
                              (_%tl120234120252%_ (##cdr _%e120232120247%_)))
                          (let ((_%id120255%_ _%hd120233120250%_))
                            (if (gx#stx-pair? _%tl120234120252%_)
                                (let ((_%e120235120257%_
                                       (gx#syntax-e _%tl120234120252%_)))
                                  (let ((_%hd120236120260%_
                                         (##car _%e120235120257%_))
                                        (_%tl120237120262%_
                                         (##cdr _%e120235120257%_)))
                                    (if (gx#stx-null? _%tl120237120262%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id120255%_
                                             _%e120227%_
                                             _%rebind?120228%_)
                                            (_%E120231120243%_))
                                        (_%E120231120243%_))))
                                (_%E120231120243%_)))))
                      (_%E120231120243%_)))))
          (_%E120230120265%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind120272%_ _%e120273%_)
        (let ((_%rebind?120275%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind120272%_
           _%e120273%_
           _%rebind?120275%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g121853_
        (let ((_g121852_ (##length _g121853_)))
          (cond ((##fx= _g121852_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g121853_))
                ((##fx= _g121852_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g121853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g121853_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx120184%_)
        (let* ((_%e120185120195%_ _%stx120184%_)
               (_%E120187120199%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120185120195%_)))
               (_%E120186120221%_
                (lambda ()
                  (if (gx#stx-pair? _%e120185120195%_)
                      (let ((_%e120188120203%_
                             (gx#syntax-e _%e120185120195%_)))
                        (let ((_%hd120189120206%_ (##car _%e120188120203%_))
                              (_%tl120190120208%_ (##cdr _%e120188120203%_)))
                          (if (gx#stx-pair? _%tl120190120208%_)
                              (let ((_%e120191120211%_
                                     (gx#syntax-e _%tl120190120208%_)))
                                (let ((_%hd120192120214%_
                                       (##car _%e120191120211%_))
                                      (_%tl120193120216%_
                                       (##cdr _%e120191120211%_)))
                                  (let ((_%expr120219%_ _%hd120192120214%_))
                                    (if (gx#stx-null? _%tl120193120216%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120219%_)
                                            (_%E120187120199%_))
                                        (_%E120187120199%_)))))
                              (_%E120187120199%_))))
                      (_%E120187120199%_)))))
          (_%E120186120221%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx120143%_)
        (let* ((_%e120144120154%_ _%stx120143%_)
               (_%E120146120158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120144120154%_)))
               (_%E120145120180%_
                (lambda ()
                  (if (gx#stx-pair? _%e120144120154%_)
                      (let ((_%e120147120162%_
                             (gx#syntax-e _%e120144120154%_)))
                        (let ((_%hd120148120165%_ (##car _%e120147120162%_))
                              (_%tl120149120167%_ (##cdr _%e120147120162%_)))
                          (if (gx#stx-pair? _%tl120149120167%_)
                              (let ((_%e120150120170%_
                                     (gx#syntax-e _%tl120149120167%_)))
                                (let ((_%hd120151120173%_
                                       (##car _%e120150120170%_))
                                      (_%tl120152120175%_
                                       (##cdr _%e120150120170%_)))
                                  (let ((_%e120178%_ _%hd120151120173%_))
                                    (if (gx#stx-null? _%tl120152120175%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e120178%_)
                                                         '()))
                                             (gx#stx-source _%stx120143%_))
                                            (_%E120146120158%_))
                                        (_%E120146120158%_)))))
                              (_%E120146120158%_))))
                      (_%E120146120158%_)))))
          (_%E120145120180%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx120102%_)
        (let* ((_%e120103120113%_ _%stx120102%_)
               (_%E120105120117%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120103120113%_)))
               (_%E120104120139%_
                (lambda ()
                  (if (gx#stx-pair? _%e120103120113%_)
                      (let ((_%e120106120121%_
                             (gx#syntax-e _%e120103120113%_)))
                        (let ((_%hd120107120124%_ (##car _%e120106120121%_))
                              (_%tl120108120126%_ (##cdr _%e120106120121%_)))
                          (if (gx#stx-pair? _%tl120108120126%_)
                              (let ((_%e120109120129%_
                                     (gx#syntax-e _%tl120108120126%_)))
                                (let ((_%hd120110120132%_
                                       (##car _%e120109120129%_))
                                      (_%tl120111120134%_
                                       (##cdr _%e120109120129%_)))
                                  (let ((_%e120137%_ _%hd120110120132%_))
                                    (if (gx#stx-null? _%tl120111120134%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e120137%_)
                                                         '()))
                                             (gx#stx-source _%stx120102%_))
                                            (_%E120105120117%_))
                                        (_%E120105120117%_)))))
                              (_%E120105120117%_))))
                      (_%E120105120117%_)))))
          (_%E120104120139%_))))
    (define gx#core-expand-call%
      (lambda (_%stx120059%_)
        (let* ((_%e120060120070%_ _%stx120059%_)
               (_%E120062120074%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120060120070%_)))
               (_%E120061120098%_
                (lambda ()
                  (if (gx#stx-pair? _%e120060120070%_)
                      (let ((_%e120063120078%_
                             (gx#syntax-e _%e120060120070%_)))
                        (let ((_%hd120064120081%_ (##car _%e120063120078%_))
                              (_%tl120065120083%_ (##cdr _%e120063120078%_)))
                          (if (gx#stx-pair? _%tl120065120083%_)
                              (let ((_%e120066120086%_
                                     (gx#syntax-e _%tl120065120083%_)))
                                (let ((_%hd120067120089%_
                                       (##car _%e120066120086%_))
                                      (_%tl120068120091%_
                                       (##cdr _%e120066120086%_)))
                                  (let* ((_%rator120094%_ _%hd120067120089%_)
                                         (_%args120096%_ _%tl120068120091%_))
                                    (if (gx#stx-list? _%args120096%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator120094%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args120096%_))
                                         (gx#stx-source _%stx120059%_))
                                        (_%E120062120074%_)))))
                              (_%E120062120074%_))))
                      (_%E120062120074%_)))))
          (_%E120061120098%_))))
    (define gx#core-expand-if%
      (lambda (_%stx119992%_)
        (let* ((_%e119993120009%_ _%stx119992%_)
               (_%E119995120013%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119993120009%_)))
               (_%E119994120055%_
                (lambda ()
                  (if (gx#stx-pair? _%e119993120009%_)
                      (let ((_%e119996120017%_
                             (gx#syntax-e _%e119993120009%_)))
                        (let ((_%hd119997120020%_ (##car _%e119996120017%_))
                              (_%tl119998120022%_ (##cdr _%e119996120017%_)))
                          (if (gx#stx-pair? _%tl119998120022%_)
                              (let ((_%e119999120025%_
                                     (gx#syntax-e _%tl119998120022%_)))
                                (let ((_%hd120000120028%_
                                       (##car _%e119999120025%_))
                                      (_%tl120001120030%_
                                       (##cdr _%e119999120025%_)))
                                  (let ((_%test120033%_ _%hd120000120028%_))
                                    (if (gx#stx-pair? _%tl120001120030%_)
                                        (let ((_%e120002120035%_
                                               (gx#syntax-e
                                                _%tl120001120030%_)))
                                          (let ((_%hd120003120038%_
                                                 (##car _%e120002120035%_))
                                                (_%tl120004120040%_
                                                 (##cdr _%e120002120035%_)))
                                            (let ((_%K120043%_
                                                   _%hd120003120038%_))
                                              (if (gx#stx-pair?
                                                   _%tl120004120040%_)
                                                  (let ((_%e120005120045%_
                                                         (gx#syntax-e
                                                          _%tl120004120040%_)))
                                                    (let ((_%hd120006120048%_
                                                           (##car _%e120005120045%_))
                                                          (_%tl120007120050%_
                                                           (##cdr _%e120005120045%_)))
                                                      (let ((_%E120053%_
                                                             _%hd120006120048%_))
                                                        (if (gx#stx-null?
                                                             _%tl120007120050%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test120033%_)
                                     (cons (gx#core-expand-expression
                                            _%K120043%_)
                                           (cons (gx#core-expand-expression
                                                  _%E120053%_)
                                                 '()))))
                         (gx#stx-source _%stx119992%_))
                        (_%E119995120013%_))
                    (_%E119995120013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119995120013%_)))))
                                        (_%E119995120013%_)))))
                              (_%E119995120013%_))))
                      (_%E119995120013%_)))))
          (_%E119994120055%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx119951%_)
        (let* ((_%e119952119962%_ _%stx119951%_)
               (_%E119954119966%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119952119962%_)))
               (_%E119953119988%_
                (lambda ()
                  (if (gx#stx-pair? _%e119952119962%_)
                      (let ((_%e119955119970%_
                             (gx#syntax-e _%e119952119962%_)))
                        (let ((_%hd119956119973%_ (##car _%e119955119970%_))
                              (_%tl119957119975%_ (##cdr _%e119955119970%_)))
                          (if (gx#stx-pair? _%tl119957119975%_)
                              (let ((_%e119958119978%_
                                     (gx#syntax-e _%tl119957119975%_)))
                                (let ((_%hd119959119981%_
                                       (##car _%e119958119978%_))
                                      (_%tl119960119983%_
                                       (##cdr _%e119958119978%_)))
                                  (let ((_%id119986%_ _%hd119959119981%_))
                                    (if (gx#stx-null? _%tl119960119983%_)
                                        (if (gx#identifier? _%id119986%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id119986%_
                                                          _%stx119951%_)
                                                         '()))
                                             (gx#stx-source _%stx119951%_))
                                            (_%E119954119966%_))
                                        (_%E119954119966%_)))))
                              (_%E119954119966%_))))
                      (_%E119954119966%_)))))
          (_%E119953119988%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx119897%_)
        (let* ((_%e119898119911%_ _%stx119897%_)
               (_%E119900119915%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119898119911%_)))
               (_%E119899119947%_
                (lambda ()
                  (if (gx#stx-pair? _%e119898119911%_)
                      (let ((_%e119901119919%_
                             (gx#syntax-e _%e119898119911%_)))
                        (let ((_%hd119902119922%_ (##car _%e119901119919%_))
                              (_%tl119903119924%_ (##cdr _%e119901119919%_)))
                          (if (gx#stx-pair? _%tl119903119924%_)
                              (let ((_%e119904119927%_
                                     (gx#syntax-e _%tl119903119924%_)))
                                (let ((_%hd119905119930%_
                                       (##car _%e119904119927%_))
                                      (_%tl119906119932%_
                                       (##cdr _%e119904119927%_)))
                                  (let ((_%id119935%_ _%hd119905119930%_))
                                    (if (gx#stx-pair? _%tl119906119932%_)
                                        (let ((_%e119907119937%_
                                               (gx#syntax-e
                                                _%tl119906119932%_)))
                                          (let ((_%hd119908119940%_
                                                 (##car _%e119907119937%_))
                                                (_%tl119909119942%_
                                                 (##cdr _%e119907119937%_)))
                                            (let ((_%expr119945%_
                                                   _%hd119908119940%_))
                                              (if (gx#stx-null?
                                                   _%tl119909119942%_)
                                                  (if (gx#identifier?
                                                       _%id119935%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id119935%_
                            _%stx119897%_)
                           (cons (gx#core-expand-expression _%expr119945%_)
                                 '())))
               (gx#stx-source _%stx119897%_))
              (_%E119900119915%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119900119915%_)))))
                                        (_%E119900119915%_)))))
                              (_%E119900119915%_))))
                      (_%E119900119915%_)))))
          (_%E119899119947%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119742%_)
        (letrec ((_%generate119744%_
                  (lambda (_%body119774%_)
                    (let _%lp119776%_ ((_%rest119778%_ _%body119774%_)
                                       (_%ns119779%_
                                        (gx#core-context-namespace__0))
                                       (_%r119780%_ '()))
                      (let* ((_%e119781119796%_ _%rest119778%_)
                             (_%E119794119800%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119781119796%_)))
                             (_%E119790119804%_
                              (lambda ()
                                (if (gx#stx-null? _%e119781119796%_)
                                    (if '#t
                                        (reverse _%r119780%_)
                                        (_%E119794119800%_))
                                    (_%E119794119800%_))))
                             (_%E119783119861%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119781119796%_)
                                    (let ((_%e119791119808%_
                                           (gx#syntax-e _%e119781119796%_)))
                                      (let ((_%hd119792119811%_
                                             (##car _%e119791119808%_))
                                            (_%tl119793119813%_
                                             (##cdr _%e119791119808%_)))
                                        (let* ((_%hd119816%_
                                                _%hd119792119811%_)
                                               (_%rest119818%_
                                                _%tl119793119813%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd119816%_)
                                                  (_%lp119776%_
                                                   _%rest119818%_
                                                   _%ns119779%_
                                                   (cons (cons _%hd119816%_
                                                               (cons (if _%ns119779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd119816%_
                                  _%ns119779%_
                                  '"#"
                                  _%hd119816%_)
                                 _%hd119816%_)
                             '()))
                 _%r119780%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e119819119829%_
                                                          _%hd119816%_)
                                                         (_%E119821119833%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e119819119829%_)))
                                                         (_%E119820119857%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e119819119829%_)
                        (let ((_%e119822119837%_
                               (gx#syntax-e _%e119819119829%_)))
                          (let ((_%hd119823119840%_ (##car _%e119822119837%_))
                                (_%tl119824119842%_ (##cdr _%e119822119837%_)))
                            (let ((_%id119845%_ _%hd119823119840%_))
                              (if (gx#stx-pair? _%tl119824119842%_)
                                  (let ((_%e119825119847%_
                                         (gx#syntax-e _%tl119824119842%_)))
                                    (let ((_%hd119826119850%_
                                           (##car _%e119825119847%_))
                                          (_%tl119827119852%_
                                           (##cdr _%e119825119847%_)))
                                      (let ((_%eid119855%_ _%hd119826119850%_))
                                        (if (gx#stx-null? _%tl119827119852%_)
                                            (if (and (gx#identifier?
                                                      _%id119845%_)
                                                     (gx#identifier?
                                                      _%eid119855%_))
                                                (_%lp119776%_
                                                 _%rest119818%_
                                                 _%ns119779%_
                                                 (cons (cons _%id119845%_
                                                             (cons _%eid119855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119780%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119821119833%_))
                                            (_%E119821119833%_)))))
                                  (_%E119821119833%_)))))
                        (_%E119821119833%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119820119857%_)))
                                              (_%E119790119804%_)))))
                                    (_%E119790119804%_))))
                             (_%E119782119893%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119781119796%_)
                                    (let ((_%e119784119865%_
                                           (gx#syntax-e _%e119781119796%_)))
                                      (let ((_%hd119785119868%_
                                             (##car _%e119784119865%_))
                                            (_%tl119786119870%_
                                             (##cdr _%e119784119865%_)))
                                        (if (eq? (gx#stx-e _%hd119785119868%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl119786119870%_)
                                                (let ((_%e119787119873%_
                                                       (gx#syntax-e
                                                        _%tl119786119870%_)))
                                                  (let ((_%hd119788119876%_
                                                         (##car _%e119787119873%_))
                                                        (_%tl119789119878%_
                                                         (##cdr _%e119787119873%_)))
                                                    (let* ((_%ns119881%_
                                                            _%hd119788119876%_)
                                                           (_%rest119883%_
                                                            _%tl119789119878%_))
                                                      (if '#t
                                                          (let ((_%ns119891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns119881%_)
                             (symbol->string (gx#stx-e _%ns119881%_))
                             (if (or (gx#stx-string? _%ns119881%_)
                                     (gx#stx-false? _%ns119881%_))
                                 (gx#stx-e _%ns119881%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _%stx119742%_
                                  _%ns119881%_)))))
                    (_%lp119776%_ _%rest119883%_ _%ns119891%_ _%r119780%_))
                  (_%E119783119861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119783119861%_))
                                            (_%E119783119861%_))))
                                    (_%E119783119861%_)))))
                        (_%E119782119893%_))))))
          (let* ((_%e119745119752%_ _%stx119742%_)
                 (_%E119747119756%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119745119752%_)))
                 (_%E119746119770%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119745119752%_)
                        (let ((_%e119748119760%_
                               (gx#syntax-e _%e119745119752%_)))
                          (let ((_%hd119749119763%_ (##car _%e119748119760%_))
                                (_%tl119750119765%_ (##cdr _%e119748119760%_)))
                            (let ((_%body119768%_ _%tl119750119765%_))
                              (if (gx#stx-list? _%body119768%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119744%_ _%body119768%_))
                                  (_%E119747119756%_)))))
                        (_%E119747119756%_)))))
            (_%E119746119770%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119688%_)
        (let* ((_%e119689119702%_ _%stx119688%_)
               (_%E119691119706%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119689119702%_)))
               (_%E119690119738%_
                (lambda ()
                  (if (gx#stx-pair? _%e119689119702%_)
                      (let ((_%e119692119710%_
                             (gx#syntax-e _%e119689119702%_)))
                        (let ((_%hd119693119713%_ (##car _%e119692119710%_))
                              (_%tl119694119715%_ (##cdr _%e119692119710%_)))
                          (if (gx#stx-pair? _%tl119694119715%_)
                              (let ((_%e119695119718%_
                                     (gx#syntax-e _%tl119694119715%_)))
                                (let ((_%hd119696119721%_
                                       (##car _%e119695119718%_))
                                      (_%tl119697119723%_
                                       (##cdr _%e119695119718%_)))
                                  (let ((_%hd119726%_ _%hd119696119721%_))
                                    (if (gx#stx-pair? _%tl119697119723%_)
                                        (let ((_%e119698119728%_
                                               (gx#syntax-e
                                                _%tl119697119723%_)))
                                          (let ((_%hd119699119731%_
                                                 (##car _%e119698119728%_))
                                                (_%tl119700119733%_
                                                 (##cdr _%e119698119728%_)))
                                            (let ((_%expr119736%_
                                                   _%hd119699119731%_))
                                              (if (gx#stx-null?
                                                   _%tl119700119733%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119726%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119726%_)
                          (cons _%expr119736%_ '())))
              (_%E119691119706%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119691119706%_)))))
                                        (_%E119691119706%_)))))
                              (_%E119691119706%_))))
                      (_%E119691119706%_)))))
          (_%E119690119738%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119634%_)
        (let* ((_%e119635119648%_ _%stx119634%_)
               (_%E119637119652%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119635119648%_)))
               (_%E119636119684%_
                (lambda ()
                  (if (gx#stx-pair? _%e119635119648%_)
                      (let ((_%e119638119656%_
                             (gx#syntax-e _%e119635119648%_)))
                        (let ((_%hd119639119659%_ (##car _%e119638119656%_))
                              (_%tl119640119661%_ (##cdr _%e119638119656%_)))
                          (if (gx#stx-pair? _%tl119640119661%_)
                              (let ((_%e119641119664%_
                                     (gx#syntax-e _%tl119640119661%_)))
                                (let ((_%hd119642119667%_
                                       (##car _%e119641119664%_))
                                      (_%tl119643119669%_
                                       (##cdr _%e119641119664%_)))
                                  (let ((_%hd119672%_ _%hd119642119667%_))
                                    (if (gx#stx-pair? _%tl119643119669%_)
                                        (let ((_%e119644119674%_
                                               (gx#syntax-e
                                                _%tl119643119669%_)))
                                          (let ((_%hd119645119677%_
                                                 (##car _%e119644119674%_))
                                                (_%tl119646119679%_
                                                 (##cdr _%e119644119674%_)))
                                            (let ((_%expr119682%_
                                                   _%hd119645119677%_))
                                              (if (gx#stx-null?
                                                   _%tl119646119679%_)
                                                  (if (gx#identifier?
                                                       _%hd119672%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119682%_ '())))
              (_%E119637119652%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119637119652%_)))))
                                        (_%E119637119652%_)))))
                              (_%E119637119652%_))))
                      (_%E119637119652%_)))))
          (_%E119636119684%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119580%_)
        (let* ((_%e119581119594%_ _%stx119580%_)
               (_%E119583119598%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119581119594%_)))
               (_%E119582119630%_
                (lambda ()
                  (if (gx#stx-pair? _%e119581119594%_)
                      (let ((_%e119584119602%_
                             (gx#syntax-e _%e119581119594%_)))
                        (let ((_%hd119585119605%_ (##car _%e119584119602%_))
                              (_%tl119586119607%_ (##cdr _%e119584119602%_)))
                          (if (gx#stx-pair? _%tl119586119607%_)
                              (let ((_%e119587119610%_
                                     (gx#syntax-e _%tl119586119607%_)))
                                (let ((_%hd119588119613%_
                                       (##car _%e119587119610%_))
                                      (_%tl119589119615%_
                                       (##cdr _%e119587119610%_)))
                                  (let ((_%id119618%_ _%hd119588119613%_))
                                    (if (gx#stx-pair? _%tl119589119615%_)
                                        (let ((_%e119590119620%_
                                               (gx#syntax-e
                                                _%tl119589119615%_)))
                                          (let ((_%hd119591119623%_
                                                 (##car _%e119590119620%_))
                                                (_%tl119592119625%_
                                                 (##cdr _%e119590119620%_)))
                                            (let ((_%alias-id119628%_
                                                   _%hd119591119623%_))
                                              (if (gx#stx-null?
                                                   _%tl119592119625%_)
                                                  (if (and (gx#identifier?
                                                            _%id119618%_)
                                                           (gx#identifier?
                                                            _%alias-id119628%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119628%_ '())))
              (_%E119583119598%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119583119598%_)))))
                                        (_%E119583119598%_)))))
                              (_%E119583119598%_))))
                      (_%E119583119598%_)))))
          (_%E119582119630%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119537%_)
        (let* ((_%e119538119548%_ _%stx119537%_)
               (_%E119540119552%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119538119548%_)))
               (_%E119539119576%_
                (lambda ()
                  (if (gx#stx-pair? _%e119538119548%_)
                      (let ((_%e119541119556%_
                             (gx#syntax-e _%e119538119548%_)))
                        (let ((_%hd119542119559%_ (##car _%e119541119556%_))
                              (_%tl119543119561%_ (##cdr _%e119541119556%_)))
                          (if (gx#stx-pair? _%tl119543119561%_)
                              (let ((_%e119544119564%_
                                     (gx#syntax-e _%tl119543119561%_)))
                                (let ((_%hd119545119567%_
                                       (##car _%e119544119564%_))
                                      (_%tl119546119569%_
                                       (##cdr _%e119544119564%_)))
                                  (let* ((_%hd119572%_ _%hd119545119567%_)
                                         (_%body119574%_ _%tl119546119569%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119572%_)
                                             (gx#stx-list? _%body119574%_)
                                             (not (gx#stx-null?
                                                   _%body119574%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119572%_)
                                         _%body119574%_)
                                        (_%E119540119552%_)))))
                              (_%E119540119552%_))))
                      (_%E119540119552%_)))))
          (_%E119539119576%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119473%_)
        (letrec ((_%generate119475%_
                  (lambda (_%clause119505%_)
                    (let* ((_%e119506119513%_ _%clause119505%_)
                           (_%E119508119517%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119473%_
                               _%clause119505%_)))
                           (_%E119507119533%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119506119513%_)
                                  (let ((_%e119509119521%_
                                         (gx#syntax-e _%e119506119513%_)))
                                    (let ((_%hd119510119524%_
                                           (##car _%e119509119521%_))
                                          (_%tl119511119526%_
                                           (##cdr _%e119509119521%_)))
                                      (let* ((_%hd119529%_ _%hd119510119524%_)
                                             (_%body119531%_
                                              _%tl119511119526%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119529%_)
                                                 (gx#stx-list? _%body119531%_)
                                                 (not (gx#stx-null?
                                                       _%body119531%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119529%_)
                                                   _%body119531%_)
                                             (gx#stx-source _%clause119505%_))
                                            (_%E119508119517%_)))))
                                  (_%E119508119517%_)))))
                      (_%E119507119533%_)))))
          (let* ((_%e119476119483%_ _%stx119473%_)
                 (_%E119478119487%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119476119483%_)))
                 (_%E119477119501%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119476119483%_)
                        (let ((_%e119479119491%_
                               (gx#syntax-e _%e119476119483%_)))
                          (let ((_%hd119480119494%_ (##car _%e119479119491%_))
                                (_%tl119481119496%_ (##cdr _%e119479119491%_)))
                            (let ((_%clauses119499%_ _%tl119481119496%_))
                              (if (gx#stx-list? _%clauses119499%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119475%_
                                    _%clauses119499%_))
                                  (_%E119478119487%_)))))
                        (_%E119478119487%_)))))
            (_%E119477119501%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119374%_ _%form119375%_)
        (letrec ((_%generate119377%_
                  (lambda (_%bind119420%_)
                    (let* ((_%e119421119431%_ _%bind119420%_)
                           (_%E119423119435%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119374%_
                               _%bind119420%_)))
                           (_%E119422119459%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119421119431%_)
                                  (let ((_%e119424119439%_
                                         (gx#syntax-e _%e119421119431%_)))
                                    (let ((_%hd119425119442%_
                                           (##car _%e119424119439%_))
                                          (_%tl119426119444%_
                                           (##cdr _%e119424119439%_)))
                                      (let ((_%ids119447%_ _%hd119425119442%_))
                                        (if (gx#stx-pair? _%tl119426119444%_)
                                            (let ((_%e119427119449%_
                                                   (gx#syntax-e
                                                    _%tl119426119444%_)))
                                              (let ((_%hd119428119452%_
                                                     (##car _%e119427119449%_))
                                                    (_%tl119429119454%_
                                                     (##cdr _%e119427119449%_)))
                                                (let ((_%expr119457%_
                                                       _%hd119428119452%_))
                                                  (if (gx#stx-null?
                                                       _%tl119429119454%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119447%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119447%_)
                        (cons _%expr119457%_ '()))
                  (_%E119423119435%_))
              (_%E119423119435%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119423119435%_)))))
                                  (_%E119423119435%_)))))
                      (_%E119422119459%_)))))
          (let* ((_%e119378119388%_ _%stx119374%_)
                 (_%E119380119392%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119378119388%_)))
                 (_%E119379119416%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119378119388%_)
                        (let ((_%e119381119396%_
                               (gx#syntax-e _%e119378119388%_)))
                          (let ((_%hd119382119399%_ (##car _%e119381119396%_))
                                (_%tl119383119401%_ (##cdr _%e119381119396%_)))
                            (if (gx#stx-pair? _%tl119383119401%_)
                                (let ((_%e119384119404%_
                                       (gx#syntax-e _%tl119383119401%_)))
                                  (let ((_%hd119385119407%_
                                         (##car _%e119384119404%_))
                                        (_%tl119386119409%_
                                         (##cdr _%e119384119404%_)))
                                    (let* ((_%hd119412%_ _%hd119385119407%_)
                                           (_%body119414%_ _%tl119386119409%_))
                                      (if (and (gx#stx-list? _%hd119412%_)
                                               (gx#stx-list? _%body119414%_)
                                               (not (gx#stx-null?
                                                     _%body119414%_)))
                                          (gx#core-cons*
                                           _%form119375%_
                                           (gx#stx-map1
                                            _%generate119377%_
                                            _%hd119412%_)
                                           _%body119414%_)
                                          (_%E119380119392%_)))))
                                (_%E119380119392%_))))
                        (_%E119380119392%_)))))
            (_%E119379119416%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119466%_)
        (let ((_%form119468%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119466%_ _%form119468%_))))
    (define gx#macro-expand-let-values
      (lambda _g121855_
        (let ((_g121854_ (##length _g121855_)))
          (cond ((##fx= _g121854_ 1)
                 (apply gx#macro-expand-let-values__0 _g121855_))
                ((##fx= _g121854_ 2)
                 (apply gx#macro-expand-let-values__% _g121855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g121855_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119371%_)
        (gx#macro-expand-let-values__% _%stx119371%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119369%_)
        (gx#macro-expand-let-values__% _%stx119369%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx119260%_)
        (let* ((_%e119261119287%_ _%stx119260%_)
               (_%E119273119291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119261119287%_)))
               (_%E119263119333%_
                (lambda ()
                  (if (gx#stx-pair? _%e119261119287%_)
                      (let ((_%e119274119295%_
                             (gx#syntax-e _%e119261119287%_)))
                        (let ((_%hd119275119298%_ (##car _%e119274119295%_))
                              (_%tl119276119300%_ (##cdr _%e119274119295%_)))
                          (if (gx#stx-pair? _%tl119276119300%_)
                              (let ((_%e119277119303%_
                                     (gx#syntax-e _%tl119276119300%_)))
                                (let ((_%hd119278119306%_
                                       (##car _%e119277119303%_))
                                      (_%tl119279119308%_
                                       (##cdr _%e119277119303%_)))
                                  (let ((_%test119311%_ _%hd119278119306%_))
                                    (if (gx#stx-pair? _%tl119279119308%_)
                                        (let ((_%e119280119313%_
                                               (gx#syntax-e
                                                _%tl119279119308%_)))
                                          (let ((_%hd119281119316%_
                                                 (##car _%e119280119313%_))
                                                (_%tl119282119318%_
                                                 (##cdr _%e119280119313%_)))
                                            (let ((_%K119321%_
                                                   _%hd119281119316%_))
                                              (if (gx#stx-pair?
                                                   _%tl119282119318%_)
                                                  (let ((_%e119283119323%_
                                                         (gx#syntax-e
                                                          _%tl119282119318%_)))
                                                    (let ((_%hd119284119326%_
                                                           (##car _%e119283119323%_))
                                                          (_%tl119285119328%_
                                                           (##cdr _%e119283119323%_)))
                                                      (let ((_%E119331%_
                                                             _%hd119284119326%_))
                                                        (if (gx#stx-null?
                                                             _%tl119285119328%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119311%_
                         _%K119321%_
                         _%E119331%_)
                        (_%E119273119291%_))
                    (_%E119273119291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119273119291%_)))))
                                        (_%E119273119291%_)))))
                              (_%E119273119291%_))))
                      (_%E119273119291%_))))
               (_%E119262119365%_
                (lambda ()
                  (if (gx#stx-pair? _%e119261119287%_)
                      (let ((_%e119264119337%_
                             (gx#syntax-e _%e119261119287%_)))
                        (let ((_%hd119265119340%_ (##car _%e119264119337%_))
                              (_%tl119266119342%_ (##cdr _%e119264119337%_)))
                          (if (gx#stx-pair? _%tl119266119342%_)
                              (let ((_%e119267119345%_
                                     (gx#syntax-e _%tl119266119342%_)))
                                (let ((_%hd119268119348%_
                                       (##car _%e119267119345%_))
                                      (_%tl119269119350%_
                                       (##cdr _%e119267119345%_)))
                                  (let ((_%test119353%_ _%hd119268119348%_))
                                    (if (gx#stx-pair? _%tl119269119350%_)
                                        (let ((_%e119270119355%_
                                               (gx#syntax-e
                                                _%tl119269119350%_)))
                                          (let ((_%hd119271119358%_
                                                 (##car _%e119270119355%_))
                                                (_%tl119272119360%_
                                                 (##cdr _%e119270119355%_)))
                                            (let ((_%K119363%_
                                                   _%hd119271119358%_))
                                              (if (gx#stx-null?
                                                   _%tl119272119360%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119353%_
                                                       _%K119363%_
                                                       '#!void)
                                                      (_%E119263119333%_))
                                                  (_%E119263119333%_)))))
                                        (_%E119263119333%_)))))
                              (_%E119263119333%_))))
                      (_%E119263119333%_)))))
          (_%E119262119365%_))))
    (define gx#free-identifier=?
      (lambda (_%xid119245%_ _%yid119246%_)
        (let ((_%xe119248%_ (gx#resolve-identifier__0 _%xid119245%_))
              (_%ye119249%_ (gx#resolve-identifier__0 _%yid119246%_)))
          (if (and _%xe119248%_ _%ye119249%_)
              (let ((_%$e119252%_ (eq? _%xe119248%_ _%ye119249%_)))
                (if _%$e119252%_
                    _%$e119252%_
                    (if (##structure-instance-of? _%xe119248%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye119249%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe119248%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye119249%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe119248%_ _%ye119249%_)
                  '#f
                  (gx#stx-eq? _%xid119245%_ _%yid119246%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid119226%_ _%yid119227%_)
        (letrec ((_%context119229%_
                  (lambda (_%e119243%_)
                    (if (##structure-direct-instance-of?
                         _%e119243%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e119243%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks119230%_
                  (lambda (_%e119238%_)
                    (if (symbol? _%e119238%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e119238%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e119238%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e119238%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap119231%_
                  (lambda (_%e119236%_)
                    (if (symbol? _%e119236%_)
                        _%e119236%_
                        (gx#syntax-local-unwrap _%e119236%_)))))
          (let ((_%x119233%_ (_%unwrap119231%_ _%xid119226%_))
                (_%y119234%_ (_%unwrap119231%_ _%yid119227%_)))
            (if (gx#stx-eq? _%x119233%_ _%y119234%_)
                (if (eq? (_%context119229%_ _%x119233%_)
                         (_%context119229%_ _%y119234%_))
                    (equal? (_%marks119230%_ _%x119233%_)
                            (_%marks119230%_ _%y119234%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx119224%_)
        (if (gx#identifier? _%stx119224%_)
            (gx#core-identifier=? _%stx119224%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx119222%_)
        (if (gx#identifier? _%stx119222%_)
            (gx#core-identifier=? _%stx119222%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx119165%_ _%where119166%_)
        (let _%lp119168%_ ((_%rest119170%_ (gx#syntax->list _%stx119165%_)))
          (let* ((_%rest119171119179%_ _%rest119170%_)
                 (_%else119173119187%_ (lambda () '#t))
                 (_%K119175119200%_
                  (lambda (_%rest119190%_ _%hd119191%_)
                    (if (not (gx#identifier? _%hd119191%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where119166%_
                         _%hd119191%_)
                        (if (__find (lambda (_%g119193119195%_)
                                      (gx#bound-identifier=?
                                       _%g119193119195%_
                                       _%hd119191%_))
                                    _%rest119190%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where119166%_
                             _%hd119191%_)
                            (_%lp119168%_ _%rest119190%_))))))
            (if (##pair? _%rest119171119179%_)
                (let ((_%hd119176119203%_ (##car _%rest119171119179%_))
                      (_%tl119177119205%_ (##cdr _%rest119171119179%_)))
                  (let* ((_%hd119208%_ _%hd119176119203%_)
                         (_%rest119210%_ _%tl119177119205%_))
                    (_%K119175119200%_ _%rest119210%_ _%hd119208%_)))
                (_%else119173119187%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx119215%_)
        (let ((_%where119217%_ _%stx119215%_))
          (gx#check-duplicate-identifiers__% _%stx119215%_ _%where119217%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g121857_
        (let ((_g121856_ (##length _g121857_)))
          (cond ((##fx= _g121856_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g121857_))
                ((##fx= _g121856_ 2)
                 (apply gx#check-duplicate-identifiers__% _g121857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g121857_))))))
    (define gx#core-bind-values?
      (lambda (_%stx119157%_)
        (gx#stx-andmap
         (lambda (_%x119159%_)
           (let ((_%$e119161%_ (gx#identifier? _%x119159%_)))
             (if _%$e119161%_ _%$e119161%_ (gx#stx-false? _%x119159%_))))
         _%stx119157%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx119121%_ _%rebind?119122%_ _%phi119123%_ _%ctx119124%_)
        (gx#stx-for-each1
         (lambda (_%id119126%_)
           (if (gx#identifier? _%id119126%_)
               (gx#core-bind-runtime!__%
                _%id119126%_
                _%rebind?119122%_
                _%phi119123%_
                _%ctx119124%_)
               '#!void))
         _%stx119121%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx119131%_)
        (let* ((_%rebind?119133%_ '#f)
               (_%phi119135%_ (gx#current-expander-phi))
               (_%ctx119137%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119131%_
           _%rebind?119133%_
           _%phi119135%_
           _%ctx119137%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx119139%_ _%rebind?119140%_)
        (let* ((_%phi119142%_ (gx#current-expander-phi))
               (_%ctx119144%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119139%_
           _%rebind?119140%_
           _%phi119142%_
           _%ctx119144%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx119146%_ _%rebind?119147%_ _%phi119148%_)
        (let ((_%ctx119150%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119146%_
           _%rebind?119147%_
           _%phi119148%_
           _%ctx119150%_))))
    (define gx#core-bind-values!
      (lambda _g121859_
        (let ((_g121858_ (##length _g121859_)))
          (cond ((##fx= _g121858_ 1) (apply gx#core-bind-values!__0 _g121859_))
                ((##fx= _g121858_ 2) (apply gx#core-bind-values!__1 _g121859_))
                ((##fx= _g121858_ 3) (apply gx#core-bind-values!__2 _g121859_))
                ((##fx= _g121858_ 4) (apply gx#core-bind-values!__% _g121859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g121859_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx119116%_)
        (gx#stx-map1
         (lambda (_%x119118%_)
           (if (gx#identifier? _%x119118%_)
               (gx#core-quote-syntax__0 _%x119118%_)
               '#f))
         _%stx119116%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx119109%_)
        (if (gx#identifier? _%stx119109%_)
            (let* ((_%bind119111%_ (gx#resolve-identifier__0 _%stx119109%_))
                   (_%$e119113%_ (not _%bind119111%_)))
              (if _%$e119113%_
                  _%$e119113%_
                  (##structure-instance-of?
                   _%bind119111%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id119098%_ _%form119099%_)
        (let ((_%bind119101%_ (gx#resolve-identifier__0 _%id119098%_)))
          (if (##structure-instance-of? _%bind119101%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id119098%_)
              (if (not _%bind119101%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id119098%_)))
                      (gx#core-quote-syntax__0 _%id119098%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form119099%_
                       _%id119098%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form119099%_
                   _%id119098%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id119053%_ _%rebind?119054%_ _%phi119055%_ _%ctx119056%_)
        (let* ((_%key119058%_ (gx#core-identifier-key _%id119053%_))
               (_%eid119060%_
                (gx#make-binding-id__%
                 _%key119058%_
                 '#f
                 _%phi119055%_
                 _%ctx119056%_))
               (_%bind119066%_
                (if (##structure-instance-of?
                     _%ctx119056%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid119060%_
                     _%key119058%_
                     _%phi119055%_
                     _%ctx119056%_)
                    (if (##structure-instance-of?
                         _%ctx119056%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid119060%_
                         _%key119058%_
                         _%phi119055%_)
                        (if (##structure-instance-of?
                             _%ctx119056%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid119060%_
                             _%key119058%_
                             _%phi119055%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid119060%_
                             _%key119058%_
                             _%phi119055%_))))))
          (gx#bind-identifier!__%
           _%id119053%_
           _%bind119066%_
           _%rebind?119054%_
           _%phi119055%_
           _%ctx119056%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id119072%_)
        (let* ((_%rebind?119074%_ '#f)
               (_%phi119076%_ (gx#current-expander-phi))
               (_%ctx119078%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119072%_
           _%rebind?119074%_
           _%phi119076%_
           _%ctx119078%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id119080%_ _%rebind?119081%_)
        (let* ((_%phi119083%_ (gx#current-expander-phi))
               (_%ctx119085%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119080%_
           _%rebind?119081%_
           _%phi119083%_
           _%ctx119085%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id119087%_ _%rebind?119088%_ _%phi119089%_)
        (let ((_%ctx119091%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119087%_
           _%rebind?119088%_
           _%phi119089%_
           _%ctx119091%_))))
    (define gx#core-bind-runtime!
      (lambda _g121861_
        (let ((_g121860_ (##length _g121861_)))
          (cond ((##fx= _g121860_ 1)
                 (apply gx#core-bind-runtime!__0 _g121861_))
                ((##fx= _g121860_ 2)
                 (apply gx#core-bind-runtime!__1 _g121861_))
                ((##fx= _g121860_ 3)
                 (apply gx#core-bind-runtime!__2 _g121861_))
                ((##fx= _g121860_ 4)
                 (apply gx#core-bind-runtime!__% _g121861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g121861_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id119005%_
               _%eid119006%_
               _%rebind?119007%_
               _%phi119008%_
               _%ctx119009%_)
        (let* ((_%key119011%_ (gx#core-identifier-key _%id119005%_))
               (_%bind119016%_
                (if (##structure-instance-of?
                     _%ctx119009%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid119006%_
                     _%key119011%_
                     _%phi119008%_
                     _%ctx119009%_)
                    (if (##structure-instance-of?
                         _%ctx119009%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid119006%_
                         _%key119011%_
                         _%phi119008%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid119006%_
                         _%key119011%_
                         _%phi119008%_)))))
          (gx#bind-identifier!__%
           _%id119005%_
           _%bind119016%_
           _%rebind?119007%_
           _%phi119008%_
           _%ctx119009%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id119022%_ _%eid119023%_)
        (let* ((_%rebind?119025%_ '#f)
               (_%phi119027%_ (gx#current-expander-phi))
               (_%ctx119029%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119022%_
           _%eid119023%_
           _%rebind?119025%_
           _%phi119027%_
           _%ctx119029%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id119031%_ _%eid119032%_ _%rebind?119033%_)
        (let* ((_%phi119035%_ (gx#current-expander-phi))
               (_%ctx119037%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119031%_
           _%eid119032%_
           _%rebind?119033%_
           _%phi119035%_
           _%ctx119037%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id119039%_ _%eid119040%_ _%rebind?119041%_ _%phi119042%_)
        (let ((_%ctx119044%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119039%_
           _%eid119040%_
           _%rebind?119041%_
           _%phi119042%_
           _%ctx119044%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g121863_
        (let ((_g121862_ (##length _g121863_)))
          (cond ((##fx= _g121862_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g121863_))
                ((##fx= _g121862_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g121863_))
                ((##fx= _g121862_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g121863_))
                ((##fx= _g121862_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g121863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g121863_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id118965%_
               _%eid118966%_
               _%rebind?118967%_
               _%phi118968%_
               _%ctx118969%_)
        (gx#bind-identifier!__%
         _%id118965%_
         (##structure
          gx#extern-binding::t
          _%eid118966%_
          (gx#core-identifier-key _%id118965%_)
          _%phi118968%_)
         _%rebind?118967%_
         _%phi118968%_
         _%ctx118969%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id118974%_ _%eid118975%_)
        (let* ((_%rebind?118977%_ '#f)
               (_%phi118979%_ (gx#current-expander-phi))
               (_%ctx118981%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118974%_
           _%eid118975%_
           _%rebind?118977%_
           _%phi118979%_
           _%ctx118981%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id118983%_ _%eid118984%_ _%rebind?118985%_)
        (let* ((_%phi118987%_ (gx#current-expander-phi))
               (_%ctx118989%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118983%_
           _%eid118984%_
           _%rebind?118985%_
           _%phi118987%_
           _%ctx118989%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id118991%_ _%eid118992%_ _%rebind?118993%_ _%phi118994%_)
        (let ((_%ctx118996%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118991%_
           _%eid118992%_
           _%rebind?118993%_
           _%phi118994%_
           _%ctx118996%_))))
    (define gx#core-bind-extern!
      (lambda _g121865_
        (let ((_g121864_ (##length _g121865_)))
          (cond ((##fx= _g121864_ 2) (apply gx#core-bind-extern!__0 _g121865_))
                ((##fx= _g121864_ 3) (apply gx#core-bind-extern!__1 _g121865_))
                ((##fx= _g121864_ 4) (apply gx#core-bind-extern!__2 _g121865_))
                ((##fx= _g121864_ 5) (apply gx#core-bind-extern!__% _g121865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g121865_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id118919%_
               _%e118920%_
               _%rebind?118921%_
               _%phi118922%_
               _%ctx118923%_)
        (gx#bind-identifier!__%
         _%id118919%_
         (let ((_%key118928%_ (gx#core-identifier-key _%id118919%_))
               (_%e118929%_
                (if (or (##structure-instance-of? _%e118920%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e118920%_
                         'gx#expander-context::t))
                    _%e118920%_
                    (##structure
                     gx#user-expander::t
                     _%e118920%_
                     _%ctx118923%_
                     _%phi118922%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key118928%_
             '#t
             _%phi118922%_
             _%ctx118923%_)
            _%key118928%_
            _%phi118922%_
            _%e118929%_))
         _%rebind?118921%_
         _%phi118922%_
         _%ctx118923%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id118934%_ _%e118935%_)
        (let* ((_%rebind?118937%_ '#f)
               (_%phi118939%_ (gx#current-expander-phi))
               (_%ctx118941%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118934%_
           _%e118935%_
           _%rebind?118937%_
           _%phi118939%_
           _%ctx118941%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id118943%_ _%e118944%_ _%rebind?118945%_)
        (let* ((_%phi118947%_ (gx#current-expander-phi))
               (_%ctx118949%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118943%_
           _%e118944%_
           _%rebind?118945%_
           _%phi118947%_
           _%ctx118949%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id118951%_ _%e118952%_ _%rebind?118953%_ _%phi118954%_)
        (let ((_%ctx118956%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118951%_
           _%e118952%_
           _%rebind?118953%_
           _%phi118954%_
           _%ctx118956%_))))
    (define gx#core-bind-syntax!
      (lambda _g121867_
        (let ((_g121866_ (##length _g121867_)))
          (cond ((##fx= _g121866_ 2) (apply gx#core-bind-syntax!__0 _g121867_))
                ((##fx= _g121866_ 3) (apply gx#core-bind-syntax!__1 _g121867_))
                ((##fx= _g121866_ 4) (apply gx#core-bind-syntax!__2 _g121867_))
                ((##fx= _g121866_ 5) (apply gx#core-bind-syntax!__% _g121867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g121867_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id118902%_ _%e118903%_ _%rebind?118904%_)
        (gx#core-bind-syntax!__%
         _%id118902%_
         _%e118903%_
         _%rebind?118904%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id118909%_ _%e118910%_)
        (let ((_%rebind?118912%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id118909%_
           _%e118910%_
           _%rebind?118912%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g121869_
        (let ((_g121868_ (##length _g121869_)))
          (cond ((##fx= _g121868_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g121869_))
                ((##fx= _g121868_ 3)
                 (apply gx#core-bind-root-syntax!__% _g121869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g121869_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id118860%_
               _%alias-id118861%_
               _%rebind?118862%_
               _%phi118863%_
               _%ctx118864%_)
        (gx#bind-identifier!__%
         _%id118860%_
         (let ((_%key118866%_ (gx#core-identifier-key _%id118860%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key118866%_
             '#t
             _%phi118863%_
             _%ctx118864%_)
            _%key118866%_
            _%phi118863%_
            _%alias-id118861%_))
         _%rebind?118862%_
         _%phi118863%_
         _%ctx118864%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id118871%_ _%alias-id118872%_)
        (let* ((_%rebind?118874%_ '#f)
               (_%phi118876%_ (gx#current-expander-phi))
               (_%ctx118878%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118871%_
           _%alias-id118872%_
           _%rebind?118874%_
           _%phi118876%_
           _%ctx118878%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id118880%_ _%alias-id118881%_ _%rebind?118882%_)
        (let* ((_%phi118884%_ (gx#current-expander-phi))
               (_%ctx118886%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118880%_
           _%alias-id118881%_
           _%rebind?118882%_
           _%phi118884%_
           _%ctx118886%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id118888%_ _%alias-id118889%_ _%rebind?118890%_ _%phi118891%_)
        (let ((_%ctx118893%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118888%_
           _%alias-id118889%_
           _%rebind?118890%_
           _%phi118891%_
           _%ctx118893%_))))
    (define gx#core-bind-alias!
      (lambda _g121871_
        (let ((_g121870_ (##length _g121871_)))
          (cond ((##fx= _g121870_ 2) (apply gx#core-bind-alias!__0 _g121871_))
                ((##fx= _g121870_ 3) (apply gx#core-bind-alias!__1 _g121871_))
                ((##fx= _g121870_ 4) (apply gx#core-bind-alias!__2 _g121871_))
                ((##fx= _g121870_ 5) (apply gx#core-bind-alias!__% _g121871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g121871_))))))
    (define gx#make-binding-id__%
      (lambda (_%key118810%_ _%syntax?118811%_ _%phi118812%_ _%ctx118813%_)
        (if (uninterned-symbol? _%key118810%_)
            (##gensym 'L)
            (if (pair? _%key118810%_)
                (gensym (car _%key118810%_))
                (if (##structure-instance-of? _%ctx118813%_ 'gx#top-context::t)
                    (let ((_%ns118818%_
                           (gx#core-context-namespace__% _%ctx118813%_)))
                      (if (and (fxzero? _%phi118812%_) (not _%syntax?118811%_))
                          (if _%ns118818%_
                              (make-symbol__1 _%ns118818%_ '"#" _%key118810%_)
                              _%key118810%_)
                          (if _%syntax?118811%_
                              (make-symbol__1
                               (let ((_%$e118822%_ _%ns118818%_))
                                 (if _%$e118822%_ _%$e118822%_ '""))
                               '"[:"
                               (number->string _%phi118812%_)
                               '":]#"
                               _%key118810%_)
                              (make-symbol__1
                               (let ((_%$e118826%_ _%ns118818%_))
                                 (if _%$e118826%_ _%$e118826%_ '""))
                               '"["
                               (number->string _%phi118812%_)
                               '"]#"
                               _%key118810%_))))
                    (gensym _%key118810%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key118833%_)
        (let* ((_%syntax?118835%_ '#f)
               (_%phi118837%_ (gx#current-expander-phi))
               (_%ctx118839%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118833%_
           _%syntax?118835%_
           _%phi118837%_
           _%ctx118839%_))))
    (define gx#make-binding-id__1
      (lambda (_%key118841%_ _%syntax?118842%_)
        (let* ((_%phi118844%_ (gx#current-expander-phi))
               (_%ctx118846%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118841%_
           _%syntax?118842%_
           _%phi118844%_
           _%ctx118846%_))))
    (define gx#make-binding-id__2
      (lambda (_%key118848%_ _%syntax?118849%_ _%phi118850%_)
        (let ((_%ctx118852%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118848%_
           _%syntax?118849%_
           _%phi118850%_
           _%ctx118852%_))))
    (define gx#make-binding-id
      (lambda _g121873_
        (let ((_g121872_ (##length _g121873_)))
          (cond ((##fx= _g121872_ 1) (apply gx#make-binding-id__0 _g121873_))
                ((##fx= _g121872_ 2) (apply gx#make-binding-id__1 _g121873_))
                ((##fx= _g121872_ 3) (apply gx#make-binding-id__2 _g121873_))
                ((##fx= _g121872_ 4) (apply gx#make-binding-id__% _g121873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g121873_))))))))
