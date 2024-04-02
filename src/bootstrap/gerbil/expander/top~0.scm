(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712093476)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx121582%_)
        (letrec ((_%expand-special121584%_
                  (lambda (_%hd121586%_ _%K121587%_ _%rest121588%_ _%r121589%_)
                    (_%K121587%_
                     _%rest121588%_
                     (cons (gx#core-expand-top _%hd121586%_) _%r121589%_)))))
          (gx#core-expand-block__0 _%stx121582%_ _%expand-special121584%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121335%_)
        (letrec ((_%expand-special121337%_
                  (lambda (_%hd121457%_ _%K121458%_ _%rest121459%_ _%r121460%_)
                    (let* ((_%K121464%_
                            (lambda (_%e121462%_)
                              (_%K121458%_
                               _%rest121459%_
                               (cons _%e121462%_ _%r121460%_))))
                           (_%e121465121494%_ _%hd121457%_)
                           (_%E121489121498%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121465121494%_)))
                           (_%E121485121510%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121465121494%_)
                                  (let ((_%e121490121502%_
                                         (gx#syntax-e _%e121465121494%_)))
                                    (let ((_%hd121491121505%_
                                           (##car _%e121490121502%_))
                                          (_%tl121492121507%_
                                           (##cdr _%e121490121502%_)))
                                      (if (and (gx#identifier?
                                                _%hd121491121505%_)
                                               (gx#core-identifier=?
                                                _%hd121491121505%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121464%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121457%_))
                                              (_%E121489121498%_))
                                          (_%E121489121498%_))))
                                  (_%E121489121498%_))))
                           (_%E121481121522%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121465121494%_)
                                  (let ((_%e121486121514%_
                                         (gx#syntax-e _%e121465121494%_)))
                                    (let ((_%hd121487121517%_
                                           (##car _%e121486121514%_))
                                          (_%tl121488121519%_
                                           (##cdr _%e121486121514%_)))
                                      (if (and (gx#identifier?
                                                _%hd121487121517%_)
                                               (gx#core-identifier=?
                                                _%hd121487121517%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121464%_
                                               (gx#core-expand-define-alias%
                                                _%hd121457%_))
                                              (_%E121485121510%_))
                                          (_%E121485121510%_))))
                                  (_%E121485121510%_))))
                           (_%E121471121534%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121465121494%_)
                                  (let ((_%e121482121526%_
                                         (gx#syntax-e _%e121465121494%_)))
                                    (let ((_%hd121483121529%_
                                           (##car _%e121482121526%_))
                                          (_%tl121484121531%_
                                           (##cdr _%e121482121526%_)))
                                      (if (and (gx#identifier?
                                                _%hd121483121529%_)
                                               (gx#core-identifier=?
                                                _%hd121483121529%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121464%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121457%_))
                                              (_%E121481121522%_))
                                          (_%E121481121522%_))))
                                  (_%E121481121522%_))))
                           (_%E121467121566%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121465121494%_)
                                  (let ((_%e121472121538%_
                                         (gx#syntax-e _%e121465121494%_)))
                                    (let ((_%hd121473121541%_
                                           (##car _%e121472121538%_))
                                          (_%tl121474121543%_
                                           (##cdr _%e121472121538%_)))
                                      (if (and (gx#identifier?
                                                _%hd121473121541%_)
                                               (gx#core-identifier=?
                                                _%hd121473121541%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121474121543%_)
                                              (let ((_%e121475121546%_
                                                     (gx#syntax-e
                                                      _%tl121474121543%_)))
                                                (let ((_%hd121476121549%_
                                                       (##car _%e121475121546%_))
                                                      (_%tl121477121551%_
                                                       (##cdr _%e121475121546%_)))
                                                  (let ((_%hd-bind121554%_
                                                         _%hd121476121549%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121477121551%_)
                                                        (let ((_%e121478121556%_
                                                               (gx#syntax-e
                                                                _%tl121477121551%_)))
                                                          (let ((_%hd121479121559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121478121556%_))
                        (_%tl121480121561%_ (##cdr _%e121478121556%_)))
                    (let ((_%expr121564%_ _%hd121479121559%_))
                      (if (gx#stx-null? _%tl121480121561%_)
                          (if (gx#core-bind-values? _%hd-bind121554%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121554%_)
                                (_%K121464%_ _%hd121457%_))
                              (_%E121471121534%_))
                          (_%E121471121534%_)))))
                (_%E121471121534%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121471121534%_))
                                          (_%E121471121534%_))))
                                  (_%E121471121534%_))))
                           (_%E121466121578%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121465121494%_)
                                  (let ((_%e121468121570%_
                                         (gx#syntax-e _%e121465121494%_)))
                                    (let ((_%hd121469121573%_
                                           (##car _%e121468121570%_))
                                          (_%tl121470121575%_
                                           (##cdr _%e121468121570%_)))
                                      (if (and (gx#identifier?
                                                _%hd121469121573%_)
                                               (gx#core-identifier=?
                                                _%hd121469121573%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121464%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121457%_))
                                              (_%E121467121566%_))
                                          (_%E121467121566%_))))
                                  (_%E121467121566%_)))))
                      (_%E121466121578%_))))
                 (_%eval-body121338%_
                  (lambda (_%rbody121346%_)
                    (let _%lp121348%_ ((_%rest121350%_ _%rbody121346%_)
                                       (_%body121351%_ '())
                                       (_%ebody121352%_ '()))
                      (let* ((_%rest121353121361%_ _%rest121350%_)
                             (_%else121355121369%_
                              (lambda ()
                                (values _%body121351%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121352%_)
                                          (gx#stx-source _%stx121335%_))))))
                             (_%K121357121445%_
                              (lambda (_%rest121372%_ _%hd121373%_)
                                (let* ((_%e121374121391%_ _%hd121373%_)
                                       (_%E121386121395%_
                                        (lambda ()
                                          (_%lp121348%_
                                           _%rest121372%_
                                           (cons _%hd121373%_ _%body121351%_)
                                           (cons _%hd121373%_
                                                 _%ebody121352%_))))
                                       (_%E121376121407%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121374121391%_)
                                              (let ((_%e121387121399%_
                                                     (gx#syntax-e
                                                      _%e121374121391%_)))
                                                (let ((_%hd121388121402%_
                                                       (##car _%e121387121399%_))
                                                      (_%tl121389121404%_
                                                       (##cdr _%e121387121399%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121388121402%_)
                                                           (gx#core-identifier=?
                                                            _%hd121388121402%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121348%_
                                                           _%rest121372%_
                                                           (cons _%hd121373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121351%_)
                   _%ebody121352%_)
                  (_%E121386121395%_))
              (_%E121386121395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121386121395%_))))
                                       (_%E121375121441%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121374121391%_)
                                              (let ((_%e121377121411%_
                                                     (gx#syntax-e
                                                      _%e121374121391%_)))
                                                (let ((_%hd121378121414%_
                                                       (##car _%e121377121411%_))
                                                      (_%tl121379121416%_
                                                       (##cdr _%e121377121411%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121378121414%_)
                                                           (gx#core-identifier=?
                                                            _%hd121378121414%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121379121416%_)
                                                          (let ((_%e121380121419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121379121416%_)))
                    (let ((_%hd121381121422%_ (##car _%e121380121419%_))
                          (_%tl121382121424%_ (##cdr _%e121380121419%_)))
                      (let ((_%hd-bind121427%_ _%hd121381121422%_))
                        (if (gx#stx-pair? _%tl121382121424%_)
                            (let ((_%e121383121429%_
                                   (gx#syntax-e _%tl121382121424%_)))
                              (let ((_%hd121384121432%_
                                     (##car _%e121383121429%_))
                                    (_%tl121385121434%_
                                     (##cdr _%e121383121429%_)))
                                (let ((_%expr121437%_ _%hd121384121432%_))
                                  (if (gx#stx-null? _%tl121385121434%_)
                                      (if '#t
                                          (let ((_%ehd121439%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121427%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121437%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121373%_))))
                                            (_%lp121348%_
                                             _%rest121372%_
                                             (cons _%ehd121439%_
                                                   _%body121351%_)
                                             (cons _%ehd121439%_
                                                   _%ebody121352%_)))
                                          (_%E121376121407%_))
                                      (_%E121376121407%_)))))
                            (_%E121376121407%_)))))
                  (_%E121376121407%_))
              (_%E121376121407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121376121407%_)))))
                                  (_%E121375121441%_)))))
                        (if (##pair? _%rest121353121361%_)
                            (let ((_%hd121358121448%_
                                   (##car _%rest121353121361%_))
                                  (_%tl121359121450%_
                                   (##cdr _%rest121353121361%_)))
                              (let* ((_%hd121453%_ _%hd121358121448%_)
                                     (_%rest121455%_ _%tl121359121450%_))
                                (_%K121357121445%_
                                 _%rest121455%_
                                 _%hd121453%_)))
                            (_%else121355121369%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121341%_
                     (gx#core-expand-block__1
                      _%stx121335%_
                      _%expand-special121337%_
                      '#f))
                    (_g121605_ (_%eval-body121338%_ _%rbody121341%_)))
               (begin
                 (let ((_g121606_
                        (if (##values? _g121605_)
                            (##vector-length _g121605_)
                            1)))
                   (if (not (##fx= _g121606_ 2))
                       (error "Context expects 2 values" _g121606_)))
                 (let ((_%expanded-body121343%_ (##vector-ref _g121605_ 0))
                       (_%value121344%_ (##vector-ref _g121605_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121343%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121344%_ '())))
                    (gx#stx-source _%stx121335%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121305%_)
        (let* ((_%e121306121313%_ _%stx121305%_)
               (_%E121308121317%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121306121313%_)))
               (_%E121307121331%_
                (lambda ()
                  (if (gx#stx-pair? _%e121306121313%_)
                      (let ((_%e121309121321%_
                             (gx#syntax-e _%e121306121313%_)))
                        (let ((_%hd121310121324%_ (##car _%e121309121321%_))
                              (_%tl121311121326%_ (##cdr _%e121309121321%_)))
                          (let ((_%body121329%_ _%tl121311121326%_))
                            (if (gx#stx-list? _%body121329%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121329%_)
                                 (gx#stx-source _%stx121305%_))
                                (_%E121308121317%_)))))
                      (_%E121308121317%_)))))
          (_%E121307121331%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121303%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121303%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121249%_)
        (let* ((_%e121250121263%_ _%stx121249%_)
               (_%E121252121267%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121250121263%_)))
               (_%E121251121299%_
                (lambda ()
                  (if (gx#stx-pair? _%e121250121263%_)
                      (let ((_%e121253121271%_
                             (gx#syntax-e _%e121250121263%_)))
                        (let ((_%hd121254121274%_ (##car _%e121253121271%_))
                              (_%tl121255121276%_ (##cdr _%e121253121271%_)))
                          (if (gx#stx-pair? _%tl121255121276%_)
                              (let ((_%e121256121279%_
                                     (gx#syntax-e _%tl121255121276%_)))
                                (let ((_%hd121257121282%_
                                       (##car _%e121256121279%_))
                                      (_%tl121258121284%_
                                       (##cdr _%e121256121279%_)))
                                  (let ((_%ann121287%_ _%hd121257121282%_))
                                    (if (gx#stx-pair? _%tl121258121284%_)
                                        (let ((_%e121259121289%_
                                               (gx#syntax-e
                                                _%tl121258121284%_)))
                                          (let ((_%hd121260121292%_
                                                 (##car _%e121259121289%_))
                                                (_%tl121261121294%_
                                                 (##cdr _%e121259121289%_)))
                                            (let ((_%expr121297%_
                                                   _%hd121260121292%_))
                                              (if (gx#stx-null?
                                                   _%tl121261121294%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121297%_)
                                 '())))
               (gx#stx-source _%stx121249%_))
              (_%E121252121267%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121252121267%_)))))
                                        (_%E121252121267%_)))))
                              (_%E121252121267%_))))
                      (_%E121252121267%_)))))
          (_%E121251121299%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx120973%_ _%body120974%_)
        (letrec ((_%expand-special120976%_
                  (lambda (_%hd121244%_ _%K121245%_ _%rest121246%_ _%r121247%_)
                    (_%K121245%_
                     '()
                     (cons (_%expand-internal120977%_
                            _%hd121244%_
                            _%rest121246%_)
                           _%r121247%_))))
                 (_%expand-internal120977%_
                  (lambda (_%hd121240%_ _%rest121241%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal120979%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121240%_ _%rest121241%_))
                          (gx#stx-source _%stx120973%_))
                         _%expand-internal-special120978%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj121599
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj121599)
                       __obj121599))))
                 (_%expand-internal-special120978%_
                  (lambda (_%hd121135%_ _%K121136%_ _%rest121137%_ _%r121138%_)
                    (let* ((_%e121139121164%_ _%hd121135%_)
                           (_%E121159121168%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121139121164%_)))
                           (_%E121155121180%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121139121164%_)
                                  (let ((_%e121160121172%_
                                         (gx#syntax-e _%e121139121164%_)))
                                    (let ((_%hd121161121175%_
                                           (##car _%e121160121172%_))
                                          (_%tl121162121177%_
                                           (##cdr _%e121160121172%_)))
                                      (if (and (gx#identifier?
                                                _%hd121161121175%_)
                                               (gx#core-identifier=?
                                                _%hd121161121175%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121136%_
                                               _%rest121137%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121135%_)
                                                     _%r121138%_))
                                              (_%E121159121168%_))
                                          (_%E121159121168%_))))
                                  (_%E121159121168%_))))
                           (_%E121151121192%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121139121164%_)
                                  (let ((_%e121156121184%_
                                         (gx#syntax-e _%e121139121164%_)))
                                    (let ((_%hd121157121187%_
                                           (##car _%e121156121184%_))
                                          (_%tl121158121189%_
                                           (##cdr _%e121156121184%_)))
                                      (if (and (gx#identifier?
                                                _%hd121157121187%_)
                                               (gx#core-identifier=?
                                                _%hd121157121187%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121135%_)
                                                (_%K121136%_
                                                 _%rest121137%_
                                                 _%r121138%_))
                                              (_%E121155121180%_))
                                          (_%E121155121180%_))))
                                  (_%E121155121180%_))))
                           (_%E121141121204%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121139121164%_)
                                  (let ((_%e121152121196%_
                                         (gx#syntax-e _%e121139121164%_)))
                                    (let ((_%hd121153121199%_
                                           (##car _%e121152121196%_))
                                          (_%tl121154121201%_
                                           (##cdr _%e121152121196%_)))
                                      (if (and (gx#identifier?
                                                _%hd121153121199%_)
                                               (gx#core-identifier=?
                                                _%hd121153121199%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121135%_)
                                                (_%K121136%_
                                                 _%rest121137%_
                                                 _%r121138%_))
                                              (_%E121151121192%_))
                                          (_%E121151121192%_))))
                                  (_%E121151121192%_))))
                           (_%E121140121236%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121139121164%_)
                                  (let ((_%e121142121208%_
                                         (gx#syntax-e _%e121139121164%_)))
                                    (let ((_%hd121143121211%_
                                           (##car _%e121142121208%_))
                                          (_%tl121144121213%_
                                           (##cdr _%e121142121208%_)))
                                      (if (and (gx#identifier?
                                                _%hd121143121211%_)
                                               (gx#core-identifier=?
                                                _%hd121143121211%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121144121213%_)
                                              (let ((_%e121145121216%_
                                                     (gx#syntax-e
                                                      _%tl121144121213%_)))
                                                (let ((_%hd121146121219%_
                                                       (##car _%e121145121216%_))
                                                      (_%tl121147121221%_
                                                       (##cdr _%e121145121216%_)))
                                                  (let ((_%hd-bind121224%_
                                                         _%hd121146121219%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121147121221%_)
                                                        (let ((_%e121148121226%_
                                                               (gx#syntax-e
                                                                _%tl121147121221%_)))
                                                          (let ((_%hd121149121229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121148121226%_))
                        (_%tl121150121231%_ (##cdr _%e121148121226%_)))
                    (let ((_%expr121234%_ _%hd121149121229%_))
                      (if (gx#stx-null? _%tl121150121231%_)
                          (if (gx#core-bind-values? _%hd-bind121224%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121224%_)
                                (_%K121136%_
                                 _%rest121137%_
                                 (cons _%hd121135%_ _%r121138%_)))
                              (_%E121141121204%_))
                          (_%E121141121204%_)))))
                (_%E121141121204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121141121204%_))
                                          (_%E121141121204%_))))
                                  (_%E121141121204%_)))))
                      (_%E121140121236%_))))
                 (_%wrap-internal120979%_
                  (lambda (_%rbody120981%_)
                    (let _%lp120983%_ ((_%rest120985%_ _%rbody120981%_)
                                       (_%decls120986%_ '())
                                       (_%bind120987%_ '())
                                       (_%body120988%_ '()))
                      (let* ((_%e120989120996%_ _%rest120985%_)
                             (_%E120991121045%_
                              (lambda ()
                                (let* ((_%body121040%_
                                        (let* ((_%body120999121009%_
                                                _%body120988%_)
                                               (_%else121002121017%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body120988%_)
                                                   (gx#stx-source
                                                    _%stx120973%_)))))
                                          (let ((_%K121007121037%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx120973%_)))
                                                (_%K121004121023%_
                                                 (lambda (_%expr121021%_)
                                                   _%expr121021%_)))
                                            (let ((_%try-match121001121033%_
                                                   (lambda ()
                                                     (if (##pair? _%body120999121009%_)
                                                         (let ((_%tl121006121028%_
                                                                (##cdr _%body120999121009%_))
                                                               (_%hd121005121026%_
                                                                (##car _%body120999121009%_)))
                                                           (if (##null? _%tl121006121028%_)
                                                               (let ((_%expr121031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121005121026%_))
                         (_%K121004121023%_ _%expr121031%_))
                       (_%else121002121017%_)))
                 (_%else121002121017%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body120999121009%_)
                                                  (_%K121007121037%_)
                                                  (_%try-match121001121033%_))))))
                                       (_%body121042%_
                                        (if (null? _%bind120987%_)
                                            _%body121040%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind120987%_
                                                         (cons _%body121040%_
                                                               '())))
                                             (gx#stx-source _%stx120973%_)))))
                                  (if (null? _%decls120986%_)
                                      _%body121042%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls120986%_
                                                   (cons _%body121042%_ '())))
                                       (gx#stx-source _%stx120973%_))))))
                             (_%E120990121131%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120989120996%_)
                                    (let ((_%e120992121049%_
                                           (gx#syntax-e _%e120989120996%_)))
                                      (let ((_%hd120993121052%_
                                             (##car _%e120992121049%_))
                                            (_%tl120994121054%_
                                             (##cdr _%e120992121049%_)))
                                        (let* ((_%hd121057%_
                                                _%hd120993121052%_)
                                               (_%rest121059%_
                                                _%tl120994121054%_))
                                          (if '#t
                                              (let* ((_%e121060121077%_
                                                      _%hd121057%_)
                                                     (_%E121072121081%_
                                                      (lambda ()
                                                        (if (null? _%bind120987%_)
                                                            (_%lp120983%_
                                                             _%rest121059%_
                                                             _%decls120986%_
                                                             _%bind120987%_
                                                             (cons _%hd121057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body120988%_))
                    (_%lp120983%_
                     _%rest121059%_
                     _%decls120986%_
                     (cons (cons '#f (cons _%hd121057%_ '())) _%bind120987%_)
                     _%body120988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121062121095%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121060121077%_)
                                                            (let ((_%e121073121085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121060121077%_)))
                      (let ((_%hd121074121088%_ (##car _%e121073121085%_))
                            (_%tl121075121090%_ (##cdr _%e121073121085%_)))
                        (if (and (gx#identifier? _%hd121074121088%_)
                                 (gx#core-identifier=?
                                  _%hd121074121088%_
                                  '%#declare))
                            (let ((_%xdecls121093%_ _%tl121075121090%_))
                              (if '#t
                                  (_%lp120983%_
                                   _%rest121059%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls120986%_
                                    _%xdecls121093%_)
                                   _%bind120987%_
                                   _%body120988%_)
                                  (_%E121072121081%_)))
                            (_%E121072121081%_))))
                    (_%E121072121081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121061121127%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121060121077%_)
                                                            (let ((_%e121063121099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121060121077%_)))
                      (let ((_%hd121064121102%_ (##car _%e121063121099%_))
                            (_%tl121065121104%_ (##cdr _%e121063121099%_)))
                        (if (and (gx#identifier? _%hd121064121102%_)
                                 (gx#core-identifier=?
                                  _%hd121064121102%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121065121104%_)
                                (let ((_%e121066121107%_
                                       (gx#syntax-e _%tl121065121104%_)))
                                  (let ((_%hd121067121110%_
                                         (##car _%e121066121107%_))
                                        (_%tl121068121112%_
                                         (##cdr _%e121066121107%_)))
                                    (let ((_%hd-bind121115%_
                                           _%hd121067121110%_))
                                      (if (gx#stx-pair? _%tl121068121112%_)
                                          (let ((_%e121069121117%_
                                                 (gx#syntax-e
                                                  _%tl121068121112%_)))
                                            (let ((_%hd121070121120%_
                                                   (##car _%e121069121117%_))
                                                  (_%tl121071121122%_
                                                   (##cdr _%e121069121117%_)))
                                              (let ((_%expr121125%_
                                                     _%hd121070121120%_))
                                                (if (gx#stx-null?
                                                     _%tl121071121122%_)
                                                    (if '#t
                                                        (_%lp120983%_
                                                         _%rest121059%_
                                                         _%decls120986%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121115%_)
                             (cons (gx#core-expand-expression _%expr121125%_)
                                   '()))
                       _%bind120987%_)
                 _%body120988%_)
                (_%E121062121095%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121062121095%_)))))
                                          (_%E121062121095%_)))))
                                (_%E121062121095%_))
                            (_%E121062121095%_))))
                    (_%E121062121095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121061121127%_))
                                              (_%E120991121045%_)))))
                                    (_%E120991121045%_)))))
                        (_%E120990121131%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body120974%_)
            (gx#stx-source _%stx120973%_))
           _%expand-special120976%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx120911%_)
        (let* ((_%e120912120919%_ _%stx120911%_)
               (_%E120914120923%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120912120919%_)))
               (_%E120913120969%_
                (lambda ()
                  (if (gx#stx-pair? _%e120912120919%_)
                      (let ((_%e120915120927%_
                             (gx#syntax-e _%e120912120919%_)))
                        (let ((_%hd120916120930%_ (##car _%e120915120927%_))
                              (_%tl120917120932%_ (##cdr _%e120915120927%_)))
                          (let ((_%body120935%_ _%tl120917120932%_))
                            (if (gx#stx-list? _%body120935%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl120937%_)
                                     (let* ((_%e120938120945%_ _%decl120937%_)
                                            (_%E120940120949%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e120938120945%_)))
                                            (_%E120939120965%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e120938120945%_)
                                                   (let ((_%e120941120953%_
                                                          (gx#syntax-e
                                                           _%e120938120945%_)))
                                                     (let ((_%hd120942120956%_
                                                            (##car _%e120941120953%_))
                                                           (_%tl120943120958%_
                                                            (##cdr _%e120941120953%_)))
                                                       (let* ((_%head120961%_
                                                               _%hd120942120956%_)
                                                              (_%args120963%_
                                                               _%tl120943120958%_))
                                                         (if (gx#stx-list?
                                                              _%args120963%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl120937%_)
                                                             (_%E120940120949%_)))))
                                                   (_%E120940120949%_)))))
                                       (_%E120939120965%_)))
                                   _%body120935%_))
                                 (gx#stx-source _%stx120911%_))
                                (_%E120914120923%_)))))
                      (_%E120914120923%_)))))
          (_%E120913120969%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx120815%_)
        (let* ((_%e120816120823%_ _%stx120815%_)
               (_%E120818120827%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120816120823%_)))
               (_%E120817120907%_
                (lambda ()
                  (if (gx#stx-pair? _%e120816120823%_)
                      (let ((_%e120819120831%_
                             (gx#syntax-e _%e120816120823%_)))
                        (let ((_%hd120820120834%_ (##car _%e120819120831%_))
                              (_%tl120821120836%_ (##cdr _%e120819120831%_)))
                          (let ((_%body120839%_ _%tl120821120836%_))
                            (if '#t
                                (let _%lp120841%_ ((_%rest120843%_
                                                    _%body120839%_)
                                                   (_%r120844%_ '()))
                                  (let* ((_%e120845120859%_ _%rest120843%_)
                                         (_%E120857120863%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx120815%_)))
                                         (_%E120847120867%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e120845120859%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r120844%_))
                                                     (gx#stx-source
                                                      _%stx120815%_))
                                                    (_%E120857120863%_))
                                                (_%E120857120863%_))))
                                         (_%E120846120903%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e120845120859%_)
                                                (let ((_%e120848120871%_
                                                       (gx#syntax-e
                                                        _%e120845120859%_)))
                                                  (let ((_%hd120849120874%_
                                                         (##car _%e120848120871%_))
                                                        (_%tl120850120876%_
                                                         (##cdr _%e120848120871%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd120849120874%_)
                                                        (let ((_%e120851120879%_
                                                               (gx#syntax-e
                                                                _%hd120849120874%_)))
                                                          (let ((_%hd120852120882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120851120879%_))
                        (_%tl120853120884%_ (##cdr _%e120851120879%_)))
                    (let ((_%id120887%_ _%hd120852120882%_))
                      (if (gx#stx-pair? _%tl120853120884%_)
                          (let ((_%e120854120889%_
                                 (gx#syntax-e _%tl120853120884%_)))
                            (let ((_%hd120855120892%_
                                   (##car _%e120854120889%_))
                                  (_%tl120856120894%_
                                   (##cdr _%e120854120889%_)))
                              (let ((_%eid120897%_ _%hd120855120892%_))
                                (if (gx#stx-null? _%tl120856120894%_)
                                    (let ((_%rest120899%_ _%tl120850120876%_))
                                      (if (and (gx#identifier? _%id120887%_)
                                               (gx#identifier? _%eid120897%_))
                                          (let ((_%eid120901%_
                                                 (gx#stx-e _%eid120897%_)))
                                            (gx#core-bind-extern!__0
                                             _%id120887%_
                                             _%eid120901%_)
                                            (_%lp120841%_
                                             _%rest120899%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id120887%_)
                                                         (cons _%eid120901%_
                                                               '()))
                                                   _%r120844%_)))
                                          (_%E120847120867%_)))
                                    (_%E120847120867%_)))))
                          (_%E120847120867%_)))))
                (_%E120847120867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120847120867%_)))))
                                    (_%E120846120903%_)))
                                (_%E120818120827%_)))))
                      (_%E120818120827%_)))))
          (_%E120817120907%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx120761%_)
        (let* ((_%e120762120775%_ _%stx120761%_)
               (_%E120764120779%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120762120775%_)))
               (_%E120763120811%_
                (lambda ()
                  (if (gx#stx-pair? _%e120762120775%_)
                      (let ((_%e120765120783%_
                             (gx#syntax-e _%e120762120775%_)))
                        (let ((_%hd120766120786%_ (##car _%e120765120783%_))
                              (_%tl120767120788%_ (##cdr _%e120765120783%_)))
                          (if (gx#stx-pair? _%tl120767120788%_)
                              (let ((_%e120768120791%_
                                     (gx#syntax-e _%tl120767120788%_)))
                                (let ((_%hd120769120794%_
                                       (##car _%e120768120791%_))
                                      (_%tl120770120796%_
                                       (##cdr _%e120768120791%_)))
                                  (let ((_%hd120799%_ _%hd120769120794%_))
                                    (if (gx#stx-pair? _%tl120770120796%_)
                                        (let ((_%e120771120801%_
                                               (gx#syntax-e
                                                _%tl120770120796%_)))
                                          (let ((_%hd120772120804%_
                                                 (##car _%e120771120801%_))
                                                (_%tl120773120806%_
                                                 (##cdr _%e120771120801%_)))
                                            (let ((_%expr120809%_
                                                   _%hd120772120804%_))
                                              (if (gx#stx-null?
                                                   _%tl120773120806%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd120799%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd120799%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120799%_)
                             (cons (gx#core-expand-expression _%expr120809%_)
                                   '())))
                 (gx#stx-source _%stx120761%_)))
              (_%E120764120779%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120764120779%_)))))
                                        (_%E120764120779%_)))))
                              (_%E120764120779%_))))
                      (_%E120764120779%_)))))
          (_%E120763120811%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx120705%_)
        (let* ((_%e120706120719%_ _%stx120705%_)
               (_%E120708120723%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120706120719%_)))
               (_%E120707120757%_
                (lambda ()
                  (if (gx#stx-pair? _%e120706120719%_)
                      (let ((_%e120709120727%_
                             (gx#syntax-e _%e120706120719%_)))
                        (let ((_%hd120710120730%_ (##car _%e120709120727%_))
                              (_%tl120711120732%_ (##cdr _%e120709120727%_)))
                          (if (gx#stx-pair? _%tl120711120732%_)
                              (let ((_%e120712120735%_
                                     (gx#syntax-e _%tl120711120732%_)))
                                (let ((_%hd120713120738%_
                                       (##car _%e120712120735%_))
                                      (_%tl120714120740%_
                                       (##cdr _%e120712120735%_)))
                                  (let ((_%id120743%_ _%hd120713120738%_))
                                    (if (gx#stx-pair? _%tl120714120740%_)
                                        (let ((_%e120715120745%_
                                               (gx#syntax-e
                                                _%tl120714120740%_)))
                                          (let ((_%hd120716120748%_
                                                 (##car _%e120715120745%_))
                                                (_%tl120717120750%_
                                                 (##cdr _%e120715120745%_)))
                                            (let ((_%binding-id120753%_
                                                   _%hd120716120748%_))
                                              (if (gx#stx-null?
                                                   _%tl120717120750%_)
                                                  (if (and (gx#identifier?
                                                            _%id120743%_)
                                                           (gx#identifier?
                                                            _%binding-id120753%_))
                                                      (let ((_%eid120755%_
                                                             (gx#stx-e
                                                              _%binding-id120753%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id120743%_
                                                         _%eid120755%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120743%_)
                             (cons _%eid120755%_ '())))))
              (_%E120708120723%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120708120723%_)))))
                                        (_%E120708120723%_)))))
                              (_%E120708120723%_))))
                      (_%E120708120723%_)))))
          (_%E120707120757%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx120648%_)
        (let* ((_%e120649120662%_ _%stx120648%_)
               (_%E120651120666%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120649120662%_)))
               (_%E120650120701%_
                (lambda ()
                  (if (gx#stx-pair? _%e120649120662%_)
                      (let ((_%e120652120670%_
                             (gx#syntax-e _%e120649120662%_)))
                        (let ((_%hd120653120673%_ (##car _%e120652120670%_))
                              (_%tl120654120675%_ (##cdr _%e120652120670%_)))
                          (if (gx#stx-pair? _%tl120654120675%_)
                              (let ((_%e120655120678%_
                                     (gx#syntax-e _%tl120654120675%_)))
                                (let ((_%hd120656120681%_
                                       (##car _%e120655120678%_))
                                      (_%tl120657120683%_
                                       (##cdr _%e120655120678%_)))
                                  (let ((_%id120686%_ _%hd120656120681%_))
                                    (if (gx#stx-pair? _%tl120657120683%_)
                                        (let ((_%e120658120688%_
                                               (gx#syntax-e
                                                _%tl120657120683%_)))
                                          (let ((_%hd120659120691%_
                                                 (##car _%e120658120688%_))
                                                (_%tl120660120693%_
                                                 (##cdr _%e120658120688%_)))
                                            (let ((_%expr120696%_
                                                   _%hd120659120691%_))
                                              (if (gx#stx-null?
                                                   _%tl120660120693%_)
                                                  (if (gx#identifier?
                                                       _%id120686%_)
                                                      (let ((_g121607_
                                                             (gx#core-expand-expression+1
                                                              _%expr120696%_)))
                                                        (begin
                                                          (let ((_g121608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g121607_)
                             (##vector-length _g121607_)
                             1)))
                    (if (not (##fx= _g121608_ 2))
                        (error "Context expects 2 values" _g121608_)))
                  (let ((_%e-stx120698%_ (##vector-ref _g121607_ 0))
                        (_%e120699%_ (##vector-ref _g121607_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id120686%_ _%e120699%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id120686%_)
                                   (cons _%e-stx120698%_ '())))
                       (gx#stx-source _%stx120648%_))))))
              (_%E120651120666%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120651120666%_)))))
                                        (_%E120651120666%_)))))
                              (_%E120651120666%_))))
                      (_%E120651120666%_)))))
          (_%E120650120701%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx120592%_)
        (let* ((_%e120593120606%_ _%stx120592%_)
               (_%E120595120610%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120593120606%_)))
               (_%E120594120644%_
                (lambda ()
                  (if (gx#stx-pair? _%e120593120606%_)
                      (let ((_%e120596120614%_
                             (gx#syntax-e _%e120593120606%_)))
                        (let ((_%hd120597120617%_ (##car _%e120596120614%_))
                              (_%tl120598120619%_ (##cdr _%e120596120614%_)))
                          (if (gx#stx-pair? _%tl120598120619%_)
                              (let ((_%e120599120622%_
                                     (gx#syntax-e _%tl120598120619%_)))
                                (let ((_%hd120600120625%_
                                       (##car _%e120599120622%_))
                                      (_%tl120601120627%_
                                       (##cdr _%e120599120622%_)))
                                  (let ((_%id120630%_ _%hd120600120625%_))
                                    (if (gx#stx-pair? _%tl120601120627%_)
                                        (let ((_%e120602120632%_
                                               (gx#syntax-e
                                                _%tl120601120627%_)))
                                          (let ((_%hd120603120635%_
                                                 (##car _%e120602120632%_))
                                                (_%tl120604120637%_
                                                 (##cdr _%e120602120632%_)))
                                            (let ((_%alias-id120640%_
                                                   _%hd120603120635%_))
                                              (if (gx#stx-null?
                                                   _%tl120604120637%_)
                                                  (if (and (gx#identifier?
                                                            _%id120630%_)
                                                           (gx#identifier?
                                                            _%alias-id120640%_))
                                                      (let ((_%alias-id120642%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id120640%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id120630%_
                                                         _%alias-id120642%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120630%_)
                             (cons _%alias-id120642%_ '())))))
              (_%E120595120610%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120595120610%_)))))
                                        (_%E120595120610%_)))))
                              (_%E120595120610%_))))
                      (_%E120595120610%_)))))
          (_%E120594120644%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120535%_ _%wrap?120536%_)
        (let* ((_%e120537120547%_ _%stx120535%_)
               (_%E120539120551%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120537120547%_)))
               (_%E120538120578%_
                (lambda ()
                  (if (gx#stx-pair? _%e120537120547%_)
                      (let ((_%e120540120555%_
                             (gx#syntax-e _%e120537120547%_)))
                        (let ((_%hd120541120558%_ (##car _%e120540120555%_))
                              (_%tl120542120560%_ (##cdr _%e120540120555%_)))
                          (if (gx#stx-pair? _%tl120542120560%_)
                              (let ((_%e120543120563%_
                                     (gx#syntax-e _%tl120542120560%_)))
                                (let ((_%hd120544120566%_
                                       (##car _%e120543120563%_))
                                      (_%tl120545120568%_
                                       (##cdr _%e120543120563%_)))
                                  (let* ((_%hd120571%_ _%hd120544120566%_)
                                         (_%body120573%_ _%tl120545120568%_))
                                    (if (gx#core-bind-values? _%hd120571%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd120571%_)
                                           (let ((_%body120576%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd120571%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120535%_
                                                               _%body120573%_)
                                                              '()))))
                                             (if _%wrap?120536%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body120576%_)
                                                  (gx#stx-source
                                                   _%stx120535%_))
                                                 _%body120576%_)))
                                         gx#current-expander-context
                                         (let ((__obj121600
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121600)
                                           __obj121600))
                                        (_%E120539120551%_)))))
                              (_%E120539120551%_))))
                      (_%E120539120551%_)))))
          (_%E120538120578%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx120585%_)
        (let ((_%wrap?120587%_ '#t))
          (gx#core-expand-lambda%__% _%stx120585%_ _%wrap?120587%_))))
    (define gx#core-expand-lambda%
      (lambda _g121610_
        (let ((_g121609_ (##length _g121610_)))
          (cond ((##fx= _g121609_ 1)
                 (apply (lambda (_%stx120585%_)
                          (gx#core-expand-lambda%__0 _%stx120585%_))
                        _g121610_))
                ((##fx= _g121609_ 2)
                 (apply (lambda (_%stx120589%_ _%wrap?120590%_)
                          (gx#core-expand-lambda%__%
                           _%stx120589%_
                           _%wrap?120590%_))
                        _g121610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g121610_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120499%_)
        (let* ((_%e120500120507%_ _%stx120499%_)
               (_%E120502120511%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120500120507%_)))
               (_%E120501120530%_
                (lambda ()
                  (if (gx#stx-pair? _%e120500120507%_)
                      (let ((_%e120503120515%_
                             (gx#syntax-e _%e120500120507%_)))
                        (let ((_%hd120504120518%_ (##car _%e120503120515%_))
                              (_%tl120505120520%_ (##cdr _%e120503120515%_)))
                          (let ((_%clauses120523%_ _%tl120505120520%_))
                            (if (gx#stx-list? _%clauses120523%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120525%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120525%_)
                                       (let ((_%$e120527%_
                                              (gx#stx-source
                                               _%clause120525%_)))
                                         (if _%$e120527%_
                                             _%$e120527%_
                                             (gx#stx-source _%stx120499%_))))
                                      '#f))
                                   _%clauses120523%_))
                                 (gx#stx-source _%stx120499%_))
                                (_%E120502120511%_)))))
                      (_%E120502120511%_)))))
          (_%E120501120530%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120453%_)
        (let* ((_%e120454120464%_ _%stx120453%_)
               (_%E120456120468%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120454120464%_)))
               (_%E120455120495%_
                (lambda ()
                  (if (gx#stx-pair? _%e120454120464%_)
                      (let ((_%e120457120472%_
                             (gx#syntax-e _%e120454120464%_)))
                        (let ((_%hd120458120475%_ (##car _%e120457120472%_))
                              (_%tl120459120477%_ (##cdr _%e120457120472%_)))
                          (if (gx#stx-pair? _%tl120459120477%_)
                              (let ((_%e120460120480%_
                                     (gx#syntax-e _%tl120459120477%_)))
                                (let ((_%hd120461120483%_
                                       (##car _%e120460120480%_))
                                      (_%tl120462120485%_
                                       (##cdr _%e120460120480%_)))
                                  (let* ((_%hd120488%_ _%hd120461120483%_)
                                         (_%body120490%_ _%tl120462120485%_))
                                    (if (gx#core-expand-let-bind? _%hd120488%_)
                                        (let ((_%expressions120492%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120488%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120488%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120488%_
                                                           _%expressions120492%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120453%_
                         _%body120490%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120453%_)))
                                           gx#current-expander-context
                                           (let ((__obj121601
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121601)
                                             __obj121601)))
                                        (_%E120456120468%_)))))
                              (_%E120456120468%_))))
                      (_%E120456120468%_)))))
          (_%E120455120495%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120398%_ _%form120399%_)
        (let* ((_%e120400120410%_ _%stx120398%_)
               (_%E120402120414%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120400120410%_)))
               (_%E120401120439%_
                (lambda ()
                  (if (gx#stx-pair? _%e120400120410%_)
                      (let ((_%e120403120418%_
                             (gx#syntax-e _%e120400120410%_)))
                        (let ((_%hd120404120421%_ (##car _%e120403120418%_))
                              (_%tl120405120423%_ (##cdr _%e120403120418%_)))
                          (if (gx#stx-pair? _%tl120405120423%_)
                              (let ((_%e120406120426%_
                                     (gx#syntax-e _%tl120405120423%_)))
                                (let ((_%hd120407120429%_
                                       (##car _%e120406120426%_))
                                      (_%tl120408120431%_
                                       (##cdr _%e120406120426%_)))
                                  (let* ((_%hd120434%_ _%hd120407120429%_)
                                         (_%body120436%_ _%tl120408120431%_))
                                    (if (gx#core-expand-let-bind? _%hd120434%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120434%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120399%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120434%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120434%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120398%_
                                                               _%body120436%_)
                                                              '())))
                                            (gx#stx-source _%stx120398%_)))
                                         gx#current-expander-context
                                         (let ((__obj121602
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121602)
                                           __obj121602))
                                        (_%E120402120414%_)))))
                              (_%E120402120414%_))))
                      (_%E120402120414%_)))))
          (_%E120401120439%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120446%_)
        (let ((_%form120448%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120446%_ _%form120448%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g121612_
        (let ((_g121611_ (##length _g121612_)))
          (cond ((##fx= _g121611_ 1)
                 (apply (lambda (_%stx120446%_)
                          (gx#core-expand-letrec-values%__0 _%stx120446%_))
                        _g121612_))
                ((##fx= _g121611_ 2)
                 (apply (lambda (_%stx120450%_ _%form120451%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120450%_
                           _%form120451%_))
                        _g121612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g121612_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120395%_)
        (gx#core-expand-letrec-values%__% _%stx120395%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120352%_)
        (if (gx#stx-list? _%stx120352%_)
            (gx#stx-andmap
             (lambda (_%bind120354%_)
               (let* ((_%e120355120365%_ _%bind120354%_)
                      (_%E120357120369%_ (lambda () '#f))
                      (_%E120356120391%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120355120365%_)
                             (let ((_%e120358120373%_
                                    (gx#syntax-e _%e120355120365%_)))
                               (let ((_%hd120359120376%_
                                      (##car _%e120358120373%_))
                                     (_%tl120360120378%_
                                      (##cdr _%e120358120373%_)))
                                 (let ((_%hd120381%_ _%hd120359120376%_))
                                   (if (gx#stx-pair? _%tl120360120378%_)
                                       (let ((_%e120361120383%_
                                              (gx#syntax-e
                                               _%tl120360120378%_)))
                                         (let ((_%hd120362120386%_
                                                (##car _%e120361120383%_))
                                               (_%tl120363120388%_
                                                (##cdr _%e120361120383%_)))
                                           (if (gx#stx-null?
                                                _%tl120363120388%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120381%_)
                                                   (_%E120357120369%_))
                                               (_%E120357120369%_))))
                                       (_%E120357120369%_)))))
                             (_%E120357120369%_)))))
                 (_%E120356120391%_)))
             _%stx120352%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120311%_)
        (let* ((_%e120312120322%_ _%bind120311%_)
               (_%E120314120326%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120312120322%_)))
               (_%E120313120348%_
                (lambda ()
                  (if (gx#stx-pair? _%e120312120322%_)
                      (let ((_%e120315120330%_
                             (gx#syntax-e _%e120312120322%_)))
                        (let ((_%hd120316120333%_ (##car _%e120315120330%_))
                              (_%tl120317120335%_ (##cdr _%e120315120330%_)))
                          (if (gx#stx-pair? _%tl120317120335%_)
                              (let ((_%e120318120338%_
                                     (gx#syntax-e _%tl120317120335%_)))
                                (let ((_%hd120319120341%_
                                       (##car _%e120318120338%_))
                                      (_%tl120320120343%_
                                       (##cdr _%e120318120338%_)))
                                  (let ((_%expr120346%_ _%hd120319120341%_))
                                    (if (gx#stx-null? _%tl120320120343%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120346%_)
                                            (_%E120314120326%_))
                                        (_%E120314120326%_)))))
                              (_%E120314120326%_))))
                      (_%E120314120326%_)))))
          (_%E120313120348%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120270%_)
        (let* ((_%e120271120281%_ _%bind120270%_)
               (_%E120273120285%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120271120281%_)))
               (_%E120272120307%_
                (lambda ()
                  (if (gx#stx-pair? _%e120271120281%_)
                      (let ((_%e120274120289%_
                             (gx#syntax-e _%e120271120281%_)))
                        (let ((_%hd120275120292%_ (##car _%e120274120289%_))
                              (_%tl120276120294%_ (##cdr _%e120274120289%_)))
                          (let ((_%hd120297%_ _%hd120275120292%_))
                            (if (gx#stx-pair? _%tl120276120294%_)
                                (let ((_%e120277120299%_
                                       (gx#syntax-e _%tl120276120294%_)))
                                  (let ((_%hd120278120302%_
                                         (##car _%e120277120299%_))
                                        (_%tl120279120304%_
                                         (##cdr _%e120277120299%_)))
                                    (if (gx#stx-null? _%tl120279120304%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120297%_)
                                            (_%E120273120285%_))
                                        (_%E120273120285%_))))
                                (_%E120273120285%_)))))
                      (_%E120273120285%_)))))
          (_%E120272120307%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120228%_ _%expr120229%_)
        (let* ((_%e120230120240%_ _%bind120228%_)
               (_%E120232120244%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120230120240%_)))
               (_%E120231120266%_
                (lambda ()
                  (if (gx#stx-pair? _%e120230120240%_)
                      (let ((_%e120233120248%_
                             (gx#syntax-e _%e120230120240%_)))
                        (let ((_%hd120234120251%_ (##car _%e120233120248%_))
                              (_%tl120235120253%_ (##cdr _%e120233120248%_)))
                          (let ((_%hd120256%_ _%hd120234120251%_))
                            (if (gx#stx-pair? _%tl120235120253%_)
                                (let ((_%e120236120258%_
                                       (gx#syntax-e _%tl120235120253%_)))
                                  (let ((_%hd120237120261%_
                                         (##car _%e120236120258%_))
                                        (_%tl120238120263%_
                                         (##cdr _%e120236120258%_)))
                                    (if (gx#stx-null? _%tl120238120263%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120256%_)
                                                  (cons _%expr120229%_ '()))
                                            (_%E120232120244%_))
                                        (_%E120232120244%_))))
                                (_%E120232120244%_)))))
                      (_%E120232120244%_)))))
          (_%E120231120266%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120182%_)
        (let* ((_%e120183120193%_ _%stx120182%_)
               (_%E120185120197%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120183120193%_)))
               (_%E120184120224%_
                (lambda ()
                  (if (gx#stx-pair? _%e120183120193%_)
                      (let ((_%e120186120201%_
                             (gx#syntax-e _%e120183120193%_)))
                        (let ((_%hd120187120204%_ (##car _%e120186120201%_))
                              (_%tl120188120206%_ (##cdr _%e120186120201%_)))
                          (if (gx#stx-pair? _%tl120188120206%_)
                              (let ((_%e120189120209%_
                                     (gx#syntax-e _%tl120188120206%_)))
                                (let ((_%hd120190120212%_
                                       (##car _%e120189120209%_))
                                      (_%tl120191120214%_
                                       (##cdr _%e120189120209%_)))
                                  (let* ((_%hd120217%_ _%hd120190120212%_)
                                         (_%body120219%_ _%tl120191120214%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120217%_)
                                        (let ((_%expanders120221%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120217%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120217%_
                                              _%expanders120221%_)
                                             (gx#core-expand-local-block
                                              _%stx120182%_
                                              _%body120219%_))
                                           gx#current-expander-context
                                           (let ((__obj121603
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121603)
                                             __obj121603)))
                                        (_%E120185120197%_)))))
                              (_%E120185120197%_))))
                      (_%E120185120197%_)))))
          (_%E120184120224%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120131%_)
        (let* ((_%e120132120142%_ _%stx120131%_)
               (_%E120134120146%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120132120142%_)))
               (_%E120133120178%_
                (lambda ()
                  (if (gx#stx-pair? _%e120132120142%_)
                      (let ((_%e120135120150%_
                             (gx#syntax-e _%e120132120142%_)))
                        (let ((_%hd120136120153%_ (##car _%e120135120150%_))
                              (_%tl120137120155%_ (##cdr _%e120135120150%_)))
                          (if (gx#stx-pair? _%tl120137120155%_)
                              (let ((_%e120138120158%_
                                     (gx#syntax-e _%tl120137120155%_)))
                                (let ((_%hd120139120161%_
                                       (##car _%e120138120158%_))
                                      (_%tl120140120163%_
                                       (##cdr _%e120138120158%_)))
                                  (let* ((_%hd120166%_ _%hd120139120161%_)
                                         (_%body120168%_ _%tl120140120163%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120166%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120166%_
                                            (make-list
                                             (gx#stx-length _%hd120166%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120170120173%_
                                                     _%g120171120175%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120170120173%_
                                               _%g120171120175%_
                                               '#t))
                                            _%hd120166%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120166%_))
                                           (gx#core-expand-local-block
                                            _%stx120131%_
                                            _%body120168%_))
                                         gx#current-expander-context
                                         (let ((__obj121604
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121604)
                                           __obj121604))
                                        (_%E120134120146%_)))))
                              (_%E120134120146%_))))
                      (_%E120134120146%_)))))
          (_%E120133120178%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120088%_)
        (if (gx#stx-list? _%stx120088%_)
            (gx#stx-andmap
             (lambda (_%bind120090%_)
               (let* ((_%e120091120101%_ _%bind120090%_)
                      (_%E120093120105%_ (lambda () '#f))
                      (_%E120092120127%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120091120101%_)
                             (let ((_%e120094120109%_
                                    (gx#syntax-e _%e120091120101%_)))
                               (let ((_%hd120095120112%_
                                      (##car _%e120094120109%_))
                                     (_%tl120096120114%_
                                      (##cdr _%e120094120109%_)))
                                 (let ((_%hd120117%_ _%hd120095120112%_))
                                   (if (gx#stx-pair? _%tl120096120114%_)
                                       (let ((_%e120097120119%_
                                              (gx#syntax-e
                                               _%tl120096120114%_)))
                                         (let ((_%hd120098120122%_
                                                (##car _%e120097120119%_))
                                               (_%tl120099120124%_
                                                (##cdr _%e120097120119%_)))
                                           (if (gx#stx-null?
                                                _%tl120099120124%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120117%_)
                                                   (_%E120093120105%_))
                                               (_%E120093120105%_))))
                                       (_%E120093120105%_)))))
                             (_%E120093120105%_)))))
                 (_%E120092120127%_)))
             _%stx120088%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind120044%_)
        (let* ((_%e120045120055%_ _%bind120044%_)
               (_%E120047120059%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120045120055%_)))
               (_%E120046120084%_
                (lambda ()
                  (if (gx#stx-pair? _%e120045120055%_)
                      (let ((_%e120048120063%_
                             (gx#syntax-e _%e120045120055%_)))
                        (let ((_%hd120049120066%_ (##car _%e120048120063%_))
                              (_%tl120050120068%_ (##cdr _%e120048120063%_)))
                          (if (gx#stx-pair? _%tl120050120068%_)
                              (let ((_%e120051120071%_
                                     (gx#syntax-e _%tl120050120068%_)))
                                (let ((_%hd120052120074%_
                                       (##car _%e120051120071%_))
                                      (_%tl120053120076%_
                                       (##cdr _%e120051120071%_)))
                                  (let ((_%expr120079%_ _%hd120052120074%_))
                                    (if (gx#stx-null? _%tl120053120076%_)
                                        (if '#t
                                            (let ((_g121613_
                                                   (gx#core-expand-expression+1
                                                    _%expr120079%_)))
                                              (begin
                                                (let ((_g121614_
                                                       (if (##values?
                                                            _g121613_)
                                                           (##vector-length
                                                            _g121613_)
                                                           1)))
                                                  (if (not (##fx= _g121614_ 2))
                                                      (error "Context expects 2 values"
                                                             _g121614_)))
                                                (let ((_%_120081%_
                                                       (##vector-ref
                                                        _g121613_
                                                        0))
                                                      (_%e120082%_
                                                       (##vector-ref
                                                        _g121613_
                                                        1)))
                                                  _%e120082%_)))
                                            (_%E120047120059%_))
                                        (_%E120047120059%_)))))
                              (_%E120047120059%_))))
                      (_%E120047120059%_)))))
          (_%E120046120084%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind119989%_ _%e119990%_ _%rebind?119991%_)
        (let* ((_%e119992120002%_ _%bind119989%_)
               (_%E119994120006%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119992120002%_)))
               (_%E119993120028%_
                (lambda ()
                  (if (gx#stx-pair? _%e119992120002%_)
                      (let ((_%e119995120010%_
                             (gx#syntax-e _%e119992120002%_)))
                        (let ((_%hd119996120013%_ (##car _%e119995120010%_))
                              (_%tl119997120015%_ (##cdr _%e119995120010%_)))
                          (let ((_%id120018%_ _%hd119996120013%_))
                            (if (gx#stx-pair? _%tl119997120015%_)
                                (let ((_%e119998120020%_
                                       (gx#syntax-e _%tl119997120015%_)))
                                  (let ((_%hd119999120023%_
                                         (##car _%e119998120020%_))
                                        (_%tl120000120025%_
                                         (##cdr _%e119998120020%_)))
                                    (if (gx#stx-null? _%tl120000120025%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id120018%_
                                             _%e119990%_
                                             _%rebind?119991%_)
                                            (_%E119994120006%_))
                                        (_%E119994120006%_))))
                                (_%E119994120006%_)))))
                      (_%E119994120006%_)))))
          (_%E119993120028%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind120035%_ _%e120036%_)
        (let ((_%rebind?120038%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind120035%_
           _%e120036%_
           _%rebind?120038%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g121616_
        (let ((_g121615_ (##length _g121616_)))
          (cond ((##fx= _g121615_ 2)
                 (apply (lambda (_%bind120035%_ _%e120036%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind120035%_
                           _%e120036%_))
                        _g121616_))
                ((##fx= _g121615_ 3)
                 (apply (lambda (_%bind120040%_ _%e120041%_ _%rebind?120042%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind120040%_
                           _%e120041%_
                           _%rebind?120042%_))
                        _g121616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g121616_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx119947%_)
        (let* ((_%e119948119958%_ _%stx119947%_)
               (_%E119950119962%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119948119958%_)))
               (_%E119949119984%_
                (lambda ()
                  (if (gx#stx-pair? _%e119948119958%_)
                      (let ((_%e119951119966%_
                             (gx#syntax-e _%e119948119958%_)))
                        (let ((_%hd119952119969%_ (##car _%e119951119966%_))
                              (_%tl119953119971%_ (##cdr _%e119951119966%_)))
                          (if (gx#stx-pair? _%tl119953119971%_)
                              (let ((_%e119954119974%_
                                     (gx#syntax-e _%tl119953119971%_)))
                                (let ((_%hd119955119977%_
                                       (##car _%e119954119974%_))
                                      (_%tl119956119979%_
                                       (##cdr _%e119954119974%_)))
                                  (let ((_%expr119982%_ _%hd119955119977%_))
                                    (if (gx#stx-null? _%tl119956119979%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr119982%_)
                                            (_%E119950119962%_))
                                        (_%E119950119962%_)))))
                              (_%E119950119962%_))))
                      (_%E119950119962%_)))))
          (_%E119949119984%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx119906%_)
        (let* ((_%e119907119917%_ _%stx119906%_)
               (_%E119909119921%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119907119917%_)))
               (_%E119908119943%_
                (lambda ()
                  (if (gx#stx-pair? _%e119907119917%_)
                      (let ((_%e119910119925%_
                             (gx#syntax-e _%e119907119917%_)))
                        (let ((_%hd119911119928%_ (##car _%e119910119925%_))
                              (_%tl119912119930%_ (##cdr _%e119910119925%_)))
                          (if (gx#stx-pair? _%tl119912119930%_)
                              (let ((_%e119913119933%_
                                     (gx#syntax-e _%tl119912119930%_)))
                                (let ((_%hd119914119936%_
                                       (##car _%e119913119933%_))
                                      (_%tl119915119938%_
                                       (##cdr _%e119913119933%_)))
                                  (let ((_%e119941%_ _%hd119914119936%_))
                                    (if (gx#stx-null? _%tl119915119938%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e119941%_)
                                                         '()))
                                             (gx#stx-source _%stx119906%_))
                                            (_%E119909119921%_))
                                        (_%E119909119921%_)))))
                              (_%E119909119921%_))))
                      (_%E119909119921%_)))))
          (_%E119908119943%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx119865%_)
        (let* ((_%e119866119876%_ _%stx119865%_)
               (_%E119868119880%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119866119876%_)))
               (_%E119867119902%_
                (lambda ()
                  (if (gx#stx-pair? _%e119866119876%_)
                      (let ((_%e119869119884%_
                             (gx#syntax-e _%e119866119876%_)))
                        (let ((_%hd119870119887%_ (##car _%e119869119884%_))
                              (_%tl119871119889%_ (##cdr _%e119869119884%_)))
                          (if (gx#stx-pair? _%tl119871119889%_)
                              (let ((_%e119872119892%_
                                     (gx#syntax-e _%tl119871119889%_)))
                                (let ((_%hd119873119895%_
                                       (##car _%e119872119892%_))
                                      (_%tl119874119897%_
                                       (##cdr _%e119872119892%_)))
                                  (let ((_%e119900%_ _%hd119873119895%_))
                                    (if (gx#stx-null? _%tl119874119897%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e119900%_)
                                                         '()))
                                             (gx#stx-source _%stx119865%_))
                                            (_%E119868119880%_))
                                        (_%E119868119880%_)))))
                              (_%E119868119880%_))))
                      (_%E119868119880%_)))))
          (_%E119867119902%_))))
    (define gx#core-expand-call%
      (lambda (_%stx119822%_)
        (let* ((_%e119823119833%_ _%stx119822%_)
               (_%E119825119837%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119823119833%_)))
               (_%E119824119861%_
                (lambda ()
                  (if (gx#stx-pair? _%e119823119833%_)
                      (let ((_%e119826119841%_
                             (gx#syntax-e _%e119823119833%_)))
                        (let ((_%hd119827119844%_ (##car _%e119826119841%_))
                              (_%tl119828119846%_ (##cdr _%e119826119841%_)))
                          (if (gx#stx-pair? _%tl119828119846%_)
                              (let ((_%e119829119849%_
                                     (gx#syntax-e _%tl119828119846%_)))
                                (let ((_%hd119830119852%_
                                       (##car _%e119829119849%_))
                                      (_%tl119831119854%_
                                       (##cdr _%e119829119849%_)))
                                  (let* ((_%rator119857%_ _%hd119830119852%_)
                                         (_%args119859%_ _%tl119831119854%_))
                                    (if (gx#stx-list? _%args119859%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator119857%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args119859%_))
                                         (gx#stx-source _%stx119822%_))
                                        (_%E119825119837%_)))))
                              (_%E119825119837%_))))
                      (_%E119825119837%_)))))
          (_%E119824119861%_))))
    (define gx#core-expand-if%
      (lambda (_%stx119755%_)
        (let* ((_%e119756119772%_ _%stx119755%_)
               (_%E119758119776%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119756119772%_)))
               (_%E119757119818%_
                (lambda ()
                  (if (gx#stx-pair? _%e119756119772%_)
                      (let ((_%e119759119780%_
                             (gx#syntax-e _%e119756119772%_)))
                        (let ((_%hd119760119783%_ (##car _%e119759119780%_))
                              (_%tl119761119785%_ (##cdr _%e119759119780%_)))
                          (if (gx#stx-pair? _%tl119761119785%_)
                              (let ((_%e119762119788%_
                                     (gx#syntax-e _%tl119761119785%_)))
                                (let ((_%hd119763119791%_
                                       (##car _%e119762119788%_))
                                      (_%tl119764119793%_
                                       (##cdr _%e119762119788%_)))
                                  (let ((_%test119796%_ _%hd119763119791%_))
                                    (if (gx#stx-pair? _%tl119764119793%_)
                                        (let ((_%e119765119798%_
                                               (gx#syntax-e
                                                _%tl119764119793%_)))
                                          (let ((_%hd119766119801%_
                                                 (##car _%e119765119798%_))
                                                (_%tl119767119803%_
                                                 (##cdr _%e119765119798%_)))
                                            (let ((_%K119806%_
                                                   _%hd119766119801%_))
                                              (if (gx#stx-pair?
                                                   _%tl119767119803%_)
                                                  (let ((_%e119768119808%_
                                                         (gx#syntax-e
                                                          _%tl119767119803%_)))
                                                    (let ((_%hd119769119811%_
                                                           (##car _%e119768119808%_))
                                                          (_%tl119770119813%_
                                                           (##cdr _%e119768119808%_)))
                                                      (let ((_%E119816%_
                                                             _%hd119769119811%_))
                                                        (if (gx#stx-null?
                                                             _%tl119770119813%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test119796%_)
                                     (cons (gx#core-expand-expression
                                            _%K119806%_)
                                           (cons (gx#core-expand-expression
                                                  _%E119816%_)
                                                 '()))))
                         (gx#stx-source _%stx119755%_))
                        (_%E119758119776%_))
                    (_%E119758119776%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119758119776%_)))))
                                        (_%E119758119776%_)))))
                              (_%E119758119776%_))))
                      (_%E119758119776%_)))))
          (_%E119757119818%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx119714%_)
        (let* ((_%e119715119725%_ _%stx119714%_)
               (_%E119717119729%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119715119725%_)))
               (_%E119716119751%_
                (lambda ()
                  (if (gx#stx-pair? _%e119715119725%_)
                      (let ((_%e119718119733%_
                             (gx#syntax-e _%e119715119725%_)))
                        (let ((_%hd119719119736%_ (##car _%e119718119733%_))
                              (_%tl119720119738%_ (##cdr _%e119718119733%_)))
                          (if (gx#stx-pair? _%tl119720119738%_)
                              (let ((_%e119721119741%_
                                     (gx#syntax-e _%tl119720119738%_)))
                                (let ((_%hd119722119744%_
                                       (##car _%e119721119741%_))
                                      (_%tl119723119746%_
                                       (##cdr _%e119721119741%_)))
                                  (let ((_%id119749%_ _%hd119722119744%_))
                                    (if (gx#stx-null? _%tl119723119746%_)
                                        (if (gx#identifier? _%id119749%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id119749%_
                                                          _%stx119714%_)
                                                         '()))
                                             (gx#stx-source _%stx119714%_))
                                            (_%E119717119729%_))
                                        (_%E119717119729%_)))))
                              (_%E119717119729%_))))
                      (_%E119717119729%_)))))
          (_%E119716119751%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx119660%_)
        (let* ((_%e119661119674%_ _%stx119660%_)
               (_%E119663119678%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119661119674%_)))
               (_%E119662119710%_
                (lambda ()
                  (if (gx#stx-pair? _%e119661119674%_)
                      (let ((_%e119664119682%_
                             (gx#syntax-e _%e119661119674%_)))
                        (let ((_%hd119665119685%_ (##car _%e119664119682%_))
                              (_%tl119666119687%_ (##cdr _%e119664119682%_)))
                          (if (gx#stx-pair? _%tl119666119687%_)
                              (let ((_%e119667119690%_
                                     (gx#syntax-e _%tl119666119687%_)))
                                (let ((_%hd119668119693%_
                                       (##car _%e119667119690%_))
                                      (_%tl119669119695%_
                                       (##cdr _%e119667119690%_)))
                                  (let ((_%id119698%_ _%hd119668119693%_))
                                    (if (gx#stx-pair? _%tl119669119695%_)
                                        (let ((_%e119670119700%_
                                               (gx#syntax-e
                                                _%tl119669119695%_)))
                                          (let ((_%hd119671119703%_
                                                 (##car _%e119670119700%_))
                                                (_%tl119672119705%_
                                                 (##cdr _%e119670119700%_)))
                                            (let ((_%expr119708%_
                                                   _%hd119671119703%_))
                                              (if (gx#stx-null?
                                                   _%tl119672119705%_)
                                                  (if (gx#identifier?
                                                       _%id119698%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id119698%_
                            _%stx119660%_)
                           (cons (gx#core-expand-expression _%expr119708%_)
                                 '())))
               (gx#stx-source _%stx119660%_))
              (_%E119663119678%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119663119678%_)))))
                                        (_%E119663119678%_)))))
                              (_%E119663119678%_))))
                      (_%E119663119678%_)))))
          (_%E119662119710%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119505%_)
        (letrec ((_%generate119507%_
                  (lambda (_%body119537%_)
                    (let _%lp119539%_ ((_%rest119541%_ _%body119537%_)
                                       (_%ns119542%_
                                        (gx#core-context-namespace__0))
                                       (_%r119543%_ '()))
                      (let* ((_%e119544119559%_ _%rest119541%_)
                             (_%E119557119563%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119544119559%_)))
                             (_%E119553119567%_
                              (lambda ()
                                (if (gx#stx-null? _%e119544119559%_)
                                    (if '#t
                                        (reverse _%r119543%_)
                                        (_%E119557119563%_))
                                    (_%E119557119563%_))))
                             (_%E119546119624%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119544119559%_)
                                    (let ((_%e119554119571%_
                                           (gx#syntax-e _%e119544119559%_)))
                                      (let ((_%hd119555119574%_
                                             (##car _%e119554119571%_))
                                            (_%tl119556119576%_
                                             (##cdr _%e119554119571%_)))
                                        (let* ((_%hd119579%_
                                                _%hd119555119574%_)
                                               (_%rest119581%_
                                                _%tl119556119576%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd119579%_)
                                                  (_%lp119539%_
                                                   _%rest119581%_
                                                   _%ns119542%_
                                                   (cons (cons _%hd119579%_
                                                               (cons (if _%ns119542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd119579%_
                                  _%ns119542%_
                                  '"#"
                                  _%hd119579%_)
                                 _%hd119579%_)
                             '()))
                 _%r119543%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e119582119592%_
                                                          _%hd119579%_)
                                                         (_%E119584119596%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e119582119592%_)))
                                                         (_%E119583119620%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e119582119592%_)
                        (let ((_%e119585119600%_
                               (gx#syntax-e _%e119582119592%_)))
                          (let ((_%hd119586119603%_ (##car _%e119585119600%_))
                                (_%tl119587119605%_ (##cdr _%e119585119600%_)))
                            (let ((_%id119608%_ _%hd119586119603%_))
                              (if (gx#stx-pair? _%tl119587119605%_)
                                  (let ((_%e119588119610%_
                                         (gx#syntax-e _%tl119587119605%_)))
                                    (let ((_%hd119589119613%_
                                           (##car _%e119588119610%_))
                                          (_%tl119590119615%_
                                           (##cdr _%e119588119610%_)))
                                      (let ((_%eid119618%_ _%hd119589119613%_))
                                        (if (gx#stx-null? _%tl119590119615%_)
                                            (if (and (gx#identifier?
                                                      _%id119608%_)
                                                     (gx#identifier?
                                                      _%eid119618%_))
                                                (_%lp119539%_
                                                 _%rest119581%_
                                                 _%ns119542%_
                                                 (cons (cons _%id119608%_
                                                             (cons _%eid119618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119543%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119584119596%_))
                                            (_%E119584119596%_)))))
                                  (_%E119584119596%_)))))
                        (_%E119584119596%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119583119620%_)))
                                              (_%E119553119567%_)))))
                                    (_%E119553119567%_))))
                             (_%E119545119656%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119544119559%_)
                                    (let ((_%e119547119628%_
                                           (gx#syntax-e _%e119544119559%_)))
                                      (let ((_%hd119548119631%_
                                             (##car _%e119547119628%_))
                                            (_%tl119549119633%_
                                             (##cdr _%e119547119628%_)))
                                        (if (eq? (gx#stx-e _%hd119548119631%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl119549119633%_)
                                                (let ((_%e119550119636%_
                                                       (gx#syntax-e
                                                        _%tl119549119633%_)))
                                                  (let ((_%hd119551119639%_
                                                         (##car _%e119550119636%_))
                                                        (_%tl119552119641%_
                                                         (##cdr _%e119550119636%_)))
                                                    (let* ((_%ns119644%_
                                                            _%hd119551119639%_)
                                                           (_%rest119646%_
                                                            _%tl119552119641%_))
                                                      (if '#t
                                                          (let ((_%ns119654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns119644%_)
                             (let () (symbol->string (gx#stx-e _%ns119644%_)))
                             (if (or (gx#stx-string? _%ns119644%_)
                                     (gx#stx-false? _%ns119644%_))
                                 (let () (gx#stx-e _%ns119644%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx119505%_
                                    _%ns119644%_))))))
                    (_%lp119539%_ _%rest119646%_ _%ns119654%_ _%r119543%_))
                  (_%E119546119624%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119546119624%_))
                                            (_%E119546119624%_))))
                                    (_%E119546119624%_)))))
                        (_%E119545119656%_))))))
          (let* ((_%e119508119515%_ _%stx119505%_)
                 (_%E119510119519%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119508119515%_)))
                 (_%E119509119533%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119508119515%_)
                        (let ((_%e119511119523%_
                               (gx#syntax-e _%e119508119515%_)))
                          (let ((_%hd119512119526%_ (##car _%e119511119523%_))
                                (_%tl119513119528%_ (##cdr _%e119511119523%_)))
                            (let ((_%body119531%_ _%tl119513119528%_))
                              (if (gx#stx-list? _%body119531%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119507%_ _%body119531%_))
                                  (_%E119510119519%_)))))
                        (_%E119510119519%_)))))
            (_%E119509119533%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119451%_)
        (let* ((_%e119452119465%_ _%stx119451%_)
               (_%E119454119469%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119452119465%_)))
               (_%E119453119501%_
                (lambda ()
                  (if (gx#stx-pair? _%e119452119465%_)
                      (let ((_%e119455119473%_
                             (gx#syntax-e _%e119452119465%_)))
                        (let ((_%hd119456119476%_ (##car _%e119455119473%_))
                              (_%tl119457119478%_ (##cdr _%e119455119473%_)))
                          (if (gx#stx-pair? _%tl119457119478%_)
                              (let ((_%e119458119481%_
                                     (gx#syntax-e _%tl119457119478%_)))
                                (let ((_%hd119459119484%_
                                       (##car _%e119458119481%_))
                                      (_%tl119460119486%_
                                       (##cdr _%e119458119481%_)))
                                  (let ((_%hd119489%_ _%hd119459119484%_))
                                    (if (gx#stx-pair? _%tl119460119486%_)
                                        (let ((_%e119461119491%_
                                               (gx#syntax-e
                                                _%tl119460119486%_)))
                                          (let ((_%hd119462119494%_
                                                 (##car _%e119461119491%_))
                                                (_%tl119463119496%_
                                                 (##cdr _%e119461119491%_)))
                                            (let ((_%expr119499%_
                                                   _%hd119462119494%_))
                                              (if (gx#stx-null?
                                                   _%tl119463119496%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119489%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119489%_)
                          (cons _%expr119499%_ '())))
              (_%E119454119469%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119454119469%_)))))
                                        (_%E119454119469%_)))))
                              (_%E119454119469%_))))
                      (_%E119454119469%_)))))
          (_%E119453119501%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119397%_)
        (let* ((_%e119398119411%_ _%stx119397%_)
               (_%E119400119415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119398119411%_)))
               (_%E119399119447%_
                (lambda ()
                  (if (gx#stx-pair? _%e119398119411%_)
                      (let ((_%e119401119419%_
                             (gx#syntax-e _%e119398119411%_)))
                        (let ((_%hd119402119422%_ (##car _%e119401119419%_))
                              (_%tl119403119424%_ (##cdr _%e119401119419%_)))
                          (if (gx#stx-pair? _%tl119403119424%_)
                              (let ((_%e119404119427%_
                                     (gx#syntax-e _%tl119403119424%_)))
                                (let ((_%hd119405119430%_
                                       (##car _%e119404119427%_))
                                      (_%tl119406119432%_
                                       (##cdr _%e119404119427%_)))
                                  (let ((_%hd119435%_ _%hd119405119430%_))
                                    (if (gx#stx-pair? _%tl119406119432%_)
                                        (let ((_%e119407119437%_
                                               (gx#syntax-e
                                                _%tl119406119432%_)))
                                          (let ((_%hd119408119440%_
                                                 (##car _%e119407119437%_))
                                                (_%tl119409119442%_
                                                 (##cdr _%e119407119437%_)))
                                            (let ((_%expr119445%_
                                                   _%hd119408119440%_))
                                              (if (gx#stx-null?
                                                   _%tl119409119442%_)
                                                  (if (gx#identifier?
                                                       _%hd119435%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119445%_ '())))
              (_%E119400119415%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119400119415%_)))))
                                        (_%E119400119415%_)))))
                              (_%E119400119415%_))))
                      (_%E119400119415%_)))))
          (_%E119399119447%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119343%_)
        (let* ((_%e119344119357%_ _%stx119343%_)
               (_%E119346119361%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119344119357%_)))
               (_%E119345119393%_
                (lambda ()
                  (if (gx#stx-pair? _%e119344119357%_)
                      (let ((_%e119347119365%_
                             (gx#syntax-e _%e119344119357%_)))
                        (let ((_%hd119348119368%_ (##car _%e119347119365%_))
                              (_%tl119349119370%_ (##cdr _%e119347119365%_)))
                          (if (gx#stx-pair? _%tl119349119370%_)
                              (let ((_%e119350119373%_
                                     (gx#syntax-e _%tl119349119370%_)))
                                (let ((_%hd119351119376%_
                                       (##car _%e119350119373%_))
                                      (_%tl119352119378%_
                                       (##cdr _%e119350119373%_)))
                                  (let ((_%id119381%_ _%hd119351119376%_))
                                    (if (gx#stx-pair? _%tl119352119378%_)
                                        (let ((_%e119353119383%_
                                               (gx#syntax-e
                                                _%tl119352119378%_)))
                                          (let ((_%hd119354119386%_
                                                 (##car _%e119353119383%_))
                                                (_%tl119355119388%_
                                                 (##cdr _%e119353119383%_)))
                                            (let ((_%alias-id119391%_
                                                   _%hd119354119386%_))
                                              (if (gx#stx-null?
                                                   _%tl119355119388%_)
                                                  (if (and (gx#identifier?
                                                            _%id119381%_)
                                                           (gx#identifier?
                                                            _%alias-id119391%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119391%_ '())))
              (_%E119346119361%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119346119361%_)))))
                                        (_%E119346119361%_)))))
                              (_%E119346119361%_))))
                      (_%E119346119361%_)))))
          (_%E119345119393%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119300%_)
        (let* ((_%e119301119311%_ _%stx119300%_)
               (_%E119303119315%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119301119311%_)))
               (_%E119302119339%_
                (lambda ()
                  (if (gx#stx-pair? _%e119301119311%_)
                      (let ((_%e119304119319%_
                             (gx#syntax-e _%e119301119311%_)))
                        (let ((_%hd119305119322%_ (##car _%e119304119319%_))
                              (_%tl119306119324%_ (##cdr _%e119304119319%_)))
                          (if (gx#stx-pair? _%tl119306119324%_)
                              (let ((_%e119307119327%_
                                     (gx#syntax-e _%tl119306119324%_)))
                                (let ((_%hd119308119330%_
                                       (##car _%e119307119327%_))
                                      (_%tl119309119332%_
                                       (##cdr _%e119307119327%_)))
                                  (let* ((_%hd119335%_ _%hd119308119330%_)
                                         (_%body119337%_ _%tl119309119332%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119335%_)
                                             (gx#stx-list? _%body119337%_)
                                             (not (gx#stx-null?
                                                   _%body119337%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119335%_)
                                         _%body119337%_)
                                        (_%E119303119315%_)))))
                              (_%E119303119315%_))))
                      (_%E119303119315%_)))))
          (_%E119302119339%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119236%_)
        (letrec ((_%generate119238%_
                  (lambda (_%clause119268%_)
                    (let* ((_%e119269119276%_ _%clause119268%_)
                           (_%E119271119280%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119236%_
                               _%clause119268%_)))
                           (_%E119270119296%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119269119276%_)
                                  (let ((_%e119272119284%_
                                         (gx#syntax-e _%e119269119276%_)))
                                    (let ((_%hd119273119287%_
                                           (##car _%e119272119284%_))
                                          (_%tl119274119289%_
                                           (##cdr _%e119272119284%_)))
                                      (let* ((_%hd119292%_ _%hd119273119287%_)
                                             (_%body119294%_
                                              _%tl119274119289%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119292%_)
                                                 (gx#stx-list? _%body119294%_)
                                                 (not (gx#stx-null?
                                                       _%body119294%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119292%_)
                                                   _%body119294%_)
                                             (gx#stx-source _%clause119268%_))
                                            (_%E119271119280%_)))))
                                  (_%E119271119280%_)))))
                      (_%E119270119296%_)))))
          (let* ((_%e119239119246%_ _%stx119236%_)
                 (_%E119241119250%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119239119246%_)))
                 (_%E119240119264%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119239119246%_)
                        (let ((_%e119242119254%_
                               (gx#syntax-e _%e119239119246%_)))
                          (let ((_%hd119243119257%_ (##car _%e119242119254%_))
                                (_%tl119244119259%_ (##cdr _%e119242119254%_)))
                            (let ((_%clauses119262%_ _%tl119244119259%_))
                              (if (gx#stx-list? _%clauses119262%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119238%_
                                    _%clauses119262%_))
                                  (_%E119241119250%_)))))
                        (_%E119241119250%_)))))
            (_%E119240119264%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119137%_ _%form119138%_)
        (letrec ((_%generate119140%_
                  (lambda (_%bind119183%_)
                    (let* ((_%e119184119194%_ _%bind119183%_)
                           (_%E119186119198%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119137%_
                               _%bind119183%_)))
                           (_%E119185119222%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119184119194%_)
                                  (let ((_%e119187119202%_
                                         (gx#syntax-e _%e119184119194%_)))
                                    (let ((_%hd119188119205%_
                                           (##car _%e119187119202%_))
                                          (_%tl119189119207%_
                                           (##cdr _%e119187119202%_)))
                                      (let ((_%ids119210%_ _%hd119188119205%_))
                                        (if (gx#stx-pair? _%tl119189119207%_)
                                            (let ((_%e119190119212%_
                                                   (gx#syntax-e
                                                    _%tl119189119207%_)))
                                              (let ((_%hd119191119215%_
                                                     (##car _%e119190119212%_))
                                                    (_%tl119192119217%_
                                                     (##cdr _%e119190119212%_)))
                                                (let ((_%expr119220%_
                                                       _%hd119191119215%_))
                                                  (if (gx#stx-null?
                                                       _%tl119192119217%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119210%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119210%_)
                        (cons _%expr119220%_ '()))
                  (_%E119186119198%_))
              (_%E119186119198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119186119198%_)))))
                                  (_%E119186119198%_)))))
                      (_%E119185119222%_)))))
          (let* ((_%e119141119151%_ _%stx119137%_)
                 (_%E119143119155%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119141119151%_)))
                 (_%E119142119179%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119141119151%_)
                        (let ((_%e119144119159%_
                               (gx#syntax-e _%e119141119151%_)))
                          (let ((_%hd119145119162%_ (##car _%e119144119159%_))
                                (_%tl119146119164%_ (##cdr _%e119144119159%_)))
                            (if (gx#stx-pair? _%tl119146119164%_)
                                (let ((_%e119147119167%_
                                       (gx#syntax-e _%tl119146119164%_)))
                                  (let ((_%hd119148119170%_
                                         (##car _%e119147119167%_))
                                        (_%tl119149119172%_
                                         (##cdr _%e119147119167%_)))
                                    (let* ((_%hd119175%_ _%hd119148119170%_)
                                           (_%body119177%_ _%tl119149119172%_))
                                      (if (and (gx#stx-list? _%hd119175%_)
                                               (gx#stx-list? _%body119177%_)
                                               (not (gx#stx-null?
                                                     _%body119177%_)))
                                          (gx#core-cons*
                                           _%form119138%_
                                           (gx#stx-map1
                                            _%generate119140%_
                                            _%hd119175%_)
                                           _%body119177%_)
                                          (_%E119143119155%_)))))
                                (_%E119143119155%_))))
                        (_%E119143119155%_)))))
            (_%E119142119179%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119229%_)
        (let ((_%form119231%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119229%_ _%form119231%_))))
    (define gx#macro-expand-let-values
      (lambda _g121618_
        (let ((_g121617_ (##length _g121618_)))
          (cond ((##fx= _g121617_ 1)
                 (apply (lambda (_%stx119229%_)
                          (gx#macro-expand-let-values__0 _%stx119229%_))
                        _g121618_))
                ((##fx= _g121617_ 2)
                 (apply (lambda (_%stx119233%_ _%form119234%_)
                          (gx#macro-expand-let-values__%
                           _%stx119233%_
                           _%form119234%_))
                        _g121618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g121618_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119134%_)
        (gx#macro-expand-let-values__% _%stx119134%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119132%_)
        (gx#macro-expand-let-values__% _%stx119132%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx119023%_)
        (let* ((_%e119024119050%_ _%stx119023%_)
               (_%E119036119054%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119024119050%_)))
               (_%E119026119096%_
                (lambda ()
                  (if (gx#stx-pair? _%e119024119050%_)
                      (let ((_%e119037119058%_
                             (gx#syntax-e _%e119024119050%_)))
                        (let ((_%hd119038119061%_ (##car _%e119037119058%_))
                              (_%tl119039119063%_ (##cdr _%e119037119058%_)))
                          (if (gx#stx-pair? _%tl119039119063%_)
                              (let ((_%e119040119066%_
                                     (gx#syntax-e _%tl119039119063%_)))
                                (let ((_%hd119041119069%_
                                       (##car _%e119040119066%_))
                                      (_%tl119042119071%_
                                       (##cdr _%e119040119066%_)))
                                  (let ((_%test119074%_ _%hd119041119069%_))
                                    (if (gx#stx-pair? _%tl119042119071%_)
                                        (let ((_%e119043119076%_
                                               (gx#syntax-e
                                                _%tl119042119071%_)))
                                          (let ((_%hd119044119079%_
                                                 (##car _%e119043119076%_))
                                                (_%tl119045119081%_
                                                 (##cdr _%e119043119076%_)))
                                            (let ((_%K119084%_
                                                   _%hd119044119079%_))
                                              (if (gx#stx-pair?
                                                   _%tl119045119081%_)
                                                  (let ((_%e119046119086%_
                                                         (gx#syntax-e
                                                          _%tl119045119081%_)))
                                                    (let ((_%hd119047119089%_
                                                           (##car _%e119046119086%_))
                                                          (_%tl119048119091%_
                                                           (##cdr _%e119046119086%_)))
                                                      (let ((_%E119094%_
                                                             _%hd119047119089%_))
                                                        (if (gx#stx-null?
                                                             _%tl119048119091%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119074%_
                         _%K119084%_
                         _%E119094%_)
                        (_%E119036119054%_))
                    (_%E119036119054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119036119054%_)))))
                                        (_%E119036119054%_)))))
                              (_%E119036119054%_))))
                      (_%E119036119054%_))))
               (_%E119025119128%_
                (lambda ()
                  (if (gx#stx-pair? _%e119024119050%_)
                      (let ((_%e119027119100%_
                             (gx#syntax-e _%e119024119050%_)))
                        (let ((_%hd119028119103%_ (##car _%e119027119100%_))
                              (_%tl119029119105%_ (##cdr _%e119027119100%_)))
                          (if (gx#stx-pair? _%tl119029119105%_)
                              (let ((_%e119030119108%_
                                     (gx#syntax-e _%tl119029119105%_)))
                                (let ((_%hd119031119111%_
                                       (##car _%e119030119108%_))
                                      (_%tl119032119113%_
                                       (##cdr _%e119030119108%_)))
                                  (let ((_%test119116%_ _%hd119031119111%_))
                                    (if (gx#stx-pair? _%tl119032119113%_)
                                        (let ((_%e119033119118%_
                                               (gx#syntax-e
                                                _%tl119032119113%_)))
                                          (let ((_%hd119034119121%_
                                                 (##car _%e119033119118%_))
                                                (_%tl119035119123%_
                                                 (##cdr _%e119033119118%_)))
                                            (let ((_%K119126%_
                                                   _%hd119034119121%_))
                                              (if (gx#stx-null?
                                                   _%tl119035119123%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119116%_
                                                       _%K119126%_
                                                       '#!void)
                                                      (_%E119026119096%_))
                                                  (_%E119026119096%_)))))
                                        (_%E119026119096%_)))))
                              (_%E119026119096%_))))
                      (_%E119026119096%_)))))
          (_%E119025119128%_))))
    (define gx#free-identifier=?
      (lambda (_%xid119008%_ _%yid119009%_)
        (let ((_%xe119011%_ (gx#resolve-identifier__0 _%xid119008%_))
              (_%ye119012%_ (gx#resolve-identifier__0 _%yid119009%_)))
          (if (and _%xe119011%_ _%ye119012%_)
              (let ()
                (let ((_%$e119015%_ (eq? _%xe119011%_ _%ye119012%_)))
                  (if _%$e119015%_
                      _%$e119015%_
                      (if (##structure-instance-of?
                           _%xe119011%_
                           'gx#binding::t)
                          (if (##structure-instance-of?
                               _%ye119012%_
                               'gx#binding::t)
                              (eq? (##unchecked-structure-ref
                                    _%xe119011%_
                                    '1
                                    '#f
                                    '#f)
                                   (##unchecked-structure-ref
                                    _%ye119012%_
                                    '1
                                    '#f
                                    '#f))
                              '#f)
                          '#f))))
              (if (or _%xe119011%_ _%ye119012%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid119008%_ _%yid119009%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid118989%_ _%yid118990%_)
        (letrec ((_%context118992%_
                  (lambda (_%e119006%_)
                    (if (##structure-direct-instance-of?
                         _%e119006%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e119006%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks118993%_
                  (lambda (_%e119001%_)
                    (if (symbol? _%e119001%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e119001%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e119001%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e119001%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap118994%_
                  (lambda (_%e118999%_)
                    (if (symbol? _%e118999%_)
                        _%e118999%_
                        (gx#syntax-local-unwrap _%e118999%_)))))
          (let ((_%x118996%_ (_%unwrap118994%_ _%xid118989%_))
                (_%y118997%_ (_%unwrap118994%_ _%yid118990%_)))
            (if (gx#stx-eq? _%x118996%_ _%y118997%_)
                (if (eq? (_%context118992%_ _%x118996%_)
                         (_%context118992%_ _%y118997%_))
                    (equal? (_%marks118993%_ _%x118996%_)
                            (_%marks118993%_ _%y118997%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx118987%_)
        (if (gx#identifier? _%stx118987%_)
            (gx#core-identifier=? _%stx118987%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx118985%_)
        (if (gx#identifier? _%stx118985%_)
            (gx#core-identifier=? _%stx118985%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx118928%_ _%where118929%_)
        (let _%lp118931%_ ((_%rest118933%_ (gx#syntax->list _%stx118928%_)))
          (let* ((_%rest118934118942%_ _%rest118933%_)
                 (_%else118936118950%_ (lambda () '#t))
                 (_%K118938118963%_
                  (lambda (_%rest118953%_ _%hd118954%_)
                    (if (not (gx#identifier? _%hd118954%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where118929%_
                           _%hd118954%_))
                        (if (__find (lambda (_%g118956118958%_)
                                      (gx#bound-identifier=?
                                       _%g118956118958%_
                                       _%hd118954%_))
                                    _%rest118953%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where118929%_
                               _%hd118954%_))
                            (let () (_%lp118931%_ _%rest118953%_)))))))
            (if (##pair? _%rest118934118942%_)
                (let ((_%hd118939118966%_ (##car _%rest118934118942%_))
                      (_%tl118940118968%_ (##cdr _%rest118934118942%_)))
                  (let* ((_%hd118971%_ _%hd118939118966%_)
                         (_%rest118973%_ _%tl118940118968%_))
                    (_%K118938118963%_ _%rest118973%_ _%hd118971%_)))
                (_%else118936118950%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx118978%_)
        (let ((_%where118980%_ _%stx118978%_))
          (gx#check-duplicate-identifiers__% _%stx118978%_ _%where118980%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g121620_
        (let ((_g121619_ (##length _g121620_)))
          (cond ((##fx= _g121619_ 1)
                 (apply (lambda (_%stx118978%_)
                          (gx#check-duplicate-identifiers__0 _%stx118978%_))
                        _g121620_))
                ((##fx= _g121619_ 2)
                 (apply (lambda (_%stx118982%_ _%where118983%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx118982%_
                           _%where118983%_))
                        _g121620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g121620_))))))
    (define gx#core-bind-values?
      (lambda (_%stx118920%_)
        (gx#stx-andmap
         (lambda (_%x118922%_)
           (let ((_%$e118924%_ (gx#identifier? _%x118922%_)))
             (if _%$e118924%_ _%$e118924%_ (gx#stx-false? _%x118922%_))))
         _%stx118920%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx118884%_ _%rebind?118885%_ _%phi118886%_ _%ctx118887%_)
        (gx#stx-for-each1
         (lambda (_%id118889%_)
           (if (gx#identifier? _%id118889%_)
               (gx#core-bind-runtime!__%
                _%id118889%_
                _%rebind?118885%_
                _%phi118886%_
                _%ctx118887%_)
               '#!void))
         _%stx118884%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx118894%_)
        (let* ((_%rebind?118896%_ '#f)
               (_%phi118898%_ (gx#current-expander-phi))
               (_%ctx118900%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118894%_
           _%rebind?118896%_
           _%phi118898%_
           _%ctx118900%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx118902%_ _%rebind?118903%_)
        (let* ((_%phi118905%_ (gx#current-expander-phi))
               (_%ctx118907%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118902%_
           _%rebind?118903%_
           _%phi118905%_
           _%ctx118907%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx118909%_ _%rebind?118910%_ _%phi118911%_)
        (let ((_%ctx118913%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118909%_
           _%rebind?118910%_
           _%phi118911%_
           _%ctx118913%_))))
    (define gx#core-bind-values!
      (lambda _g121622_
        (let ((_g121621_ (##length _g121622_)))
          (cond ((##fx= _g121621_ 1)
                 (apply (lambda (_%stx118894%_)
                          (gx#core-bind-values!__0 _%stx118894%_))
                        _g121622_))
                ((##fx= _g121621_ 2)
                 (apply (lambda (_%stx118902%_ _%rebind?118903%_)
                          (gx#core-bind-values!__1
                           _%stx118902%_
                           _%rebind?118903%_))
                        _g121622_))
                ((##fx= _g121621_ 3)
                 (apply (lambda (_%stx118909%_ _%rebind?118910%_ _%phi118911%_)
                          (gx#core-bind-values!__2
                           _%stx118909%_
                           _%rebind?118910%_
                           _%phi118911%_))
                        _g121622_))
                ((##fx= _g121621_ 4)
                 (apply (lambda (_%stx118915%_
                                 _%rebind?118916%_
                                 _%phi118917%_
                                 _%ctx118918%_)
                          (gx#core-bind-values!__%
                           _%stx118915%_
                           _%rebind?118916%_
                           _%phi118917%_
                           _%ctx118918%_))
                        _g121622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g121622_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx118879%_)
        (gx#stx-map1
         (lambda (_%x118881%_)
           (if (gx#identifier? _%x118881%_)
               (gx#core-quote-syntax__0 _%x118881%_)
               '#f))
         _%stx118879%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx118872%_)
        (if (gx#identifier? _%stx118872%_)
            (let* ((_%bind118874%_ (gx#resolve-identifier__0 _%stx118872%_))
                   (_%$e118876%_ (not _%bind118874%_)))
              (if _%$e118876%_
                  _%$e118876%_
                  (##structure-instance-of?
                   _%bind118874%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id118861%_ _%form118862%_)
        (let ((_%bind118864%_ (gx#resolve-identifier__0 _%id118861%_)))
          (if (##structure-instance-of? _%bind118864%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id118861%_))
              (if (not _%bind118864%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id118861%_)))
                        (gx#core-quote-syntax__0 _%id118861%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form118862%_
                         _%id118861%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form118862%_
                     _%id118861%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id118816%_ _%rebind?118817%_ _%phi118818%_ _%ctx118819%_)
        (let* ((_%key118821%_ (gx#core-identifier-key _%id118816%_))
               (_%eid118823%_
                (gx#make-binding-id__%
                 _%key118821%_
                 '#f
                 _%phi118818%_
                 _%ctx118819%_))
               (_%bind118829%_
                (if (##structure-instance-of?
                     _%ctx118819%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid118823%_
                       _%key118821%_
                       _%phi118818%_
                       _%ctx118819%_))
                    (if (##structure-instance-of?
                         _%ctx118819%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid118823%_
                           _%key118821%_
                           _%phi118818%_))
                        (if (##structure-instance-of?
                             _%ctx118819%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid118823%_
                               _%key118821%_
                               _%phi118818%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid118823%_
                               _%key118821%_
                               _%phi118818%_)))))))
          (gx#bind-identifier!__%
           _%id118816%_
           _%bind118829%_
           _%rebind?118817%_
           _%phi118818%_
           _%ctx118819%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id118835%_)
        (let* ((_%rebind?118837%_ '#f)
               (_%phi118839%_ (gx#current-expander-phi))
               (_%ctx118841%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118835%_
           _%rebind?118837%_
           _%phi118839%_
           _%ctx118841%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id118843%_ _%rebind?118844%_)
        (let* ((_%phi118846%_ (gx#current-expander-phi))
               (_%ctx118848%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118843%_
           _%rebind?118844%_
           _%phi118846%_
           _%ctx118848%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id118850%_ _%rebind?118851%_ _%phi118852%_)
        (let ((_%ctx118854%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118850%_
           _%rebind?118851%_
           _%phi118852%_
           _%ctx118854%_))))
    (define gx#core-bind-runtime!
      (lambda _g121624_
        (let ((_g121623_ (##length _g121624_)))
          (cond ((##fx= _g121623_ 1)
                 (apply (lambda (_%id118835%_)
                          (gx#core-bind-runtime!__0 _%id118835%_))
                        _g121624_))
                ((##fx= _g121623_ 2)
                 (apply (lambda (_%id118843%_ _%rebind?118844%_)
                          (gx#core-bind-runtime!__1
                           _%id118843%_
                           _%rebind?118844%_))
                        _g121624_))
                ((##fx= _g121623_ 3)
                 (apply (lambda (_%id118850%_ _%rebind?118851%_ _%phi118852%_)
                          (gx#core-bind-runtime!__2
                           _%id118850%_
                           _%rebind?118851%_
                           _%phi118852%_))
                        _g121624_))
                ((##fx= _g121623_ 4)
                 (apply (lambda (_%id118856%_
                                 _%rebind?118857%_
                                 _%phi118858%_
                                 _%ctx118859%_)
                          (gx#core-bind-runtime!__%
                           _%id118856%_
                           _%rebind?118857%_
                           _%phi118858%_
                           _%ctx118859%_))
                        _g121624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g121624_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id118768%_
               _%eid118769%_
               _%rebind?118770%_
               _%phi118771%_
               _%ctx118772%_)
        (let* ((_%key118774%_ (gx#core-identifier-key _%id118768%_))
               (_%bind118779%_
                (if (##structure-instance-of?
                     _%ctx118772%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid118769%_
                       _%key118774%_
                       _%phi118771%_
                       _%ctx118772%_))
                    (if (##structure-instance-of?
                         _%ctx118772%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid118769%_
                           _%key118774%_
                           _%phi118771%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid118769%_
                           _%key118774%_
                           _%phi118771%_))))))
          (gx#bind-identifier!__%
           _%id118768%_
           _%bind118779%_
           _%rebind?118770%_
           _%phi118771%_
           _%ctx118772%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id118785%_ _%eid118786%_)
        (let* ((_%rebind?118788%_ '#f)
               (_%phi118790%_ (gx#current-expander-phi))
               (_%ctx118792%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118785%_
           _%eid118786%_
           _%rebind?118788%_
           _%phi118790%_
           _%ctx118792%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id118794%_ _%eid118795%_ _%rebind?118796%_)
        (let* ((_%phi118798%_ (gx#current-expander-phi))
               (_%ctx118800%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118794%_
           _%eid118795%_
           _%rebind?118796%_
           _%phi118798%_
           _%ctx118800%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id118802%_ _%eid118803%_ _%rebind?118804%_ _%phi118805%_)
        (let ((_%ctx118807%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118802%_
           _%eid118803%_
           _%rebind?118804%_
           _%phi118805%_
           _%ctx118807%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g121626_
        (let ((_g121625_ (##length _g121626_)))
          (cond ((##fx= _g121625_ 2)
                 (apply (lambda (_%id118785%_ _%eid118786%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id118785%_
                           _%eid118786%_))
                        _g121626_))
                ((##fx= _g121625_ 3)
                 (apply (lambda (_%id118794%_ _%eid118795%_ _%rebind?118796%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id118794%_
                           _%eid118795%_
                           _%rebind?118796%_))
                        _g121626_))
                ((##fx= _g121625_ 4)
                 (apply (lambda (_%id118802%_
                                 _%eid118803%_
                                 _%rebind?118804%_
                                 _%phi118805%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id118802%_
                           _%eid118803%_
                           _%rebind?118804%_
                           _%phi118805%_))
                        _g121626_))
                ((##fx= _g121625_ 5)
                 (apply (lambda (_%id118809%_
                                 _%eid118810%_
                                 _%rebind?118811%_
                                 _%phi118812%_
                                 _%ctx118813%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id118809%_
                           _%eid118810%_
                           _%rebind?118811%_
                           _%phi118812%_
                           _%ctx118813%_))
                        _g121626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g121626_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id118728%_
               _%eid118729%_
               _%rebind?118730%_
               _%phi118731%_
               _%ctx118732%_)
        (gx#bind-identifier!__%
         _%id118728%_
         (##structure
          gx#extern-binding::t
          _%eid118729%_
          (gx#core-identifier-key _%id118728%_)
          _%phi118731%_)
         _%rebind?118730%_
         _%phi118731%_
         _%ctx118732%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id118737%_ _%eid118738%_)
        (let* ((_%rebind?118740%_ '#f)
               (_%phi118742%_ (gx#current-expander-phi))
               (_%ctx118744%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118737%_
           _%eid118738%_
           _%rebind?118740%_
           _%phi118742%_
           _%ctx118744%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id118746%_ _%eid118747%_ _%rebind?118748%_)
        (let* ((_%phi118750%_ (gx#current-expander-phi))
               (_%ctx118752%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118746%_
           _%eid118747%_
           _%rebind?118748%_
           _%phi118750%_
           _%ctx118752%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id118754%_ _%eid118755%_ _%rebind?118756%_ _%phi118757%_)
        (let ((_%ctx118759%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118754%_
           _%eid118755%_
           _%rebind?118756%_
           _%phi118757%_
           _%ctx118759%_))))
    (define gx#core-bind-extern!
      (lambda _g121628_
        (let ((_g121627_ (##length _g121628_)))
          (cond ((##fx= _g121627_ 2)
                 (apply (lambda (_%id118737%_ _%eid118738%_)
                          (gx#core-bind-extern!__0 _%id118737%_ _%eid118738%_))
                        _g121628_))
                ((##fx= _g121627_ 3)
                 (apply (lambda (_%id118746%_ _%eid118747%_ _%rebind?118748%_)
                          (gx#core-bind-extern!__1
                           _%id118746%_
                           _%eid118747%_
                           _%rebind?118748%_))
                        _g121628_))
                ((##fx= _g121627_ 4)
                 (apply (lambda (_%id118754%_
                                 _%eid118755%_
                                 _%rebind?118756%_
                                 _%phi118757%_)
                          (gx#core-bind-extern!__2
                           _%id118754%_
                           _%eid118755%_
                           _%rebind?118756%_
                           _%phi118757%_))
                        _g121628_))
                ((##fx= _g121627_ 5)
                 (apply (lambda (_%id118761%_
                                 _%eid118762%_
                                 _%rebind?118763%_
                                 _%phi118764%_
                                 _%ctx118765%_)
                          (gx#core-bind-extern!__%
                           _%id118761%_
                           _%eid118762%_
                           _%rebind?118763%_
                           _%phi118764%_
                           _%ctx118765%_))
                        _g121628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g121628_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id118682%_
               _%e118683%_
               _%rebind?118684%_
               _%phi118685%_
               _%ctx118686%_)
        (gx#bind-identifier!__%
         _%id118682%_
         (let ((_%key118691%_ (gx#core-identifier-key _%id118682%_))
               (_%e118692%_
                (if (or (##structure-instance-of? _%e118683%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e118683%_
                         'gx#expander-context::t))
                    _%e118683%_
                    (##structure
                     gx#user-expander::t
                     _%e118683%_
                     _%ctx118686%_
                     _%phi118685%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key118691%_
             '#t
             _%phi118685%_
             _%ctx118686%_)
            _%key118691%_
            _%phi118685%_
            _%e118692%_))
         _%rebind?118684%_
         _%phi118685%_
         _%ctx118686%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id118697%_ _%e118698%_)
        (let* ((_%rebind?118700%_ '#f)
               (_%phi118702%_ (gx#current-expander-phi))
               (_%ctx118704%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118697%_
           _%e118698%_
           _%rebind?118700%_
           _%phi118702%_
           _%ctx118704%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id118706%_ _%e118707%_ _%rebind?118708%_)
        (let* ((_%phi118710%_ (gx#current-expander-phi))
               (_%ctx118712%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118706%_
           _%e118707%_
           _%rebind?118708%_
           _%phi118710%_
           _%ctx118712%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id118714%_ _%e118715%_ _%rebind?118716%_ _%phi118717%_)
        (let ((_%ctx118719%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118714%_
           _%e118715%_
           _%rebind?118716%_
           _%phi118717%_
           _%ctx118719%_))))
    (define gx#core-bind-syntax!
      (lambda _g121630_
        (let ((_g121629_ (##length _g121630_)))
          (cond ((##fx= _g121629_ 2)
                 (apply (lambda (_%id118697%_ _%e118698%_)
                          (gx#core-bind-syntax!__0 _%id118697%_ _%e118698%_))
                        _g121630_))
                ((##fx= _g121629_ 3)
                 (apply (lambda (_%id118706%_ _%e118707%_ _%rebind?118708%_)
                          (gx#core-bind-syntax!__1
                           _%id118706%_
                           _%e118707%_
                           _%rebind?118708%_))
                        _g121630_))
                ((##fx= _g121629_ 4)
                 (apply (lambda (_%id118714%_
                                 _%e118715%_
                                 _%rebind?118716%_
                                 _%phi118717%_)
                          (gx#core-bind-syntax!__2
                           _%id118714%_
                           _%e118715%_
                           _%rebind?118716%_
                           _%phi118717%_))
                        _g121630_))
                ((##fx= _g121629_ 5)
                 (apply (lambda (_%id118721%_
                                 _%e118722%_
                                 _%rebind?118723%_
                                 _%phi118724%_
                                 _%ctx118725%_)
                          (gx#core-bind-syntax!__%
                           _%id118721%_
                           _%e118722%_
                           _%rebind?118723%_
                           _%phi118724%_
                           _%ctx118725%_))
                        _g121630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g121630_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id118665%_ _%e118666%_ _%rebind?118667%_)
        (gx#core-bind-syntax!__%
         _%id118665%_
         _%e118666%_
         _%rebind?118667%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id118672%_ _%e118673%_)
        (let ((_%rebind?118675%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id118672%_
           _%e118673%_
           _%rebind?118675%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g121632_
        (let ((_g121631_ (##length _g121632_)))
          (cond ((##fx= _g121631_ 2)
                 (apply (lambda (_%id118672%_ _%e118673%_)
                          (gx#core-bind-root-syntax!__0
                           _%id118672%_
                           _%e118673%_))
                        _g121632_))
                ((##fx= _g121631_ 3)
                 (apply (lambda (_%id118677%_ _%e118678%_ _%rebind?118679%_)
                          (gx#core-bind-root-syntax!__%
                           _%id118677%_
                           _%e118678%_
                           _%rebind?118679%_))
                        _g121632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g121632_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id118623%_
               _%alias-id118624%_
               _%rebind?118625%_
               _%phi118626%_
               _%ctx118627%_)
        (gx#bind-identifier!__%
         _%id118623%_
         (let ((_%key118629%_ (gx#core-identifier-key _%id118623%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key118629%_
             '#t
             _%phi118626%_
             _%ctx118627%_)
            _%key118629%_
            _%phi118626%_
            _%alias-id118624%_))
         _%rebind?118625%_
         _%phi118626%_
         _%ctx118627%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id118634%_ _%alias-id118635%_)
        (let* ((_%rebind?118637%_ '#f)
               (_%phi118639%_ (gx#current-expander-phi))
               (_%ctx118641%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118634%_
           _%alias-id118635%_
           _%rebind?118637%_
           _%phi118639%_
           _%ctx118641%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id118643%_ _%alias-id118644%_ _%rebind?118645%_)
        (let* ((_%phi118647%_ (gx#current-expander-phi))
               (_%ctx118649%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118643%_
           _%alias-id118644%_
           _%rebind?118645%_
           _%phi118647%_
           _%ctx118649%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id118651%_ _%alias-id118652%_ _%rebind?118653%_ _%phi118654%_)
        (let ((_%ctx118656%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118651%_
           _%alias-id118652%_
           _%rebind?118653%_
           _%phi118654%_
           _%ctx118656%_))))
    (define gx#core-bind-alias!
      (lambda _g121634_
        (let ((_g121633_ (##length _g121634_)))
          (cond ((##fx= _g121633_ 2)
                 (apply (lambda (_%id118634%_ _%alias-id118635%_)
                          (gx#core-bind-alias!__0
                           _%id118634%_
                           _%alias-id118635%_))
                        _g121634_))
                ((##fx= _g121633_ 3)
                 (apply (lambda (_%id118643%_
                                 _%alias-id118644%_
                                 _%rebind?118645%_)
                          (gx#core-bind-alias!__1
                           _%id118643%_
                           _%alias-id118644%_
                           _%rebind?118645%_))
                        _g121634_))
                ((##fx= _g121633_ 4)
                 (apply (lambda (_%id118651%_
                                 _%alias-id118652%_
                                 _%rebind?118653%_
                                 _%phi118654%_)
                          (gx#core-bind-alias!__2
                           _%id118651%_
                           _%alias-id118652%_
                           _%rebind?118653%_
                           _%phi118654%_))
                        _g121634_))
                ((##fx= _g121633_ 5)
                 (apply (lambda (_%id118658%_
                                 _%alias-id118659%_
                                 _%rebind?118660%_
                                 _%phi118661%_
                                 _%ctx118662%_)
                          (gx#core-bind-alias!__%
                           _%id118658%_
                           _%alias-id118659%_
                           _%rebind?118660%_
                           _%phi118661%_
                           _%ctx118662%_))
                        _g121634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g121634_))))))
    (define gx#make-binding-id__%
      (lambda (_%key118573%_ _%syntax?118574%_ _%phi118575%_ _%ctx118576%_)
        (if (uninterned-symbol? _%key118573%_)
            (let () (##gensym 'L))
            (if (pair? _%key118573%_)
                (let () (gensym (car _%key118573%_)))
                (if (##structure-instance-of? _%ctx118576%_ 'gx#top-context::t)
                    (let ()
                      (let ((_%ns118581%_
                             (gx#core-context-namespace__% _%ctx118576%_)))
                        (if (and (fxzero? _%phi118575%_)
                                 (not _%syntax?118574%_))
                            (let ()
                              (if _%ns118581%_
                                  (make-symbol__1
                                   _%ns118581%_
                                   '"#"
                                   _%key118573%_)
                                  _%key118573%_))
                            (if _%syntax?118574%_
                                (let ()
                                  (make-symbol__1
                                   (let ((_%$e118585%_ _%ns118581%_))
                                     (if _%$e118585%_ _%$e118585%_ '""))
                                   '"[:"
                                   (number->string _%phi118575%_)
                                   '":]#"
                                   _%key118573%_))
                                (let ()
                                  (make-symbol__1
                                   (let ((_%$e118589%_ _%ns118581%_))
                                     (if _%$e118589%_ _%$e118589%_ '""))
                                   '"["
                                   (number->string _%phi118575%_)
                                   '"]#"
                                   _%key118573%_))))))
                    (let () (gensym _%key118573%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key118596%_)
        (let* ((_%syntax?118598%_ '#f)
               (_%phi118600%_ (gx#current-expander-phi))
               (_%ctx118602%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118596%_
           _%syntax?118598%_
           _%phi118600%_
           _%ctx118602%_))))
    (define gx#make-binding-id__1
      (lambda (_%key118604%_ _%syntax?118605%_)
        (let* ((_%phi118607%_ (gx#current-expander-phi))
               (_%ctx118609%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118604%_
           _%syntax?118605%_
           _%phi118607%_
           _%ctx118609%_))))
    (define gx#make-binding-id__2
      (lambda (_%key118611%_ _%syntax?118612%_ _%phi118613%_)
        (let ((_%ctx118615%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118611%_
           _%syntax?118612%_
           _%phi118613%_
           _%ctx118615%_))))
    (define gx#make-binding-id
      (lambda _g121636_
        (let ((_g121635_ (##length _g121636_)))
          (cond ((##fx= _g121635_ 1)
                 (apply (lambda (_%key118596%_)
                          (gx#make-binding-id__0 _%key118596%_))
                        _g121636_))
                ((##fx= _g121635_ 2)
                 (apply (lambda (_%key118604%_ _%syntax?118605%_)
                          (gx#make-binding-id__1
                           _%key118604%_
                           _%syntax?118605%_))
                        _g121636_))
                ((##fx= _g121635_ 3)
                 (apply (lambda (_%key118611%_ _%syntax?118612%_ _%phi118613%_)
                          (gx#make-binding-id__2
                           _%key118611%_
                           _%syntax?118612%_
                           _%phi118613%_))
                        _g121636_))
                ((##fx= _g121635_ 4)
                 (apply (lambda (_%key118617%_
                                 _%syntax?118618%_
                                 _%phi118619%_
                                 _%ctx118620%_)
                          (gx#make-binding-id__%
                           _%key118617%_
                           _%syntax?118618%_
                           _%phi118619%_
                           _%ctx118620%_))
                        _g121636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g121636_))))))))
