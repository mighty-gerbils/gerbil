(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712124235)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx121528%_)
        (letrec ((_%expand-special121530%_
                  (lambda (_%hd121532%_ _%K121533%_ _%rest121534%_ _%r121535%_)
                    (_%K121533%_
                     _%rest121534%_
                     (cons (gx#core-expand-top _%hd121532%_) _%r121535%_)))))
          (gx#core-expand-block__0 _%stx121528%_ _%expand-special121530%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121281%_)
        (letrec ((_%expand-special121283%_
                  (lambda (_%hd121403%_ _%K121404%_ _%rest121405%_ _%r121406%_)
                    (let* ((_%K121410%_
                            (lambda (_%e121408%_)
                              (_%K121404%_
                               _%rest121405%_
                               (cons _%e121408%_ _%r121406%_))))
                           (_%e121411121440%_ _%hd121403%_)
                           (_%E121435121444%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121411121440%_)))
                           (_%E121431121456%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121411121440%_)
                                  (let ((_%e121436121448%_
                                         (gx#syntax-e _%e121411121440%_)))
                                    (let ((_%hd121437121451%_
                                           (##car _%e121436121448%_))
                                          (_%tl121438121453%_
                                           (##cdr _%e121436121448%_)))
                                      (if (and (gx#identifier?
                                                _%hd121437121451%_)
                                               (gx#core-identifier=?
                                                _%hd121437121451%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121410%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121403%_))
                                              (_%E121435121444%_))
                                          (_%E121435121444%_))))
                                  (_%E121435121444%_))))
                           (_%E121427121468%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121411121440%_)
                                  (let ((_%e121432121460%_
                                         (gx#syntax-e _%e121411121440%_)))
                                    (let ((_%hd121433121463%_
                                           (##car _%e121432121460%_))
                                          (_%tl121434121465%_
                                           (##cdr _%e121432121460%_)))
                                      (if (and (gx#identifier?
                                                _%hd121433121463%_)
                                               (gx#core-identifier=?
                                                _%hd121433121463%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121410%_
                                               (gx#core-expand-define-alias%
                                                _%hd121403%_))
                                              (_%E121431121456%_))
                                          (_%E121431121456%_))))
                                  (_%E121431121456%_))))
                           (_%E121417121480%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121411121440%_)
                                  (let ((_%e121428121472%_
                                         (gx#syntax-e _%e121411121440%_)))
                                    (let ((_%hd121429121475%_
                                           (##car _%e121428121472%_))
                                          (_%tl121430121477%_
                                           (##cdr _%e121428121472%_)))
                                      (if (and (gx#identifier?
                                                _%hd121429121475%_)
                                               (gx#core-identifier=?
                                                _%hd121429121475%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121410%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121403%_))
                                              (_%E121427121468%_))
                                          (_%E121427121468%_))))
                                  (_%E121427121468%_))))
                           (_%E121413121512%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121411121440%_)
                                  (let ((_%e121418121484%_
                                         (gx#syntax-e _%e121411121440%_)))
                                    (let ((_%hd121419121487%_
                                           (##car _%e121418121484%_))
                                          (_%tl121420121489%_
                                           (##cdr _%e121418121484%_)))
                                      (if (and (gx#identifier?
                                                _%hd121419121487%_)
                                               (gx#core-identifier=?
                                                _%hd121419121487%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121420121489%_)
                                              (let ((_%e121421121492%_
                                                     (gx#syntax-e
                                                      _%tl121420121489%_)))
                                                (let ((_%hd121422121495%_
                                                       (##car _%e121421121492%_))
                                                      (_%tl121423121497%_
                                                       (##cdr _%e121421121492%_)))
                                                  (let ((_%hd-bind121500%_
                                                         _%hd121422121495%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121423121497%_)
                                                        (let ((_%e121424121502%_
                                                               (gx#syntax-e
                                                                _%tl121423121497%_)))
                                                          (let ((_%hd121425121505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121424121502%_))
                        (_%tl121426121507%_ (##cdr _%e121424121502%_)))
                    (let ((_%expr121510%_ _%hd121425121505%_))
                      (if (gx#stx-null? _%tl121426121507%_)
                          (if (gx#core-bind-values? _%hd-bind121500%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121500%_)
                                (_%K121410%_ _%hd121403%_))
                              (_%E121417121480%_))
                          (_%E121417121480%_)))))
                (_%E121417121480%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121417121480%_))
                                          (_%E121417121480%_))))
                                  (_%E121417121480%_))))
                           (_%E121412121524%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121411121440%_)
                                  (let ((_%e121414121516%_
                                         (gx#syntax-e _%e121411121440%_)))
                                    (let ((_%hd121415121519%_
                                           (##car _%e121414121516%_))
                                          (_%tl121416121521%_
                                           (##cdr _%e121414121516%_)))
                                      (if (and (gx#identifier?
                                                _%hd121415121519%_)
                                               (gx#core-identifier=?
                                                _%hd121415121519%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121410%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121403%_))
                                              (_%E121413121512%_))
                                          (_%E121413121512%_))))
                                  (_%E121413121512%_)))))
                      (_%E121412121524%_))))
                 (_%eval-body121284%_
                  (lambda (_%rbody121292%_)
                    (let _%lp121294%_ ((_%rest121296%_ _%rbody121292%_)
                                       (_%body121297%_ '())
                                       (_%ebody121298%_ '()))
                      (let* ((_%rest121299121307%_ _%rest121296%_)
                             (_%else121301121315%_
                              (lambda ()
                                (values _%body121297%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121298%_)
                                          (gx#stx-source _%stx121281%_))))))
                             (_%K121303121391%_
                              (lambda (_%rest121318%_ _%hd121319%_)
                                (let* ((_%e121320121337%_ _%hd121319%_)
                                       (_%E121332121341%_
                                        (lambda ()
                                          (_%lp121294%_
                                           _%rest121318%_
                                           (cons _%hd121319%_ _%body121297%_)
                                           (cons _%hd121319%_
                                                 _%ebody121298%_))))
                                       (_%E121322121353%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121320121337%_)
                                              (let ((_%e121333121345%_
                                                     (gx#syntax-e
                                                      _%e121320121337%_)))
                                                (let ((_%hd121334121348%_
                                                       (##car _%e121333121345%_))
                                                      (_%tl121335121350%_
                                                       (##cdr _%e121333121345%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121334121348%_)
                                                           (gx#core-identifier=?
                                                            _%hd121334121348%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121294%_
                                                           _%rest121318%_
                                                           (cons _%hd121319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121297%_)
                   _%ebody121298%_)
                  (_%E121332121341%_))
              (_%E121332121341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121332121341%_))))
                                       (_%E121321121387%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121320121337%_)
                                              (let ((_%e121323121357%_
                                                     (gx#syntax-e
                                                      _%e121320121337%_)))
                                                (let ((_%hd121324121360%_
                                                       (##car _%e121323121357%_))
                                                      (_%tl121325121362%_
                                                       (##cdr _%e121323121357%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121324121360%_)
                                                           (gx#core-identifier=?
                                                            _%hd121324121360%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121325121362%_)
                                                          (let ((_%e121326121365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121325121362%_)))
                    (let ((_%hd121327121368%_ (##car _%e121326121365%_))
                          (_%tl121328121370%_ (##cdr _%e121326121365%_)))
                      (let ((_%hd-bind121373%_ _%hd121327121368%_))
                        (if (gx#stx-pair? _%tl121328121370%_)
                            (let ((_%e121329121375%_
                                   (gx#syntax-e _%tl121328121370%_)))
                              (let ((_%hd121330121378%_
                                     (##car _%e121329121375%_))
                                    (_%tl121331121380%_
                                     (##cdr _%e121329121375%_)))
                                (let ((_%expr121383%_ _%hd121330121378%_))
                                  (if (gx#stx-null? _%tl121331121380%_)
                                      (if '#t
                                          (let ((_%ehd121385%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121373%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121383%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121319%_))))
                                            (_%lp121294%_
                                             _%rest121318%_
                                             (cons _%ehd121385%_
                                                   _%body121297%_)
                                             (cons _%ehd121385%_
                                                   _%ebody121298%_)))
                                          (_%E121322121353%_))
                                      (_%E121322121353%_)))))
                            (_%E121322121353%_)))))
                  (_%E121322121353%_))
              (_%E121322121353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121322121353%_)))))
                                  (_%E121321121387%_)))))
                        (if (##pair? _%rest121299121307%_)
                            (let ((_%hd121304121394%_
                                   (##car _%rest121299121307%_))
                                  (_%tl121305121396%_
                                   (##cdr _%rest121299121307%_)))
                              (let* ((_%hd121399%_ _%hd121304121394%_)
                                     (_%rest121401%_ _%tl121305121396%_))
                                (_%K121303121391%_
                                 _%rest121401%_
                                 _%hd121399%_)))
                            (_%else121301121315%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121287%_
                     (gx#core-expand-block__1
                      _%stx121281%_
                      _%expand-special121283%_
                      '#f))
                    (_g121551_ (_%eval-body121284%_ _%rbody121287%_)))
               (begin
                 (let ((_g121552_
                        (if (##values? _g121551_)
                            (##vector-length _g121551_)
                            1)))
                   (if (not (##fx= _g121552_ 2))
                       (error "Context expects 2 values" _g121552_)))
                 (let ((_%expanded-body121289%_ (##vector-ref _g121551_ 0))
                       (_%value121290%_ (##vector-ref _g121551_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121289%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121290%_ '())))
                    (gx#stx-source _%stx121281%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121251%_)
        (let* ((_%e121252121259%_ _%stx121251%_)
               (_%E121254121263%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121252121259%_)))
               (_%E121253121277%_
                (lambda ()
                  (if (gx#stx-pair? _%e121252121259%_)
                      (let ((_%e121255121267%_
                             (gx#syntax-e _%e121252121259%_)))
                        (let ((_%hd121256121270%_ (##car _%e121255121267%_))
                              (_%tl121257121272%_ (##cdr _%e121255121267%_)))
                          (let ((_%body121275%_ _%tl121257121272%_))
                            (if (gx#stx-list? _%body121275%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121275%_)
                                 (gx#stx-source _%stx121251%_))
                                (_%E121254121263%_)))))
                      (_%E121254121263%_)))))
          (_%E121253121277%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121249%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121249%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121195%_)
        (let* ((_%e121196121209%_ _%stx121195%_)
               (_%E121198121213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121196121209%_)))
               (_%E121197121245%_
                (lambda ()
                  (if (gx#stx-pair? _%e121196121209%_)
                      (let ((_%e121199121217%_
                             (gx#syntax-e _%e121196121209%_)))
                        (let ((_%hd121200121220%_ (##car _%e121199121217%_))
                              (_%tl121201121222%_ (##cdr _%e121199121217%_)))
                          (if (gx#stx-pair? _%tl121201121222%_)
                              (let ((_%e121202121225%_
                                     (gx#syntax-e _%tl121201121222%_)))
                                (let ((_%hd121203121228%_
                                       (##car _%e121202121225%_))
                                      (_%tl121204121230%_
                                       (##cdr _%e121202121225%_)))
                                  (let ((_%ann121233%_ _%hd121203121228%_))
                                    (if (gx#stx-pair? _%tl121204121230%_)
                                        (let ((_%e121205121235%_
                                               (gx#syntax-e
                                                _%tl121204121230%_)))
                                          (let ((_%hd121206121238%_
                                                 (##car _%e121205121235%_))
                                                (_%tl121207121240%_
                                                 (##cdr _%e121205121235%_)))
                                            (let ((_%expr121243%_
                                                   _%hd121206121238%_))
                                              (if (gx#stx-null?
                                                   _%tl121207121240%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121243%_)
                                 '())))
               (gx#stx-source _%stx121195%_))
              (_%E121198121213%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121198121213%_)))))
                                        (_%E121198121213%_)))))
                              (_%E121198121213%_))))
                      (_%E121198121213%_)))))
          (_%E121197121245%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx120919%_ _%body120920%_)
        (letrec ((_%expand-special120922%_
                  (lambda (_%hd121190%_ _%K121191%_ _%rest121192%_ _%r121193%_)
                    (_%K121191%_
                     '()
                     (cons (_%expand-internal120923%_
                            _%hd121190%_
                            _%rest121192%_)
                           _%r121193%_))))
                 (_%expand-internal120923%_
                  (lambda (_%hd121186%_ _%rest121187%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal120925%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121186%_ _%rest121187%_))
                          (gx#stx-source _%stx120919%_))
                         _%expand-internal-special120924%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj121545
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj121545)
                       __obj121545))))
                 (_%expand-internal-special120924%_
                  (lambda (_%hd121081%_ _%K121082%_ _%rest121083%_ _%r121084%_)
                    (let* ((_%e121085121110%_ _%hd121081%_)
                           (_%E121105121114%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121085121110%_)))
                           (_%E121101121126%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121085121110%_)
                                  (let ((_%e121106121118%_
                                         (gx#syntax-e _%e121085121110%_)))
                                    (let ((_%hd121107121121%_
                                           (##car _%e121106121118%_))
                                          (_%tl121108121123%_
                                           (##cdr _%e121106121118%_)))
                                      (if (and (gx#identifier?
                                                _%hd121107121121%_)
                                               (gx#core-identifier=?
                                                _%hd121107121121%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121082%_
                                               _%rest121083%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121081%_)
                                                     _%r121084%_))
                                              (_%E121105121114%_))
                                          (_%E121105121114%_))))
                                  (_%E121105121114%_))))
                           (_%E121097121138%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121085121110%_)
                                  (let ((_%e121102121130%_
                                         (gx#syntax-e _%e121085121110%_)))
                                    (let ((_%hd121103121133%_
                                           (##car _%e121102121130%_))
                                          (_%tl121104121135%_
                                           (##cdr _%e121102121130%_)))
                                      (if (and (gx#identifier?
                                                _%hd121103121133%_)
                                               (gx#core-identifier=?
                                                _%hd121103121133%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121081%_)
                                                (_%K121082%_
                                                 _%rest121083%_
                                                 _%r121084%_))
                                              (_%E121101121126%_))
                                          (_%E121101121126%_))))
                                  (_%E121101121126%_))))
                           (_%E121087121150%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121085121110%_)
                                  (let ((_%e121098121142%_
                                         (gx#syntax-e _%e121085121110%_)))
                                    (let ((_%hd121099121145%_
                                           (##car _%e121098121142%_))
                                          (_%tl121100121147%_
                                           (##cdr _%e121098121142%_)))
                                      (if (and (gx#identifier?
                                                _%hd121099121145%_)
                                               (gx#core-identifier=?
                                                _%hd121099121145%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121081%_)
                                                (_%K121082%_
                                                 _%rest121083%_
                                                 _%r121084%_))
                                              (_%E121097121138%_))
                                          (_%E121097121138%_))))
                                  (_%E121097121138%_))))
                           (_%E121086121182%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121085121110%_)
                                  (let ((_%e121088121154%_
                                         (gx#syntax-e _%e121085121110%_)))
                                    (let ((_%hd121089121157%_
                                           (##car _%e121088121154%_))
                                          (_%tl121090121159%_
                                           (##cdr _%e121088121154%_)))
                                      (if (and (gx#identifier?
                                                _%hd121089121157%_)
                                               (gx#core-identifier=?
                                                _%hd121089121157%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121090121159%_)
                                              (let ((_%e121091121162%_
                                                     (gx#syntax-e
                                                      _%tl121090121159%_)))
                                                (let ((_%hd121092121165%_
                                                       (##car _%e121091121162%_))
                                                      (_%tl121093121167%_
                                                       (##cdr _%e121091121162%_)))
                                                  (let ((_%hd-bind121170%_
                                                         _%hd121092121165%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121093121167%_)
                                                        (let ((_%e121094121172%_
                                                               (gx#syntax-e
                                                                _%tl121093121167%_)))
                                                          (let ((_%hd121095121175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121094121172%_))
                        (_%tl121096121177%_ (##cdr _%e121094121172%_)))
                    (let ((_%expr121180%_ _%hd121095121175%_))
                      (if (gx#stx-null? _%tl121096121177%_)
                          (if (gx#core-bind-values? _%hd-bind121170%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121170%_)
                                (_%K121082%_
                                 _%rest121083%_
                                 (cons _%hd121081%_ _%r121084%_)))
                              (_%E121087121150%_))
                          (_%E121087121150%_)))))
                (_%E121087121150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121087121150%_))
                                          (_%E121087121150%_))))
                                  (_%E121087121150%_)))))
                      (_%E121086121182%_))))
                 (_%wrap-internal120925%_
                  (lambda (_%rbody120927%_)
                    (let _%lp120929%_ ((_%rest120931%_ _%rbody120927%_)
                                       (_%decls120932%_ '())
                                       (_%bind120933%_ '())
                                       (_%body120934%_ '()))
                      (let* ((_%e120935120942%_ _%rest120931%_)
                             (_%E120937120991%_
                              (lambda ()
                                (let* ((_%body120986%_
                                        (let* ((_%body120945120955%_
                                                _%body120934%_)
                                               (_%else120948120963%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body120934%_)
                                                   (gx#stx-source
                                                    _%stx120919%_)))))
                                          (let ((_%K120953120983%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx120919%_)))
                                                (_%K120950120969%_
                                                 (lambda (_%expr120967%_)
                                                   _%expr120967%_)))
                                            (let ((_%try-match120947120979%_
                                                   (lambda ()
                                                     (if (##pair? _%body120945120955%_)
                                                         (let ((_%tl120952120974%_
                                                                (##cdr _%body120945120955%_))
                                                               (_%hd120951120972%_
                                                                (##car _%body120945120955%_)))
                                                           (if (##null? _%tl120952120974%_)
                                                               (let ((_%expr120977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120951120972%_))
                         (_%K120950120969%_ _%expr120977%_))
                       (_%else120948120963%_)))
                 (_%else120948120963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body120945120955%_)
                                                  (_%K120953120983%_)
                                                  (_%try-match120947120979%_))))))
                                       (_%body120988%_
                                        (if (null? _%bind120933%_)
                                            _%body120986%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind120933%_
                                                         (cons _%body120986%_
                                                               '())))
                                             (gx#stx-source _%stx120919%_)))))
                                  (if (null? _%decls120932%_)
                                      _%body120988%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls120932%_
                                                   (cons _%body120988%_ '())))
                                       (gx#stx-source _%stx120919%_))))))
                             (_%E120936121077%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120935120942%_)
                                    (let ((_%e120938120995%_
                                           (gx#syntax-e _%e120935120942%_)))
                                      (let ((_%hd120939120998%_
                                             (##car _%e120938120995%_))
                                            (_%tl120940121000%_
                                             (##cdr _%e120938120995%_)))
                                        (let* ((_%hd121003%_
                                                _%hd120939120998%_)
                                               (_%rest121005%_
                                                _%tl120940121000%_))
                                          (if '#t
                                              (let* ((_%e121006121023%_
                                                      _%hd121003%_)
                                                     (_%E121018121027%_
                                                      (lambda ()
                                                        (if (null? _%bind120933%_)
                                                            (_%lp120929%_
                                                             _%rest121005%_
                                                             _%decls120932%_
                                                             _%bind120933%_
                                                             (cons _%hd121003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body120934%_))
                    (_%lp120929%_
                     _%rest121005%_
                     _%decls120932%_
                     (cons (cons '#f (cons _%hd121003%_ '())) _%bind120933%_)
                     _%body120934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121008121041%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121006121023%_)
                                                            (let ((_%e121019121031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121006121023%_)))
                      (let ((_%hd121020121034%_ (##car _%e121019121031%_))
                            (_%tl121021121036%_ (##cdr _%e121019121031%_)))
                        (if (and (gx#identifier? _%hd121020121034%_)
                                 (gx#core-identifier=?
                                  _%hd121020121034%_
                                  '%#declare))
                            (let ((_%xdecls121039%_ _%tl121021121036%_))
                              (if '#t
                                  (_%lp120929%_
                                   _%rest121005%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls120932%_
                                    _%xdecls121039%_)
                                   _%bind120933%_
                                   _%body120934%_)
                                  (_%E121018121027%_)))
                            (_%E121018121027%_))))
                    (_%E121018121027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121007121073%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121006121023%_)
                                                            (let ((_%e121009121045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121006121023%_)))
                      (let ((_%hd121010121048%_ (##car _%e121009121045%_))
                            (_%tl121011121050%_ (##cdr _%e121009121045%_)))
                        (if (and (gx#identifier? _%hd121010121048%_)
                                 (gx#core-identifier=?
                                  _%hd121010121048%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121011121050%_)
                                (let ((_%e121012121053%_
                                       (gx#syntax-e _%tl121011121050%_)))
                                  (let ((_%hd121013121056%_
                                         (##car _%e121012121053%_))
                                        (_%tl121014121058%_
                                         (##cdr _%e121012121053%_)))
                                    (let ((_%hd-bind121061%_
                                           _%hd121013121056%_))
                                      (if (gx#stx-pair? _%tl121014121058%_)
                                          (let ((_%e121015121063%_
                                                 (gx#syntax-e
                                                  _%tl121014121058%_)))
                                            (let ((_%hd121016121066%_
                                                   (##car _%e121015121063%_))
                                                  (_%tl121017121068%_
                                                   (##cdr _%e121015121063%_)))
                                              (let ((_%expr121071%_
                                                     _%hd121016121066%_))
                                                (if (gx#stx-null?
                                                     _%tl121017121068%_)
                                                    (if '#t
                                                        (_%lp120929%_
                                                         _%rest121005%_
                                                         _%decls120932%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121061%_)
                             (cons (gx#core-expand-expression _%expr121071%_)
                                   '()))
                       _%bind120933%_)
                 _%body120934%_)
                (_%E121008121041%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121008121041%_)))))
                                          (_%E121008121041%_)))))
                                (_%E121008121041%_))
                            (_%E121008121041%_))))
                    (_%E121008121041%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121007121073%_))
                                              (_%E120937120991%_)))))
                                    (_%E120937120991%_)))))
                        (_%E120936121077%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body120920%_)
            (gx#stx-source _%stx120919%_))
           _%expand-special120922%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx120857%_)
        (let* ((_%e120858120865%_ _%stx120857%_)
               (_%E120860120869%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120858120865%_)))
               (_%E120859120915%_
                (lambda ()
                  (if (gx#stx-pair? _%e120858120865%_)
                      (let ((_%e120861120873%_
                             (gx#syntax-e _%e120858120865%_)))
                        (let ((_%hd120862120876%_ (##car _%e120861120873%_))
                              (_%tl120863120878%_ (##cdr _%e120861120873%_)))
                          (let ((_%body120881%_ _%tl120863120878%_))
                            (if (gx#stx-list? _%body120881%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl120883%_)
                                     (let* ((_%e120884120891%_ _%decl120883%_)
                                            (_%E120886120895%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e120884120891%_)))
                                            (_%E120885120911%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e120884120891%_)
                                                   (let ((_%e120887120899%_
                                                          (gx#syntax-e
                                                           _%e120884120891%_)))
                                                     (let ((_%hd120888120902%_
                                                            (##car _%e120887120899%_))
                                                           (_%tl120889120904%_
                                                            (##cdr _%e120887120899%_)))
                                                       (let* ((_%head120907%_
                                                               _%hd120888120902%_)
                                                              (_%args120909%_
                                                               _%tl120889120904%_))
                                                         (if (gx#stx-list?
                                                              _%args120909%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl120883%_)
                                                             (_%E120886120895%_)))))
                                                   (_%E120886120895%_)))))
                                       (_%E120885120911%_)))
                                   _%body120881%_))
                                 (gx#stx-source _%stx120857%_))
                                (_%E120860120869%_)))))
                      (_%E120860120869%_)))))
          (_%E120859120915%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx120761%_)
        (let* ((_%e120762120769%_ _%stx120761%_)
               (_%E120764120773%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120762120769%_)))
               (_%E120763120853%_
                (lambda ()
                  (if (gx#stx-pair? _%e120762120769%_)
                      (let ((_%e120765120777%_
                             (gx#syntax-e _%e120762120769%_)))
                        (let ((_%hd120766120780%_ (##car _%e120765120777%_))
                              (_%tl120767120782%_ (##cdr _%e120765120777%_)))
                          (let ((_%body120785%_ _%tl120767120782%_))
                            (if '#t
                                (let _%lp120787%_ ((_%rest120789%_
                                                    _%body120785%_)
                                                   (_%r120790%_ '()))
                                  (let* ((_%e120791120805%_ _%rest120789%_)
                                         (_%E120803120809%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx120761%_)))
                                         (_%E120793120813%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e120791120805%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r120790%_))
                                                     (gx#stx-source
                                                      _%stx120761%_))
                                                    (_%E120803120809%_))
                                                (_%E120803120809%_))))
                                         (_%E120792120849%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e120791120805%_)
                                                (let ((_%e120794120817%_
                                                       (gx#syntax-e
                                                        _%e120791120805%_)))
                                                  (let ((_%hd120795120820%_
                                                         (##car _%e120794120817%_))
                                                        (_%tl120796120822%_
                                                         (##cdr _%e120794120817%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd120795120820%_)
                                                        (let ((_%e120797120825%_
                                                               (gx#syntax-e
                                                                _%hd120795120820%_)))
                                                          (let ((_%hd120798120828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120797120825%_))
                        (_%tl120799120830%_ (##cdr _%e120797120825%_)))
                    (let ((_%id120833%_ _%hd120798120828%_))
                      (if (gx#stx-pair? _%tl120799120830%_)
                          (let ((_%e120800120835%_
                                 (gx#syntax-e _%tl120799120830%_)))
                            (let ((_%hd120801120838%_
                                   (##car _%e120800120835%_))
                                  (_%tl120802120840%_
                                   (##cdr _%e120800120835%_)))
                              (let ((_%eid120843%_ _%hd120801120838%_))
                                (if (gx#stx-null? _%tl120802120840%_)
                                    (let ((_%rest120845%_ _%tl120796120822%_))
                                      (if (and (gx#identifier? _%id120833%_)
                                               (gx#identifier? _%eid120843%_))
                                          (let ((_%eid120847%_
                                                 (gx#stx-e _%eid120843%_)))
                                            (gx#core-bind-extern!__0
                                             _%id120833%_
                                             _%eid120847%_)
                                            (_%lp120787%_
                                             _%rest120845%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id120833%_)
                                                         (cons _%eid120847%_
                                                               '()))
                                                   _%r120790%_)))
                                          (_%E120793120813%_)))
                                    (_%E120793120813%_)))))
                          (_%E120793120813%_)))))
                (_%E120793120813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120793120813%_)))))
                                    (_%E120792120849%_)))
                                (_%E120764120773%_)))))
                      (_%E120764120773%_)))))
          (_%E120763120853%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx120707%_)
        (let* ((_%e120708120721%_ _%stx120707%_)
               (_%E120710120725%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120708120721%_)))
               (_%E120709120757%_
                (lambda ()
                  (if (gx#stx-pair? _%e120708120721%_)
                      (let ((_%e120711120729%_
                             (gx#syntax-e _%e120708120721%_)))
                        (let ((_%hd120712120732%_ (##car _%e120711120729%_))
                              (_%tl120713120734%_ (##cdr _%e120711120729%_)))
                          (if (gx#stx-pair? _%tl120713120734%_)
                              (let ((_%e120714120737%_
                                     (gx#syntax-e _%tl120713120734%_)))
                                (let ((_%hd120715120740%_
                                       (##car _%e120714120737%_))
                                      (_%tl120716120742%_
                                       (##cdr _%e120714120737%_)))
                                  (let ((_%hd120745%_ _%hd120715120740%_))
                                    (if (gx#stx-pair? _%tl120716120742%_)
                                        (let ((_%e120717120747%_
                                               (gx#syntax-e
                                                _%tl120716120742%_)))
                                          (let ((_%hd120718120750%_
                                                 (##car _%e120717120747%_))
                                                (_%tl120719120752%_
                                                 (##cdr _%e120717120747%_)))
                                            (let ((_%expr120755%_
                                                   _%hd120718120750%_))
                                              (if (gx#stx-null?
                                                   _%tl120719120752%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd120745%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd120745%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120745%_)
                             (cons (gx#core-expand-expression _%expr120755%_)
                                   '())))
                 (gx#stx-source _%stx120707%_)))
              (_%E120710120725%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120710120725%_)))))
                                        (_%E120710120725%_)))))
                              (_%E120710120725%_))))
                      (_%E120710120725%_)))))
          (_%E120709120757%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx120651%_)
        (let* ((_%e120652120665%_ _%stx120651%_)
               (_%E120654120669%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120652120665%_)))
               (_%E120653120703%_
                (lambda ()
                  (if (gx#stx-pair? _%e120652120665%_)
                      (let ((_%e120655120673%_
                             (gx#syntax-e _%e120652120665%_)))
                        (let ((_%hd120656120676%_ (##car _%e120655120673%_))
                              (_%tl120657120678%_ (##cdr _%e120655120673%_)))
                          (if (gx#stx-pair? _%tl120657120678%_)
                              (let ((_%e120658120681%_
                                     (gx#syntax-e _%tl120657120678%_)))
                                (let ((_%hd120659120684%_
                                       (##car _%e120658120681%_))
                                      (_%tl120660120686%_
                                       (##cdr _%e120658120681%_)))
                                  (let ((_%id120689%_ _%hd120659120684%_))
                                    (if (gx#stx-pair? _%tl120660120686%_)
                                        (let ((_%e120661120691%_
                                               (gx#syntax-e
                                                _%tl120660120686%_)))
                                          (let ((_%hd120662120694%_
                                                 (##car _%e120661120691%_))
                                                (_%tl120663120696%_
                                                 (##cdr _%e120661120691%_)))
                                            (let ((_%binding-id120699%_
                                                   _%hd120662120694%_))
                                              (if (gx#stx-null?
                                                   _%tl120663120696%_)
                                                  (if (and (gx#identifier?
                                                            _%id120689%_)
                                                           (gx#identifier?
                                                            _%binding-id120699%_))
                                                      (let ((_%eid120701%_
                                                             (gx#stx-e
                                                              _%binding-id120699%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id120689%_
                                                         _%eid120701%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120689%_)
                             (cons _%eid120701%_ '())))))
              (_%E120654120669%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120654120669%_)))))
                                        (_%E120654120669%_)))))
                              (_%E120654120669%_))))
                      (_%E120654120669%_)))))
          (_%E120653120703%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx120594%_)
        (let* ((_%e120595120608%_ _%stx120594%_)
               (_%E120597120612%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120595120608%_)))
               (_%E120596120647%_
                (lambda ()
                  (if (gx#stx-pair? _%e120595120608%_)
                      (let ((_%e120598120616%_
                             (gx#syntax-e _%e120595120608%_)))
                        (let ((_%hd120599120619%_ (##car _%e120598120616%_))
                              (_%tl120600120621%_ (##cdr _%e120598120616%_)))
                          (if (gx#stx-pair? _%tl120600120621%_)
                              (let ((_%e120601120624%_
                                     (gx#syntax-e _%tl120600120621%_)))
                                (let ((_%hd120602120627%_
                                       (##car _%e120601120624%_))
                                      (_%tl120603120629%_
                                       (##cdr _%e120601120624%_)))
                                  (let ((_%id120632%_ _%hd120602120627%_))
                                    (if (gx#stx-pair? _%tl120603120629%_)
                                        (let ((_%e120604120634%_
                                               (gx#syntax-e
                                                _%tl120603120629%_)))
                                          (let ((_%hd120605120637%_
                                                 (##car _%e120604120634%_))
                                                (_%tl120606120639%_
                                                 (##cdr _%e120604120634%_)))
                                            (let ((_%expr120642%_
                                                   _%hd120605120637%_))
                                              (if (gx#stx-null?
                                                   _%tl120606120639%_)
                                                  (if (gx#identifier?
                                                       _%id120632%_)
                                                      (let ((_g121553_
                                                             (gx#core-expand-expression+1
                                                              _%expr120642%_)))
                                                        (begin
                                                          (let ((_g121554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g121553_)
                             (##vector-length _g121553_)
                             1)))
                    (if (not (##fx= _g121554_ 2))
                        (error "Context expects 2 values" _g121554_)))
                  (let ((_%e-stx120644%_ (##vector-ref _g121553_ 0))
                        (_%e120645%_ (##vector-ref _g121553_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id120632%_ _%e120645%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id120632%_)
                                   (cons _%e-stx120644%_ '())))
                       (gx#stx-source _%stx120594%_))))))
              (_%E120597120612%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120597120612%_)))))
                                        (_%E120597120612%_)))))
                              (_%E120597120612%_))))
                      (_%E120597120612%_)))))
          (_%E120596120647%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx120538%_)
        (let* ((_%e120539120552%_ _%stx120538%_)
               (_%E120541120556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120539120552%_)))
               (_%E120540120590%_
                (lambda ()
                  (if (gx#stx-pair? _%e120539120552%_)
                      (let ((_%e120542120560%_
                             (gx#syntax-e _%e120539120552%_)))
                        (let ((_%hd120543120563%_ (##car _%e120542120560%_))
                              (_%tl120544120565%_ (##cdr _%e120542120560%_)))
                          (if (gx#stx-pair? _%tl120544120565%_)
                              (let ((_%e120545120568%_
                                     (gx#syntax-e _%tl120544120565%_)))
                                (let ((_%hd120546120571%_
                                       (##car _%e120545120568%_))
                                      (_%tl120547120573%_
                                       (##cdr _%e120545120568%_)))
                                  (let ((_%id120576%_ _%hd120546120571%_))
                                    (if (gx#stx-pair? _%tl120547120573%_)
                                        (let ((_%e120548120578%_
                                               (gx#syntax-e
                                                _%tl120547120573%_)))
                                          (let ((_%hd120549120581%_
                                                 (##car _%e120548120578%_))
                                                (_%tl120550120583%_
                                                 (##cdr _%e120548120578%_)))
                                            (let ((_%alias-id120586%_
                                                   _%hd120549120581%_))
                                              (if (gx#stx-null?
                                                   _%tl120550120583%_)
                                                  (if (and (gx#identifier?
                                                            _%id120576%_)
                                                           (gx#identifier?
                                                            _%alias-id120586%_))
                                                      (let ((_%alias-id120588%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id120586%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id120576%_
                                                         _%alias-id120588%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120576%_)
                             (cons _%alias-id120588%_ '())))))
              (_%E120541120556%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120541120556%_)))))
                                        (_%E120541120556%_)))))
                              (_%E120541120556%_))))
                      (_%E120541120556%_)))))
          (_%E120540120590%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120481%_ _%wrap?120482%_)
        (let* ((_%e120483120493%_ _%stx120481%_)
               (_%E120485120497%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120483120493%_)))
               (_%E120484120524%_
                (lambda ()
                  (if (gx#stx-pair? _%e120483120493%_)
                      (let ((_%e120486120501%_
                             (gx#syntax-e _%e120483120493%_)))
                        (let ((_%hd120487120504%_ (##car _%e120486120501%_))
                              (_%tl120488120506%_ (##cdr _%e120486120501%_)))
                          (if (gx#stx-pair? _%tl120488120506%_)
                              (let ((_%e120489120509%_
                                     (gx#syntax-e _%tl120488120506%_)))
                                (let ((_%hd120490120512%_
                                       (##car _%e120489120509%_))
                                      (_%tl120491120514%_
                                       (##cdr _%e120489120509%_)))
                                  (let* ((_%hd120517%_ _%hd120490120512%_)
                                         (_%body120519%_ _%tl120491120514%_))
                                    (if (gx#core-bind-values? _%hd120517%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd120517%_)
                                           (let ((_%body120522%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd120517%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120481%_
                                                               _%body120519%_)
                                                              '()))))
                                             (if _%wrap?120482%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body120522%_)
                                                  (gx#stx-source
                                                   _%stx120481%_))
                                                 _%body120522%_)))
                                         gx#current-expander-context
                                         (let ((__obj121546
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121546)
                                           __obj121546))
                                        (_%E120485120497%_)))))
                              (_%E120485120497%_))))
                      (_%E120485120497%_)))))
          (_%E120484120524%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx120531%_)
        (let ((_%wrap?120533%_ '#t))
          (gx#core-expand-lambda%__% _%stx120531%_ _%wrap?120533%_))))
    (define gx#core-expand-lambda%
      (lambda _g121556_
        (let ((_g121555_ (##length _g121556_)))
          (cond ((##fx= _g121555_ 1)
                 (apply (lambda (_%stx120531%_)
                          (gx#core-expand-lambda%__0 _%stx120531%_))
                        _g121556_))
                ((##fx= _g121555_ 2)
                 (apply (lambda (_%stx120535%_ _%wrap?120536%_)
                          (gx#core-expand-lambda%__%
                           _%stx120535%_
                           _%wrap?120536%_))
                        _g121556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g121556_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120445%_)
        (let* ((_%e120446120453%_ _%stx120445%_)
               (_%E120448120457%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120446120453%_)))
               (_%E120447120476%_
                (lambda ()
                  (if (gx#stx-pair? _%e120446120453%_)
                      (let ((_%e120449120461%_
                             (gx#syntax-e _%e120446120453%_)))
                        (let ((_%hd120450120464%_ (##car _%e120449120461%_))
                              (_%tl120451120466%_ (##cdr _%e120449120461%_)))
                          (let ((_%clauses120469%_ _%tl120451120466%_))
                            (if (gx#stx-list? _%clauses120469%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120471%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120471%_)
                                       (let ((_%$e120473%_
                                              (gx#stx-source
                                               _%clause120471%_)))
                                         (if _%$e120473%_
                                             _%$e120473%_
                                             (gx#stx-source _%stx120445%_))))
                                      '#f))
                                   _%clauses120469%_))
                                 (gx#stx-source _%stx120445%_))
                                (_%E120448120457%_)))))
                      (_%E120448120457%_)))))
          (_%E120447120476%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120399%_)
        (let* ((_%e120400120410%_ _%stx120399%_)
               (_%E120402120414%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120400120410%_)))
               (_%E120401120441%_
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
                                        (let ((_%expressions120438%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120434%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120434%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120434%_
                                                           _%expressions120438%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120399%_
                         _%body120436%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120399%_)))
                                           gx#current-expander-context
                                           (let ((__obj121547
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121547)
                                             __obj121547)))
                                        (_%E120402120414%_)))))
                              (_%E120402120414%_))))
                      (_%E120402120414%_)))))
          (_%E120401120441%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120344%_ _%form120345%_)
        (let* ((_%e120346120356%_ _%stx120344%_)
               (_%E120348120360%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120346120356%_)))
               (_%E120347120385%_
                (lambda ()
                  (if (gx#stx-pair? _%e120346120356%_)
                      (let ((_%e120349120364%_
                             (gx#syntax-e _%e120346120356%_)))
                        (let ((_%hd120350120367%_ (##car _%e120349120364%_))
                              (_%tl120351120369%_ (##cdr _%e120349120364%_)))
                          (if (gx#stx-pair? _%tl120351120369%_)
                              (let ((_%e120352120372%_
                                     (gx#syntax-e _%tl120351120369%_)))
                                (let ((_%hd120353120375%_
                                       (##car _%e120352120372%_))
                                      (_%tl120354120377%_
                                       (##cdr _%e120352120372%_)))
                                  (let* ((_%hd120380%_ _%hd120353120375%_)
                                         (_%body120382%_ _%tl120354120377%_))
                                    (if (gx#core-expand-let-bind? _%hd120380%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120380%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120345%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120380%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120380%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120344%_
                                                               _%body120382%_)
                                                              '())))
                                            (gx#stx-source _%stx120344%_)))
                                         gx#current-expander-context
                                         (let ((__obj121548
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121548)
                                           __obj121548))
                                        (_%E120348120360%_)))))
                              (_%E120348120360%_))))
                      (_%E120348120360%_)))))
          (_%E120347120385%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120392%_)
        (let ((_%form120394%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120392%_ _%form120394%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g121558_
        (let ((_g121557_ (##length _g121558_)))
          (cond ((##fx= _g121557_ 1)
                 (apply (lambda (_%stx120392%_)
                          (gx#core-expand-letrec-values%__0 _%stx120392%_))
                        _g121558_))
                ((##fx= _g121557_ 2)
                 (apply (lambda (_%stx120396%_ _%form120397%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120396%_
                           _%form120397%_))
                        _g121558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g121558_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120341%_)
        (gx#core-expand-letrec-values%__% _%stx120341%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120298%_)
        (if (gx#stx-list? _%stx120298%_)
            (gx#stx-andmap
             (lambda (_%bind120300%_)
               (let* ((_%e120301120311%_ _%bind120300%_)
                      (_%E120303120315%_ (lambda () '#f))
                      (_%E120302120337%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120301120311%_)
                             (let ((_%e120304120319%_
                                    (gx#syntax-e _%e120301120311%_)))
                               (let ((_%hd120305120322%_
                                      (##car _%e120304120319%_))
                                     (_%tl120306120324%_
                                      (##cdr _%e120304120319%_)))
                                 (let ((_%hd120327%_ _%hd120305120322%_))
                                   (if (gx#stx-pair? _%tl120306120324%_)
                                       (let ((_%e120307120329%_
                                              (gx#syntax-e
                                               _%tl120306120324%_)))
                                         (let ((_%hd120308120332%_
                                                (##car _%e120307120329%_))
                                               (_%tl120309120334%_
                                                (##cdr _%e120307120329%_)))
                                           (if (gx#stx-null?
                                                _%tl120309120334%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120327%_)
                                                   (_%E120303120315%_))
                                               (_%E120303120315%_))))
                                       (_%E120303120315%_)))))
                             (_%E120303120315%_)))))
                 (_%E120302120337%_)))
             _%stx120298%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120257%_)
        (let* ((_%e120258120268%_ _%bind120257%_)
               (_%E120260120272%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120258120268%_)))
               (_%E120259120294%_
                (lambda ()
                  (if (gx#stx-pair? _%e120258120268%_)
                      (let ((_%e120261120276%_
                             (gx#syntax-e _%e120258120268%_)))
                        (let ((_%hd120262120279%_ (##car _%e120261120276%_))
                              (_%tl120263120281%_ (##cdr _%e120261120276%_)))
                          (if (gx#stx-pair? _%tl120263120281%_)
                              (let ((_%e120264120284%_
                                     (gx#syntax-e _%tl120263120281%_)))
                                (let ((_%hd120265120287%_
                                       (##car _%e120264120284%_))
                                      (_%tl120266120289%_
                                       (##cdr _%e120264120284%_)))
                                  (let ((_%expr120292%_ _%hd120265120287%_))
                                    (if (gx#stx-null? _%tl120266120289%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120292%_)
                                            (_%E120260120272%_))
                                        (_%E120260120272%_)))))
                              (_%E120260120272%_))))
                      (_%E120260120272%_)))))
          (_%E120259120294%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120216%_)
        (let* ((_%e120217120227%_ _%bind120216%_)
               (_%E120219120231%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120217120227%_)))
               (_%E120218120253%_
                (lambda ()
                  (if (gx#stx-pair? _%e120217120227%_)
                      (let ((_%e120220120235%_
                             (gx#syntax-e _%e120217120227%_)))
                        (let ((_%hd120221120238%_ (##car _%e120220120235%_))
                              (_%tl120222120240%_ (##cdr _%e120220120235%_)))
                          (let ((_%hd120243%_ _%hd120221120238%_))
                            (if (gx#stx-pair? _%tl120222120240%_)
                                (let ((_%e120223120245%_
                                       (gx#syntax-e _%tl120222120240%_)))
                                  (let ((_%hd120224120248%_
                                         (##car _%e120223120245%_))
                                        (_%tl120225120250%_
                                         (##cdr _%e120223120245%_)))
                                    (if (gx#stx-null? _%tl120225120250%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120243%_)
                                            (_%E120219120231%_))
                                        (_%E120219120231%_))))
                                (_%E120219120231%_)))))
                      (_%E120219120231%_)))))
          (_%E120218120253%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120174%_ _%expr120175%_)
        (let* ((_%e120176120186%_ _%bind120174%_)
               (_%E120178120190%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120176120186%_)))
               (_%E120177120212%_
                (lambda ()
                  (if (gx#stx-pair? _%e120176120186%_)
                      (let ((_%e120179120194%_
                             (gx#syntax-e _%e120176120186%_)))
                        (let ((_%hd120180120197%_ (##car _%e120179120194%_))
                              (_%tl120181120199%_ (##cdr _%e120179120194%_)))
                          (let ((_%hd120202%_ _%hd120180120197%_))
                            (if (gx#stx-pair? _%tl120181120199%_)
                                (let ((_%e120182120204%_
                                       (gx#syntax-e _%tl120181120199%_)))
                                  (let ((_%hd120183120207%_
                                         (##car _%e120182120204%_))
                                        (_%tl120184120209%_
                                         (##cdr _%e120182120204%_)))
                                    (if (gx#stx-null? _%tl120184120209%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120202%_)
                                                  (cons _%expr120175%_ '()))
                                            (_%E120178120190%_))
                                        (_%E120178120190%_))))
                                (_%E120178120190%_)))))
                      (_%E120178120190%_)))))
          (_%E120177120212%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120128%_)
        (let* ((_%e120129120139%_ _%stx120128%_)
               (_%E120131120143%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120129120139%_)))
               (_%E120130120170%_
                (lambda ()
                  (if (gx#stx-pair? _%e120129120139%_)
                      (let ((_%e120132120147%_
                             (gx#syntax-e _%e120129120139%_)))
                        (let ((_%hd120133120150%_ (##car _%e120132120147%_))
                              (_%tl120134120152%_ (##cdr _%e120132120147%_)))
                          (if (gx#stx-pair? _%tl120134120152%_)
                              (let ((_%e120135120155%_
                                     (gx#syntax-e _%tl120134120152%_)))
                                (let ((_%hd120136120158%_
                                       (##car _%e120135120155%_))
                                      (_%tl120137120160%_
                                       (##cdr _%e120135120155%_)))
                                  (let* ((_%hd120163%_ _%hd120136120158%_)
                                         (_%body120165%_ _%tl120137120160%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120163%_)
                                        (let ((_%expanders120167%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120163%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120163%_
                                              _%expanders120167%_)
                                             (gx#core-expand-local-block
                                              _%stx120128%_
                                              _%body120165%_))
                                           gx#current-expander-context
                                           (let ((__obj121549
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121549)
                                             __obj121549)))
                                        (_%E120131120143%_)))))
                              (_%E120131120143%_))))
                      (_%E120131120143%_)))))
          (_%E120130120170%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120077%_)
        (let* ((_%e120078120088%_ _%stx120077%_)
               (_%E120080120092%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120078120088%_)))
               (_%E120079120124%_
                (lambda ()
                  (if (gx#stx-pair? _%e120078120088%_)
                      (let ((_%e120081120096%_
                             (gx#syntax-e _%e120078120088%_)))
                        (let ((_%hd120082120099%_ (##car _%e120081120096%_))
                              (_%tl120083120101%_ (##cdr _%e120081120096%_)))
                          (if (gx#stx-pair? _%tl120083120101%_)
                              (let ((_%e120084120104%_
                                     (gx#syntax-e _%tl120083120101%_)))
                                (let ((_%hd120085120107%_
                                       (##car _%e120084120104%_))
                                      (_%tl120086120109%_
                                       (##cdr _%e120084120104%_)))
                                  (let* ((_%hd120112%_ _%hd120085120107%_)
                                         (_%body120114%_ _%tl120086120109%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120112%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120112%_
                                            (make-list
                                             (gx#stx-length _%hd120112%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120116120119%_
                                                     _%g120117120121%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120116120119%_
                                               _%g120117120121%_
                                               '#t))
                                            _%hd120112%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120112%_))
                                           (gx#core-expand-local-block
                                            _%stx120077%_
                                            _%body120114%_))
                                         gx#current-expander-context
                                         (let ((__obj121550
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121550)
                                           __obj121550))
                                        (_%E120080120092%_)))))
                              (_%E120080120092%_))))
                      (_%E120080120092%_)))))
          (_%E120079120124%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120034%_)
        (if (gx#stx-list? _%stx120034%_)
            (gx#stx-andmap
             (lambda (_%bind120036%_)
               (let* ((_%e120037120047%_ _%bind120036%_)
                      (_%E120039120051%_ (lambda () '#f))
                      (_%E120038120073%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120037120047%_)
                             (let ((_%e120040120055%_
                                    (gx#syntax-e _%e120037120047%_)))
                               (let ((_%hd120041120058%_
                                      (##car _%e120040120055%_))
                                     (_%tl120042120060%_
                                      (##cdr _%e120040120055%_)))
                                 (let ((_%hd120063%_ _%hd120041120058%_))
                                   (if (gx#stx-pair? _%tl120042120060%_)
                                       (let ((_%e120043120065%_
                                              (gx#syntax-e
                                               _%tl120042120060%_)))
                                         (let ((_%hd120044120068%_
                                                (##car _%e120043120065%_))
                                               (_%tl120045120070%_
                                                (##cdr _%e120043120065%_)))
                                           (if (gx#stx-null?
                                                _%tl120045120070%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120063%_)
                                                   (_%E120039120051%_))
                                               (_%E120039120051%_))))
                                       (_%E120039120051%_)))))
                             (_%E120039120051%_)))))
                 (_%E120038120073%_)))
             _%stx120034%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind119990%_)
        (let* ((_%e119991120001%_ _%bind119990%_)
               (_%E119993120005%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119991120001%_)))
               (_%E119992120030%_
                (lambda ()
                  (if (gx#stx-pair? _%e119991120001%_)
                      (let ((_%e119994120009%_
                             (gx#syntax-e _%e119991120001%_)))
                        (let ((_%hd119995120012%_ (##car _%e119994120009%_))
                              (_%tl119996120014%_ (##cdr _%e119994120009%_)))
                          (if (gx#stx-pair? _%tl119996120014%_)
                              (let ((_%e119997120017%_
                                     (gx#syntax-e _%tl119996120014%_)))
                                (let ((_%hd119998120020%_
                                       (##car _%e119997120017%_))
                                      (_%tl119999120022%_
                                       (##cdr _%e119997120017%_)))
                                  (let ((_%expr120025%_ _%hd119998120020%_))
                                    (if (gx#stx-null? _%tl119999120022%_)
                                        (if '#t
                                            (let ((_g121559_
                                                   (gx#core-expand-expression+1
                                                    _%expr120025%_)))
                                              (begin
                                                (let ((_g121560_
                                                       (if (##values?
                                                            _g121559_)
                                                           (##vector-length
                                                            _g121559_)
                                                           1)))
                                                  (if (not (##fx= _g121560_ 2))
                                                      (error "Context expects 2 values"
                                                             _g121560_)))
                                                (let ((_%_120027%_
                                                       (##vector-ref
                                                        _g121559_
                                                        0))
                                                      (_%e120028%_
                                                       (##vector-ref
                                                        _g121559_
                                                        1)))
                                                  _%e120028%_)))
                                            (_%E119993120005%_))
                                        (_%E119993120005%_)))))
                              (_%E119993120005%_))))
                      (_%E119993120005%_)))))
          (_%E119992120030%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind119935%_ _%e119936%_ _%rebind?119937%_)
        (let* ((_%e119938119948%_ _%bind119935%_)
               (_%E119940119952%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119938119948%_)))
               (_%E119939119974%_
                (lambda ()
                  (if (gx#stx-pair? _%e119938119948%_)
                      (let ((_%e119941119956%_
                             (gx#syntax-e _%e119938119948%_)))
                        (let ((_%hd119942119959%_ (##car _%e119941119956%_))
                              (_%tl119943119961%_ (##cdr _%e119941119956%_)))
                          (let ((_%id119964%_ _%hd119942119959%_))
                            (if (gx#stx-pair? _%tl119943119961%_)
                                (let ((_%e119944119966%_
                                       (gx#syntax-e _%tl119943119961%_)))
                                  (let ((_%hd119945119969%_
                                         (##car _%e119944119966%_))
                                        (_%tl119946119971%_
                                         (##cdr _%e119944119966%_)))
                                    (if (gx#stx-null? _%tl119946119971%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id119964%_
                                             _%e119936%_
                                             _%rebind?119937%_)
                                            (_%E119940119952%_))
                                        (_%E119940119952%_))))
                                (_%E119940119952%_)))))
                      (_%E119940119952%_)))))
          (_%E119939119974%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind119981%_ _%e119982%_)
        (let ((_%rebind?119984%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind119981%_
           _%e119982%_
           _%rebind?119984%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g121562_
        (let ((_g121561_ (##length _g121562_)))
          (cond ((##fx= _g121561_ 2)
                 (apply (lambda (_%bind119981%_ _%e119982%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind119981%_
                           _%e119982%_))
                        _g121562_))
                ((##fx= _g121561_ 3)
                 (apply (lambda (_%bind119986%_ _%e119987%_ _%rebind?119988%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind119986%_
                           _%e119987%_
                           _%rebind?119988%_))
                        _g121562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g121562_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx119893%_)
        (let* ((_%e119894119904%_ _%stx119893%_)
               (_%E119896119908%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119894119904%_)))
               (_%E119895119930%_
                (lambda ()
                  (if (gx#stx-pair? _%e119894119904%_)
                      (let ((_%e119897119912%_
                             (gx#syntax-e _%e119894119904%_)))
                        (let ((_%hd119898119915%_ (##car _%e119897119912%_))
                              (_%tl119899119917%_ (##cdr _%e119897119912%_)))
                          (if (gx#stx-pair? _%tl119899119917%_)
                              (let ((_%e119900119920%_
                                     (gx#syntax-e _%tl119899119917%_)))
                                (let ((_%hd119901119923%_
                                       (##car _%e119900119920%_))
                                      (_%tl119902119925%_
                                       (##cdr _%e119900119920%_)))
                                  (let ((_%expr119928%_ _%hd119901119923%_))
                                    (if (gx#stx-null? _%tl119902119925%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr119928%_)
                                            (_%E119896119908%_))
                                        (_%E119896119908%_)))))
                              (_%E119896119908%_))))
                      (_%E119896119908%_)))))
          (_%E119895119930%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx119852%_)
        (let* ((_%e119853119863%_ _%stx119852%_)
               (_%E119855119867%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119853119863%_)))
               (_%E119854119889%_
                (lambda ()
                  (if (gx#stx-pair? _%e119853119863%_)
                      (let ((_%e119856119871%_
                             (gx#syntax-e _%e119853119863%_)))
                        (let ((_%hd119857119874%_ (##car _%e119856119871%_))
                              (_%tl119858119876%_ (##cdr _%e119856119871%_)))
                          (if (gx#stx-pair? _%tl119858119876%_)
                              (let ((_%e119859119879%_
                                     (gx#syntax-e _%tl119858119876%_)))
                                (let ((_%hd119860119882%_
                                       (##car _%e119859119879%_))
                                      (_%tl119861119884%_
                                       (##cdr _%e119859119879%_)))
                                  (let ((_%e119887%_ _%hd119860119882%_))
                                    (if (gx#stx-null? _%tl119861119884%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e119887%_)
                                                         '()))
                                             (gx#stx-source _%stx119852%_))
                                            (_%E119855119867%_))
                                        (_%E119855119867%_)))))
                              (_%E119855119867%_))))
                      (_%E119855119867%_)))))
          (_%E119854119889%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx119811%_)
        (let* ((_%e119812119822%_ _%stx119811%_)
               (_%E119814119826%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119812119822%_)))
               (_%E119813119848%_
                (lambda ()
                  (if (gx#stx-pair? _%e119812119822%_)
                      (let ((_%e119815119830%_
                             (gx#syntax-e _%e119812119822%_)))
                        (let ((_%hd119816119833%_ (##car _%e119815119830%_))
                              (_%tl119817119835%_ (##cdr _%e119815119830%_)))
                          (if (gx#stx-pair? _%tl119817119835%_)
                              (let ((_%e119818119838%_
                                     (gx#syntax-e _%tl119817119835%_)))
                                (let ((_%hd119819119841%_
                                       (##car _%e119818119838%_))
                                      (_%tl119820119843%_
                                       (##cdr _%e119818119838%_)))
                                  (let ((_%e119846%_ _%hd119819119841%_))
                                    (if (gx#stx-null? _%tl119820119843%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e119846%_)
                                                         '()))
                                             (gx#stx-source _%stx119811%_))
                                            (_%E119814119826%_))
                                        (_%E119814119826%_)))))
                              (_%E119814119826%_))))
                      (_%E119814119826%_)))))
          (_%E119813119848%_))))
    (define gx#core-expand-call%
      (lambda (_%stx119768%_)
        (let* ((_%e119769119779%_ _%stx119768%_)
               (_%E119771119783%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119769119779%_)))
               (_%E119770119807%_
                (lambda ()
                  (if (gx#stx-pair? _%e119769119779%_)
                      (let ((_%e119772119787%_
                             (gx#syntax-e _%e119769119779%_)))
                        (let ((_%hd119773119790%_ (##car _%e119772119787%_))
                              (_%tl119774119792%_ (##cdr _%e119772119787%_)))
                          (if (gx#stx-pair? _%tl119774119792%_)
                              (let ((_%e119775119795%_
                                     (gx#syntax-e _%tl119774119792%_)))
                                (let ((_%hd119776119798%_
                                       (##car _%e119775119795%_))
                                      (_%tl119777119800%_
                                       (##cdr _%e119775119795%_)))
                                  (let* ((_%rator119803%_ _%hd119776119798%_)
                                         (_%args119805%_ _%tl119777119800%_))
                                    (if (gx#stx-list? _%args119805%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator119803%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args119805%_))
                                         (gx#stx-source _%stx119768%_))
                                        (_%E119771119783%_)))))
                              (_%E119771119783%_))))
                      (_%E119771119783%_)))))
          (_%E119770119807%_))))
    (define gx#core-expand-if%
      (lambda (_%stx119701%_)
        (let* ((_%e119702119718%_ _%stx119701%_)
               (_%E119704119722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119702119718%_)))
               (_%E119703119764%_
                (lambda ()
                  (if (gx#stx-pair? _%e119702119718%_)
                      (let ((_%e119705119726%_
                             (gx#syntax-e _%e119702119718%_)))
                        (let ((_%hd119706119729%_ (##car _%e119705119726%_))
                              (_%tl119707119731%_ (##cdr _%e119705119726%_)))
                          (if (gx#stx-pair? _%tl119707119731%_)
                              (let ((_%e119708119734%_
                                     (gx#syntax-e _%tl119707119731%_)))
                                (let ((_%hd119709119737%_
                                       (##car _%e119708119734%_))
                                      (_%tl119710119739%_
                                       (##cdr _%e119708119734%_)))
                                  (let ((_%test119742%_ _%hd119709119737%_))
                                    (if (gx#stx-pair? _%tl119710119739%_)
                                        (let ((_%e119711119744%_
                                               (gx#syntax-e
                                                _%tl119710119739%_)))
                                          (let ((_%hd119712119747%_
                                                 (##car _%e119711119744%_))
                                                (_%tl119713119749%_
                                                 (##cdr _%e119711119744%_)))
                                            (let ((_%K119752%_
                                                   _%hd119712119747%_))
                                              (if (gx#stx-pair?
                                                   _%tl119713119749%_)
                                                  (let ((_%e119714119754%_
                                                         (gx#syntax-e
                                                          _%tl119713119749%_)))
                                                    (let ((_%hd119715119757%_
                                                           (##car _%e119714119754%_))
                                                          (_%tl119716119759%_
                                                           (##cdr _%e119714119754%_)))
                                                      (let ((_%E119762%_
                                                             _%hd119715119757%_))
                                                        (if (gx#stx-null?
                                                             _%tl119716119759%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test119742%_)
                                     (cons (gx#core-expand-expression
                                            _%K119752%_)
                                           (cons (gx#core-expand-expression
                                                  _%E119762%_)
                                                 '()))))
                         (gx#stx-source _%stx119701%_))
                        (_%E119704119722%_))
                    (_%E119704119722%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119704119722%_)))))
                                        (_%E119704119722%_)))))
                              (_%E119704119722%_))))
                      (_%E119704119722%_)))))
          (_%E119703119764%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx119660%_)
        (let* ((_%e119661119671%_ _%stx119660%_)
               (_%E119663119675%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119661119671%_)))
               (_%E119662119697%_
                (lambda ()
                  (if (gx#stx-pair? _%e119661119671%_)
                      (let ((_%e119664119679%_
                             (gx#syntax-e _%e119661119671%_)))
                        (let ((_%hd119665119682%_ (##car _%e119664119679%_))
                              (_%tl119666119684%_ (##cdr _%e119664119679%_)))
                          (if (gx#stx-pair? _%tl119666119684%_)
                              (let ((_%e119667119687%_
                                     (gx#syntax-e _%tl119666119684%_)))
                                (let ((_%hd119668119690%_
                                       (##car _%e119667119687%_))
                                      (_%tl119669119692%_
                                       (##cdr _%e119667119687%_)))
                                  (let ((_%id119695%_ _%hd119668119690%_))
                                    (if (gx#stx-null? _%tl119669119692%_)
                                        (if (gx#identifier? _%id119695%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id119695%_
                                                          _%stx119660%_)
                                                         '()))
                                             (gx#stx-source _%stx119660%_))
                                            (_%E119663119675%_))
                                        (_%E119663119675%_)))))
                              (_%E119663119675%_))))
                      (_%E119663119675%_)))))
          (_%E119662119697%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx119606%_)
        (let* ((_%e119607119620%_ _%stx119606%_)
               (_%E119609119624%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119607119620%_)))
               (_%E119608119656%_
                (lambda ()
                  (if (gx#stx-pair? _%e119607119620%_)
                      (let ((_%e119610119628%_
                             (gx#syntax-e _%e119607119620%_)))
                        (let ((_%hd119611119631%_ (##car _%e119610119628%_))
                              (_%tl119612119633%_ (##cdr _%e119610119628%_)))
                          (if (gx#stx-pair? _%tl119612119633%_)
                              (let ((_%e119613119636%_
                                     (gx#syntax-e _%tl119612119633%_)))
                                (let ((_%hd119614119639%_
                                       (##car _%e119613119636%_))
                                      (_%tl119615119641%_
                                       (##cdr _%e119613119636%_)))
                                  (let ((_%id119644%_ _%hd119614119639%_))
                                    (if (gx#stx-pair? _%tl119615119641%_)
                                        (let ((_%e119616119646%_
                                               (gx#syntax-e
                                                _%tl119615119641%_)))
                                          (let ((_%hd119617119649%_
                                                 (##car _%e119616119646%_))
                                                (_%tl119618119651%_
                                                 (##cdr _%e119616119646%_)))
                                            (let ((_%expr119654%_
                                                   _%hd119617119649%_))
                                              (if (gx#stx-null?
                                                   _%tl119618119651%_)
                                                  (if (gx#identifier?
                                                       _%id119644%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id119644%_
                            _%stx119606%_)
                           (cons (gx#core-expand-expression _%expr119654%_)
                                 '())))
               (gx#stx-source _%stx119606%_))
              (_%E119609119624%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119609119624%_)))))
                                        (_%E119609119624%_)))))
                              (_%E119609119624%_))))
                      (_%E119609119624%_)))))
          (_%E119608119656%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119451%_)
        (letrec ((_%generate119453%_
                  (lambda (_%body119483%_)
                    (let _%lp119485%_ ((_%rest119487%_ _%body119483%_)
                                       (_%ns119488%_
                                        (gx#core-context-namespace__0))
                                       (_%r119489%_ '()))
                      (let* ((_%e119490119505%_ _%rest119487%_)
                             (_%E119503119509%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119490119505%_)))
                             (_%E119499119513%_
                              (lambda ()
                                (if (gx#stx-null? _%e119490119505%_)
                                    (if '#t
                                        (reverse _%r119489%_)
                                        (_%E119503119509%_))
                                    (_%E119503119509%_))))
                             (_%E119492119570%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119490119505%_)
                                    (let ((_%e119500119517%_
                                           (gx#syntax-e _%e119490119505%_)))
                                      (let ((_%hd119501119520%_
                                             (##car _%e119500119517%_))
                                            (_%tl119502119522%_
                                             (##cdr _%e119500119517%_)))
                                        (let* ((_%hd119525%_
                                                _%hd119501119520%_)
                                               (_%rest119527%_
                                                _%tl119502119522%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd119525%_)
                                                  (_%lp119485%_
                                                   _%rest119527%_
                                                   _%ns119488%_
                                                   (cons (cons _%hd119525%_
                                                               (cons (if _%ns119488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd119525%_
                                  _%ns119488%_
                                  '"#"
                                  _%hd119525%_)
                                 _%hd119525%_)
                             '()))
                 _%r119489%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e119528119538%_
                                                          _%hd119525%_)
                                                         (_%E119530119542%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e119528119538%_)))
                                                         (_%E119529119566%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e119528119538%_)
                        (let ((_%e119531119546%_
                               (gx#syntax-e _%e119528119538%_)))
                          (let ((_%hd119532119549%_ (##car _%e119531119546%_))
                                (_%tl119533119551%_ (##cdr _%e119531119546%_)))
                            (let ((_%id119554%_ _%hd119532119549%_))
                              (if (gx#stx-pair? _%tl119533119551%_)
                                  (let ((_%e119534119556%_
                                         (gx#syntax-e _%tl119533119551%_)))
                                    (let ((_%hd119535119559%_
                                           (##car _%e119534119556%_))
                                          (_%tl119536119561%_
                                           (##cdr _%e119534119556%_)))
                                      (let ((_%eid119564%_ _%hd119535119559%_))
                                        (if (gx#stx-null? _%tl119536119561%_)
                                            (if (and (gx#identifier?
                                                      _%id119554%_)
                                                     (gx#identifier?
                                                      _%eid119564%_))
                                                (_%lp119485%_
                                                 _%rest119527%_
                                                 _%ns119488%_
                                                 (cons (cons _%id119554%_
                                                             (cons _%eid119564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119489%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119530119542%_))
                                            (_%E119530119542%_)))))
                                  (_%E119530119542%_)))))
                        (_%E119530119542%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119529119566%_)))
                                              (_%E119499119513%_)))))
                                    (_%E119499119513%_))))
                             (_%E119491119602%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119490119505%_)
                                    (let ((_%e119493119574%_
                                           (gx#syntax-e _%e119490119505%_)))
                                      (let ((_%hd119494119577%_
                                             (##car _%e119493119574%_))
                                            (_%tl119495119579%_
                                             (##cdr _%e119493119574%_)))
                                        (if (eq? (gx#stx-e _%hd119494119577%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl119495119579%_)
                                                (let ((_%e119496119582%_
                                                       (gx#syntax-e
                                                        _%tl119495119579%_)))
                                                  (let ((_%hd119497119585%_
                                                         (##car _%e119496119582%_))
                                                        (_%tl119498119587%_
                                                         (##cdr _%e119496119582%_)))
                                                    (let* ((_%ns119590%_
                                                            _%hd119497119585%_)
                                                           (_%rest119592%_
                                                            _%tl119498119587%_))
                                                      (if '#t
                                                          (let ((_%ns119600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns119590%_)
                             (let () (symbol->string (gx#stx-e _%ns119590%_)))
                             (if (or (gx#stx-string? _%ns119590%_)
                                     (gx#stx-false? _%ns119590%_))
                                 (let () (gx#stx-e _%ns119590%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx119451%_
                                    _%ns119590%_))))))
                    (_%lp119485%_ _%rest119592%_ _%ns119600%_ _%r119489%_))
                  (_%E119492119570%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119492119570%_))
                                            (_%E119492119570%_))))
                                    (_%E119492119570%_)))))
                        (_%E119491119602%_))))))
          (let* ((_%e119454119461%_ _%stx119451%_)
                 (_%E119456119465%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119454119461%_)))
                 (_%E119455119479%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119454119461%_)
                        (let ((_%e119457119469%_
                               (gx#syntax-e _%e119454119461%_)))
                          (let ((_%hd119458119472%_ (##car _%e119457119469%_))
                                (_%tl119459119474%_ (##cdr _%e119457119469%_)))
                            (let ((_%body119477%_ _%tl119459119474%_))
                              (if (gx#stx-list? _%body119477%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119453%_ _%body119477%_))
                                  (_%E119456119465%_)))))
                        (_%E119456119465%_)))))
            (_%E119455119479%_)))))
    (define gx#macro-expand-define-values
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
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119435%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119435%_)
                          (cons _%expr119445%_ '())))
              (_%E119400119415%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119400119415%_)))))
                                        (_%E119400119415%_)))))
                              (_%E119400119415%_))))
                      (_%E119400119415%_)))))
          (_%E119399119447%_))))
    (define gx#macro-expand-define-syntax
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
                                  (let ((_%hd119381%_ _%hd119351119376%_))
                                    (if (gx#stx-pair? _%tl119352119378%_)
                                        (let ((_%e119353119383%_
                                               (gx#syntax-e
                                                _%tl119352119378%_)))
                                          (let ((_%hd119354119386%_
                                                 (##car _%e119353119383%_))
                                                (_%tl119355119388%_
                                                 (##cdr _%e119353119383%_)))
                                            (let ((_%expr119391%_
                                                   _%hd119354119386%_))
                                              (if (gx#stx-null?
                                                   _%tl119355119388%_)
                                                  (if (gx#identifier?
                                                       _%hd119381%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119391%_ '())))
              (_%E119346119361%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119346119361%_)))))
                                        (_%E119346119361%_)))))
                              (_%E119346119361%_))))
                      (_%E119346119361%_)))))
          (_%E119345119393%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119289%_)
        (let* ((_%e119290119303%_ _%stx119289%_)
               (_%E119292119307%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119290119303%_)))
               (_%E119291119339%_
                (lambda ()
                  (if (gx#stx-pair? _%e119290119303%_)
                      (let ((_%e119293119311%_
                             (gx#syntax-e _%e119290119303%_)))
                        (let ((_%hd119294119314%_ (##car _%e119293119311%_))
                              (_%tl119295119316%_ (##cdr _%e119293119311%_)))
                          (if (gx#stx-pair? _%tl119295119316%_)
                              (let ((_%e119296119319%_
                                     (gx#syntax-e _%tl119295119316%_)))
                                (let ((_%hd119297119322%_
                                       (##car _%e119296119319%_))
                                      (_%tl119298119324%_
                                       (##cdr _%e119296119319%_)))
                                  (let ((_%id119327%_ _%hd119297119322%_))
                                    (if (gx#stx-pair? _%tl119298119324%_)
                                        (let ((_%e119299119329%_
                                               (gx#syntax-e
                                                _%tl119298119324%_)))
                                          (let ((_%hd119300119332%_
                                                 (##car _%e119299119329%_))
                                                (_%tl119301119334%_
                                                 (##cdr _%e119299119329%_)))
                                            (let ((_%alias-id119337%_
                                                   _%hd119300119332%_))
                                              (if (gx#stx-null?
                                                   _%tl119301119334%_)
                                                  (if (and (gx#identifier?
                                                            _%id119327%_)
                                                           (gx#identifier?
                                                            _%alias-id119337%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119337%_ '())))
              (_%E119292119307%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119292119307%_)))))
                                        (_%E119292119307%_)))))
                              (_%E119292119307%_))))
                      (_%E119292119307%_)))))
          (_%E119291119339%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119246%_)
        (let* ((_%e119247119257%_ _%stx119246%_)
               (_%E119249119261%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119247119257%_)))
               (_%E119248119285%_
                (lambda ()
                  (if (gx#stx-pair? _%e119247119257%_)
                      (let ((_%e119250119265%_
                             (gx#syntax-e _%e119247119257%_)))
                        (let ((_%hd119251119268%_ (##car _%e119250119265%_))
                              (_%tl119252119270%_ (##cdr _%e119250119265%_)))
                          (if (gx#stx-pair? _%tl119252119270%_)
                              (let ((_%e119253119273%_
                                     (gx#syntax-e _%tl119252119270%_)))
                                (let ((_%hd119254119276%_
                                       (##car _%e119253119273%_))
                                      (_%tl119255119278%_
                                       (##cdr _%e119253119273%_)))
                                  (let* ((_%hd119281%_ _%hd119254119276%_)
                                         (_%body119283%_ _%tl119255119278%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119281%_)
                                             (gx#stx-list? _%body119283%_)
                                             (not (gx#stx-null?
                                                   _%body119283%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119281%_)
                                         _%body119283%_)
                                        (_%E119249119261%_)))))
                              (_%E119249119261%_))))
                      (_%E119249119261%_)))))
          (_%E119248119285%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119182%_)
        (letrec ((_%generate119184%_
                  (lambda (_%clause119214%_)
                    (let* ((_%e119215119222%_ _%clause119214%_)
                           (_%E119217119226%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119182%_
                               _%clause119214%_)))
                           (_%E119216119242%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119215119222%_)
                                  (let ((_%e119218119230%_
                                         (gx#syntax-e _%e119215119222%_)))
                                    (let ((_%hd119219119233%_
                                           (##car _%e119218119230%_))
                                          (_%tl119220119235%_
                                           (##cdr _%e119218119230%_)))
                                      (let* ((_%hd119238%_ _%hd119219119233%_)
                                             (_%body119240%_
                                              _%tl119220119235%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119238%_)
                                                 (gx#stx-list? _%body119240%_)
                                                 (not (gx#stx-null?
                                                       _%body119240%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119238%_)
                                                   _%body119240%_)
                                             (gx#stx-source _%clause119214%_))
                                            (_%E119217119226%_)))))
                                  (_%E119217119226%_)))))
                      (_%E119216119242%_)))))
          (let* ((_%e119185119192%_ _%stx119182%_)
                 (_%E119187119196%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119185119192%_)))
                 (_%E119186119210%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119185119192%_)
                        (let ((_%e119188119200%_
                               (gx#syntax-e _%e119185119192%_)))
                          (let ((_%hd119189119203%_ (##car _%e119188119200%_))
                                (_%tl119190119205%_ (##cdr _%e119188119200%_)))
                            (let ((_%clauses119208%_ _%tl119190119205%_))
                              (if (gx#stx-list? _%clauses119208%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119184%_
                                    _%clauses119208%_))
                                  (_%E119187119196%_)))))
                        (_%E119187119196%_)))))
            (_%E119186119210%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119083%_ _%form119084%_)
        (letrec ((_%generate119086%_
                  (lambda (_%bind119129%_)
                    (let* ((_%e119130119140%_ _%bind119129%_)
                           (_%E119132119144%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119083%_
                               _%bind119129%_)))
                           (_%E119131119168%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119130119140%_)
                                  (let ((_%e119133119148%_
                                         (gx#syntax-e _%e119130119140%_)))
                                    (let ((_%hd119134119151%_
                                           (##car _%e119133119148%_))
                                          (_%tl119135119153%_
                                           (##cdr _%e119133119148%_)))
                                      (let ((_%ids119156%_ _%hd119134119151%_))
                                        (if (gx#stx-pair? _%tl119135119153%_)
                                            (let ((_%e119136119158%_
                                                   (gx#syntax-e
                                                    _%tl119135119153%_)))
                                              (let ((_%hd119137119161%_
                                                     (##car _%e119136119158%_))
                                                    (_%tl119138119163%_
                                                     (##cdr _%e119136119158%_)))
                                                (let ((_%expr119166%_
                                                       _%hd119137119161%_))
                                                  (if (gx#stx-null?
                                                       _%tl119138119163%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119156%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119156%_)
                        (cons _%expr119166%_ '()))
                  (_%E119132119144%_))
              (_%E119132119144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119132119144%_)))))
                                  (_%E119132119144%_)))))
                      (_%E119131119168%_)))))
          (let* ((_%e119087119097%_ _%stx119083%_)
                 (_%E119089119101%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119087119097%_)))
                 (_%E119088119125%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119087119097%_)
                        (let ((_%e119090119105%_
                               (gx#syntax-e _%e119087119097%_)))
                          (let ((_%hd119091119108%_ (##car _%e119090119105%_))
                                (_%tl119092119110%_ (##cdr _%e119090119105%_)))
                            (if (gx#stx-pair? _%tl119092119110%_)
                                (let ((_%e119093119113%_
                                       (gx#syntax-e _%tl119092119110%_)))
                                  (let ((_%hd119094119116%_
                                         (##car _%e119093119113%_))
                                        (_%tl119095119118%_
                                         (##cdr _%e119093119113%_)))
                                    (let* ((_%hd119121%_ _%hd119094119116%_)
                                           (_%body119123%_ _%tl119095119118%_))
                                      (if (and (gx#stx-list? _%hd119121%_)
                                               (gx#stx-list? _%body119123%_)
                                               (not (gx#stx-null?
                                                     _%body119123%_)))
                                          (gx#core-cons*
                                           _%form119084%_
                                           (gx#stx-map1
                                            _%generate119086%_
                                            _%hd119121%_)
                                           _%body119123%_)
                                          (_%E119089119101%_)))))
                                (_%E119089119101%_))))
                        (_%E119089119101%_)))))
            (_%E119088119125%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119175%_)
        (let ((_%form119177%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119175%_ _%form119177%_))))
    (define gx#macro-expand-let-values
      (lambda _g121564_
        (let ((_g121563_ (##length _g121564_)))
          (cond ((##fx= _g121563_ 1)
                 (apply (lambda (_%stx119175%_)
                          (gx#macro-expand-let-values__0 _%stx119175%_))
                        _g121564_))
                ((##fx= _g121563_ 2)
                 (apply (lambda (_%stx119179%_ _%form119180%_)
                          (gx#macro-expand-let-values__%
                           _%stx119179%_
                           _%form119180%_))
                        _g121564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g121564_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119080%_)
        (gx#macro-expand-let-values__% _%stx119080%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119078%_)
        (gx#macro-expand-let-values__% _%stx119078%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx118969%_)
        (let* ((_%e118970118996%_ _%stx118969%_)
               (_%E118982119000%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118970118996%_)))
               (_%E118972119042%_
                (lambda ()
                  (if (gx#stx-pair? _%e118970118996%_)
                      (let ((_%e118983119004%_
                             (gx#syntax-e _%e118970118996%_)))
                        (let ((_%hd118984119007%_ (##car _%e118983119004%_))
                              (_%tl118985119009%_ (##cdr _%e118983119004%_)))
                          (if (gx#stx-pair? _%tl118985119009%_)
                              (let ((_%e118986119012%_
                                     (gx#syntax-e _%tl118985119009%_)))
                                (let ((_%hd118987119015%_
                                       (##car _%e118986119012%_))
                                      (_%tl118988119017%_
                                       (##cdr _%e118986119012%_)))
                                  (let ((_%test119020%_ _%hd118987119015%_))
                                    (if (gx#stx-pair? _%tl118988119017%_)
                                        (let ((_%e118989119022%_
                                               (gx#syntax-e
                                                _%tl118988119017%_)))
                                          (let ((_%hd118990119025%_
                                                 (##car _%e118989119022%_))
                                                (_%tl118991119027%_
                                                 (##cdr _%e118989119022%_)))
                                            (let ((_%K119030%_
                                                   _%hd118990119025%_))
                                              (if (gx#stx-pair?
                                                   _%tl118991119027%_)
                                                  (let ((_%e118992119032%_
                                                         (gx#syntax-e
                                                          _%tl118991119027%_)))
                                                    (let ((_%hd118993119035%_
                                                           (##car _%e118992119032%_))
                                                          (_%tl118994119037%_
                                                           (##cdr _%e118992119032%_)))
                                                      (let ((_%E119040%_
                                                             _%hd118993119035%_))
                                                        (if (gx#stx-null?
                                                             _%tl118994119037%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119020%_
                         _%K119030%_
                         _%E119040%_)
                        (_%E118982119000%_))
                    (_%E118982119000%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E118982119000%_)))))
                                        (_%E118982119000%_)))))
                              (_%E118982119000%_))))
                      (_%E118982119000%_))))
               (_%E118971119074%_
                (lambda ()
                  (if (gx#stx-pair? _%e118970118996%_)
                      (let ((_%e118973119046%_
                             (gx#syntax-e _%e118970118996%_)))
                        (let ((_%hd118974119049%_ (##car _%e118973119046%_))
                              (_%tl118975119051%_ (##cdr _%e118973119046%_)))
                          (if (gx#stx-pair? _%tl118975119051%_)
                              (let ((_%e118976119054%_
                                     (gx#syntax-e _%tl118975119051%_)))
                                (let ((_%hd118977119057%_
                                       (##car _%e118976119054%_))
                                      (_%tl118978119059%_
                                       (##cdr _%e118976119054%_)))
                                  (let ((_%test119062%_ _%hd118977119057%_))
                                    (if (gx#stx-pair? _%tl118978119059%_)
                                        (let ((_%e118979119064%_
                                               (gx#syntax-e
                                                _%tl118978119059%_)))
                                          (let ((_%hd118980119067%_
                                                 (##car _%e118979119064%_))
                                                (_%tl118981119069%_
                                                 (##cdr _%e118979119064%_)))
                                            (let ((_%K119072%_
                                                   _%hd118980119067%_))
                                              (if (gx#stx-null?
                                                   _%tl118981119069%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119062%_
                                                       _%K119072%_
                                                       '#!void)
                                                      (_%E118972119042%_))
                                                  (_%E118972119042%_)))))
                                        (_%E118972119042%_)))))
                              (_%E118972119042%_))))
                      (_%E118972119042%_)))))
          (_%E118971119074%_))))
    (define gx#free-identifier=?
      (lambda (_%xid118954%_ _%yid118955%_)
        (let ((_%xe118957%_ (gx#resolve-identifier__0 _%xid118954%_))
              (_%ye118958%_ (gx#resolve-identifier__0 _%yid118955%_)))
          (if (and _%xe118957%_ _%ye118958%_)
              (let ()
                (let ((_%$e118961%_ (eq? _%xe118957%_ _%ye118958%_)))
                  (if _%$e118961%_
                      _%$e118961%_
                      (if (##structure-instance-of?
                           _%xe118957%_
                           'gx#binding::t)
                          (if (##structure-instance-of?
                               _%ye118958%_
                               'gx#binding::t)
                              (eq? (##unchecked-structure-ref
                                    _%xe118957%_
                                    '1
                                    '#f
                                    '#f)
                                   (##unchecked-structure-ref
                                    _%ye118958%_
                                    '1
                                    '#f
                                    '#f))
                              '#f)
                          '#f))))
              (if (or _%xe118957%_ _%ye118958%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid118954%_ _%yid118955%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid118935%_ _%yid118936%_)
        (letrec ((_%context118938%_
                  (lambda (_%e118952%_)
                    (if (##structure-direct-instance-of?
                         _%e118952%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e118952%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks118939%_
                  (lambda (_%e118947%_)
                    (if (symbol? _%e118947%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e118947%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e118947%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e118947%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap118940%_
                  (lambda (_%e118945%_)
                    (if (symbol? _%e118945%_)
                        _%e118945%_
                        (gx#syntax-local-unwrap _%e118945%_)))))
          (let ((_%x118942%_ (_%unwrap118940%_ _%xid118935%_))
                (_%y118943%_ (_%unwrap118940%_ _%yid118936%_)))
            (if (gx#stx-eq? _%x118942%_ _%y118943%_)
                (if (eq? (_%context118938%_ _%x118942%_)
                         (_%context118938%_ _%y118943%_))
                    (equal? (_%marks118939%_ _%x118942%_)
                            (_%marks118939%_ _%y118943%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx118933%_)
        (if (gx#identifier? _%stx118933%_)
            (gx#core-identifier=? _%stx118933%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx118931%_)
        (if (gx#identifier? _%stx118931%_)
            (gx#core-identifier=? _%stx118931%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx118874%_ _%where118875%_)
        (let _%lp118877%_ ((_%rest118879%_ (gx#syntax->list _%stx118874%_)))
          (let* ((_%rest118880118888%_ _%rest118879%_)
                 (_%else118882118896%_ (lambda () '#t))
                 (_%K118884118909%_
                  (lambda (_%rest118899%_ _%hd118900%_)
                    (if (not (gx#identifier? _%hd118900%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where118875%_
                           _%hd118900%_))
                        (if (__find (lambda (_%g118902118904%_)
                                      (gx#bound-identifier=?
                                       _%g118902118904%_
                                       _%hd118900%_))
                                    _%rest118899%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where118875%_
                               _%hd118900%_))
                            (let () (_%lp118877%_ _%rest118899%_)))))))
            (if (##pair? _%rest118880118888%_)
                (let ((_%hd118885118912%_ (##car _%rest118880118888%_))
                      (_%tl118886118914%_ (##cdr _%rest118880118888%_)))
                  (let* ((_%hd118917%_ _%hd118885118912%_)
                         (_%rest118919%_ _%tl118886118914%_))
                    (_%K118884118909%_ _%rest118919%_ _%hd118917%_)))
                (_%else118882118896%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx118924%_)
        (let ((_%where118926%_ _%stx118924%_))
          (gx#check-duplicate-identifiers__% _%stx118924%_ _%where118926%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g121566_
        (let ((_g121565_ (##length _g121566_)))
          (cond ((##fx= _g121565_ 1)
                 (apply (lambda (_%stx118924%_)
                          (gx#check-duplicate-identifiers__0 _%stx118924%_))
                        _g121566_))
                ((##fx= _g121565_ 2)
                 (apply (lambda (_%stx118928%_ _%where118929%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx118928%_
                           _%where118929%_))
                        _g121566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g121566_))))))
    (define gx#core-bind-values?
      (lambda (_%stx118866%_)
        (gx#stx-andmap
         (lambda (_%x118868%_)
           (let ((_%$e118870%_ (gx#identifier? _%x118868%_)))
             (if _%$e118870%_ _%$e118870%_ (gx#stx-false? _%x118868%_))))
         _%stx118866%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx118830%_ _%rebind?118831%_ _%phi118832%_ _%ctx118833%_)
        (gx#stx-for-each1
         (lambda (_%id118835%_)
           (if (gx#identifier? _%id118835%_)
               (gx#core-bind-runtime!__%
                _%id118835%_
                _%rebind?118831%_
                _%phi118832%_
                _%ctx118833%_)
               '#!void))
         _%stx118830%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx118840%_)
        (let* ((_%rebind?118842%_ '#f)
               (_%phi118844%_ (gx#current-expander-phi))
               (_%ctx118846%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118840%_
           _%rebind?118842%_
           _%phi118844%_
           _%ctx118846%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx118848%_ _%rebind?118849%_)
        (let* ((_%phi118851%_ (gx#current-expander-phi))
               (_%ctx118853%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118848%_
           _%rebind?118849%_
           _%phi118851%_
           _%ctx118853%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx118855%_ _%rebind?118856%_ _%phi118857%_)
        (let ((_%ctx118859%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118855%_
           _%rebind?118856%_
           _%phi118857%_
           _%ctx118859%_))))
    (define gx#core-bind-values!
      (lambda _g121568_
        (let ((_g121567_ (##length _g121568_)))
          (cond ((##fx= _g121567_ 1)
                 (apply (lambda (_%stx118840%_)
                          (gx#core-bind-values!__0 _%stx118840%_))
                        _g121568_))
                ((##fx= _g121567_ 2)
                 (apply (lambda (_%stx118848%_ _%rebind?118849%_)
                          (gx#core-bind-values!__1
                           _%stx118848%_
                           _%rebind?118849%_))
                        _g121568_))
                ((##fx= _g121567_ 3)
                 (apply (lambda (_%stx118855%_ _%rebind?118856%_ _%phi118857%_)
                          (gx#core-bind-values!__2
                           _%stx118855%_
                           _%rebind?118856%_
                           _%phi118857%_))
                        _g121568_))
                ((##fx= _g121567_ 4)
                 (apply (lambda (_%stx118861%_
                                 _%rebind?118862%_
                                 _%phi118863%_
                                 _%ctx118864%_)
                          (gx#core-bind-values!__%
                           _%stx118861%_
                           _%rebind?118862%_
                           _%phi118863%_
                           _%ctx118864%_))
                        _g121568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g121568_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx118825%_)
        (gx#stx-map1
         (lambda (_%x118827%_)
           (if (gx#identifier? _%x118827%_)
               (gx#core-quote-syntax__0 _%x118827%_)
               '#f))
         _%stx118825%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx118818%_)
        (if (gx#identifier? _%stx118818%_)
            (let* ((_%bind118820%_ (gx#resolve-identifier__0 _%stx118818%_))
                   (_%$e118822%_ (not _%bind118820%_)))
              (if _%$e118822%_
                  _%$e118822%_
                  (##structure-instance-of?
                   _%bind118820%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id118807%_ _%form118808%_)
        (let ((_%bind118810%_ (gx#resolve-identifier__0 _%id118807%_)))
          (if (##structure-instance-of? _%bind118810%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id118807%_))
              (if (not _%bind118810%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id118807%_)))
                        (gx#core-quote-syntax__0 _%id118807%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form118808%_
                         _%id118807%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form118808%_
                     _%id118807%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id118762%_ _%rebind?118763%_ _%phi118764%_ _%ctx118765%_)
        (let* ((_%key118767%_ (gx#core-identifier-key _%id118762%_))
               (_%eid118769%_
                (gx#make-binding-id__%
                 _%key118767%_
                 '#f
                 _%phi118764%_
                 _%ctx118765%_))
               (_%bind118775%_
                (if (##structure-instance-of?
                     _%ctx118765%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid118769%_
                       _%key118767%_
                       _%phi118764%_
                       _%ctx118765%_))
                    (if (##structure-instance-of?
                         _%ctx118765%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid118769%_
                           _%key118767%_
                           _%phi118764%_))
                        (if (##structure-instance-of?
                             _%ctx118765%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid118769%_
                               _%key118767%_
                               _%phi118764%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid118769%_
                               _%key118767%_
                               _%phi118764%_)))))))
          (gx#bind-identifier!__%
           _%id118762%_
           _%bind118775%_
           _%rebind?118763%_
           _%phi118764%_
           _%ctx118765%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id118781%_)
        (let* ((_%rebind?118783%_ '#f)
               (_%phi118785%_ (gx#current-expander-phi))
               (_%ctx118787%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118781%_
           _%rebind?118783%_
           _%phi118785%_
           _%ctx118787%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id118789%_ _%rebind?118790%_)
        (let* ((_%phi118792%_ (gx#current-expander-phi))
               (_%ctx118794%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118789%_
           _%rebind?118790%_
           _%phi118792%_
           _%ctx118794%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id118796%_ _%rebind?118797%_ _%phi118798%_)
        (let ((_%ctx118800%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118796%_
           _%rebind?118797%_
           _%phi118798%_
           _%ctx118800%_))))
    (define gx#core-bind-runtime!
      (lambda _g121570_
        (let ((_g121569_ (##length _g121570_)))
          (cond ((##fx= _g121569_ 1)
                 (apply (lambda (_%id118781%_)
                          (gx#core-bind-runtime!__0 _%id118781%_))
                        _g121570_))
                ((##fx= _g121569_ 2)
                 (apply (lambda (_%id118789%_ _%rebind?118790%_)
                          (gx#core-bind-runtime!__1
                           _%id118789%_
                           _%rebind?118790%_))
                        _g121570_))
                ((##fx= _g121569_ 3)
                 (apply (lambda (_%id118796%_ _%rebind?118797%_ _%phi118798%_)
                          (gx#core-bind-runtime!__2
                           _%id118796%_
                           _%rebind?118797%_
                           _%phi118798%_))
                        _g121570_))
                ((##fx= _g121569_ 4)
                 (apply (lambda (_%id118802%_
                                 _%rebind?118803%_
                                 _%phi118804%_
                                 _%ctx118805%_)
                          (gx#core-bind-runtime!__%
                           _%id118802%_
                           _%rebind?118803%_
                           _%phi118804%_
                           _%ctx118805%_))
                        _g121570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g121570_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id118714%_
               _%eid118715%_
               _%rebind?118716%_
               _%phi118717%_
               _%ctx118718%_)
        (let* ((_%key118720%_ (gx#core-identifier-key _%id118714%_))
               (_%bind118725%_
                (if (##structure-instance-of?
                     _%ctx118718%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid118715%_
                       _%key118720%_
                       _%phi118717%_
                       _%ctx118718%_))
                    (if (##structure-instance-of?
                         _%ctx118718%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid118715%_
                           _%key118720%_
                           _%phi118717%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid118715%_
                           _%key118720%_
                           _%phi118717%_))))))
          (gx#bind-identifier!__%
           _%id118714%_
           _%bind118725%_
           _%rebind?118716%_
           _%phi118717%_
           _%ctx118718%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id118731%_ _%eid118732%_)
        (let* ((_%rebind?118734%_ '#f)
               (_%phi118736%_ (gx#current-expander-phi))
               (_%ctx118738%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118731%_
           _%eid118732%_
           _%rebind?118734%_
           _%phi118736%_
           _%ctx118738%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id118740%_ _%eid118741%_ _%rebind?118742%_)
        (let* ((_%phi118744%_ (gx#current-expander-phi))
               (_%ctx118746%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118740%_
           _%eid118741%_
           _%rebind?118742%_
           _%phi118744%_
           _%ctx118746%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id118748%_ _%eid118749%_ _%rebind?118750%_ _%phi118751%_)
        (let ((_%ctx118753%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118748%_
           _%eid118749%_
           _%rebind?118750%_
           _%phi118751%_
           _%ctx118753%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g121572_
        (let ((_g121571_ (##length _g121572_)))
          (cond ((##fx= _g121571_ 2)
                 (apply (lambda (_%id118731%_ _%eid118732%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id118731%_
                           _%eid118732%_))
                        _g121572_))
                ((##fx= _g121571_ 3)
                 (apply (lambda (_%id118740%_ _%eid118741%_ _%rebind?118742%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id118740%_
                           _%eid118741%_
                           _%rebind?118742%_))
                        _g121572_))
                ((##fx= _g121571_ 4)
                 (apply (lambda (_%id118748%_
                                 _%eid118749%_
                                 _%rebind?118750%_
                                 _%phi118751%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id118748%_
                           _%eid118749%_
                           _%rebind?118750%_
                           _%phi118751%_))
                        _g121572_))
                ((##fx= _g121571_ 5)
                 (apply (lambda (_%id118755%_
                                 _%eid118756%_
                                 _%rebind?118757%_
                                 _%phi118758%_
                                 _%ctx118759%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id118755%_
                           _%eid118756%_
                           _%rebind?118757%_
                           _%phi118758%_
                           _%ctx118759%_))
                        _g121572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g121572_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id118674%_
               _%eid118675%_
               _%rebind?118676%_
               _%phi118677%_
               _%ctx118678%_)
        (gx#bind-identifier!__%
         _%id118674%_
         (##structure
          gx#extern-binding::t
          _%eid118675%_
          (gx#core-identifier-key _%id118674%_)
          _%phi118677%_)
         _%rebind?118676%_
         _%phi118677%_
         _%ctx118678%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id118683%_ _%eid118684%_)
        (let* ((_%rebind?118686%_ '#f)
               (_%phi118688%_ (gx#current-expander-phi))
               (_%ctx118690%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118683%_
           _%eid118684%_
           _%rebind?118686%_
           _%phi118688%_
           _%ctx118690%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id118692%_ _%eid118693%_ _%rebind?118694%_)
        (let* ((_%phi118696%_ (gx#current-expander-phi))
               (_%ctx118698%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118692%_
           _%eid118693%_
           _%rebind?118694%_
           _%phi118696%_
           _%ctx118698%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id118700%_ _%eid118701%_ _%rebind?118702%_ _%phi118703%_)
        (let ((_%ctx118705%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118700%_
           _%eid118701%_
           _%rebind?118702%_
           _%phi118703%_
           _%ctx118705%_))))
    (define gx#core-bind-extern!
      (lambda _g121574_
        (let ((_g121573_ (##length _g121574_)))
          (cond ((##fx= _g121573_ 2)
                 (apply (lambda (_%id118683%_ _%eid118684%_)
                          (gx#core-bind-extern!__0 _%id118683%_ _%eid118684%_))
                        _g121574_))
                ((##fx= _g121573_ 3)
                 (apply (lambda (_%id118692%_ _%eid118693%_ _%rebind?118694%_)
                          (gx#core-bind-extern!__1
                           _%id118692%_
                           _%eid118693%_
                           _%rebind?118694%_))
                        _g121574_))
                ((##fx= _g121573_ 4)
                 (apply (lambda (_%id118700%_
                                 _%eid118701%_
                                 _%rebind?118702%_
                                 _%phi118703%_)
                          (gx#core-bind-extern!__2
                           _%id118700%_
                           _%eid118701%_
                           _%rebind?118702%_
                           _%phi118703%_))
                        _g121574_))
                ((##fx= _g121573_ 5)
                 (apply (lambda (_%id118707%_
                                 _%eid118708%_
                                 _%rebind?118709%_
                                 _%phi118710%_
                                 _%ctx118711%_)
                          (gx#core-bind-extern!__%
                           _%id118707%_
                           _%eid118708%_
                           _%rebind?118709%_
                           _%phi118710%_
                           _%ctx118711%_))
                        _g121574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g121574_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id118628%_
               _%e118629%_
               _%rebind?118630%_
               _%phi118631%_
               _%ctx118632%_)
        (gx#bind-identifier!__%
         _%id118628%_
         (let ((_%key118637%_ (gx#core-identifier-key _%id118628%_))
               (_%e118638%_
                (if (or (##structure-instance-of? _%e118629%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e118629%_
                         'gx#expander-context::t))
                    _%e118629%_
                    (##structure
                     gx#user-expander::t
                     _%e118629%_
                     _%ctx118632%_
                     _%phi118631%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key118637%_
             '#t
             _%phi118631%_
             _%ctx118632%_)
            _%key118637%_
            _%phi118631%_
            _%e118638%_))
         _%rebind?118630%_
         _%phi118631%_
         _%ctx118632%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id118643%_ _%e118644%_)
        (let* ((_%rebind?118646%_ '#f)
               (_%phi118648%_ (gx#current-expander-phi))
               (_%ctx118650%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118643%_
           _%e118644%_
           _%rebind?118646%_
           _%phi118648%_
           _%ctx118650%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id118652%_ _%e118653%_ _%rebind?118654%_)
        (let* ((_%phi118656%_ (gx#current-expander-phi))
               (_%ctx118658%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118652%_
           _%e118653%_
           _%rebind?118654%_
           _%phi118656%_
           _%ctx118658%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id118660%_ _%e118661%_ _%rebind?118662%_ _%phi118663%_)
        (let ((_%ctx118665%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118660%_
           _%e118661%_
           _%rebind?118662%_
           _%phi118663%_
           _%ctx118665%_))))
    (define gx#core-bind-syntax!
      (lambda _g121576_
        (let ((_g121575_ (##length _g121576_)))
          (cond ((##fx= _g121575_ 2)
                 (apply (lambda (_%id118643%_ _%e118644%_)
                          (gx#core-bind-syntax!__0 _%id118643%_ _%e118644%_))
                        _g121576_))
                ((##fx= _g121575_ 3)
                 (apply (lambda (_%id118652%_ _%e118653%_ _%rebind?118654%_)
                          (gx#core-bind-syntax!__1
                           _%id118652%_
                           _%e118653%_
                           _%rebind?118654%_))
                        _g121576_))
                ((##fx= _g121575_ 4)
                 (apply (lambda (_%id118660%_
                                 _%e118661%_
                                 _%rebind?118662%_
                                 _%phi118663%_)
                          (gx#core-bind-syntax!__2
                           _%id118660%_
                           _%e118661%_
                           _%rebind?118662%_
                           _%phi118663%_))
                        _g121576_))
                ((##fx= _g121575_ 5)
                 (apply (lambda (_%id118667%_
                                 _%e118668%_
                                 _%rebind?118669%_
                                 _%phi118670%_
                                 _%ctx118671%_)
                          (gx#core-bind-syntax!__%
                           _%id118667%_
                           _%e118668%_
                           _%rebind?118669%_
                           _%phi118670%_
                           _%ctx118671%_))
                        _g121576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g121576_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id118611%_ _%e118612%_ _%rebind?118613%_)
        (gx#core-bind-syntax!__%
         _%id118611%_
         _%e118612%_
         _%rebind?118613%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id118618%_ _%e118619%_)
        (let ((_%rebind?118621%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id118618%_
           _%e118619%_
           _%rebind?118621%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g121578_
        (let ((_g121577_ (##length _g121578_)))
          (cond ((##fx= _g121577_ 2)
                 (apply (lambda (_%id118618%_ _%e118619%_)
                          (gx#core-bind-root-syntax!__0
                           _%id118618%_
                           _%e118619%_))
                        _g121578_))
                ((##fx= _g121577_ 3)
                 (apply (lambda (_%id118623%_ _%e118624%_ _%rebind?118625%_)
                          (gx#core-bind-root-syntax!__%
                           _%id118623%_
                           _%e118624%_
                           _%rebind?118625%_))
                        _g121578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g121578_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id118569%_
               _%alias-id118570%_
               _%rebind?118571%_
               _%phi118572%_
               _%ctx118573%_)
        (gx#bind-identifier!__%
         _%id118569%_
         (let ((_%key118575%_ (gx#core-identifier-key _%id118569%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key118575%_
             '#t
             _%phi118572%_
             _%ctx118573%_)
            _%key118575%_
            _%phi118572%_
            _%alias-id118570%_))
         _%rebind?118571%_
         _%phi118572%_
         _%ctx118573%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id118580%_ _%alias-id118581%_)
        (let* ((_%rebind?118583%_ '#f)
               (_%phi118585%_ (gx#current-expander-phi))
               (_%ctx118587%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118580%_
           _%alias-id118581%_
           _%rebind?118583%_
           _%phi118585%_
           _%ctx118587%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id118589%_ _%alias-id118590%_ _%rebind?118591%_)
        (let* ((_%phi118593%_ (gx#current-expander-phi))
               (_%ctx118595%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118589%_
           _%alias-id118590%_
           _%rebind?118591%_
           _%phi118593%_
           _%ctx118595%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id118597%_ _%alias-id118598%_ _%rebind?118599%_ _%phi118600%_)
        (let ((_%ctx118602%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118597%_
           _%alias-id118598%_
           _%rebind?118599%_
           _%phi118600%_
           _%ctx118602%_))))
    (define gx#core-bind-alias!
      (lambda _g121580_
        (let ((_g121579_ (##length _g121580_)))
          (cond ((##fx= _g121579_ 2)
                 (apply (lambda (_%id118580%_ _%alias-id118581%_)
                          (gx#core-bind-alias!__0
                           _%id118580%_
                           _%alias-id118581%_))
                        _g121580_))
                ((##fx= _g121579_ 3)
                 (apply (lambda (_%id118589%_
                                 _%alias-id118590%_
                                 _%rebind?118591%_)
                          (gx#core-bind-alias!__1
                           _%id118589%_
                           _%alias-id118590%_
                           _%rebind?118591%_))
                        _g121580_))
                ((##fx= _g121579_ 4)
                 (apply (lambda (_%id118597%_
                                 _%alias-id118598%_
                                 _%rebind?118599%_
                                 _%phi118600%_)
                          (gx#core-bind-alias!__2
                           _%id118597%_
                           _%alias-id118598%_
                           _%rebind?118599%_
                           _%phi118600%_))
                        _g121580_))
                ((##fx= _g121579_ 5)
                 (apply (lambda (_%id118604%_
                                 _%alias-id118605%_
                                 _%rebind?118606%_
                                 _%phi118607%_
                                 _%ctx118608%_)
                          (gx#core-bind-alias!__%
                           _%id118604%_
                           _%alias-id118605%_
                           _%rebind?118606%_
                           _%phi118607%_
                           _%ctx118608%_))
                        _g121580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g121580_))))))
    (define gx#make-binding-id__%
      (lambda (_%key118519%_ _%syntax?118520%_ _%phi118521%_ _%ctx118522%_)
        (if (uninterned-symbol? _%key118519%_)
            (let () (##gensym 'L))
            (if (pair? _%key118519%_)
                (let () (gensym (car _%key118519%_)))
                (if (##structure-instance-of? _%ctx118522%_ 'gx#top-context::t)
                    (let ()
                      (let ((_%ns118527%_
                             (gx#core-context-namespace__% _%ctx118522%_)))
                        (if (and (fxzero? _%phi118521%_)
                                 (not _%syntax?118520%_))
                            (let ()
                              (if _%ns118527%_
                                  (make-symbol__1
                                   _%ns118527%_
                                   '"#"
                                   _%key118519%_)
                                  _%key118519%_))
                            (if _%syntax?118520%_
                                (let ()
                                  (make-symbol__1
                                   (let ((_%$e118531%_ _%ns118527%_))
                                     (if _%$e118531%_ _%$e118531%_ '""))
                                   '"[:"
                                   (number->string _%phi118521%_)
                                   '":]#"
                                   _%key118519%_))
                                (let ()
                                  (make-symbol__1
                                   (let ((_%$e118535%_ _%ns118527%_))
                                     (if _%$e118535%_ _%$e118535%_ '""))
                                   '"["
                                   (number->string _%phi118521%_)
                                   '"]#"
                                   _%key118519%_))))))
                    (let () (gensym _%key118519%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key118542%_)
        (let* ((_%syntax?118544%_ '#f)
               (_%phi118546%_ (gx#current-expander-phi))
               (_%ctx118548%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118542%_
           _%syntax?118544%_
           _%phi118546%_
           _%ctx118548%_))))
    (define gx#make-binding-id__1
      (lambda (_%key118550%_ _%syntax?118551%_)
        (let* ((_%phi118553%_ (gx#current-expander-phi))
               (_%ctx118555%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118550%_
           _%syntax?118551%_
           _%phi118553%_
           _%ctx118555%_))))
    (define gx#make-binding-id__2
      (lambda (_%key118557%_ _%syntax?118558%_ _%phi118559%_)
        (let ((_%ctx118561%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118557%_
           _%syntax?118558%_
           _%phi118559%_
           _%ctx118561%_))))
    (define gx#make-binding-id
      (lambda _g121582_
        (let ((_g121581_ (##length _g121582_)))
          (cond ((##fx= _g121581_ 1)
                 (apply (lambda (_%key118542%_)
                          (gx#make-binding-id__0 _%key118542%_))
                        _g121582_))
                ((##fx= _g121581_ 2)
                 (apply (lambda (_%key118550%_ _%syntax?118551%_)
                          (gx#make-binding-id__1
                           _%key118550%_
                           _%syntax?118551%_))
                        _g121582_))
                ((##fx= _g121581_ 3)
                 (apply (lambda (_%key118557%_ _%syntax?118558%_ _%phi118559%_)
                          (gx#make-binding-id__2
                           _%key118557%_
                           _%syntax?118558%_
                           _%phi118559%_))
                        _g121582_))
                ((##fx= _g121581_ 4)
                 (apply (lambda (_%key118563%_
                                 _%syntax?118564%_
                                 _%phi118565%_
                                 _%ctx118566%_)
                          (gx#make-binding-id__%
                           _%key118563%_
                           _%syntax?118564%_
                           _%phi118565%_
                           _%ctx118566%_))
                        _g121582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g121582_))))))))
