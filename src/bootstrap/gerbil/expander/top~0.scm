(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712147677)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx121521%_)
        (letrec ((_%expand-special121523%_
                  (lambda (_%hd121525%_ _%K121526%_ _%rest121527%_ _%r121528%_)
                    (_%K121526%_
                     _%rest121527%_
                     (cons (gx#core-expand-top _%hd121525%_) _%r121528%_)))))
          (gx#core-expand-block__0 _%stx121521%_ _%expand-special121523%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121274%_)
        (letrec ((_%expand-special121276%_
                  (lambda (_%hd121396%_ _%K121397%_ _%rest121398%_ _%r121399%_)
                    (let* ((_%K121403%_
                            (lambda (_%e121401%_)
                              (_%K121397%_
                               _%rest121398%_
                               (cons _%e121401%_ _%r121399%_))))
                           (_%e121404121433%_ _%hd121396%_)
                           (_%E121428121437%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121404121433%_)))
                           (_%E121424121449%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121404121433%_)
                                  (let ((_%e121429121441%_
                                         (gx#syntax-e _%e121404121433%_)))
                                    (let ((_%hd121430121444%_
                                           (##car _%e121429121441%_))
                                          (_%tl121431121446%_
                                           (##cdr _%e121429121441%_)))
                                      (if (and (gx#identifier?
                                                _%hd121430121444%_)
                                               (gx#core-identifier=?
                                                _%hd121430121444%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121403%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121396%_))
                                              (_%E121428121437%_))
                                          (_%E121428121437%_))))
                                  (_%E121428121437%_))))
                           (_%E121420121461%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121404121433%_)
                                  (let ((_%e121425121453%_
                                         (gx#syntax-e _%e121404121433%_)))
                                    (let ((_%hd121426121456%_
                                           (##car _%e121425121453%_))
                                          (_%tl121427121458%_
                                           (##cdr _%e121425121453%_)))
                                      (if (and (gx#identifier?
                                                _%hd121426121456%_)
                                               (gx#core-identifier=?
                                                _%hd121426121456%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121403%_
                                               (gx#core-expand-define-alias%
                                                _%hd121396%_))
                                              (_%E121424121449%_))
                                          (_%E121424121449%_))))
                                  (_%E121424121449%_))))
                           (_%E121410121473%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121404121433%_)
                                  (let ((_%e121421121465%_
                                         (gx#syntax-e _%e121404121433%_)))
                                    (let ((_%hd121422121468%_
                                           (##car _%e121421121465%_))
                                          (_%tl121423121470%_
                                           (##cdr _%e121421121465%_)))
                                      (if (and (gx#identifier?
                                                _%hd121422121468%_)
                                               (gx#core-identifier=?
                                                _%hd121422121468%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121403%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121396%_))
                                              (_%E121420121461%_))
                                          (_%E121420121461%_))))
                                  (_%E121420121461%_))))
                           (_%E121406121505%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121404121433%_)
                                  (let ((_%e121411121477%_
                                         (gx#syntax-e _%e121404121433%_)))
                                    (let ((_%hd121412121480%_
                                           (##car _%e121411121477%_))
                                          (_%tl121413121482%_
                                           (##cdr _%e121411121477%_)))
                                      (if (and (gx#identifier?
                                                _%hd121412121480%_)
                                               (gx#core-identifier=?
                                                _%hd121412121480%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121413121482%_)
                                              (let ((_%e121414121485%_
                                                     (gx#syntax-e
                                                      _%tl121413121482%_)))
                                                (let ((_%hd121415121488%_
                                                       (##car _%e121414121485%_))
                                                      (_%tl121416121490%_
                                                       (##cdr _%e121414121485%_)))
                                                  (let ((_%hd-bind121493%_
                                                         _%hd121415121488%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121416121490%_)
                                                        (let ((_%e121417121495%_
                                                               (gx#syntax-e
                                                                _%tl121416121490%_)))
                                                          (let ((_%hd121418121498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121417121495%_))
                        (_%tl121419121500%_ (##cdr _%e121417121495%_)))
                    (let ((_%expr121503%_ _%hd121418121498%_))
                      (if (gx#stx-null? _%tl121419121500%_)
                          (if (gx#core-bind-values? _%hd-bind121493%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121493%_)
                                (_%K121403%_ _%hd121396%_))
                              (_%E121410121473%_))
                          (_%E121410121473%_)))))
                (_%E121410121473%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121410121473%_))
                                          (_%E121410121473%_))))
                                  (_%E121410121473%_))))
                           (_%E121405121517%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121404121433%_)
                                  (let ((_%e121407121509%_
                                         (gx#syntax-e _%e121404121433%_)))
                                    (let ((_%hd121408121512%_
                                           (##car _%e121407121509%_))
                                          (_%tl121409121514%_
                                           (##cdr _%e121407121509%_)))
                                      (if (and (gx#identifier?
                                                _%hd121408121512%_)
                                               (gx#core-identifier=?
                                                _%hd121408121512%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121403%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121396%_))
                                              (_%E121406121505%_))
                                          (_%E121406121505%_))))
                                  (_%E121406121505%_)))))
                      (_%E121405121517%_))))
                 (_%eval-body121277%_
                  (lambda (_%rbody121285%_)
                    (let _%lp121287%_ ((_%rest121289%_ _%rbody121285%_)
                                       (_%body121290%_ '())
                                       (_%ebody121291%_ '()))
                      (let* ((_%rest121292121300%_ _%rest121289%_)
                             (_%else121294121308%_
                              (lambda ()
                                (values _%body121290%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121291%_)
                                          (gx#stx-source _%stx121274%_))))))
                             (_%K121296121384%_
                              (lambda (_%rest121311%_ _%hd121312%_)
                                (let* ((_%e121313121330%_ _%hd121312%_)
                                       (_%E121325121334%_
                                        (lambda ()
                                          (_%lp121287%_
                                           _%rest121311%_
                                           (cons _%hd121312%_ _%body121290%_)
                                           (cons _%hd121312%_
                                                 _%ebody121291%_))))
                                       (_%E121315121346%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121313121330%_)
                                              (let ((_%e121326121338%_
                                                     (gx#syntax-e
                                                      _%e121313121330%_)))
                                                (let ((_%hd121327121341%_
                                                       (##car _%e121326121338%_))
                                                      (_%tl121328121343%_
                                                       (##cdr _%e121326121338%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121327121341%_)
                                                           (gx#core-identifier=?
                                                            _%hd121327121341%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121287%_
                                                           _%rest121311%_
                                                           (cons _%hd121312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121290%_)
                   _%ebody121291%_)
                  (_%E121325121334%_))
              (_%E121325121334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121325121334%_))))
                                       (_%E121314121380%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121313121330%_)
                                              (let ((_%e121316121350%_
                                                     (gx#syntax-e
                                                      _%e121313121330%_)))
                                                (let ((_%hd121317121353%_
                                                       (##car _%e121316121350%_))
                                                      (_%tl121318121355%_
                                                       (##cdr _%e121316121350%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121317121353%_)
                                                           (gx#core-identifier=?
                                                            _%hd121317121353%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121318121355%_)
                                                          (let ((_%e121319121358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121318121355%_)))
                    (let ((_%hd121320121361%_ (##car _%e121319121358%_))
                          (_%tl121321121363%_ (##cdr _%e121319121358%_)))
                      (let ((_%hd-bind121366%_ _%hd121320121361%_))
                        (if (gx#stx-pair? _%tl121321121363%_)
                            (let ((_%e121322121368%_
                                   (gx#syntax-e _%tl121321121363%_)))
                              (let ((_%hd121323121371%_
                                     (##car _%e121322121368%_))
                                    (_%tl121324121373%_
                                     (##cdr _%e121322121368%_)))
                                (let ((_%expr121376%_ _%hd121323121371%_))
                                  (if (gx#stx-null? _%tl121324121373%_)
                                      (if '#t
                                          (let ((_%ehd121378%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121366%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121376%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121312%_))))
                                            (_%lp121287%_
                                             _%rest121311%_
                                             (cons _%ehd121378%_
                                                   _%body121290%_)
                                             (cons _%ehd121378%_
                                                   _%ebody121291%_)))
                                          (_%E121315121346%_))
                                      (_%E121315121346%_)))))
                            (_%E121315121346%_)))))
                  (_%E121315121346%_))
              (_%E121315121346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121315121346%_)))))
                                  (_%E121314121380%_)))))
                        (if (##pair? _%rest121292121300%_)
                            (let ((_%hd121297121387%_
                                   (##car _%rest121292121300%_))
                                  (_%tl121298121389%_
                                   (##cdr _%rest121292121300%_)))
                              (let* ((_%hd121392%_ _%hd121297121387%_)
                                     (_%rest121394%_ _%tl121298121389%_))
                                (_%K121296121384%_
                                 _%rest121394%_
                                 _%hd121392%_)))
                            (_%else121294121308%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121280%_
                     (gx#core-expand-block__1
                      _%stx121274%_
                      _%expand-special121276%_
                      '#f))
                    (_g121544_ (_%eval-body121277%_ _%rbody121280%_)))
               (begin
                 (let ((_g121545_
                        (if (##values? _g121544_)
                            (##vector-length _g121544_)
                            1)))
                   (if (not (##fx= _g121545_ 2))
                       (error "Context expects 2 values" _g121545_)))
                 (let ((_%expanded-body121282%_ (##vector-ref _g121544_ 0))
                       (_%value121283%_ (##vector-ref _g121544_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121282%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121283%_ '())))
                    (gx#stx-source _%stx121274%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121244%_)
        (let* ((_%e121245121252%_ _%stx121244%_)
               (_%E121247121256%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121245121252%_)))
               (_%E121246121270%_
                (lambda ()
                  (if (gx#stx-pair? _%e121245121252%_)
                      (let ((_%e121248121260%_
                             (gx#syntax-e _%e121245121252%_)))
                        (let ((_%hd121249121263%_ (##car _%e121248121260%_))
                              (_%tl121250121265%_ (##cdr _%e121248121260%_)))
                          (let ((_%body121268%_ _%tl121250121265%_))
                            (if (gx#stx-list? _%body121268%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121268%_)
                                 (gx#stx-source _%stx121244%_))
                                (_%E121247121256%_)))))
                      (_%E121247121256%_)))))
          (_%E121246121270%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121242%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121242%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121188%_)
        (let* ((_%e121189121202%_ _%stx121188%_)
               (_%E121191121206%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121189121202%_)))
               (_%E121190121238%_
                (lambda ()
                  (if (gx#stx-pair? _%e121189121202%_)
                      (let ((_%e121192121210%_
                             (gx#syntax-e _%e121189121202%_)))
                        (let ((_%hd121193121213%_ (##car _%e121192121210%_))
                              (_%tl121194121215%_ (##cdr _%e121192121210%_)))
                          (if (gx#stx-pair? _%tl121194121215%_)
                              (let ((_%e121195121218%_
                                     (gx#syntax-e _%tl121194121215%_)))
                                (let ((_%hd121196121221%_
                                       (##car _%e121195121218%_))
                                      (_%tl121197121223%_
                                       (##cdr _%e121195121218%_)))
                                  (let ((_%ann121226%_ _%hd121196121221%_))
                                    (if (gx#stx-pair? _%tl121197121223%_)
                                        (let ((_%e121198121228%_
                                               (gx#syntax-e
                                                _%tl121197121223%_)))
                                          (let ((_%hd121199121231%_
                                                 (##car _%e121198121228%_))
                                                (_%tl121200121233%_
                                                 (##cdr _%e121198121228%_)))
                                            (let ((_%expr121236%_
                                                   _%hd121199121231%_))
                                              (if (gx#stx-null?
                                                   _%tl121200121233%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121236%_)
                                 '())))
               (gx#stx-source _%stx121188%_))
              (_%E121191121206%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121191121206%_)))))
                                        (_%E121191121206%_)))))
                              (_%E121191121206%_))))
                      (_%E121191121206%_)))))
          (_%E121190121238%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx120912%_ _%body120913%_)
        (letrec ((_%expand-special120915%_
                  (lambda (_%hd121183%_ _%K121184%_ _%rest121185%_ _%r121186%_)
                    (_%K121184%_
                     '()
                     (cons (_%expand-internal120916%_
                            _%hd121183%_
                            _%rest121185%_)
                           _%r121186%_))))
                 (_%expand-internal120916%_
                  (lambda (_%hd121179%_ _%rest121180%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal120918%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121179%_ _%rest121180%_))
                          (gx#stx-source _%stx120912%_))
                         _%expand-internal-special120917%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj121538
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj121538)
                       __obj121538))))
                 (_%expand-internal-special120917%_
                  (lambda (_%hd121074%_ _%K121075%_ _%rest121076%_ _%r121077%_)
                    (let* ((_%e121078121103%_ _%hd121074%_)
                           (_%E121098121107%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121078121103%_)))
                           (_%E121094121119%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121078121103%_)
                                  (let ((_%e121099121111%_
                                         (gx#syntax-e _%e121078121103%_)))
                                    (let ((_%hd121100121114%_
                                           (##car _%e121099121111%_))
                                          (_%tl121101121116%_
                                           (##cdr _%e121099121111%_)))
                                      (if (and (gx#identifier?
                                                _%hd121100121114%_)
                                               (gx#core-identifier=?
                                                _%hd121100121114%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121075%_
                                               _%rest121076%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121074%_)
                                                     _%r121077%_))
                                              (_%E121098121107%_))
                                          (_%E121098121107%_))))
                                  (_%E121098121107%_))))
                           (_%E121090121131%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121078121103%_)
                                  (let ((_%e121095121123%_
                                         (gx#syntax-e _%e121078121103%_)))
                                    (let ((_%hd121096121126%_
                                           (##car _%e121095121123%_))
                                          (_%tl121097121128%_
                                           (##cdr _%e121095121123%_)))
                                      (if (and (gx#identifier?
                                                _%hd121096121126%_)
                                               (gx#core-identifier=?
                                                _%hd121096121126%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121074%_)
                                                (_%K121075%_
                                                 _%rest121076%_
                                                 _%r121077%_))
                                              (_%E121094121119%_))
                                          (_%E121094121119%_))))
                                  (_%E121094121119%_))))
                           (_%E121080121143%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121078121103%_)
                                  (let ((_%e121091121135%_
                                         (gx#syntax-e _%e121078121103%_)))
                                    (let ((_%hd121092121138%_
                                           (##car _%e121091121135%_))
                                          (_%tl121093121140%_
                                           (##cdr _%e121091121135%_)))
                                      (if (and (gx#identifier?
                                                _%hd121092121138%_)
                                               (gx#core-identifier=?
                                                _%hd121092121138%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121074%_)
                                                (_%K121075%_
                                                 _%rest121076%_
                                                 _%r121077%_))
                                              (_%E121090121131%_))
                                          (_%E121090121131%_))))
                                  (_%E121090121131%_))))
                           (_%E121079121175%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121078121103%_)
                                  (let ((_%e121081121147%_
                                         (gx#syntax-e _%e121078121103%_)))
                                    (let ((_%hd121082121150%_
                                           (##car _%e121081121147%_))
                                          (_%tl121083121152%_
                                           (##cdr _%e121081121147%_)))
                                      (if (and (gx#identifier?
                                                _%hd121082121150%_)
                                               (gx#core-identifier=?
                                                _%hd121082121150%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121083121152%_)
                                              (let ((_%e121084121155%_
                                                     (gx#syntax-e
                                                      _%tl121083121152%_)))
                                                (let ((_%hd121085121158%_
                                                       (##car _%e121084121155%_))
                                                      (_%tl121086121160%_
                                                       (##cdr _%e121084121155%_)))
                                                  (let ((_%hd-bind121163%_
                                                         _%hd121085121158%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121086121160%_)
                                                        (let ((_%e121087121165%_
                                                               (gx#syntax-e
                                                                _%tl121086121160%_)))
                                                          (let ((_%hd121088121168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121087121165%_))
                        (_%tl121089121170%_ (##cdr _%e121087121165%_)))
                    (let ((_%expr121173%_ _%hd121088121168%_))
                      (if (gx#stx-null? _%tl121089121170%_)
                          (if (gx#core-bind-values? _%hd-bind121163%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121163%_)
                                (_%K121075%_
                                 _%rest121076%_
                                 (cons _%hd121074%_ _%r121077%_)))
                              (_%E121080121143%_))
                          (_%E121080121143%_)))))
                (_%E121080121143%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121080121143%_))
                                          (_%E121080121143%_))))
                                  (_%E121080121143%_)))))
                      (_%E121079121175%_))))
                 (_%wrap-internal120918%_
                  (lambda (_%rbody120920%_)
                    (let _%lp120922%_ ((_%rest120924%_ _%rbody120920%_)
                                       (_%decls120925%_ '())
                                       (_%bind120926%_ '())
                                       (_%body120927%_ '()))
                      (let* ((_%e120928120935%_ _%rest120924%_)
                             (_%E120930120984%_
                              (lambda ()
                                (let* ((_%body120979%_
                                        (let* ((_%body120938120948%_
                                                _%body120927%_)
                                               (_%else120941120956%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body120927%_)
                                                   (gx#stx-source
                                                    _%stx120912%_)))))
                                          (let ((_%K120946120976%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx120912%_)))
                                                (_%K120943120962%_
                                                 (lambda (_%expr120960%_)
                                                   _%expr120960%_)))
                                            (let ((_%try-match120940120972%_
                                                   (lambda ()
                                                     (if (##pair? _%body120938120948%_)
                                                         (let ((_%tl120945120967%_
                                                                (##cdr _%body120938120948%_))
                                                               (_%hd120944120965%_
                                                                (##car _%body120938120948%_)))
                                                           (if (##null? _%tl120945120967%_)
                                                               (let ((_%expr120970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120944120965%_))
                         (_%K120943120962%_ _%expr120970%_))
                       (_%else120941120956%_)))
                 (_%else120941120956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body120938120948%_)
                                                  (_%K120946120976%_)
                                                  (_%try-match120940120972%_))))))
                                       (_%body120981%_
                                        (if (null? _%bind120926%_)
                                            _%body120979%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind120926%_
                                                         (cons _%body120979%_
                                                               '())))
                                             (gx#stx-source _%stx120912%_)))))
                                  (if (null? _%decls120925%_)
                                      _%body120981%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls120925%_
                                                   (cons _%body120981%_ '())))
                                       (gx#stx-source _%stx120912%_))))))
                             (_%E120929121070%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120928120935%_)
                                    (let ((_%e120931120988%_
                                           (gx#syntax-e _%e120928120935%_)))
                                      (let ((_%hd120932120991%_
                                             (##car _%e120931120988%_))
                                            (_%tl120933120993%_
                                             (##cdr _%e120931120988%_)))
                                        (let* ((_%hd120996%_
                                                _%hd120932120991%_)
                                               (_%rest120998%_
                                                _%tl120933120993%_))
                                          (if '#t
                                              (let* ((_%e120999121016%_
                                                      _%hd120996%_)
                                                     (_%E121011121020%_
                                                      (lambda ()
                                                        (if (null? _%bind120926%_)
                                                            (_%lp120922%_
                                                             _%rest120998%_
                                                             _%decls120925%_
                                                             _%bind120926%_
                                                             (cons _%hd120996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body120927%_))
                    (_%lp120922%_
                     _%rest120998%_
                     _%decls120925%_
                     (cons (cons '#f (cons _%hd120996%_ '())) _%bind120926%_)
                     _%body120927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121001121034%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120999121016%_)
                                                            (let ((_%e121012121024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120999121016%_)))
                      (let ((_%hd121013121027%_ (##car _%e121012121024%_))
                            (_%tl121014121029%_ (##cdr _%e121012121024%_)))
                        (if (and (gx#identifier? _%hd121013121027%_)
                                 (gx#core-identifier=?
                                  _%hd121013121027%_
                                  '%#declare))
                            (let ((_%xdecls121032%_ _%tl121014121029%_))
                              (if '#t
                                  (_%lp120922%_
                                   _%rest120998%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls120925%_
                                    _%xdecls121032%_)
                                   _%bind120926%_
                                   _%body120927%_)
                                  (_%E121011121020%_)))
                            (_%E121011121020%_))))
                    (_%E121011121020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121000121066%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120999121016%_)
                                                            (let ((_%e121002121038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120999121016%_)))
                      (let ((_%hd121003121041%_ (##car _%e121002121038%_))
                            (_%tl121004121043%_ (##cdr _%e121002121038%_)))
                        (if (and (gx#identifier? _%hd121003121041%_)
                                 (gx#core-identifier=?
                                  _%hd121003121041%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121004121043%_)
                                (let ((_%e121005121046%_
                                       (gx#syntax-e _%tl121004121043%_)))
                                  (let ((_%hd121006121049%_
                                         (##car _%e121005121046%_))
                                        (_%tl121007121051%_
                                         (##cdr _%e121005121046%_)))
                                    (let ((_%hd-bind121054%_
                                           _%hd121006121049%_))
                                      (if (gx#stx-pair? _%tl121007121051%_)
                                          (let ((_%e121008121056%_
                                                 (gx#syntax-e
                                                  _%tl121007121051%_)))
                                            (let ((_%hd121009121059%_
                                                   (##car _%e121008121056%_))
                                                  (_%tl121010121061%_
                                                   (##cdr _%e121008121056%_)))
                                              (let ((_%expr121064%_
                                                     _%hd121009121059%_))
                                                (if (gx#stx-null?
                                                     _%tl121010121061%_)
                                                    (if '#t
                                                        (_%lp120922%_
                                                         _%rest120998%_
                                                         _%decls120925%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121054%_)
                             (cons (gx#core-expand-expression _%expr121064%_)
                                   '()))
                       _%bind120926%_)
                 _%body120927%_)
                (_%E121001121034%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121001121034%_)))))
                                          (_%E121001121034%_)))))
                                (_%E121001121034%_))
                            (_%E121001121034%_))))
                    (_%E121001121034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121000121066%_))
                                              (_%E120930120984%_)))))
                                    (_%E120930120984%_)))))
                        (_%E120929121070%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body120913%_)
            (gx#stx-source _%stx120912%_))
           _%expand-special120915%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx120850%_)
        (let* ((_%e120851120858%_ _%stx120850%_)
               (_%E120853120862%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120851120858%_)))
               (_%E120852120908%_
                (lambda ()
                  (if (gx#stx-pair? _%e120851120858%_)
                      (let ((_%e120854120866%_
                             (gx#syntax-e _%e120851120858%_)))
                        (let ((_%hd120855120869%_ (##car _%e120854120866%_))
                              (_%tl120856120871%_ (##cdr _%e120854120866%_)))
                          (let ((_%body120874%_ _%tl120856120871%_))
                            (if (gx#stx-list? _%body120874%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl120876%_)
                                     (let* ((_%e120877120884%_ _%decl120876%_)
                                            (_%E120879120888%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e120877120884%_)))
                                            (_%E120878120904%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e120877120884%_)
                                                   (let ((_%e120880120892%_
                                                          (gx#syntax-e
                                                           _%e120877120884%_)))
                                                     (let ((_%hd120881120895%_
                                                            (##car _%e120880120892%_))
                                                           (_%tl120882120897%_
                                                            (##cdr _%e120880120892%_)))
                                                       (let* ((_%head120900%_
                                                               _%hd120881120895%_)
                                                              (_%args120902%_
                                                               _%tl120882120897%_))
                                                         (if (gx#stx-list?
                                                              _%args120902%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl120876%_)
                                                             (_%E120879120888%_)))))
                                                   (_%E120879120888%_)))))
                                       (_%E120878120904%_)))
                                   _%body120874%_))
                                 (gx#stx-source _%stx120850%_))
                                (_%E120853120862%_)))))
                      (_%E120853120862%_)))))
          (_%E120852120908%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx120754%_)
        (let* ((_%e120755120762%_ _%stx120754%_)
               (_%E120757120766%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120755120762%_)))
               (_%E120756120846%_
                (lambda ()
                  (if (gx#stx-pair? _%e120755120762%_)
                      (let ((_%e120758120770%_
                             (gx#syntax-e _%e120755120762%_)))
                        (let ((_%hd120759120773%_ (##car _%e120758120770%_))
                              (_%tl120760120775%_ (##cdr _%e120758120770%_)))
                          (let ((_%body120778%_ _%tl120760120775%_))
                            (if '#t
                                (let _%lp120780%_ ((_%rest120782%_
                                                    _%body120778%_)
                                                   (_%r120783%_ '()))
                                  (let* ((_%e120784120798%_ _%rest120782%_)
                                         (_%E120796120802%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx120754%_)))
                                         (_%E120786120806%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e120784120798%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r120783%_))
                                                     (gx#stx-source
                                                      _%stx120754%_))
                                                    (_%E120796120802%_))
                                                (_%E120796120802%_))))
                                         (_%E120785120842%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e120784120798%_)
                                                (let ((_%e120787120810%_
                                                       (gx#syntax-e
                                                        _%e120784120798%_)))
                                                  (let ((_%hd120788120813%_
                                                         (##car _%e120787120810%_))
                                                        (_%tl120789120815%_
                                                         (##cdr _%e120787120810%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd120788120813%_)
                                                        (let ((_%e120790120818%_
                                                               (gx#syntax-e
                                                                _%hd120788120813%_)))
                                                          (let ((_%hd120791120821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120790120818%_))
                        (_%tl120792120823%_ (##cdr _%e120790120818%_)))
                    (let ((_%id120826%_ _%hd120791120821%_))
                      (if (gx#stx-pair? _%tl120792120823%_)
                          (let ((_%e120793120828%_
                                 (gx#syntax-e _%tl120792120823%_)))
                            (let ((_%hd120794120831%_
                                   (##car _%e120793120828%_))
                                  (_%tl120795120833%_
                                   (##cdr _%e120793120828%_)))
                              (let ((_%eid120836%_ _%hd120794120831%_))
                                (if (gx#stx-null? _%tl120795120833%_)
                                    (let ((_%rest120838%_ _%tl120789120815%_))
                                      (if (and (gx#identifier? _%id120826%_)
                                               (gx#identifier? _%eid120836%_))
                                          (let ((_%eid120840%_
                                                 (gx#stx-e _%eid120836%_)))
                                            (gx#core-bind-extern!__0
                                             _%id120826%_
                                             _%eid120840%_)
                                            (_%lp120780%_
                                             _%rest120838%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id120826%_)
                                                         (cons _%eid120840%_
                                                               '()))
                                                   _%r120783%_)))
                                          (_%E120786120806%_)))
                                    (_%E120786120806%_)))))
                          (_%E120786120806%_)))))
                (_%E120786120806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120786120806%_)))))
                                    (_%E120785120842%_)))
                                (_%E120757120766%_)))))
                      (_%E120757120766%_)))))
          (_%E120756120846%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx120700%_)
        (let* ((_%e120701120714%_ _%stx120700%_)
               (_%E120703120718%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120701120714%_)))
               (_%E120702120750%_
                (lambda ()
                  (if (gx#stx-pair? _%e120701120714%_)
                      (let ((_%e120704120722%_
                             (gx#syntax-e _%e120701120714%_)))
                        (let ((_%hd120705120725%_ (##car _%e120704120722%_))
                              (_%tl120706120727%_ (##cdr _%e120704120722%_)))
                          (if (gx#stx-pair? _%tl120706120727%_)
                              (let ((_%e120707120730%_
                                     (gx#syntax-e _%tl120706120727%_)))
                                (let ((_%hd120708120733%_
                                       (##car _%e120707120730%_))
                                      (_%tl120709120735%_
                                       (##cdr _%e120707120730%_)))
                                  (let ((_%hd120738%_ _%hd120708120733%_))
                                    (if (gx#stx-pair? _%tl120709120735%_)
                                        (let ((_%e120710120740%_
                                               (gx#syntax-e
                                                _%tl120709120735%_)))
                                          (let ((_%hd120711120743%_
                                                 (##car _%e120710120740%_))
                                                (_%tl120712120745%_
                                                 (##cdr _%e120710120740%_)))
                                            (let ((_%expr120748%_
                                                   _%hd120711120743%_))
                                              (if (gx#stx-null?
                                                   _%tl120712120745%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd120738%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd120738%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120738%_)
                             (cons (gx#core-expand-expression _%expr120748%_)
                                   '())))
                 (gx#stx-source _%stx120700%_)))
              (_%E120703120718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120703120718%_)))))
                                        (_%E120703120718%_)))))
                              (_%E120703120718%_))))
                      (_%E120703120718%_)))))
          (_%E120702120750%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx120644%_)
        (let* ((_%e120645120658%_ _%stx120644%_)
               (_%E120647120662%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120645120658%_)))
               (_%E120646120696%_
                (lambda ()
                  (if (gx#stx-pair? _%e120645120658%_)
                      (let ((_%e120648120666%_
                             (gx#syntax-e _%e120645120658%_)))
                        (let ((_%hd120649120669%_ (##car _%e120648120666%_))
                              (_%tl120650120671%_ (##cdr _%e120648120666%_)))
                          (if (gx#stx-pair? _%tl120650120671%_)
                              (let ((_%e120651120674%_
                                     (gx#syntax-e _%tl120650120671%_)))
                                (let ((_%hd120652120677%_
                                       (##car _%e120651120674%_))
                                      (_%tl120653120679%_
                                       (##cdr _%e120651120674%_)))
                                  (let ((_%id120682%_ _%hd120652120677%_))
                                    (if (gx#stx-pair? _%tl120653120679%_)
                                        (let ((_%e120654120684%_
                                               (gx#syntax-e
                                                _%tl120653120679%_)))
                                          (let ((_%hd120655120687%_
                                                 (##car _%e120654120684%_))
                                                (_%tl120656120689%_
                                                 (##cdr _%e120654120684%_)))
                                            (let ((_%binding-id120692%_
                                                   _%hd120655120687%_))
                                              (if (gx#stx-null?
                                                   _%tl120656120689%_)
                                                  (if (and (gx#identifier?
                                                            _%id120682%_)
                                                           (gx#identifier?
                                                            _%binding-id120692%_))
                                                      (let ((_%eid120694%_
                                                             (gx#stx-e
                                                              _%binding-id120692%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id120682%_
                                                         _%eid120694%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120682%_)
                             (cons _%eid120694%_ '())))))
              (_%E120647120662%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120647120662%_)))))
                                        (_%E120647120662%_)))))
                              (_%E120647120662%_))))
                      (_%E120647120662%_)))))
          (_%E120646120696%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx120587%_)
        (let* ((_%e120588120601%_ _%stx120587%_)
               (_%E120590120605%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120588120601%_)))
               (_%E120589120640%_
                (lambda ()
                  (if (gx#stx-pair? _%e120588120601%_)
                      (let ((_%e120591120609%_
                             (gx#syntax-e _%e120588120601%_)))
                        (let ((_%hd120592120612%_ (##car _%e120591120609%_))
                              (_%tl120593120614%_ (##cdr _%e120591120609%_)))
                          (if (gx#stx-pair? _%tl120593120614%_)
                              (let ((_%e120594120617%_
                                     (gx#syntax-e _%tl120593120614%_)))
                                (let ((_%hd120595120620%_
                                       (##car _%e120594120617%_))
                                      (_%tl120596120622%_
                                       (##cdr _%e120594120617%_)))
                                  (let ((_%id120625%_ _%hd120595120620%_))
                                    (if (gx#stx-pair? _%tl120596120622%_)
                                        (let ((_%e120597120627%_
                                               (gx#syntax-e
                                                _%tl120596120622%_)))
                                          (let ((_%hd120598120630%_
                                                 (##car _%e120597120627%_))
                                                (_%tl120599120632%_
                                                 (##cdr _%e120597120627%_)))
                                            (let ((_%expr120635%_
                                                   _%hd120598120630%_))
                                              (if (gx#stx-null?
                                                   _%tl120599120632%_)
                                                  (if (gx#identifier?
                                                       _%id120625%_)
                                                      (let ((_g121546_
                                                             (gx#core-expand-expression+1
                                                              _%expr120635%_)))
                                                        (begin
                                                          (let ((_g121547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g121546_)
                             (##vector-length _g121546_)
                             1)))
                    (if (not (##fx= _g121547_ 2))
                        (error "Context expects 2 values" _g121547_)))
                  (let ((_%e-stx120637%_ (##vector-ref _g121546_ 0))
                        (_%e120638%_ (##vector-ref _g121546_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id120625%_ _%e120638%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id120625%_)
                                   (cons _%e-stx120637%_ '())))
                       (gx#stx-source _%stx120587%_))))))
              (_%E120590120605%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120590120605%_)))))
                                        (_%E120590120605%_)))))
                              (_%E120590120605%_))))
                      (_%E120590120605%_)))))
          (_%E120589120640%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx120531%_)
        (let* ((_%e120532120545%_ _%stx120531%_)
               (_%E120534120549%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120532120545%_)))
               (_%E120533120583%_
                (lambda ()
                  (if (gx#stx-pair? _%e120532120545%_)
                      (let ((_%e120535120553%_
                             (gx#syntax-e _%e120532120545%_)))
                        (let ((_%hd120536120556%_ (##car _%e120535120553%_))
                              (_%tl120537120558%_ (##cdr _%e120535120553%_)))
                          (if (gx#stx-pair? _%tl120537120558%_)
                              (let ((_%e120538120561%_
                                     (gx#syntax-e _%tl120537120558%_)))
                                (let ((_%hd120539120564%_
                                       (##car _%e120538120561%_))
                                      (_%tl120540120566%_
                                       (##cdr _%e120538120561%_)))
                                  (let ((_%id120569%_ _%hd120539120564%_))
                                    (if (gx#stx-pair? _%tl120540120566%_)
                                        (let ((_%e120541120571%_
                                               (gx#syntax-e
                                                _%tl120540120566%_)))
                                          (let ((_%hd120542120574%_
                                                 (##car _%e120541120571%_))
                                                (_%tl120543120576%_
                                                 (##cdr _%e120541120571%_)))
                                            (let ((_%alias-id120579%_
                                                   _%hd120542120574%_))
                                              (if (gx#stx-null?
                                                   _%tl120543120576%_)
                                                  (if (and (gx#identifier?
                                                            _%id120569%_)
                                                           (gx#identifier?
                                                            _%alias-id120579%_))
                                                      (let ((_%alias-id120581%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id120579%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id120569%_
                                                         _%alias-id120581%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120569%_)
                             (cons _%alias-id120581%_ '())))))
              (_%E120534120549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120534120549%_)))))
                                        (_%E120534120549%_)))))
                              (_%E120534120549%_))))
                      (_%E120534120549%_)))))
          (_%E120533120583%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120474%_ _%wrap?120475%_)
        (let* ((_%e120476120486%_ _%stx120474%_)
               (_%E120478120490%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120476120486%_)))
               (_%E120477120517%_
                (lambda ()
                  (if (gx#stx-pair? _%e120476120486%_)
                      (let ((_%e120479120494%_
                             (gx#syntax-e _%e120476120486%_)))
                        (let ((_%hd120480120497%_ (##car _%e120479120494%_))
                              (_%tl120481120499%_ (##cdr _%e120479120494%_)))
                          (if (gx#stx-pair? _%tl120481120499%_)
                              (let ((_%e120482120502%_
                                     (gx#syntax-e _%tl120481120499%_)))
                                (let ((_%hd120483120505%_
                                       (##car _%e120482120502%_))
                                      (_%tl120484120507%_
                                       (##cdr _%e120482120502%_)))
                                  (let* ((_%hd120510%_ _%hd120483120505%_)
                                         (_%body120512%_ _%tl120484120507%_))
                                    (if (gx#core-bind-values? _%hd120510%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd120510%_)
                                           (let ((_%body120515%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd120510%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120474%_
                                                               _%body120512%_)
                                                              '()))))
                                             (if _%wrap?120475%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body120515%_)
                                                  (gx#stx-source
                                                   _%stx120474%_))
                                                 _%body120515%_)))
                                         gx#current-expander-context
                                         (let ((__obj121539
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121539)
                                           __obj121539))
                                        (_%E120478120490%_)))))
                              (_%E120478120490%_))))
                      (_%E120478120490%_)))))
          (_%E120477120517%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx120524%_)
        (let ((_%wrap?120526%_ '#t))
          (gx#core-expand-lambda%__% _%stx120524%_ _%wrap?120526%_))))
    (define gx#core-expand-lambda%
      (lambda _g121549_
        (let ((_g121548_ (##length _g121549_)))
          (cond ((##fx= _g121548_ 1)
                 (apply (lambda (_%stx120524%_)
                          (gx#core-expand-lambda%__0 _%stx120524%_))
                        _g121549_))
                ((##fx= _g121548_ 2)
                 (apply (lambda (_%stx120528%_ _%wrap?120529%_)
                          (gx#core-expand-lambda%__%
                           _%stx120528%_
                           _%wrap?120529%_))
                        _g121549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g121549_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120438%_)
        (let* ((_%e120439120446%_ _%stx120438%_)
               (_%E120441120450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120439120446%_)))
               (_%E120440120469%_
                (lambda ()
                  (if (gx#stx-pair? _%e120439120446%_)
                      (let ((_%e120442120454%_
                             (gx#syntax-e _%e120439120446%_)))
                        (let ((_%hd120443120457%_ (##car _%e120442120454%_))
                              (_%tl120444120459%_ (##cdr _%e120442120454%_)))
                          (let ((_%clauses120462%_ _%tl120444120459%_))
                            (if (gx#stx-list? _%clauses120462%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120464%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120464%_)
                                       (let ((_%$e120466%_
                                              (gx#stx-source
                                               _%clause120464%_)))
                                         (if _%$e120466%_
                                             _%$e120466%_
                                             (gx#stx-source _%stx120438%_))))
                                      '#f))
                                   _%clauses120462%_))
                                 (gx#stx-source _%stx120438%_))
                                (_%E120441120450%_)))))
                      (_%E120441120450%_)))))
          (_%E120440120469%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120392%_)
        (let* ((_%e120393120403%_ _%stx120392%_)
               (_%E120395120407%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120393120403%_)))
               (_%E120394120434%_
                (lambda ()
                  (if (gx#stx-pair? _%e120393120403%_)
                      (let ((_%e120396120411%_
                             (gx#syntax-e _%e120393120403%_)))
                        (let ((_%hd120397120414%_ (##car _%e120396120411%_))
                              (_%tl120398120416%_ (##cdr _%e120396120411%_)))
                          (if (gx#stx-pair? _%tl120398120416%_)
                              (let ((_%e120399120419%_
                                     (gx#syntax-e _%tl120398120416%_)))
                                (let ((_%hd120400120422%_
                                       (##car _%e120399120419%_))
                                      (_%tl120401120424%_
                                       (##cdr _%e120399120419%_)))
                                  (let* ((_%hd120427%_ _%hd120400120422%_)
                                         (_%body120429%_ _%tl120401120424%_))
                                    (if (gx#core-expand-let-bind? _%hd120427%_)
                                        (let ((_%expressions120431%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120427%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120427%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120427%_
                                                           _%expressions120431%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120392%_
                         _%body120429%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120392%_)))
                                           gx#current-expander-context
                                           (let ((__obj121540
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121540)
                                             __obj121540)))
                                        (_%E120395120407%_)))))
                              (_%E120395120407%_))))
                      (_%E120395120407%_)))))
          (_%E120394120434%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120337%_ _%form120338%_)
        (let* ((_%e120339120349%_ _%stx120337%_)
               (_%E120341120353%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120339120349%_)))
               (_%E120340120378%_
                (lambda ()
                  (if (gx#stx-pair? _%e120339120349%_)
                      (let ((_%e120342120357%_
                             (gx#syntax-e _%e120339120349%_)))
                        (let ((_%hd120343120360%_ (##car _%e120342120357%_))
                              (_%tl120344120362%_ (##cdr _%e120342120357%_)))
                          (if (gx#stx-pair? _%tl120344120362%_)
                              (let ((_%e120345120365%_
                                     (gx#syntax-e _%tl120344120362%_)))
                                (let ((_%hd120346120368%_
                                       (##car _%e120345120365%_))
                                      (_%tl120347120370%_
                                       (##cdr _%e120345120365%_)))
                                  (let* ((_%hd120373%_ _%hd120346120368%_)
                                         (_%body120375%_ _%tl120347120370%_))
                                    (if (gx#core-expand-let-bind? _%hd120373%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120373%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120338%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120373%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120373%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120337%_
                                                               _%body120375%_)
                                                              '())))
                                            (gx#stx-source _%stx120337%_)))
                                         gx#current-expander-context
                                         (let ((__obj121541
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121541)
                                           __obj121541))
                                        (_%E120341120353%_)))))
                              (_%E120341120353%_))))
                      (_%E120341120353%_)))))
          (_%E120340120378%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120385%_)
        (let ((_%form120387%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120385%_ _%form120387%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g121551_
        (let ((_g121550_ (##length _g121551_)))
          (cond ((##fx= _g121550_ 1)
                 (apply (lambda (_%stx120385%_)
                          (gx#core-expand-letrec-values%__0 _%stx120385%_))
                        _g121551_))
                ((##fx= _g121550_ 2)
                 (apply (lambda (_%stx120389%_ _%form120390%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120389%_
                           _%form120390%_))
                        _g121551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g121551_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120334%_)
        (gx#core-expand-letrec-values%__% _%stx120334%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120291%_)
        (if (gx#stx-list? _%stx120291%_)
            (gx#stx-andmap
             (lambda (_%bind120293%_)
               (let* ((_%e120294120304%_ _%bind120293%_)
                      (_%E120296120308%_ (lambda () '#f))
                      (_%E120295120330%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120294120304%_)
                             (let ((_%e120297120312%_
                                    (gx#syntax-e _%e120294120304%_)))
                               (let ((_%hd120298120315%_
                                      (##car _%e120297120312%_))
                                     (_%tl120299120317%_
                                      (##cdr _%e120297120312%_)))
                                 (let ((_%hd120320%_ _%hd120298120315%_))
                                   (if (gx#stx-pair? _%tl120299120317%_)
                                       (let ((_%e120300120322%_
                                              (gx#syntax-e
                                               _%tl120299120317%_)))
                                         (let ((_%hd120301120325%_
                                                (##car _%e120300120322%_))
                                               (_%tl120302120327%_
                                                (##cdr _%e120300120322%_)))
                                           (if (gx#stx-null?
                                                _%tl120302120327%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120320%_)
                                                   (_%E120296120308%_))
                                               (_%E120296120308%_))))
                                       (_%E120296120308%_)))))
                             (_%E120296120308%_)))))
                 (_%E120295120330%_)))
             _%stx120291%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120250%_)
        (let* ((_%e120251120261%_ _%bind120250%_)
               (_%E120253120265%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120251120261%_)))
               (_%E120252120287%_
                (lambda ()
                  (if (gx#stx-pair? _%e120251120261%_)
                      (let ((_%e120254120269%_
                             (gx#syntax-e _%e120251120261%_)))
                        (let ((_%hd120255120272%_ (##car _%e120254120269%_))
                              (_%tl120256120274%_ (##cdr _%e120254120269%_)))
                          (if (gx#stx-pair? _%tl120256120274%_)
                              (let ((_%e120257120277%_
                                     (gx#syntax-e _%tl120256120274%_)))
                                (let ((_%hd120258120280%_
                                       (##car _%e120257120277%_))
                                      (_%tl120259120282%_
                                       (##cdr _%e120257120277%_)))
                                  (let ((_%expr120285%_ _%hd120258120280%_))
                                    (if (gx#stx-null? _%tl120259120282%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120285%_)
                                            (_%E120253120265%_))
                                        (_%E120253120265%_)))))
                              (_%E120253120265%_))))
                      (_%E120253120265%_)))))
          (_%E120252120287%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120209%_)
        (let* ((_%e120210120220%_ _%bind120209%_)
               (_%E120212120224%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120210120220%_)))
               (_%E120211120246%_
                (lambda ()
                  (if (gx#stx-pair? _%e120210120220%_)
                      (let ((_%e120213120228%_
                             (gx#syntax-e _%e120210120220%_)))
                        (let ((_%hd120214120231%_ (##car _%e120213120228%_))
                              (_%tl120215120233%_ (##cdr _%e120213120228%_)))
                          (let ((_%hd120236%_ _%hd120214120231%_))
                            (if (gx#stx-pair? _%tl120215120233%_)
                                (let ((_%e120216120238%_
                                       (gx#syntax-e _%tl120215120233%_)))
                                  (let ((_%hd120217120241%_
                                         (##car _%e120216120238%_))
                                        (_%tl120218120243%_
                                         (##cdr _%e120216120238%_)))
                                    (if (gx#stx-null? _%tl120218120243%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120236%_)
                                            (_%E120212120224%_))
                                        (_%E120212120224%_))))
                                (_%E120212120224%_)))))
                      (_%E120212120224%_)))))
          (_%E120211120246%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120167%_ _%expr120168%_)
        (let* ((_%e120169120179%_ _%bind120167%_)
               (_%E120171120183%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120169120179%_)))
               (_%E120170120205%_
                (lambda ()
                  (if (gx#stx-pair? _%e120169120179%_)
                      (let ((_%e120172120187%_
                             (gx#syntax-e _%e120169120179%_)))
                        (let ((_%hd120173120190%_ (##car _%e120172120187%_))
                              (_%tl120174120192%_ (##cdr _%e120172120187%_)))
                          (let ((_%hd120195%_ _%hd120173120190%_))
                            (if (gx#stx-pair? _%tl120174120192%_)
                                (let ((_%e120175120197%_
                                       (gx#syntax-e _%tl120174120192%_)))
                                  (let ((_%hd120176120200%_
                                         (##car _%e120175120197%_))
                                        (_%tl120177120202%_
                                         (##cdr _%e120175120197%_)))
                                    (if (gx#stx-null? _%tl120177120202%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120195%_)
                                                  (cons _%expr120168%_ '()))
                                            (_%E120171120183%_))
                                        (_%E120171120183%_))))
                                (_%E120171120183%_)))))
                      (_%E120171120183%_)))))
          (_%E120170120205%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120121%_)
        (let* ((_%e120122120132%_ _%stx120121%_)
               (_%E120124120136%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120122120132%_)))
               (_%E120123120163%_
                (lambda ()
                  (if (gx#stx-pair? _%e120122120132%_)
                      (let ((_%e120125120140%_
                             (gx#syntax-e _%e120122120132%_)))
                        (let ((_%hd120126120143%_ (##car _%e120125120140%_))
                              (_%tl120127120145%_ (##cdr _%e120125120140%_)))
                          (if (gx#stx-pair? _%tl120127120145%_)
                              (let ((_%e120128120148%_
                                     (gx#syntax-e _%tl120127120145%_)))
                                (let ((_%hd120129120151%_
                                       (##car _%e120128120148%_))
                                      (_%tl120130120153%_
                                       (##cdr _%e120128120148%_)))
                                  (let* ((_%hd120156%_ _%hd120129120151%_)
                                         (_%body120158%_ _%tl120130120153%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120156%_)
                                        (let ((_%expanders120160%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120156%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120156%_
                                              _%expanders120160%_)
                                             (gx#core-expand-local-block
                                              _%stx120121%_
                                              _%body120158%_))
                                           gx#current-expander-context
                                           (let ((__obj121542
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121542)
                                             __obj121542)))
                                        (_%E120124120136%_)))))
                              (_%E120124120136%_))))
                      (_%E120124120136%_)))))
          (_%E120123120163%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120070%_)
        (let* ((_%e120071120081%_ _%stx120070%_)
               (_%E120073120085%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120071120081%_)))
               (_%E120072120117%_
                (lambda ()
                  (if (gx#stx-pair? _%e120071120081%_)
                      (let ((_%e120074120089%_
                             (gx#syntax-e _%e120071120081%_)))
                        (let ((_%hd120075120092%_ (##car _%e120074120089%_))
                              (_%tl120076120094%_ (##cdr _%e120074120089%_)))
                          (if (gx#stx-pair? _%tl120076120094%_)
                              (let ((_%e120077120097%_
                                     (gx#syntax-e _%tl120076120094%_)))
                                (let ((_%hd120078120100%_
                                       (##car _%e120077120097%_))
                                      (_%tl120079120102%_
                                       (##cdr _%e120077120097%_)))
                                  (let* ((_%hd120105%_ _%hd120078120100%_)
                                         (_%body120107%_ _%tl120079120102%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120105%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120105%_
                                            (make-list
                                             (gx#stx-length _%hd120105%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120109120112%_
                                                     _%g120110120114%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120109120112%_
                                               _%g120110120114%_
                                               '#t))
                                            _%hd120105%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120105%_))
                                           (gx#core-expand-local-block
                                            _%stx120070%_
                                            _%body120107%_))
                                         gx#current-expander-context
                                         (let ((__obj121543
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121543)
                                           __obj121543))
                                        (_%E120073120085%_)))))
                              (_%E120073120085%_))))
                      (_%E120073120085%_)))))
          (_%E120072120117%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120027%_)
        (if (gx#stx-list? _%stx120027%_)
            (gx#stx-andmap
             (lambda (_%bind120029%_)
               (let* ((_%e120030120040%_ _%bind120029%_)
                      (_%E120032120044%_ (lambda () '#f))
                      (_%E120031120066%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120030120040%_)
                             (let ((_%e120033120048%_
                                    (gx#syntax-e _%e120030120040%_)))
                               (let ((_%hd120034120051%_
                                      (##car _%e120033120048%_))
                                     (_%tl120035120053%_
                                      (##cdr _%e120033120048%_)))
                                 (let ((_%hd120056%_ _%hd120034120051%_))
                                   (if (gx#stx-pair? _%tl120035120053%_)
                                       (let ((_%e120036120058%_
                                              (gx#syntax-e
                                               _%tl120035120053%_)))
                                         (let ((_%hd120037120061%_
                                                (##car _%e120036120058%_))
                                               (_%tl120038120063%_
                                                (##cdr _%e120036120058%_)))
                                           (if (gx#stx-null?
                                                _%tl120038120063%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120056%_)
                                                   (_%E120032120044%_))
                                               (_%E120032120044%_))))
                                       (_%E120032120044%_)))))
                             (_%E120032120044%_)))))
                 (_%E120031120066%_)))
             _%stx120027%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind119983%_)
        (let* ((_%e119984119994%_ _%bind119983%_)
               (_%E119986119998%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119984119994%_)))
               (_%E119985120023%_
                (lambda ()
                  (if (gx#stx-pair? _%e119984119994%_)
                      (let ((_%e119987120002%_
                             (gx#syntax-e _%e119984119994%_)))
                        (let ((_%hd119988120005%_ (##car _%e119987120002%_))
                              (_%tl119989120007%_ (##cdr _%e119987120002%_)))
                          (if (gx#stx-pair? _%tl119989120007%_)
                              (let ((_%e119990120010%_
                                     (gx#syntax-e _%tl119989120007%_)))
                                (let ((_%hd119991120013%_
                                       (##car _%e119990120010%_))
                                      (_%tl119992120015%_
                                       (##cdr _%e119990120010%_)))
                                  (let ((_%expr120018%_ _%hd119991120013%_))
                                    (if (gx#stx-null? _%tl119992120015%_)
                                        (if '#t
                                            (let ((_g121552_
                                                   (gx#core-expand-expression+1
                                                    _%expr120018%_)))
                                              (begin
                                                (let ((_g121553_
                                                       (if (##values?
                                                            _g121552_)
                                                           (##vector-length
                                                            _g121552_)
                                                           1)))
                                                  (if (not (##fx= _g121553_ 2))
                                                      (error "Context expects 2 values"
                                                             _g121553_)))
                                                (let ((_%_120020%_
                                                       (##vector-ref
                                                        _g121552_
                                                        0))
                                                      (_%e120021%_
                                                       (##vector-ref
                                                        _g121552_
                                                        1)))
                                                  _%e120021%_)))
                                            (_%E119986119998%_))
                                        (_%E119986119998%_)))))
                              (_%E119986119998%_))))
                      (_%E119986119998%_)))))
          (_%E119985120023%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind119928%_ _%e119929%_ _%rebind?119930%_)
        (let* ((_%e119931119941%_ _%bind119928%_)
               (_%E119933119945%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119931119941%_)))
               (_%E119932119967%_
                (lambda ()
                  (if (gx#stx-pair? _%e119931119941%_)
                      (let ((_%e119934119949%_
                             (gx#syntax-e _%e119931119941%_)))
                        (let ((_%hd119935119952%_ (##car _%e119934119949%_))
                              (_%tl119936119954%_ (##cdr _%e119934119949%_)))
                          (let ((_%id119957%_ _%hd119935119952%_))
                            (if (gx#stx-pair? _%tl119936119954%_)
                                (let ((_%e119937119959%_
                                       (gx#syntax-e _%tl119936119954%_)))
                                  (let ((_%hd119938119962%_
                                         (##car _%e119937119959%_))
                                        (_%tl119939119964%_
                                         (##cdr _%e119937119959%_)))
                                    (if (gx#stx-null? _%tl119939119964%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id119957%_
                                             _%e119929%_
                                             _%rebind?119930%_)
                                            (_%E119933119945%_))
                                        (_%E119933119945%_))))
                                (_%E119933119945%_)))))
                      (_%E119933119945%_)))))
          (_%E119932119967%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind119974%_ _%e119975%_)
        (let ((_%rebind?119977%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind119974%_
           _%e119975%_
           _%rebind?119977%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g121555_
        (let ((_g121554_ (##length _g121555_)))
          (cond ((##fx= _g121554_ 2)
                 (apply (lambda (_%bind119974%_ _%e119975%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind119974%_
                           _%e119975%_))
                        _g121555_))
                ((##fx= _g121554_ 3)
                 (apply (lambda (_%bind119979%_ _%e119980%_ _%rebind?119981%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind119979%_
                           _%e119980%_
                           _%rebind?119981%_))
                        _g121555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g121555_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx119886%_)
        (let* ((_%e119887119897%_ _%stx119886%_)
               (_%E119889119901%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119887119897%_)))
               (_%E119888119923%_
                (lambda ()
                  (if (gx#stx-pair? _%e119887119897%_)
                      (let ((_%e119890119905%_
                             (gx#syntax-e _%e119887119897%_)))
                        (let ((_%hd119891119908%_ (##car _%e119890119905%_))
                              (_%tl119892119910%_ (##cdr _%e119890119905%_)))
                          (if (gx#stx-pair? _%tl119892119910%_)
                              (let ((_%e119893119913%_
                                     (gx#syntax-e _%tl119892119910%_)))
                                (let ((_%hd119894119916%_
                                       (##car _%e119893119913%_))
                                      (_%tl119895119918%_
                                       (##cdr _%e119893119913%_)))
                                  (let ((_%expr119921%_ _%hd119894119916%_))
                                    (if (gx#stx-null? _%tl119895119918%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr119921%_)
                                            (_%E119889119901%_))
                                        (_%E119889119901%_)))))
                              (_%E119889119901%_))))
                      (_%E119889119901%_)))))
          (_%E119888119923%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx119845%_)
        (let* ((_%e119846119856%_ _%stx119845%_)
               (_%E119848119860%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119846119856%_)))
               (_%E119847119882%_
                (lambda ()
                  (if (gx#stx-pair? _%e119846119856%_)
                      (let ((_%e119849119864%_
                             (gx#syntax-e _%e119846119856%_)))
                        (let ((_%hd119850119867%_ (##car _%e119849119864%_))
                              (_%tl119851119869%_ (##cdr _%e119849119864%_)))
                          (if (gx#stx-pair? _%tl119851119869%_)
                              (let ((_%e119852119872%_
                                     (gx#syntax-e _%tl119851119869%_)))
                                (let ((_%hd119853119875%_
                                       (##car _%e119852119872%_))
                                      (_%tl119854119877%_
                                       (##cdr _%e119852119872%_)))
                                  (let ((_%e119880%_ _%hd119853119875%_))
                                    (if (gx#stx-null? _%tl119854119877%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e119880%_)
                                                         '()))
                                             (gx#stx-source _%stx119845%_))
                                            (_%E119848119860%_))
                                        (_%E119848119860%_)))))
                              (_%E119848119860%_))))
                      (_%E119848119860%_)))))
          (_%E119847119882%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx119804%_)
        (let* ((_%e119805119815%_ _%stx119804%_)
               (_%E119807119819%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119805119815%_)))
               (_%E119806119841%_
                (lambda ()
                  (if (gx#stx-pair? _%e119805119815%_)
                      (let ((_%e119808119823%_
                             (gx#syntax-e _%e119805119815%_)))
                        (let ((_%hd119809119826%_ (##car _%e119808119823%_))
                              (_%tl119810119828%_ (##cdr _%e119808119823%_)))
                          (if (gx#stx-pair? _%tl119810119828%_)
                              (let ((_%e119811119831%_
                                     (gx#syntax-e _%tl119810119828%_)))
                                (let ((_%hd119812119834%_
                                       (##car _%e119811119831%_))
                                      (_%tl119813119836%_
                                       (##cdr _%e119811119831%_)))
                                  (let ((_%e119839%_ _%hd119812119834%_))
                                    (if (gx#stx-null? _%tl119813119836%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e119839%_)
                                                         '()))
                                             (gx#stx-source _%stx119804%_))
                                            (_%E119807119819%_))
                                        (_%E119807119819%_)))))
                              (_%E119807119819%_))))
                      (_%E119807119819%_)))))
          (_%E119806119841%_))))
    (define gx#core-expand-call%
      (lambda (_%stx119761%_)
        (let* ((_%e119762119772%_ _%stx119761%_)
               (_%E119764119776%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119762119772%_)))
               (_%E119763119800%_
                (lambda ()
                  (if (gx#stx-pair? _%e119762119772%_)
                      (let ((_%e119765119780%_
                             (gx#syntax-e _%e119762119772%_)))
                        (let ((_%hd119766119783%_ (##car _%e119765119780%_))
                              (_%tl119767119785%_ (##cdr _%e119765119780%_)))
                          (if (gx#stx-pair? _%tl119767119785%_)
                              (let ((_%e119768119788%_
                                     (gx#syntax-e _%tl119767119785%_)))
                                (let ((_%hd119769119791%_
                                       (##car _%e119768119788%_))
                                      (_%tl119770119793%_
                                       (##cdr _%e119768119788%_)))
                                  (let* ((_%rator119796%_ _%hd119769119791%_)
                                         (_%args119798%_ _%tl119770119793%_))
                                    (if (gx#stx-list? _%args119798%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator119796%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args119798%_))
                                         (gx#stx-source _%stx119761%_))
                                        (_%E119764119776%_)))))
                              (_%E119764119776%_))))
                      (_%E119764119776%_)))))
          (_%E119763119800%_))))
    (define gx#core-expand-if%
      (lambda (_%stx119694%_)
        (let* ((_%e119695119711%_ _%stx119694%_)
               (_%E119697119715%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119695119711%_)))
               (_%E119696119757%_
                (lambda ()
                  (if (gx#stx-pair? _%e119695119711%_)
                      (let ((_%e119698119719%_
                             (gx#syntax-e _%e119695119711%_)))
                        (let ((_%hd119699119722%_ (##car _%e119698119719%_))
                              (_%tl119700119724%_ (##cdr _%e119698119719%_)))
                          (if (gx#stx-pair? _%tl119700119724%_)
                              (let ((_%e119701119727%_
                                     (gx#syntax-e _%tl119700119724%_)))
                                (let ((_%hd119702119730%_
                                       (##car _%e119701119727%_))
                                      (_%tl119703119732%_
                                       (##cdr _%e119701119727%_)))
                                  (let ((_%test119735%_ _%hd119702119730%_))
                                    (if (gx#stx-pair? _%tl119703119732%_)
                                        (let ((_%e119704119737%_
                                               (gx#syntax-e
                                                _%tl119703119732%_)))
                                          (let ((_%hd119705119740%_
                                                 (##car _%e119704119737%_))
                                                (_%tl119706119742%_
                                                 (##cdr _%e119704119737%_)))
                                            (let ((_%K119745%_
                                                   _%hd119705119740%_))
                                              (if (gx#stx-pair?
                                                   _%tl119706119742%_)
                                                  (let ((_%e119707119747%_
                                                         (gx#syntax-e
                                                          _%tl119706119742%_)))
                                                    (let ((_%hd119708119750%_
                                                           (##car _%e119707119747%_))
                                                          (_%tl119709119752%_
                                                           (##cdr _%e119707119747%_)))
                                                      (let ((_%E119755%_
                                                             _%hd119708119750%_))
                                                        (if (gx#stx-null?
                                                             _%tl119709119752%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test119735%_)
                                     (cons (gx#core-expand-expression
                                            _%K119745%_)
                                           (cons (gx#core-expand-expression
                                                  _%E119755%_)
                                                 '()))))
                         (gx#stx-source _%stx119694%_))
                        (_%E119697119715%_))
                    (_%E119697119715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119697119715%_)))))
                                        (_%E119697119715%_)))))
                              (_%E119697119715%_))))
                      (_%E119697119715%_)))))
          (_%E119696119757%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx119653%_)
        (let* ((_%e119654119664%_ _%stx119653%_)
               (_%E119656119668%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119654119664%_)))
               (_%E119655119690%_
                (lambda ()
                  (if (gx#stx-pair? _%e119654119664%_)
                      (let ((_%e119657119672%_
                             (gx#syntax-e _%e119654119664%_)))
                        (let ((_%hd119658119675%_ (##car _%e119657119672%_))
                              (_%tl119659119677%_ (##cdr _%e119657119672%_)))
                          (if (gx#stx-pair? _%tl119659119677%_)
                              (let ((_%e119660119680%_
                                     (gx#syntax-e _%tl119659119677%_)))
                                (let ((_%hd119661119683%_
                                       (##car _%e119660119680%_))
                                      (_%tl119662119685%_
                                       (##cdr _%e119660119680%_)))
                                  (let ((_%id119688%_ _%hd119661119683%_))
                                    (if (gx#stx-null? _%tl119662119685%_)
                                        (if (gx#identifier? _%id119688%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id119688%_
                                                          _%stx119653%_)
                                                         '()))
                                             (gx#stx-source _%stx119653%_))
                                            (_%E119656119668%_))
                                        (_%E119656119668%_)))))
                              (_%E119656119668%_))))
                      (_%E119656119668%_)))))
          (_%E119655119690%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx119599%_)
        (let* ((_%e119600119613%_ _%stx119599%_)
               (_%E119602119617%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119600119613%_)))
               (_%E119601119649%_
                (lambda ()
                  (if (gx#stx-pair? _%e119600119613%_)
                      (let ((_%e119603119621%_
                             (gx#syntax-e _%e119600119613%_)))
                        (let ((_%hd119604119624%_ (##car _%e119603119621%_))
                              (_%tl119605119626%_ (##cdr _%e119603119621%_)))
                          (if (gx#stx-pair? _%tl119605119626%_)
                              (let ((_%e119606119629%_
                                     (gx#syntax-e _%tl119605119626%_)))
                                (let ((_%hd119607119632%_
                                       (##car _%e119606119629%_))
                                      (_%tl119608119634%_
                                       (##cdr _%e119606119629%_)))
                                  (let ((_%id119637%_ _%hd119607119632%_))
                                    (if (gx#stx-pair? _%tl119608119634%_)
                                        (let ((_%e119609119639%_
                                               (gx#syntax-e
                                                _%tl119608119634%_)))
                                          (let ((_%hd119610119642%_
                                                 (##car _%e119609119639%_))
                                                (_%tl119611119644%_
                                                 (##cdr _%e119609119639%_)))
                                            (let ((_%expr119647%_
                                                   _%hd119610119642%_))
                                              (if (gx#stx-null?
                                                   _%tl119611119644%_)
                                                  (if (gx#identifier?
                                                       _%id119637%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id119637%_
                            _%stx119599%_)
                           (cons (gx#core-expand-expression _%expr119647%_)
                                 '())))
               (gx#stx-source _%stx119599%_))
              (_%E119602119617%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119602119617%_)))))
                                        (_%E119602119617%_)))))
                              (_%E119602119617%_))))
                      (_%E119602119617%_)))))
          (_%E119601119649%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119444%_)
        (letrec ((_%generate119446%_
                  (lambda (_%body119476%_)
                    (let _%lp119478%_ ((_%rest119480%_ _%body119476%_)
                                       (_%ns119481%_
                                        (gx#core-context-namespace__0))
                                       (_%r119482%_ '()))
                      (let* ((_%e119483119498%_ _%rest119480%_)
                             (_%E119496119502%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119483119498%_)))
                             (_%E119492119506%_
                              (lambda ()
                                (if (gx#stx-null? _%e119483119498%_)
                                    (if '#t
                                        (reverse _%r119482%_)
                                        (_%E119496119502%_))
                                    (_%E119496119502%_))))
                             (_%E119485119563%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119483119498%_)
                                    (let ((_%e119493119510%_
                                           (gx#syntax-e _%e119483119498%_)))
                                      (let ((_%hd119494119513%_
                                             (##car _%e119493119510%_))
                                            (_%tl119495119515%_
                                             (##cdr _%e119493119510%_)))
                                        (let* ((_%hd119518%_
                                                _%hd119494119513%_)
                                               (_%rest119520%_
                                                _%tl119495119515%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd119518%_)
                                                  (_%lp119478%_
                                                   _%rest119520%_
                                                   _%ns119481%_
                                                   (cons (cons _%hd119518%_
                                                               (cons (if _%ns119481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd119518%_
                                  _%ns119481%_
                                  '"#"
                                  _%hd119518%_)
                                 _%hd119518%_)
                             '()))
                 _%r119482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e119521119531%_
                                                          _%hd119518%_)
                                                         (_%E119523119535%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e119521119531%_)))
                                                         (_%E119522119559%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e119521119531%_)
                        (let ((_%e119524119539%_
                               (gx#syntax-e _%e119521119531%_)))
                          (let ((_%hd119525119542%_ (##car _%e119524119539%_))
                                (_%tl119526119544%_ (##cdr _%e119524119539%_)))
                            (let ((_%id119547%_ _%hd119525119542%_))
                              (if (gx#stx-pair? _%tl119526119544%_)
                                  (let ((_%e119527119549%_
                                         (gx#syntax-e _%tl119526119544%_)))
                                    (let ((_%hd119528119552%_
                                           (##car _%e119527119549%_))
                                          (_%tl119529119554%_
                                           (##cdr _%e119527119549%_)))
                                      (let ((_%eid119557%_ _%hd119528119552%_))
                                        (if (gx#stx-null? _%tl119529119554%_)
                                            (if (and (gx#identifier?
                                                      _%id119547%_)
                                                     (gx#identifier?
                                                      _%eid119557%_))
                                                (_%lp119478%_
                                                 _%rest119520%_
                                                 _%ns119481%_
                                                 (cons (cons _%id119547%_
                                                             (cons _%eid119557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119523119535%_))
                                            (_%E119523119535%_)))))
                                  (_%E119523119535%_)))))
                        (_%E119523119535%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119522119559%_)))
                                              (_%E119492119506%_)))))
                                    (_%E119492119506%_))))
                             (_%E119484119595%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119483119498%_)
                                    (let ((_%e119486119567%_
                                           (gx#syntax-e _%e119483119498%_)))
                                      (let ((_%hd119487119570%_
                                             (##car _%e119486119567%_))
                                            (_%tl119488119572%_
                                             (##cdr _%e119486119567%_)))
                                        (if (eq? (gx#stx-e _%hd119487119570%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl119488119572%_)
                                                (let ((_%e119489119575%_
                                                       (gx#syntax-e
                                                        _%tl119488119572%_)))
                                                  (let ((_%hd119490119578%_
                                                         (##car _%e119489119575%_))
                                                        (_%tl119491119580%_
                                                         (##cdr _%e119489119575%_)))
                                                    (let* ((_%ns119583%_
                                                            _%hd119490119578%_)
                                                           (_%rest119585%_
                                                            _%tl119491119580%_))
                                                      (if '#t
                                                          (let ((_%ns119593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns119583%_)
                             (let () (symbol->string (gx#stx-e _%ns119583%_)))
                             (if (or (gx#stx-string? _%ns119583%_)
                                     (gx#stx-false? _%ns119583%_))
                                 (let () (gx#stx-e _%ns119583%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx119444%_
                                    _%ns119583%_))))))
                    (_%lp119478%_ _%rest119585%_ _%ns119593%_ _%r119482%_))
                  (_%E119485119563%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119485119563%_))
                                            (_%E119485119563%_))))
                                    (_%E119485119563%_)))))
                        (_%E119484119595%_))))))
          (let* ((_%e119447119454%_ _%stx119444%_)
                 (_%E119449119458%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119447119454%_)))
                 (_%E119448119472%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119447119454%_)
                        (let ((_%e119450119462%_
                               (gx#syntax-e _%e119447119454%_)))
                          (let ((_%hd119451119465%_ (##car _%e119450119462%_))
                                (_%tl119452119467%_ (##cdr _%e119450119462%_)))
                            (let ((_%body119470%_ _%tl119452119467%_))
                              (if (gx#stx-list? _%body119470%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119446%_ _%body119470%_))
                                  (_%E119449119458%_)))))
                        (_%E119449119458%_)))))
            (_%E119448119472%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119390%_)
        (let* ((_%e119391119404%_ _%stx119390%_)
               (_%E119393119408%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119391119404%_)))
               (_%E119392119440%_
                (lambda ()
                  (if (gx#stx-pair? _%e119391119404%_)
                      (let ((_%e119394119412%_
                             (gx#syntax-e _%e119391119404%_)))
                        (let ((_%hd119395119415%_ (##car _%e119394119412%_))
                              (_%tl119396119417%_ (##cdr _%e119394119412%_)))
                          (if (gx#stx-pair? _%tl119396119417%_)
                              (let ((_%e119397119420%_
                                     (gx#syntax-e _%tl119396119417%_)))
                                (let ((_%hd119398119423%_
                                       (##car _%e119397119420%_))
                                      (_%tl119399119425%_
                                       (##cdr _%e119397119420%_)))
                                  (let ((_%hd119428%_ _%hd119398119423%_))
                                    (if (gx#stx-pair? _%tl119399119425%_)
                                        (let ((_%e119400119430%_
                                               (gx#syntax-e
                                                _%tl119399119425%_)))
                                          (let ((_%hd119401119433%_
                                                 (##car _%e119400119430%_))
                                                (_%tl119402119435%_
                                                 (##cdr _%e119400119430%_)))
                                            (let ((_%expr119438%_
                                                   _%hd119401119433%_))
                                              (if (gx#stx-null?
                                                   _%tl119402119435%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119428%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119428%_)
                          (cons _%expr119438%_ '())))
              (_%E119393119408%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119393119408%_)))))
                                        (_%E119393119408%_)))))
                              (_%E119393119408%_))))
                      (_%E119393119408%_)))))
          (_%E119392119440%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119336%_)
        (let* ((_%e119337119350%_ _%stx119336%_)
               (_%E119339119354%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119337119350%_)))
               (_%E119338119386%_
                (lambda ()
                  (if (gx#stx-pair? _%e119337119350%_)
                      (let ((_%e119340119358%_
                             (gx#syntax-e _%e119337119350%_)))
                        (let ((_%hd119341119361%_ (##car _%e119340119358%_))
                              (_%tl119342119363%_ (##cdr _%e119340119358%_)))
                          (if (gx#stx-pair? _%tl119342119363%_)
                              (let ((_%e119343119366%_
                                     (gx#syntax-e _%tl119342119363%_)))
                                (let ((_%hd119344119369%_
                                       (##car _%e119343119366%_))
                                      (_%tl119345119371%_
                                       (##cdr _%e119343119366%_)))
                                  (let ((_%hd119374%_ _%hd119344119369%_))
                                    (if (gx#stx-pair? _%tl119345119371%_)
                                        (let ((_%e119346119376%_
                                               (gx#syntax-e
                                                _%tl119345119371%_)))
                                          (let ((_%hd119347119379%_
                                                 (##car _%e119346119376%_))
                                                (_%tl119348119381%_
                                                 (##cdr _%e119346119376%_)))
                                            (let ((_%expr119384%_
                                                   _%hd119347119379%_))
                                              (if (gx#stx-null?
                                                   _%tl119348119381%_)
                                                  (if (gx#identifier?
                                                       _%hd119374%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119384%_ '())))
              (_%E119339119354%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119339119354%_)))))
                                        (_%E119339119354%_)))))
                              (_%E119339119354%_))))
                      (_%E119339119354%_)))))
          (_%E119338119386%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119282%_)
        (let* ((_%e119283119296%_ _%stx119282%_)
               (_%E119285119300%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119283119296%_)))
               (_%E119284119332%_
                (lambda ()
                  (if (gx#stx-pair? _%e119283119296%_)
                      (let ((_%e119286119304%_
                             (gx#syntax-e _%e119283119296%_)))
                        (let ((_%hd119287119307%_ (##car _%e119286119304%_))
                              (_%tl119288119309%_ (##cdr _%e119286119304%_)))
                          (if (gx#stx-pair? _%tl119288119309%_)
                              (let ((_%e119289119312%_
                                     (gx#syntax-e _%tl119288119309%_)))
                                (let ((_%hd119290119315%_
                                       (##car _%e119289119312%_))
                                      (_%tl119291119317%_
                                       (##cdr _%e119289119312%_)))
                                  (let ((_%id119320%_ _%hd119290119315%_))
                                    (if (gx#stx-pair? _%tl119291119317%_)
                                        (let ((_%e119292119322%_
                                               (gx#syntax-e
                                                _%tl119291119317%_)))
                                          (let ((_%hd119293119325%_
                                                 (##car _%e119292119322%_))
                                                (_%tl119294119327%_
                                                 (##cdr _%e119292119322%_)))
                                            (let ((_%alias-id119330%_
                                                   _%hd119293119325%_))
                                              (if (gx#stx-null?
                                                   _%tl119294119327%_)
                                                  (if (and (gx#identifier?
                                                            _%id119320%_)
                                                           (gx#identifier?
                                                            _%alias-id119330%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119330%_ '())))
              (_%E119285119300%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119285119300%_)))))
                                        (_%E119285119300%_)))))
                              (_%E119285119300%_))))
                      (_%E119285119300%_)))))
          (_%E119284119332%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119239%_)
        (let* ((_%e119240119250%_ _%stx119239%_)
               (_%E119242119254%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119240119250%_)))
               (_%E119241119278%_
                (lambda ()
                  (if (gx#stx-pair? _%e119240119250%_)
                      (let ((_%e119243119258%_
                             (gx#syntax-e _%e119240119250%_)))
                        (let ((_%hd119244119261%_ (##car _%e119243119258%_))
                              (_%tl119245119263%_ (##cdr _%e119243119258%_)))
                          (if (gx#stx-pair? _%tl119245119263%_)
                              (let ((_%e119246119266%_
                                     (gx#syntax-e _%tl119245119263%_)))
                                (let ((_%hd119247119269%_
                                       (##car _%e119246119266%_))
                                      (_%tl119248119271%_
                                       (##cdr _%e119246119266%_)))
                                  (let* ((_%hd119274%_ _%hd119247119269%_)
                                         (_%body119276%_ _%tl119248119271%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119274%_)
                                             (gx#stx-list? _%body119276%_)
                                             (not (gx#stx-null?
                                                   _%body119276%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119274%_)
                                         _%body119276%_)
                                        (_%E119242119254%_)))))
                              (_%E119242119254%_))))
                      (_%E119242119254%_)))))
          (_%E119241119278%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119175%_)
        (letrec ((_%generate119177%_
                  (lambda (_%clause119207%_)
                    (let* ((_%e119208119215%_ _%clause119207%_)
                           (_%E119210119219%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119175%_
                               _%clause119207%_)))
                           (_%E119209119235%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119208119215%_)
                                  (let ((_%e119211119223%_
                                         (gx#syntax-e _%e119208119215%_)))
                                    (let ((_%hd119212119226%_
                                           (##car _%e119211119223%_))
                                          (_%tl119213119228%_
                                           (##cdr _%e119211119223%_)))
                                      (let* ((_%hd119231%_ _%hd119212119226%_)
                                             (_%body119233%_
                                              _%tl119213119228%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119231%_)
                                                 (gx#stx-list? _%body119233%_)
                                                 (not (gx#stx-null?
                                                       _%body119233%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119231%_)
                                                   _%body119233%_)
                                             (gx#stx-source _%clause119207%_))
                                            (_%E119210119219%_)))))
                                  (_%E119210119219%_)))))
                      (_%E119209119235%_)))))
          (let* ((_%e119178119185%_ _%stx119175%_)
                 (_%E119180119189%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119178119185%_)))
                 (_%E119179119203%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119178119185%_)
                        (let ((_%e119181119193%_
                               (gx#syntax-e _%e119178119185%_)))
                          (let ((_%hd119182119196%_ (##car _%e119181119193%_))
                                (_%tl119183119198%_ (##cdr _%e119181119193%_)))
                            (let ((_%clauses119201%_ _%tl119183119198%_))
                              (if (gx#stx-list? _%clauses119201%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119177%_
                                    _%clauses119201%_))
                                  (_%E119180119189%_)))))
                        (_%E119180119189%_)))))
            (_%E119179119203%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119076%_ _%form119077%_)
        (letrec ((_%generate119079%_
                  (lambda (_%bind119122%_)
                    (let* ((_%e119123119133%_ _%bind119122%_)
                           (_%E119125119137%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119076%_
                               _%bind119122%_)))
                           (_%E119124119161%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119123119133%_)
                                  (let ((_%e119126119141%_
                                         (gx#syntax-e _%e119123119133%_)))
                                    (let ((_%hd119127119144%_
                                           (##car _%e119126119141%_))
                                          (_%tl119128119146%_
                                           (##cdr _%e119126119141%_)))
                                      (let ((_%ids119149%_ _%hd119127119144%_))
                                        (if (gx#stx-pair? _%tl119128119146%_)
                                            (let ((_%e119129119151%_
                                                   (gx#syntax-e
                                                    _%tl119128119146%_)))
                                              (let ((_%hd119130119154%_
                                                     (##car _%e119129119151%_))
                                                    (_%tl119131119156%_
                                                     (##cdr _%e119129119151%_)))
                                                (let ((_%expr119159%_
                                                       _%hd119130119154%_))
                                                  (if (gx#stx-null?
                                                       _%tl119131119156%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119149%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119149%_)
                        (cons _%expr119159%_ '()))
                  (_%E119125119137%_))
              (_%E119125119137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119125119137%_)))))
                                  (_%E119125119137%_)))))
                      (_%E119124119161%_)))))
          (let* ((_%e119080119090%_ _%stx119076%_)
                 (_%E119082119094%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119080119090%_)))
                 (_%E119081119118%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119080119090%_)
                        (let ((_%e119083119098%_
                               (gx#syntax-e _%e119080119090%_)))
                          (let ((_%hd119084119101%_ (##car _%e119083119098%_))
                                (_%tl119085119103%_ (##cdr _%e119083119098%_)))
                            (if (gx#stx-pair? _%tl119085119103%_)
                                (let ((_%e119086119106%_
                                       (gx#syntax-e _%tl119085119103%_)))
                                  (let ((_%hd119087119109%_
                                         (##car _%e119086119106%_))
                                        (_%tl119088119111%_
                                         (##cdr _%e119086119106%_)))
                                    (let* ((_%hd119114%_ _%hd119087119109%_)
                                           (_%body119116%_ _%tl119088119111%_))
                                      (if (and (gx#stx-list? _%hd119114%_)
                                               (gx#stx-list? _%body119116%_)
                                               (not (gx#stx-null?
                                                     _%body119116%_)))
                                          (gx#core-cons*
                                           _%form119077%_
                                           (gx#stx-map1
                                            _%generate119079%_
                                            _%hd119114%_)
                                           _%body119116%_)
                                          (_%E119082119094%_)))))
                                (_%E119082119094%_))))
                        (_%E119082119094%_)))))
            (_%E119081119118%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119168%_)
        (let ((_%form119170%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119168%_ _%form119170%_))))
    (define gx#macro-expand-let-values
      (lambda _g121557_
        (let ((_g121556_ (##length _g121557_)))
          (cond ((##fx= _g121556_ 1)
                 (apply (lambda (_%stx119168%_)
                          (gx#macro-expand-let-values__0 _%stx119168%_))
                        _g121557_))
                ((##fx= _g121556_ 2)
                 (apply (lambda (_%stx119172%_ _%form119173%_)
                          (gx#macro-expand-let-values__%
                           _%stx119172%_
                           _%form119173%_))
                        _g121557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g121557_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119073%_)
        (gx#macro-expand-let-values__% _%stx119073%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119071%_)
        (gx#macro-expand-let-values__% _%stx119071%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx118962%_)
        (let* ((_%e118963118989%_ _%stx118962%_)
               (_%E118975118993%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118963118989%_)))
               (_%E118965119035%_
                (lambda ()
                  (if (gx#stx-pair? _%e118963118989%_)
                      (let ((_%e118976118997%_
                             (gx#syntax-e _%e118963118989%_)))
                        (let ((_%hd118977119000%_ (##car _%e118976118997%_))
                              (_%tl118978119002%_ (##cdr _%e118976118997%_)))
                          (if (gx#stx-pair? _%tl118978119002%_)
                              (let ((_%e118979119005%_
                                     (gx#syntax-e _%tl118978119002%_)))
                                (let ((_%hd118980119008%_
                                       (##car _%e118979119005%_))
                                      (_%tl118981119010%_
                                       (##cdr _%e118979119005%_)))
                                  (let ((_%test119013%_ _%hd118980119008%_))
                                    (if (gx#stx-pair? _%tl118981119010%_)
                                        (let ((_%e118982119015%_
                                               (gx#syntax-e
                                                _%tl118981119010%_)))
                                          (let ((_%hd118983119018%_
                                                 (##car _%e118982119015%_))
                                                (_%tl118984119020%_
                                                 (##cdr _%e118982119015%_)))
                                            (let ((_%K119023%_
                                                   _%hd118983119018%_))
                                              (if (gx#stx-pair?
                                                   _%tl118984119020%_)
                                                  (let ((_%e118985119025%_
                                                         (gx#syntax-e
                                                          _%tl118984119020%_)))
                                                    (let ((_%hd118986119028%_
                                                           (##car _%e118985119025%_))
                                                          (_%tl118987119030%_
                                                           (##cdr _%e118985119025%_)))
                                                      (let ((_%E119033%_
                                                             _%hd118986119028%_))
                                                        (if (gx#stx-null?
                                                             _%tl118987119030%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119013%_
                         _%K119023%_
                         _%E119033%_)
                        (_%E118975118993%_))
                    (_%E118975118993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E118975118993%_)))))
                                        (_%E118975118993%_)))))
                              (_%E118975118993%_))))
                      (_%E118975118993%_))))
               (_%E118964119067%_
                (lambda ()
                  (if (gx#stx-pair? _%e118963118989%_)
                      (let ((_%e118966119039%_
                             (gx#syntax-e _%e118963118989%_)))
                        (let ((_%hd118967119042%_ (##car _%e118966119039%_))
                              (_%tl118968119044%_ (##cdr _%e118966119039%_)))
                          (if (gx#stx-pair? _%tl118968119044%_)
                              (let ((_%e118969119047%_
                                     (gx#syntax-e _%tl118968119044%_)))
                                (let ((_%hd118970119050%_
                                       (##car _%e118969119047%_))
                                      (_%tl118971119052%_
                                       (##cdr _%e118969119047%_)))
                                  (let ((_%test119055%_ _%hd118970119050%_))
                                    (if (gx#stx-pair? _%tl118971119052%_)
                                        (let ((_%e118972119057%_
                                               (gx#syntax-e
                                                _%tl118971119052%_)))
                                          (let ((_%hd118973119060%_
                                                 (##car _%e118972119057%_))
                                                (_%tl118974119062%_
                                                 (##cdr _%e118972119057%_)))
                                            (let ((_%K119065%_
                                                   _%hd118973119060%_))
                                              (if (gx#stx-null?
                                                   _%tl118974119062%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119055%_
                                                       _%K119065%_
                                                       '#!void)
                                                      (_%E118965119035%_))
                                                  (_%E118965119035%_)))))
                                        (_%E118965119035%_)))))
                              (_%E118965119035%_))))
                      (_%E118965119035%_)))))
          (_%E118964119067%_))))
    (define gx#free-identifier=?
      (lambda (_%xid118947%_ _%yid118948%_)
        (let ((_%xe118950%_ (gx#resolve-identifier__0 _%xid118947%_))
              (_%ye118951%_ (gx#resolve-identifier__0 _%yid118948%_)))
          (if (and _%xe118950%_ _%ye118951%_)
              (let ((_%$e118954%_ (eq? _%xe118950%_ _%ye118951%_)))
                (if _%$e118954%_
                    _%$e118954%_
                    (if (##structure-instance-of? _%xe118950%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye118951%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe118950%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye118951%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe118950%_ _%ye118951%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid118947%_ _%yid118948%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid118928%_ _%yid118929%_)
        (letrec ((_%context118931%_
                  (lambda (_%e118945%_)
                    (if (##structure-direct-instance-of?
                         _%e118945%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e118945%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks118932%_
                  (lambda (_%e118940%_)
                    (if (symbol? _%e118940%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e118940%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e118940%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e118940%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap118933%_
                  (lambda (_%e118938%_)
                    (if (symbol? _%e118938%_)
                        _%e118938%_
                        (gx#syntax-local-unwrap _%e118938%_)))))
          (let ((_%x118935%_ (_%unwrap118933%_ _%xid118928%_))
                (_%y118936%_ (_%unwrap118933%_ _%yid118929%_)))
            (if (gx#stx-eq? _%x118935%_ _%y118936%_)
                (if (eq? (_%context118931%_ _%x118935%_)
                         (_%context118931%_ _%y118936%_))
                    (equal? (_%marks118932%_ _%x118935%_)
                            (_%marks118932%_ _%y118936%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx118926%_)
        (if (gx#identifier? _%stx118926%_)
            (gx#core-identifier=? _%stx118926%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx118924%_)
        (if (gx#identifier? _%stx118924%_)
            (gx#core-identifier=? _%stx118924%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx118867%_ _%where118868%_)
        (let _%lp118870%_ ((_%rest118872%_ (gx#syntax->list _%stx118867%_)))
          (let* ((_%rest118873118881%_ _%rest118872%_)
                 (_%else118875118889%_ (lambda () '#t))
                 (_%K118877118902%_
                  (lambda (_%rest118892%_ _%hd118893%_)
                    (if (not (gx#identifier? _%hd118893%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where118868%_
                           _%hd118893%_))
                        (if (__find (lambda (_%g118895118897%_)
                                      (gx#bound-identifier=?
                                       _%g118895118897%_
                                       _%hd118893%_))
                                    _%rest118892%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where118868%_
                               _%hd118893%_))
                            (let () (_%lp118870%_ _%rest118892%_)))))))
            (if (##pair? _%rest118873118881%_)
                (let ((_%hd118878118905%_ (##car _%rest118873118881%_))
                      (_%tl118879118907%_ (##cdr _%rest118873118881%_)))
                  (let* ((_%hd118910%_ _%hd118878118905%_)
                         (_%rest118912%_ _%tl118879118907%_))
                    (_%K118877118902%_ _%rest118912%_ _%hd118910%_)))
                (_%else118875118889%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx118917%_)
        (let ((_%where118919%_ _%stx118917%_))
          (gx#check-duplicate-identifiers__% _%stx118917%_ _%where118919%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g121559_
        (let ((_g121558_ (##length _g121559_)))
          (cond ((##fx= _g121558_ 1)
                 (apply (lambda (_%stx118917%_)
                          (gx#check-duplicate-identifiers__0 _%stx118917%_))
                        _g121559_))
                ((##fx= _g121558_ 2)
                 (apply (lambda (_%stx118921%_ _%where118922%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx118921%_
                           _%where118922%_))
                        _g121559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g121559_))))))
    (define gx#core-bind-values?
      (lambda (_%stx118859%_)
        (gx#stx-andmap
         (lambda (_%x118861%_)
           (let ((_%$e118863%_ (gx#identifier? _%x118861%_)))
             (if _%$e118863%_ _%$e118863%_ (gx#stx-false? _%x118861%_))))
         _%stx118859%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx118823%_ _%rebind?118824%_ _%phi118825%_ _%ctx118826%_)
        (gx#stx-for-each1
         (lambda (_%id118828%_)
           (if (gx#identifier? _%id118828%_)
               (gx#core-bind-runtime!__%
                _%id118828%_
                _%rebind?118824%_
                _%phi118825%_
                _%ctx118826%_)
               '#!void))
         _%stx118823%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx118833%_)
        (let* ((_%rebind?118835%_ '#f)
               (_%phi118837%_ (gx#current-expander-phi))
               (_%ctx118839%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118833%_
           _%rebind?118835%_
           _%phi118837%_
           _%ctx118839%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx118841%_ _%rebind?118842%_)
        (let* ((_%phi118844%_ (gx#current-expander-phi))
               (_%ctx118846%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118841%_
           _%rebind?118842%_
           _%phi118844%_
           _%ctx118846%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx118848%_ _%rebind?118849%_ _%phi118850%_)
        (let ((_%ctx118852%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118848%_
           _%rebind?118849%_
           _%phi118850%_
           _%ctx118852%_))))
    (define gx#core-bind-values!
      (lambda _g121561_
        (let ((_g121560_ (##length _g121561_)))
          (cond ((##fx= _g121560_ 1)
                 (apply (lambda (_%stx118833%_)
                          (gx#core-bind-values!__0 _%stx118833%_))
                        _g121561_))
                ((##fx= _g121560_ 2)
                 (apply (lambda (_%stx118841%_ _%rebind?118842%_)
                          (gx#core-bind-values!__1
                           _%stx118841%_
                           _%rebind?118842%_))
                        _g121561_))
                ((##fx= _g121560_ 3)
                 (apply (lambda (_%stx118848%_ _%rebind?118849%_ _%phi118850%_)
                          (gx#core-bind-values!__2
                           _%stx118848%_
                           _%rebind?118849%_
                           _%phi118850%_))
                        _g121561_))
                ((##fx= _g121560_ 4)
                 (apply (lambda (_%stx118854%_
                                 _%rebind?118855%_
                                 _%phi118856%_
                                 _%ctx118857%_)
                          (gx#core-bind-values!__%
                           _%stx118854%_
                           _%rebind?118855%_
                           _%phi118856%_
                           _%ctx118857%_))
                        _g121561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g121561_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx118818%_)
        (gx#stx-map1
         (lambda (_%x118820%_)
           (if (gx#identifier? _%x118820%_)
               (gx#core-quote-syntax__0 _%x118820%_)
               '#f))
         _%stx118818%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx118811%_)
        (if (gx#identifier? _%stx118811%_)
            (let* ((_%bind118813%_ (gx#resolve-identifier__0 _%stx118811%_))
                   (_%$e118815%_ (not _%bind118813%_)))
              (if _%$e118815%_
                  _%$e118815%_
                  (##structure-instance-of?
                   _%bind118813%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id118800%_ _%form118801%_)
        (let ((_%bind118803%_ (gx#resolve-identifier__0 _%id118800%_)))
          (if (##structure-instance-of? _%bind118803%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id118800%_))
              (if (not _%bind118803%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id118800%_)))
                        (gx#core-quote-syntax__0 _%id118800%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form118801%_
                         _%id118800%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form118801%_
                     _%id118800%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id118755%_ _%rebind?118756%_ _%phi118757%_ _%ctx118758%_)
        (let* ((_%key118760%_ (gx#core-identifier-key _%id118755%_))
               (_%eid118762%_
                (gx#make-binding-id__%
                 _%key118760%_
                 '#f
                 _%phi118757%_
                 _%ctx118758%_))
               (_%bind118768%_
                (if (##structure-instance-of?
                     _%ctx118758%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid118762%_
                       _%key118760%_
                       _%phi118757%_
                       _%ctx118758%_))
                    (if (##structure-instance-of?
                         _%ctx118758%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid118762%_
                           _%key118760%_
                           _%phi118757%_))
                        (if (##structure-instance-of?
                             _%ctx118758%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid118762%_
                               _%key118760%_
                               _%phi118757%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid118762%_
                               _%key118760%_
                               _%phi118757%_)))))))
          (gx#bind-identifier!__%
           _%id118755%_
           _%bind118768%_
           _%rebind?118756%_
           _%phi118757%_
           _%ctx118758%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id118774%_)
        (let* ((_%rebind?118776%_ '#f)
               (_%phi118778%_ (gx#current-expander-phi))
               (_%ctx118780%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118774%_
           _%rebind?118776%_
           _%phi118778%_
           _%ctx118780%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id118782%_ _%rebind?118783%_)
        (let* ((_%phi118785%_ (gx#current-expander-phi))
               (_%ctx118787%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118782%_
           _%rebind?118783%_
           _%phi118785%_
           _%ctx118787%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id118789%_ _%rebind?118790%_ _%phi118791%_)
        (let ((_%ctx118793%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118789%_
           _%rebind?118790%_
           _%phi118791%_
           _%ctx118793%_))))
    (define gx#core-bind-runtime!
      (lambda _g121563_
        (let ((_g121562_ (##length _g121563_)))
          (cond ((##fx= _g121562_ 1)
                 (apply (lambda (_%id118774%_)
                          (gx#core-bind-runtime!__0 _%id118774%_))
                        _g121563_))
                ((##fx= _g121562_ 2)
                 (apply (lambda (_%id118782%_ _%rebind?118783%_)
                          (gx#core-bind-runtime!__1
                           _%id118782%_
                           _%rebind?118783%_))
                        _g121563_))
                ((##fx= _g121562_ 3)
                 (apply (lambda (_%id118789%_ _%rebind?118790%_ _%phi118791%_)
                          (gx#core-bind-runtime!__2
                           _%id118789%_
                           _%rebind?118790%_
                           _%phi118791%_))
                        _g121563_))
                ((##fx= _g121562_ 4)
                 (apply (lambda (_%id118795%_
                                 _%rebind?118796%_
                                 _%phi118797%_
                                 _%ctx118798%_)
                          (gx#core-bind-runtime!__%
                           _%id118795%_
                           _%rebind?118796%_
                           _%phi118797%_
                           _%ctx118798%_))
                        _g121563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g121563_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id118707%_
               _%eid118708%_
               _%rebind?118709%_
               _%phi118710%_
               _%ctx118711%_)
        (let* ((_%key118713%_ (gx#core-identifier-key _%id118707%_))
               (_%bind118718%_
                (if (##structure-instance-of?
                     _%ctx118711%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid118708%_
                       _%key118713%_
                       _%phi118710%_
                       _%ctx118711%_))
                    (if (##structure-instance-of?
                         _%ctx118711%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid118708%_
                           _%key118713%_
                           _%phi118710%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid118708%_
                           _%key118713%_
                           _%phi118710%_))))))
          (gx#bind-identifier!__%
           _%id118707%_
           _%bind118718%_
           _%rebind?118709%_
           _%phi118710%_
           _%ctx118711%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id118724%_ _%eid118725%_)
        (let* ((_%rebind?118727%_ '#f)
               (_%phi118729%_ (gx#current-expander-phi))
               (_%ctx118731%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118724%_
           _%eid118725%_
           _%rebind?118727%_
           _%phi118729%_
           _%ctx118731%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id118733%_ _%eid118734%_ _%rebind?118735%_)
        (let* ((_%phi118737%_ (gx#current-expander-phi))
               (_%ctx118739%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118733%_
           _%eid118734%_
           _%rebind?118735%_
           _%phi118737%_
           _%ctx118739%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id118741%_ _%eid118742%_ _%rebind?118743%_ _%phi118744%_)
        (let ((_%ctx118746%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118741%_
           _%eid118742%_
           _%rebind?118743%_
           _%phi118744%_
           _%ctx118746%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g121565_
        (let ((_g121564_ (##length _g121565_)))
          (cond ((##fx= _g121564_ 2)
                 (apply (lambda (_%id118724%_ _%eid118725%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id118724%_
                           _%eid118725%_))
                        _g121565_))
                ((##fx= _g121564_ 3)
                 (apply (lambda (_%id118733%_ _%eid118734%_ _%rebind?118735%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id118733%_
                           _%eid118734%_
                           _%rebind?118735%_))
                        _g121565_))
                ((##fx= _g121564_ 4)
                 (apply (lambda (_%id118741%_
                                 _%eid118742%_
                                 _%rebind?118743%_
                                 _%phi118744%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id118741%_
                           _%eid118742%_
                           _%rebind?118743%_
                           _%phi118744%_))
                        _g121565_))
                ((##fx= _g121564_ 5)
                 (apply (lambda (_%id118748%_
                                 _%eid118749%_
                                 _%rebind?118750%_
                                 _%phi118751%_
                                 _%ctx118752%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id118748%_
                           _%eid118749%_
                           _%rebind?118750%_
                           _%phi118751%_
                           _%ctx118752%_))
                        _g121565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g121565_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id118667%_
               _%eid118668%_
               _%rebind?118669%_
               _%phi118670%_
               _%ctx118671%_)
        (gx#bind-identifier!__%
         _%id118667%_
         (##structure
          gx#extern-binding::t
          _%eid118668%_
          (gx#core-identifier-key _%id118667%_)
          _%phi118670%_)
         _%rebind?118669%_
         _%phi118670%_
         _%ctx118671%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id118676%_ _%eid118677%_)
        (let* ((_%rebind?118679%_ '#f)
               (_%phi118681%_ (gx#current-expander-phi))
               (_%ctx118683%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118676%_
           _%eid118677%_
           _%rebind?118679%_
           _%phi118681%_
           _%ctx118683%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id118685%_ _%eid118686%_ _%rebind?118687%_)
        (let* ((_%phi118689%_ (gx#current-expander-phi))
               (_%ctx118691%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118685%_
           _%eid118686%_
           _%rebind?118687%_
           _%phi118689%_
           _%ctx118691%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id118693%_ _%eid118694%_ _%rebind?118695%_ _%phi118696%_)
        (let ((_%ctx118698%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118693%_
           _%eid118694%_
           _%rebind?118695%_
           _%phi118696%_
           _%ctx118698%_))))
    (define gx#core-bind-extern!
      (lambda _g121567_
        (let ((_g121566_ (##length _g121567_)))
          (cond ((##fx= _g121566_ 2)
                 (apply (lambda (_%id118676%_ _%eid118677%_)
                          (gx#core-bind-extern!__0 _%id118676%_ _%eid118677%_))
                        _g121567_))
                ((##fx= _g121566_ 3)
                 (apply (lambda (_%id118685%_ _%eid118686%_ _%rebind?118687%_)
                          (gx#core-bind-extern!__1
                           _%id118685%_
                           _%eid118686%_
                           _%rebind?118687%_))
                        _g121567_))
                ((##fx= _g121566_ 4)
                 (apply (lambda (_%id118693%_
                                 _%eid118694%_
                                 _%rebind?118695%_
                                 _%phi118696%_)
                          (gx#core-bind-extern!__2
                           _%id118693%_
                           _%eid118694%_
                           _%rebind?118695%_
                           _%phi118696%_))
                        _g121567_))
                ((##fx= _g121566_ 5)
                 (apply (lambda (_%id118700%_
                                 _%eid118701%_
                                 _%rebind?118702%_
                                 _%phi118703%_
                                 _%ctx118704%_)
                          (gx#core-bind-extern!__%
                           _%id118700%_
                           _%eid118701%_
                           _%rebind?118702%_
                           _%phi118703%_
                           _%ctx118704%_))
                        _g121567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g121567_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id118621%_
               _%e118622%_
               _%rebind?118623%_
               _%phi118624%_
               _%ctx118625%_)
        (gx#bind-identifier!__%
         _%id118621%_
         (let ((_%key118630%_ (gx#core-identifier-key _%id118621%_))
               (_%e118631%_
                (if (or (##structure-instance-of? _%e118622%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e118622%_
                         'gx#expander-context::t))
                    _%e118622%_
                    (##structure
                     gx#user-expander::t
                     _%e118622%_
                     _%ctx118625%_
                     _%phi118624%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key118630%_
             '#t
             _%phi118624%_
             _%ctx118625%_)
            _%key118630%_
            _%phi118624%_
            _%e118631%_))
         _%rebind?118623%_
         _%phi118624%_
         _%ctx118625%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id118636%_ _%e118637%_)
        (let* ((_%rebind?118639%_ '#f)
               (_%phi118641%_ (gx#current-expander-phi))
               (_%ctx118643%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118636%_
           _%e118637%_
           _%rebind?118639%_
           _%phi118641%_
           _%ctx118643%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id118645%_ _%e118646%_ _%rebind?118647%_)
        (let* ((_%phi118649%_ (gx#current-expander-phi))
               (_%ctx118651%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118645%_
           _%e118646%_
           _%rebind?118647%_
           _%phi118649%_
           _%ctx118651%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id118653%_ _%e118654%_ _%rebind?118655%_ _%phi118656%_)
        (let ((_%ctx118658%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118653%_
           _%e118654%_
           _%rebind?118655%_
           _%phi118656%_
           _%ctx118658%_))))
    (define gx#core-bind-syntax!
      (lambda _g121569_
        (let ((_g121568_ (##length _g121569_)))
          (cond ((##fx= _g121568_ 2)
                 (apply (lambda (_%id118636%_ _%e118637%_)
                          (gx#core-bind-syntax!__0 _%id118636%_ _%e118637%_))
                        _g121569_))
                ((##fx= _g121568_ 3)
                 (apply (lambda (_%id118645%_ _%e118646%_ _%rebind?118647%_)
                          (gx#core-bind-syntax!__1
                           _%id118645%_
                           _%e118646%_
                           _%rebind?118647%_))
                        _g121569_))
                ((##fx= _g121568_ 4)
                 (apply (lambda (_%id118653%_
                                 _%e118654%_
                                 _%rebind?118655%_
                                 _%phi118656%_)
                          (gx#core-bind-syntax!__2
                           _%id118653%_
                           _%e118654%_
                           _%rebind?118655%_
                           _%phi118656%_))
                        _g121569_))
                ((##fx= _g121568_ 5)
                 (apply (lambda (_%id118660%_
                                 _%e118661%_
                                 _%rebind?118662%_
                                 _%phi118663%_
                                 _%ctx118664%_)
                          (gx#core-bind-syntax!__%
                           _%id118660%_
                           _%e118661%_
                           _%rebind?118662%_
                           _%phi118663%_
                           _%ctx118664%_))
                        _g121569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g121569_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id118604%_ _%e118605%_ _%rebind?118606%_)
        (gx#core-bind-syntax!__%
         _%id118604%_
         _%e118605%_
         _%rebind?118606%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id118611%_ _%e118612%_)
        (let ((_%rebind?118614%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id118611%_
           _%e118612%_
           _%rebind?118614%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g121571_
        (let ((_g121570_ (##length _g121571_)))
          (cond ((##fx= _g121570_ 2)
                 (apply (lambda (_%id118611%_ _%e118612%_)
                          (gx#core-bind-root-syntax!__0
                           _%id118611%_
                           _%e118612%_))
                        _g121571_))
                ((##fx= _g121570_ 3)
                 (apply (lambda (_%id118616%_ _%e118617%_ _%rebind?118618%_)
                          (gx#core-bind-root-syntax!__%
                           _%id118616%_
                           _%e118617%_
                           _%rebind?118618%_))
                        _g121571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g121571_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id118562%_
               _%alias-id118563%_
               _%rebind?118564%_
               _%phi118565%_
               _%ctx118566%_)
        (gx#bind-identifier!__%
         _%id118562%_
         (let ((_%key118568%_ (gx#core-identifier-key _%id118562%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key118568%_
             '#t
             _%phi118565%_
             _%ctx118566%_)
            _%key118568%_
            _%phi118565%_
            _%alias-id118563%_))
         _%rebind?118564%_
         _%phi118565%_
         _%ctx118566%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id118573%_ _%alias-id118574%_)
        (let* ((_%rebind?118576%_ '#f)
               (_%phi118578%_ (gx#current-expander-phi))
               (_%ctx118580%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118573%_
           _%alias-id118574%_
           _%rebind?118576%_
           _%phi118578%_
           _%ctx118580%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id118582%_ _%alias-id118583%_ _%rebind?118584%_)
        (let* ((_%phi118586%_ (gx#current-expander-phi))
               (_%ctx118588%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118582%_
           _%alias-id118583%_
           _%rebind?118584%_
           _%phi118586%_
           _%ctx118588%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id118590%_ _%alias-id118591%_ _%rebind?118592%_ _%phi118593%_)
        (let ((_%ctx118595%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118590%_
           _%alias-id118591%_
           _%rebind?118592%_
           _%phi118593%_
           _%ctx118595%_))))
    (define gx#core-bind-alias!
      (lambda _g121573_
        (let ((_g121572_ (##length _g121573_)))
          (cond ((##fx= _g121572_ 2)
                 (apply (lambda (_%id118573%_ _%alias-id118574%_)
                          (gx#core-bind-alias!__0
                           _%id118573%_
                           _%alias-id118574%_))
                        _g121573_))
                ((##fx= _g121572_ 3)
                 (apply (lambda (_%id118582%_
                                 _%alias-id118583%_
                                 _%rebind?118584%_)
                          (gx#core-bind-alias!__1
                           _%id118582%_
                           _%alias-id118583%_
                           _%rebind?118584%_))
                        _g121573_))
                ((##fx= _g121572_ 4)
                 (apply (lambda (_%id118590%_
                                 _%alias-id118591%_
                                 _%rebind?118592%_
                                 _%phi118593%_)
                          (gx#core-bind-alias!__2
                           _%id118590%_
                           _%alias-id118591%_
                           _%rebind?118592%_
                           _%phi118593%_))
                        _g121573_))
                ((##fx= _g121572_ 5)
                 (apply (lambda (_%id118597%_
                                 _%alias-id118598%_
                                 _%rebind?118599%_
                                 _%phi118600%_
                                 _%ctx118601%_)
                          (gx#core-bind-alias!__%
                           _%id118597%_
                           _%alias-id118598%_
                           _%rebind?118599%_
                           _%phi118600%_
                           _%ctx118601%_))
                        _g121573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g121573_))))))
    (define gx#make-binding-id__%
      (lambda (_%key118512%_ _%syntax?118513%_ _%phi118514%_ _%ctx118515%_)
        (if (uninterned-symbol? _%key118512%_)
            (let () (##gensym 'L))
            (if (pair? _%key118512%_)
                (let () (gensym (car _%key118512%_)))
                (if (##structure-instance-of? _%ctx118515%_ 'gx#top-context::t)
                    (let ((_%ns118520%_
                           (gx#core-context-namespace__% _%ctx118515%_)))
                      (if (and (fxzero? _%phi118514%_) (not _%syntax?118513%_))
                          (let ()
                            (if _%ns118520%_
                                (make-symbol__1
                                 _%ns118520%_
                                 '"#"
                                 _%key118512%_)
                                _%key118512%_))
                          (if _%syntax?118513%_
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e118524%_ _%ns118520%_))
                                   (if _%$e118524%_ _%$e118524%_ '""))
                                 '"[:"
                                 (number->string _%phi118514%_)
                                 '":]#"
                                 _%key118512%_))
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e118528%_ _%ns118520%_))
                                   (if _%$e118528%_ _%$e118528%_ '""))
                                 '"["
                                 (number->string _%phi118514%_)
                                 '"]#"
                                 _%key118512%_)))))
                    (let () (gensym _%key118512%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key118535%_)
        (let* ((_%syntax?118537%_ '#f)
               (_%phi118539%_ (gx#current-expander-phi))
               (_%ctx118541%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118535%_
           _%syntax?118537%_
           _%phi118539%_
           _%ctx118541%_))))
    (define gx#make-binding-id__1
      (lambda (_%key118543%_ _%syntax?118544%_)
        (let* ((_%phi118546%_ (gx#current-expander-phi))
               (_%ctx118548%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118543%_
           _%syntax?118544%_
           _%phi118546%_
           _%ctx118548%_))))
    (define gx#make-binding-id__2
      (lambda (_%key118550%_ _%syntax?118551%_ _%phi118552%_)
        (let ((_%ctx118554%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118550%_
           _%syntax?118551%_
           _%phi118552%_
           _%ctx118554%_))))
    (define gx#make-binding-id
      (lambda _g121575_
        (let ((_g121574_ (##length _g121575_)))
          (cond ((##fx= _g121574_ 1)
                 (apply (lambda (_%key118535%_)
                          (gx#make-binding-id__0 _%key118535%_))
                        _g121575_))
                ((##fx= _g121574_ 2)
                 (apply (lambda (_%key118543%_ _%syntax?118544%_)
                          (gx#make-binding-id__1
                           _%key118543%_
                           _%syntax?118544%_))
                        _g121575_))
                ((##fx= _g121574_ 3)
                 (apply (lambda (_%key118550%_ _%syntax?118551%_ _%phi118552%_)
                          (gx#make-binding-id__2
                           _%key118550%_
                           _%syntax?118551%_
                           _%phi118552%_))
                        _g121575_))
                ((##fx= _g121574_ 4)
                 (apply (lambda (_%key118556%_
                                 _%syntax?118557%_
                                 _%phi118558%_
                                 _%ctx118559%_)
                          (gx#make-binding-id__%
                           _%key118556%_
                           _%syntax?118557%_
                           _%phi118558%_
                           _%ctx118559%_))
                        _g121575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g121575_))))))))
