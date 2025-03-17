(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1742226232)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx126381%_)
        (letrec ((_%expand-special126383%_
                  (lambda (_%hd126385%_ _%K126386%_ _%rest126387%_ _%r126388%_)
                    (_%K126386%_
                     _%rest126387%_
                     (cons (gx#core-expand-top _%hd126385%_) _%r126388%_)))))
          (gx#core-expand-block__0 _%stx126381%_ _%expand-special126383%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx126134%_)
        (letrec ((_%expand-special126136%_
                  (lambda (_%hd126256%_ _%K126257%_ _%rest126258%_ _%r126259%_)
                    (let* ((_%K126263%_
                            (lambda (_%e126261%_)
                              (_%K126257%_
                               _%rest126258%_
                               (cons _%e126261%_ _%r126259%_))))
                           (_%e126264126293%_ _%hd126256%_)
                           (_%E126288126297%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e126264126293%_)))
                           (_%E126284126309%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126264126293%_)
                                  (let ((_%e126289126301%_
                                         (gx#syntax-e _%e126264126293%_)))
                                    (let ((_%hd126290126304%_
                                           (##car _%e126289126301%_))
                                          (_%tl126291126306%_
                                           (##cdr _%e126289126301%_)))
                                      (if (and (gx#identifier?
                                                _%hd126290126304%_)
                                               (gx#core-identifier=?
                                                _%hd126290126304%_
                                                '%#define-runtime))
                                          (_%K126263%_
                                           (gx#core-expand-define-runtime%
                                            _%hd126256%_))
                                          (_%E126288126297%_))))
                                  (_%E126288126297%_))))
                           (_%E126280126321%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126264126293%_)
                                  (let ((_%e126285126313%_
                                         (gx#syntax-e _%e126264126293%_)))
                                    (let ((_%hd126286126316%_
                                           (##car _%e126285126313%_))
                                          (_%tl126287126318%_
                                           (##cdr _%e126285126313%_)))
                                      (if (and (gx#identifier?
                                                _%hd126286126316%_)
                                               (gx#core-identifier=?
                                                _%hd126286126316%_
                                                '%#define-alias))
                                          (_%K126263%_
                                           (gx#core-expand-define-alias%
                                            _%hd126256%_))
                                          (_%E126284126309%_))))
                                  (_%E126284126309%_))))
                           (_%E126270126333%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126264126293%_)
                                  (let ((_%e126281126325%_
                                         (gx#syntax-e _%e126264126293%_)))
                                    (let ((_%hd126282126328%_
                                           (##car _%e126281126325%_))
                                          (_%tl126283126330%_
                                           (##cdr _%e126281126325%_)))
                                      (if (and (gx#identifier?
                                                _%hd126282126328%_)
                                               (gx#core-identifier=?
                                                _%hd126282126328%_
                                                '%#define-syntax))
                                          (_%K126263%_
                                           (gx#core-expand-define-syntax%
                                            _%hd126256%_))
                                          (_%E126280126321%_))))
                                  (_%E126280126321%_))))
                           (_%E126266126365%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126264126293%_)
                                  (let ((_%e126271126337%_
                                         (gx#syntax-e _%e126264126293%_)))
                                    (let ((_%hd126272126340%_
                                           (##car _%e126271126337%_))
                                          (_%tl126273126342%_
                                           (##cdr _%e126271126337%_)))
                                      (if (and (gx#identifier?
                                                _%hd126272126340%_)
                                               (gx#core-identifier=?
                                                _%hd126272126340%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl126273126342%_)
                                              (let ((_%e126274126345%_
                                                     (gx#syntax-e
                                                      _%tl126273126342%_)))
                                                (let ((_%hd126275126348%_
                                                       (##car _%e126274126345%_))
                                                      (_%tl126276126350%_
                                                       (##cdr _%e126274126345%_)))
                                                  (let ((_%hd-bind126353%_
                                                         _%hd126275126348%_))
                                                    (if (gx#stx-pair?
                                                         _%tl126276126350%_)
                                                        (let ((_%e126277126355%_
                                                               (gx#syntax-e
                                                                _%tl126276126350%_)))
                                                          (let ((_%hd126278126358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e126277126355%_))
                        (_%tl126279126360%_ (##cdr _%e126277126355%_)))
                    (let ((_%expr126363%_ _%hd126278126358%_))
                      (if (gx#stx-null? _%tl126279126360%_)
                          (if (gx#core-bind-values? _%hd-bind126353%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126353%_)
                                (_%K126263%_ _%hd126256%_))
                              (_%E126270126333%_))
                          (_%E126270126333%_)))))
                (_%E126270126333%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126270126333%_))
                                          (_%E126270126333%_))))
                                  (_%E126270126333%_))))
                           (_%E126265126377%_
                            (lambda ()
                              (if (gx#stx-pair? _%e126264126293%_)
                                  (let ((_%e126267126369%_
                                         (gx#syntax-e _%e126264126293%_)))
                                    (let ((_%hd126268126372%_
                                           (##car _%e126267126369%_))
                                          (_%tl126269126374%_
                                           (##cdr _%e126267126369%_)))
                                      (if (and (gx#identifier?
                                                _%hd126268126372%_)
                                               (gx#core-identifier=?
                                                _%hd126268126372%_
                                                '%#begin-syntax))
                                          (_%K126263%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd126256%_))
                                          (_%E126266126365%_))))
                                  (_%E126266126365%_)))))
                      (_%E126265126377%_))))
                 (_%eval-body126137%_
                  (lambda (_%rbody126145%_)
                    (let _%lp126147%_ ((_%rest126149%_ _%rbody126145%_)
                                       (_%body126150%_ '())
                                       (_%ebody126151%_ '()))
                      (let* ((_%rest126152126160%_ _%rest126149%_)
                             (_%else126154126168%_
                              (lambda ()
                                (values _%body126150%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody126151%_)
                                          (gx#stx-source _%stx126134%_))))))
                             (_%K126156126244%_
                              (lambda (_%rest126171%_ _%hd126172%_)
                                (let* ((_%e126173126190%_ _%hd126172%_)
                                       (_%E126185126194%_
                                        (lambda ()
                                          (_%lp126147%_
                                           _%rest126171%_
                                           (cons _%hd126172%_ _%body126150%_)
                                           (cons _%hd126172%_
                                                 _%ebody126151%_))))
                                       (_%E126175126206%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126173126190%_)
                                              (let ((_%e126186126198%_
                                                     (gx#syntax-e
                                                      _%e126173126190%_)))
                                                (let ((_%hd126187126201%_
                                                       (##car _%e126186126198%_))
                                                      (_%tl126188126203%_
                                                       (##cdr _%e126186126198%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126187126201%_)
                                                           (gx#core-identifier=?
                                                            _%hd126187126201%_
                                                            '%#begin-syntax))
                                                      (_%lp126147%_
                                                       _%rest126171%_
                                                       (cons _%hd126172%_
                                                             _%body126150%_)
                                                       _%ebody126151%_)
                                                      (_%E126185126194%_))))
                                              (_%E126185126194%_))))
                                       (_%E126174126240%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e126173126190%_)
                                              (let ((_%e126176126210%_
                                                     (gx#syntax-e
                                                      _%e126173126190%_)))
                                                (let ((_%hd126177126213%_
                                                       (##car _%e126176126210%_))
                                                      (_%tl126178126215%_
                                                       (##cdr _%e126176126210%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd126177126213%_)
                                                           (gx#core-identifier=?
                                                            _%hd126177126213%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl126178126215%_)
                                                          (let ((_%e126179126218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl126178126215%_)))
                    (let ((_%hd126180126221%_ (##car _%e126179126218%_))
                          (_%tl126181126223%_ (##cdr _%e126179126218%_)))
                      (let ((_%hd-bind126226%_ _%hd126180126221%_))
                        (if (gx#stx-pair? _%tl126181126223%_)
                            (let ((_%e126182126228%_
                                   (gx#syntax-e _%tl126181126223%_)))
                              (let ((_%hd126183126231%_
                                     (##car _%e126182126228%_))
                                    (_%tl126184126233%_
                                     (##cdr _%e126182126228%_)))
                                (let ((_%expr126236%_ _%hd126183126231%_))
                                  (if (gx#stx-null? _%tl126184126233%_)
                                      (let ((_%ehd126238%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind126226%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr126236%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd126172%_))))
                                        (_%lp126147%_
                                         _%rest126171%_
                                         (cons _%ehd126238%_ _%body126150%_)
                                         (cons _%ehd126238%_ _%ebody126151%_)))
                                      (_%E126175126206%_)))))
                            (_%E126175126206%_)))))
                  (_%E126175126206%_))
              (_%E126175126206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E126175126206%_)))))
                                  (_%E126174126240%_)))))
                        (if (pair? _%rest126152126160%_)
                            (let ((_%hd126157126247%_
                                   (##car _%rest126152126160%_))
                                  (_%tl126158126249%_
                                   (##cdr _%rest126152126160%_)))
                              (let* ((_%hd126252%_ _%hd126157126247%_)
                                     (_%rest126254%_ _%tl126158126249%_))
                                (_%K126156126244%_
                                 _%rest126254%_
                                 _%hd126252%_)))
                            (_%else126154126168%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody126140%_
                     (gx#core-expand-block__1
                      _%stx126134%_
                      _%expand-special126136%_
                      '#f))
                    (_g126404_ (_%eval-body126137%_ _%rbody126140%_)))
               (begin
                 (let ((_g126405_
                        (if (##values? _g126404_)
                            (##values-length _g126404_)
                            1)))
                   (if (not (##fx= _g126405_ 2))
                       (error "Context expects 2 values" _g126405_)))
                 (let ((_%expanded-body126142%_ (##values-ref _g126404_ 0))
                       (_%value126143%_ (##values-ref _g126404_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body126142%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value126143%_ '())))
                    (gx#stx-source _%stx126134%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx126104%_)
        (let* ((_%e126105126112%_ _%stx126104%_)
               (_%E126107126116%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126105126112%_)))
               (_%E126106126130%_
                (lambda ()
                  (if (gx#stx-pair? _%e126105126112%_)
                      (let ((_%e126108126120%_
                             (gx#syntax-e _%e126105126112%_)))
                        (let ((_%hd126109126123%_ (##car _%e126108126120%_))
                              (_%tl126110126125%_ (##cdr _%e126108126120%_)))
                          (let ((_%body126128%_ _%tl126110126125%_))
                            (if (gx#stx-list? _%body126128%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body126128%_)
                                 (gx#stx-source _%stx126104%_))
                                (_%E126107126116%_)))))
                      (_%E126107126116%_)))))
          (_%E126106126130%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx126102%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx126102%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx126048%_)
        (let* ((_%e126049126062%_ _%stx126048%_)
               (_%E126051126066%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126049126062%_)))
               (_%E126050126098%_
                (lambda ()
                  (if (gx#stx-pair? _%e126049126062%_)
                      (let ((_%e126052126070%_
                             (gx#syntax-e _%e126049126062%_)))
                        (let ((_%hd126053126073%_ (##car _%e126052126070%_))
                              (_%tl126054126075%_ (##cdr _%e126052126070%_)))
                          (if (gx#stx-pair? _%tl126054126075%_)
                              (let ((_%e126055126078%_
                                     (gx#syntax-e _%tl126054126075%_)))
                                (let ((_%hd126056126081%_
                                       (##car _%e126055126078%_))
                                      (_%tl126057126083%_
                                       (##cdr _%e126055126078%_)))
                                  (let ((_%ann126086%_ _%hd126056126081%_))
                                    (if (gx#stx-pair? _%tl126057126083%_)
                                        (let ((_%e126058126088%_
                                               (gx#syntax-e
                                                _%tl126057126083%_)))
                                          (let ((_%hd126059126091%_
                                                 (##car _%e126058126088%_))
                                                (_%tl126060126093%_
                                                 (##cdr _%e126058126088%_)))
                                            (let ((_%expr126096%_
                                                   _%hd126059126091%_))
                                              (if (gx#stx-null?
                                                   _%tl126060126093%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann126086%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr126096%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx126048%_))
                                                  (_%E126051126066%_)))))
                                        (_%E126051126066%_)))))
                              (_%E126051126066%_))))
                      (_%E126051126066%_)))))
          (_%E126050126098%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx125772%_ _%body125773%_)
        (letrec ((_%expand-special125775%_
                  (lambda (_%hd126043%_ _%K126044%_ _%rest126045%_ _%r126046%_)
                    (_%K126044%_
                     '()
                     (cons (_%expand-internal125776%_
                            _%hd126043%_
                            _%rest126045%_)
                           _%r126046%_))))
                 (_%expand-internal125776%_
                  (lambda (_%hd126039%_ _%rest126040%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal125778%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd126039%_ _%rest126040%_))
                          (gx#stx-source _%stx125772%_))
                         _%expand-internal-special125777%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj126398
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj126398)
                       __obj126398))))
                 (_%expand-internal-special125777%_
                  (lambda (_%hd125934%_ _%K125935%_ _%rest125936%_ _%r125937%_)
                    (let* ((_%e125938125963%_ _%hd125934%_)
                           (_%E125958125967%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125938125963%_)))
                           (_%E125954125979%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125938125963%_)
                                  (let ((_%e125959125971%_
                                         (gx#syntax-e _%e125938125963%_)))
                                    (let ((_%hd125960125974%_
                                           (##car _%e125959125971%_))
                                          (_%tl125961125976%_
                                           (##cdr _%e125959125971%_)))
                                      (if (and (gx#identifier?
                                                _%hd125960125974%_)
                                               (gx#core-identifier=?
                                                _%hd125960125974%_
                                                '%#declare))
                                          (_%K125935%_
                                           _%rest125936%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd125934%_)
                                                 _%r125937%_))
                                          (_%E125958125967%_))))
                                  (_%E125958125967%_))))
                           (_%E125950125991%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125938125963%_)
                                  (let ((_%e125955125983%_
                                         (gx#syntax-e _%e125938125963%_)))
                                    (let ((_%hd125956125986%_
                                           (##car _%e125955125983%_))
                                          (_%tl125957125988%_
                                           (##cdr _%e125955125983%_)))
                                      (if (and (gx#identifier?
                                                _%hd125956125986%_)
                                               (gx#core-identifier=?
                                                _%hd125956125986%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd125934%_)
                                            (_%K125935%_
                                             _%rest125936%_
                                             _%r125937%_))
                                          (_%E125954125979%_))))
                                  (_%E125954125979%_))))
                           (_%E125940126003%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125938125963%_)
                                  (let ((_%e125951125995%_
                                         (gx#syntax-e _%e125938125963%_)))
                                    (let ((_%hd125952125998%_
                                           (##car _%e125951125995%_))
                                          (_%tl125953126000%_
                                           (##cdr _%e125951125995%_)))
                                      (if (and (gx#identifier?
                                                _%hd125952125998%_)
                                               (gx#core-identifier=?
                                                _%hd125952125998%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd125934%_)
                                            (_%K125935%_
                                             _%rest125936%_
                                             _%r125937%_))
                                          (_%E125950125991%_))))
                                  (_%E125950125991%_))))
                           (_%E125939126035%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125938125963%_)
                                  (let ((_%e125941126007%_
                                         (gx#syntax-e _%e125938125963%_)))
                                    (let ((_%hd125942126010%_
                                           (##car _%e125941126007%_))
                                          (_%tl125943126012%_
                                           (##cdr _%e125941126007%_)))
                                      (if (and (gx#identifier?
                                                _%hd125942126010%_)
                                               (gx#core-identifier=?
                                                _%hd125942126010%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125943126012%_)
                                              (let ((_%e125944126015%_
                                                     (gx#syntax-e
                                                      _%tl125943126012%_)))
                                                (let ((_%hd125945126018%_
                                                       (##car _%e125944126015%_))
                                                      (_%tl125946126020%_
                                                       (##cdr _%e125944126015%_)))
                                                  (let ((_%hd-bind126023%_
                                                         _%hd125945126018%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125946126020%_)
                                                        (let ((_%e125947126025%_
                                                               (gx#syntax-e
                                                                _%tl125946126020%_)))
                                                          (let ((_%hd125948126028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125947126025%_))
                        (_%tl125949126030%_ (##cdr _%e125947126025%_)))
                    (let ((_%expr126033%_ _%hd125948126028%_))
                      (if (gx#stx-null? _%tl125949126030%_)
                          (if (gx#core-bind-values? _%hd-bind126023%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind126023%_)
                                (_%K125935%_
                                 _%rest125936%_
                                 (cons _%hd125934%_ _%r125937%_)))
                              (_%E125940126003%_))
                          (_%E125940126003%_)))))
                (_%E125940126003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125940126003%_))
                                          (_%E125940126003%_))))
                                  (_%E125940126003%_)))))
                      (_%E125939126035%_))))
                 (_%wrap-internal125778%_
                  (lambda (_%rbody125780%_)
                    (let _%lp125782%_ ((_%rest125784%_ _%rbody125780%_)
                                       (_%decls125785%_ '())
                                       (_%bind125786%_ '())
                                       (_%body125787%_ '()))
                      (let* ((_%e125788125795%_ _%rest125784%_)
                             (_%E125790125844%_
                              (lambda ()
                                (let* ((_%body125839%_
                                        (let* ((_%body125798125808%_
                                                _%body125787%_)
                                               (_%else125801125816%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body125787%_)
                                                   (gx#stx-source
                                                    _%stx125772%_)))))
                                          (let ((_%K125806125836%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx125772%_)))
                                                (_%K125803125822%_
                                                 (lambda (_%expr125820%_)
                                                   _%expr125820%_)))
                                            (let ((_%try-match125800125832%_
                                                   (lambda ()
                                                     (if (pair? _%body125798125808%_)
                                                         (let ((_%tl125805125827%_
                                                                (##cdr _%body125798125808%_))
                                                               (_%hd125804125825%_
                                                                (##car _%body125798125808%_)))
                                                           (if (null? _%tl125805125827%_)
                                                               (let ((_%expr125830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125804125825%_))
                         (_%K125803125822%_ _%expr125830%_))
                       (_%else125801125816%_)))
                 (_%else125801125816%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body125798125808%_)
                                                  (_%K125806125836%_)
                                                  (_%try-match125800125832%_))))))
                                       (_%body125841%_
                                        (if (null? _%bind125786%_)
                                            _%body125839%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind125786%_
                                                         (cons _%body125839%_
                                                               '())))
                                             (gx#stx-source _%stx125772%_)))))
                                  (if (null? _%decls125785%_)
                                      _%body125841%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls125785%_
                                                   (cons _%body125841%_ '())))
                                       (gx#stx-source _%stx125772%_))))))
                             (_%E125789125930%_
                              (lambda ()
                                (if (gx#stx-pair? _%e125788125795%_)
                                    (let ((_%e125791125848%_
                                           (gx#syntax-e _%e125788125795%_)))
                                      (let ((_%hd125792125851%_
                                             (##car _%e125791125848%_))
                                            (_%tl125793125853%_
                                             (##cdr _%e125791125848%_)))
                                        (let* ((_%hd125856%_
                                                _%hd125792125851%_)
                                               (_%rest125858%_
                                                _%tl125793125853%_)
                                               (_%e125859125876%_ _%hd125856%_)
                                               (_%E125871125880%_
                                                (lambda ()
                                                  (if (null? _%bind125786%_)
                                                      (_%lp125782%_
                                                       _%rest125858%_
                                                       _%decls125785%_
                                                       _%bind125786%_
                                                       (cons _%hd125856%_
                                                             _%body125787%_))
                                                      (_%lp125782%_
                                                       _%rest125858%_
                                                       _%decls125785%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd125856%_ '()))
                     _%bind125786%_)
               _%body125787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125861125894%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125859125876%_)
                                                      (let ((_%e125872125884%_
                                                             (gx#syntax-e
                                                              _%e125859125876%_)))
                                                        (let ((_%hd125873125887%_
                                                               (##car _%e125872125884%_))
                                                              (_%tl125874125889%_
                                                               (##cdr _%e125872125884%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125873125887%_)
                           (gx#core-identifier=?
                            _%hd125873125887%_
                            '%#declare))
                      (let ((_%xdecls125892%_ _%tl125874125889%_))
                        (_%lp125782%_
                         _%rest125858%_
                         (gx#stx-foldr cons _%decls125785%_ _%xdecls125892%_)
                         _%bind125786%_
                         _%body125787%_))
                      (_%E125871125880%_))))
              (_%E125871125880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E125860125926%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e125859125876%_)
                                                      (let ((_%e125862125898%_
                                                             (gx#syntax-e
                                                              _%e125859125876%_)))
                                                        (let ((_%hd125863125901%_
                                                               (##car _%e125862125898%_))
                                                              (_%tl125864125903%_
                                                               (##cdr _%e125862125898%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd125863125901%_)
                           (gx#core-identifier=?
                            _%hd125863125901%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl125864125903%_)
                          (let ((_%e125865125906%_
                                 (gx#syntax-e _%tl125864125903%_)))
                            (let ((_%hd125866125909%_
                                   (##car _%e125865125906%_))
                                  (_%tl125867125911%_
                                   (##cdr _%e125865125906%_)))
                              (let ((_%hd-bind125914%_ _%hd125866125909%_))
                                (if (gx#stx-pair? _%tl125867125911%_)
                                    (let ((_%e125868125916%_
                                           (gx#syntax-e _%tl125867125911%_)))
                                      (let ((_%hd125869125919%_
                                             (##car _%e125868125916%_))
                                            (_%tl125870125921%_
                                             (##cdr _%e125868125916%_)))
                                        (let ((_%expr125924%_
                                               _%hd125869125919%_))
                                          (if (gx#stx-null? _%tl125870125921%_)
                                              (_%lp125782%_
                                               _%rest125858%_
                                               _%decls125785%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind125914%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr125924%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind125786%_)
                                               _%body125787%_)
                                              (_%E125861125894%_)))))
                                    (_%E125861125894%_)))))
                          (_%E125861125894%_))
                      (_%E125861125894%_))))
              (_%E125861125894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E125860125926%_))))
                                    (_%E125790125844%_)))))
                        (_%E125789125930%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body125773%_)
            (gx#stx-source _%stx125772%_))
           _%expand-special125775%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx125710%_)
        (let* ((_%e125711125718%_ _%stx125710%_)
               (_%E125713125722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125711125718%_)))
               (_%E125712125768%_
                (lambda ()
                  (if (gx#stx-pair? _%e125711125718%_)
                      (let ((_%e125714125726%_
                             (gx#syntax-e _%e125711125718%_)))
                        (let ((_%hd125715125729%_ (##car _%e125714125726%_))
                              (_%tl125716125731%_ (##cdr _%e125714125726%_)))
                          (let ((_%body125734%_ _%tl125716125731%_))
                            (if (gx#stx-list? _%body125734%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl125736%_)
                                     (let* ((_%e125737125744%_ _%decl125736%_)
                                            (_%E125739125748%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e125737125744%_)))
                                            (_%E125738125764%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e125737125744%_)
                                                   (let ((_%e125740125752%_
                                                          (gx#syntax-e
                                                           _%e125737125744%_)))
                                                     (let ((_%hd125741125755%_
                                                            (##car _%e125740125752%_))
                                                           (_%tl125742125757%_
                                                            (##cdr _%e125740125752%_)))
                                                       (let* ((_%head125760%_
                                                               _%hd125741125755%_)
                                                              (_%args125762%_
                                                               _%tl125742125757%_))
                                                         (if (gx#stx-list?
                                                              _%args125762%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl125736%_)
                                                             (_%E125739125748%_)))))
                                                   (_%E125739125748%_)))))
                                       (_%E125738125764%_)))
                                   _%body125734%_))
                                 (gx#stx-source _%stx125710%_))
                                (_%E125713125722%_)))))
                      (_%E125713125722%_)))))
          (_%E125712125768%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx125614%_)
        (let* ((_%e125615125622%_ _%stx125614%_)
               (_%E125617125626%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125615125622%_)))
               (_%E125616125706%_
                (lambda ()
                  (if (gx#stx-pair? _%e125615125622%_)
                      (let ((_%e125618125630%_
                             (gx#syntax-e _%e125615125622%_)))
                        (let ((_%hd125619125633%_ (##car _%e125618125630%_))
                              (_%tl125620125635%_ (##cdr _%e125618125630%_)))
                          (let ((_%body125638%_ _%tl125620125635%_))
                            (let _%lp125640%_ ((_%rest125642%_ _%body125638%_)
                                               (_%r125643%_ '()))
                              (let* ((_%e125644125658%_ _%rest125642%_)
                                     (_%E125656125662%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx125614%_)))
                                     (_%E125646125666%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e125644125658%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r125643%_))
                                             (gx#stx-source _%stx125614%_))
                                            (_%E125656125662%_))))
                                     (_%E125645125702%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e125644125658%_)
                                            (let ((_%e125647125670%_
                                                   (gx#syntax-e
                                                    _%e125644125658%_)))
                                              (let ((_%hd125648125673%_
                                                     (##car _%e125647125670%_))
                                                    (_%tl125649125675%_
                                                     (##cdr _%e125647125670%_)))
                                                (if (gx#stx-pair?
                                                     _%hd125648125673%_)
                                                    (let ((_%e125650125678%_
                                                           (gx#syntax-e
                                                            _%hd125648125673%_)))
                                                      (let ((_%hd125651125681%_
                                                             (##car _%e125650125678%_))
                                                            (_%tl125652125683%_
                                                             (##cdr _%e125650125678%_)))
                                                        (let ((_%id125686%_
                                                               _%hd125651125681%_))
                                                          (if (gx#stx-pair?
                                                               _%tl125652125683%_)
                                                              (let ((_%e125653125688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl125652125683%_)))
                        (let ((_%hd125654125691%_ (##car _%e125653125688%_))
                              (_%tl125655125693%_ (##cdr _%e125653125688%_)))
                          (let ((_%eid125696%_ _%hd125654125691%_))
                            (if (gx#stx-null? _%tl125655125693%_)
                                (let ((_%rest125698%_ _%tl125649125675%_))
                                  (if (and (gx#identifier? _%id125686%_)
                                           (gx#identifier? _%eid125696%_))
                                      (let ((_%eid125700%_
                                             (gx#stx-e _%eid125696%_)))
                                        (gx#core-bind-extern!__0
                                         _%id125686%_
                                         _%eid125700%_)
                                        (_%lp125640%_
                                         _%rest125698%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id125686%_)
                                                     (cons _%eid125700%_ '()))
                                               _%r125643%_)))
                                      (_%E125646125666%_)))
                                (_%E125646125666%_)))))
                      (_%E125646125666%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E125646125666%_))))
                                            (_%E125646125666%_)))))
                                (_%E125645125702%_))))))
                      (_%E125617125626%_)))))
          (_%E125616125706%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx125560%_)
        (let* ((_%e125561125574%_ _%stx125560%_)
               (_%E125563125578%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125561125574%_)))
               (_%E125562125610%_
                (lambda ()
                  (if (gx#stx-pair? _%e125561125574%_)
                      (let ((_%e125564125582%_
                             (gx#syntax-e _%e125561125574%_)))
                        (let ((_%hd125565125585%_ (##car _%e125564125582%_))
                              (_%tl125566125587%_ (##cdr _%e125564125582%_)))
                          (if (gx#stx-pair? _%tl125566125587%_)
                              (let ((_%e125567125590%_
                                     (gx#syntax-e _%tl125566125587%_)))
                                (let ((_%hd125568125593%_
                                       (##car _%e125567125590%_))
                                      (_%tl125569125595%_
                                       (##cdr _%e125567125590%_)))
                                  (let ((_%hd125598%_ _%hd125568125593%_))
                                    (if (gx#stx-pair? _%tl125569125595%_)
                                        (let ((_%e125570125600%_
                                               (gx#syntax-e
                                                _%tl125569125595%_)))
                                          (let ((_%hd125571125603%_
                                                 (##car _%e125570125600%_))
                                                (_%tl125572125605%_
                                                 (##cdr _%e125570125600%_)))
                                            (let ((_%expr125608%_
                                                   _%hd125571125603%_))
                                              (if (gx#stx-null?
                                                   _%tl125572125605%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd125598%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd125598%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd125598%_)
                             (cons (gx#core-expand-expression _%expr125608%_)
                                   '())))
                 (gx#stx-source _%stx125560%_)))
              (_%E125563125578%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125563125578%_)))))
                                        (_%E125563125578%_)))))
                              (_%E125563125578%_))))
                      (_%E125563125578%_)))))
          (_%E125562125610%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx125504%_)
        (let* ((_%e125505125518%_ _%stx125504%_)
               (_%E125507125522%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125505125518%_)))
               (_%E125506125556%_
                (lambda ()
                  (if (gx#stx-pair? _%e125505125518%_)
                      (let ((_%e125508125526%_
                             (gx#syntax-e _%e125505125518%_)))
                        (let ((_%hd125509125529%_ (##car _%e125508125526%_))
                              (_%tl125510125531%_ (##cdr _%e125508125526%_)))
                          (if (gx#stx-pair? _%tl125510125531%_)
                              (let ((_%e125511125534%_
                                     (gx#syntax-e _%tl125510125531%_)))
                                (let ((_%hd125512125537%_
                                       (##car _%e125511125534%_))
                                      (_%tl125513125539%_
                                       (##cdr _%e125511125534%_)))
                                  (let ((_%id125542%_ _%hd125512125537%_))
                                    (if (gx#stx-pair? _%tl125513125539%_)
                                        (let ((_%e125514125544%_
                                               (gx#syntax-e
                                                _%tl125513125539%_)))
                                          (let ((_%hd125515125547%_
                                                 (##car _%e125514125544%_))
                                                (_%tl125516125549%_
                                                 (##cdr _%e125514125544%_)))
                                            (let ((_%binding-id125552%_
                                                   _%hd125515125547%_))
                                              (if (gx#stx-null?
                                                   _%tl125516125549%_)
                                                  (if (and (gx#identifier?
                                                            _%id125542%_)
                                                           (gx#identifier?
                                                            _%binding-id125552%_))
                                                      (let ((_%eid125554%_
                                                             (gx#stx-e
                                                              _%binding-id125552%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id125542%_
                                                         _%eid125554%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125542%_)
                             (cons _%eid125554%_ '())))))
              (_%E125507125522%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125507125522%_)))))
                                        (_%E125507125522%_)))))
                              (_%E125507125522%_))))
                      (_%E125507125522%_)))))
          (_%E125506125556%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx125447%_)
        (let* ((_%e125448125461%_ _%stx125447%_)
               (_%E125450125465%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125448125461%_)))
               (_%E125449125500%_
                (lambda ()
                  (if (gx#stx-pair? _%e125448125461%_)
                      (let ((_%e125451125469%_
                             (gx#syntax-e _%e125448125461%_)))
                        (let ((_%hd125452125472%_ (##car _%e125451125469%_))
                              (_%tl125453125474%_ (##cdr _%e125451125469%_)))
                          (if (gx#stx-pair? _%tl125453125474%_)
                              (let ((_%e125454125477%_
                                     (gx#syntax-e _%tl125453125474%_)))
                                (let ((_%hd125455125480%_
                                       (##car _%e125454125477%_))
                                      (_%tl125456125482%_
                                       (##cdr _%e125454125477%_)))
                                  (let ((_%id125485%_ _%hd125455125480%_))
                                    (if (gx#stx-pair? _%tl125456125482%_)
                                        (let ((_%e125457125487%_
                                               (gx#syntax-e
                                                _%tl125456125482%_)))
                                          (let ((_%hd125458125490%_
                                                 (##car _%e125457125487%_))
                                                (_%tl125459125492%_
                                                 (##cdr _%e125457125487%_)))
                                            (let ((_%expr125495%_
                                                   _%hd125458125490%_))
                                              (if (gx#stx-null?
                                                   _%tl125459125492%_)
                                                  (if (gx#identifier?
                                                       _%id125485%_)
                                                      (let ((_g126406_
                                                             (gx#core-expand-expression+1
                                                              _%expr125495%_)))
                                                        (begin
                                                          (let ((_g126407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g126406_)
                             (##values-length _g126406_)
                             1)))
                    (if (not (##fx= _g126407_ 2))
                        (error "Context expects 2 values" _g126407_)))
                  (let ((_%e-stx125497%_ (##values-ref _g126406_ 0))
                        (_%e125498%_ (##values-ref _g126406_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id125485%_ _%e125498%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id125485%_)
                                   (cons _%e-stx125497%_ '())))
                       (gx#stx-source _%stx125447%_))))))
              (_%E125450125465%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125450125465%_)))))
                                        (_%E125450125465%_)))))
                              (_%E125450125465%_))))
                      (_%E125450125465%_)))))
          (_%E125449125500%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx125391%_)
        (let* ((_%e125392125405%_ _%stx125391%_)
               (_%E125394125409%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125392125405%_)))
               (_%E125393125443%_
                (lambda ()
                  (if (gx#stx-pair? _%e125392125405%_)
                      (let ((_%e125395125413%_
                             (gx#syntax-e _%e125392125405%_)))
                        (let ((_%hd125396125416%_ (##car _%e125395125413%_))
                              (_%tl125397125418%_ (##cdr _%e125395125413%_)))
                          (if (gx#stx-pair? _%tl125397125418%_)
                              (let ((_%e125398125421%_
                                     (gx#syntax-e _%tl125397125418%_)))
                                (let ((_%hd125399125424%_
                                       (##car _%e125398125421%_))
                                      (_%tl125400125426%_
                                       (##cdr _%e125398125421%_)))
                                  (let ((_%id125429%_ _%hd125399125424%_))
                                    (if (gx#stx-pair? _%tl125400125426%_)
                                        (let ((_%e125401125431%_
                                               (gx#syntax-e
                                                _%tl125400125426%_)))
                                          (let ((_%hd125402125434%_
                                                 (##car _%e125401125431%_))
                                                (_%tl125403125436%_
                                                 (##cdr _%e125401125431%_)))
                                            (let ((_%alias-id125439%_
                                                   _%hd125402125434%_))
                                              (if (gx#stx-null?
                                                   _%tl125403125436%_)
                                                  (if (and (gx#identifier?
                                                            _%id125429%_)
                                                           (gx#identifier?
                                                            _%alias-id125439%_))
                                                      (let ((_%alias-id125441%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id125439%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id125429%_
                                                         _%alias-id125441%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125429%_)
                             (cons _%alias-id125441%_ '())))))
              (_%E125394125409%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125394125409%_)))))
                                        (_%E125394125409%_)))))
                              (_%E125394125409%_))))
                      (_%E125394125409%_)))))
          (_%E125393125443%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx125334%_ _%wrap?125335%_)
        (let* ((_%e125336125346%_ _%stx125334%_)
               (_%E125338125350%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125336125346%_)))
               (_%E125337125377%_
                (lambda ()
                  (if (gx#stx-pair? _%e125336125346%_)
                      (let ((_%e125339125354%_
                             (gx#syntax-e _%e125336125346%_)))
                        (let ((_%hd125340125357%_ (##car _%e125339125354%_))
                              (_%tl125341125359%_ (##cdr _%e125339125354%_)))
                          (if (gx#stx-pair? _%tl125341125359%_)
                              (let ((_%e125342125362%_
                                     (gx#syntax-e _%tl125341125359%_)))
                                (let ((_%hd125343125365%_
                                       (##car _%e125342125362%_))
                                      (_%tl125344125367%_
                                       (##cdr _%e125342125362%_)))
                                  (let* ((_%hd125370%_ _%hd125343125365%_)
                                         (_%body125372%_ _%tl125344125367%_))
                                    (if (gx#core-bind-values? _%hd125370%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd125370%_)
                                           (let ((_%body125375%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd125370%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125334%_
                                                               _%body125372%_)
                                                              '()))))
                                             (if _%wrap?125335%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body125375%_)
                                                  (gx#stx-source
                                                   _%stx125334%_))
                                                 _%body125375%_)))
                                         gx#current-expander-context
                                         (let ((__obj126399
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126399)
                                           __obj126399))
                                        (_%E125338125350%_)))))
                              (_%E125338125350%_))))
                      (_%E125338125350%_)))))
          (_%E125337125377%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx125384%_)
        (let ((_%wrap?125386%_ '#t))
          (gx#core-expand-lambda%__% _%stx125384%_ _%wrap?125386%_))))
    (define gx#core-expand-lambda%
      (lambda _g126409_
        (let ((_g126408_ (##length _g126409_)))
          (cond ((##fx= _g126408_ 1)
                 (apply gx#core-expand-lambda%__0 _g126409_))
                ((##fx= _g126408_ 2)
                 (apply gx#core-expand-lambda%__% _g126409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g126409_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx125298%_)
        (let* ((_%e125299125306%_ _%stx125298%_)
               (_%E125301125310%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125299125306%_)))
               (_%E125300125329%_
                (lambda ()
                  (if (gx#stx-pair? _%e125299125306%_)
                      (let ((_%e125302125314%_
                             (gx#syntax-e _%e125299125306%_)))
                        (let ((_%hd125303125317%_ (##car _%e125302125314%_))
                              (_%tl125304125319%_ (##cdr _%e125302125314%_)))
                          (let ((_%clauses125322%_ _%tl125304125319%_))
                            (if (gx#stx-list? _%clauses125322%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause125324%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause125324%_)
                                       (let ((_%$e125326%_
                                              (gx#stx-source
                                               _%clause125324%_)))
                                         (if _%$e125326%_
                                             _%$e125326%_
                                             (gx#stx-source _%stx125298%_))))
                                      '#f))
                                   _%clauses125322%_))
                                 (gx#stx-source _%stx125298%_))
                                (_%E125301125310%_)))))
                      (_%E125301125310%_)))))
          (_%E125300125329%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx125252%_)
        (let* ((_%e125253125263%_ _%stx125252%_)
               (_%E125255125267%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125253125263%_)))
               (_%E125254125294%_
                (lambda ()
                  (if (gx#stx-pair? _%e125253125263%_)
                      (let ((_%e125256125271%_
                             (gx#syntax-e _%e125253125263%_)))
                        (let ((_%hd125257125274%_ (##car _%e125256125271%_))
                              (_%tl125258125276%_ (##cdr _%e125256125271%_)))
                          (if (gx#stx-pair? _%tl125258125276%_)
                              (let ((_%e125259125279%_
                                     (gx#syntax-e _%tl125258125276%_)))
                                (let ((_%hd125260125282%_
                                       (##car _%e125259125279%_))
                                      (_%tl125261125284%_
                                       (##cdr _%e125259125279%_)))
                                  (let* ((_%hd125287%_ _%hd125260125282%_)
                                         (_%body125289%_ _%tl125261125284%_))
                                    (if (gx#core-expand-let-bind? _%hd125287%_)
                                        (let ((_%expressions125291%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd125287%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd125287%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd125287%_
                                                           _%expressions125291%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx125252%_
                         _%body125289%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx125252%_)))
                                           gx#current-expander-context
                                           (let ((__obj126400
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126400)
                                             __obj126400)))
                                        (_%E125255125267%_)))))
                              (_%E125255125267%_))))
                      (_%E125255125267%_)))))
          (_%E125254125294%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx125197%_ _%form125198%_)
        (let* ((_%e125199125209%_ _%stx125197%_)
               (_%E125201125213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125199125209%_)))
               (_%E125200125238%_
                (lambda ()
                  (if (gx#stx-pair? _%e125199125209%_)
                      (let ((_%e125202125217%_
                             (gx#syntax-e _%e125199125209%_)))
                        (let ((_%hd125203125220%_ (##car _%e125202125217%_))
                              (_%tl125204125222%_ (##cdr _%e125202125217%_)))
                          (if (gx#stx-pair? _%tl125204125222%_)
                              (let ((_%e125205125225%_
                                     (gx#syntax-e _%tl125204125222%_)))
                                (let ((_%hd125206125228%_
                                       (##car _%e125205125225%_))
                                      (_%tl125207125230%_
                                       (##cdr _%e125205125225%_)))
                                  (let* ((_%hd125233%_ _%hd125206125228%_)
                                         (_%body125235%_ _%tl125207125230%_))
                                    (if (gx#core-expand-let-bind? _%hd125233%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd125233%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form125198%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd125233%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd125233%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx125197%_
                                                               _%body125235%_)
                                                              '())))
                                            (gx#stx-source _%stx125197%_)))
                                         gx#current-expander-context
                                         (let ((__obj126401
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126401)
                                           __obj126401))
                                        (_%E125201125213%_)))))
                              (_%E125201125213%_))))
                      (_%E125201125213%_)))))
          (_%E125200125238%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx125245%_)
        (let ((_%form125247%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx125245%_ _%form125247%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g126411_
        (let ((_g126410_ (##length _g126411_)))
          (cond ((##fx= _g126410_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g126411_))
                ((##fx= _g126410_ 2)
                 (apply gx#core-expand-letrec-values%__% _g126411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g126411_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx125194%_)
        (gx#core-expand-letrec-values%__% _%stx125194%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx125151%_)
        (if (gx#stx-list? _%stx125151%_)
            (gx#stx-andmap
             (lambda (_%bind125153%_)
               (let* ((_%e125154125164%_ _%bind125153%_)
                      (_%E125156125168%_ (lambda () '#f))
                      (_%E125155125190%_
                       (lambda ()
                         (if (gx#stx-pair? _%e125154125164%_)
                             (let ((_%e125157125172%_
                                    (gx#syntax-e _%e125154125164%_)))
                               (let ((_%hd125158125175%_
                                      (##car _%e125157125172%_))
                                     (_%tl125159125177%_
                                      (##cdr _%e125157125172%_)))
                                 (let ((_%hd125180%_ _%hd125158125175%_))
                                   (if (gx#stx-pair? _%tl125159125177%_)
                                       (let ((_%e125160125182%_
                                              (gx#syntax-e
                                               _%tl125159125177%_)))
                                         (let ((_%hd125161125185%_
                                                (##car _%e125160125182%_))
                                               (_%tl125162125187%_
                                                (##cdr _%e125160125182%_)))
                                           (if (gx#stx-null?
                                                _%tl125162125187%_)
                                               (gx#core-bind-values?
                                                _%hd125180%_)
                                               (_%E125156125168%_))))
                                       (_%E125156125168%_)))))
                             (_%E125156125168%_)))))
                 (_%E125155125190%_)))
             _%stx125151%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind125110%_)
        (let* ((_%e125111125121%_ _%bind125110%_)
               (_%E125113125125%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125111125121%_)))
               (_%E125112125147%_
                (lambda ()
                  (if (gx#stx-pair? _%e125111125121%_)
                      (let ((_%e125114125129%_
                             (gx#syntax-e _%e125111125121%_)))
                        (let ((_%hd125115125132%_ (##car _%e125114125129%_))
                              (_%tl125116125134%_ (##cdr _%e125114125129%_)))
                          (if (gx#stx-pair? _%tl125116125134%_)
                              (let ((_%e125117125137%_
                                     (gx#syntax-e _%tl125116125134%_)))
                                (let ((_%hd125118125140%_
                                       (##car _%e125117125137%_))
                                      (_%tl125119125142%_
                                       (##cdr _%e125117125137%_)))
                                  (let ((_%expr125145%_ _%hd125118125140%_))
                                    (if (gx#stx-null? _%tl125119125142%_)
                                        (gx#core-expand-expression
                                         _%expr125145%_)
                                        (_%E125113125125%_)))))
                              (_%E125113125125%_))))
                      (_%E125113125125%_)))))
          (_%E125112125147%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind125069%_)
        (let* ((_%e125070125080%_ _%bind125069%_)
               (_%E125072125084%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125070125080%_)))
               (_%E125071125106%_
                (lambda ()
                  (if (gx#stx-pair? _%e125070125080%_)
                      (let ((_%e125073125088%_
                             (gx#syntax-e _%e125070125080%_)))
                        (let ((_%hd125074125091%_ (##car _%e125073125088%_))
                              (_%tl125075125093%_ (##cdr _%e125073125088%_)))
                          (let ((_%hd125096%_ _%hd125074125091%_))
                            (if (gx#stx-pair? _%tl125075125093%_)
                                (let ((_%e125076125098%_
                                       (gx#syntax-e _%tl125075125093%_)))
                                  (let ((_%hd125077125101%_
                                         (##car _%e125076125098%_))
                                        (_%tl125078125103%_
                                         (##cdr _%e125076125098%_)))
                                    (if (gx#stx-null? _%tl125078125103%_)
                                        (gx#core-bind-values!__0 _%hd125096%_)
                                        (_%E125072125084%_))))
                                (_%E125072125084%_)))))
                      (_%E125072125084%_)))))
          (_%E125071125106%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind125027%_ _%expr125028%_)
        (let* ((_%e125029125039%_ _%bind125027%_)
               (_%E125031125043%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125029125039%_)))
               (_%E125030125065%_
                (lambda ()
                  (if (gx#stx-pair? _%e125029125039%_)
                      (let ((_%e125032125047%_
                             (gx#syntax-e _%e125029125039%_)))
                        (let ((_%hd125033125050%_ (##car _%e125032125047%_))
                              (_%tl125034125052%_ (##cdr _%e125032125047%_)))
                          (let ((_%hd125055%_ _%hd125033125050%_))
                            (if (gx#stx-pair? _%tl125034125052%_)
                                (let ((_%e125035125057%_
                                       (gx#syntax-e _%tl125034125052%_)))
                                  (let ((_%hd125036125060%_
                                         (##car _%e125035125057%_))
                                        (_%tl125037125062%_
                                         (##cdr _%e125035125057%_)))
                                    (if (gx#stx-null? _%tl125037125062%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd125055%_)
                                              (cons _%expr125028%_ '()))
                                        (_%E125031125043%_))))
                                (_%E125031125043%_)))))
                      (_%E125031125043%_)))))
          (_%E125030125065%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx124981%_)
        (let* ((_%e124982124992%_ _%stx124981%_)
               (_%E124984124996%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124982124992%_)))
               (_%E124983125023%_
                (lambda ()
                  (if (gx#stx-pair? _%e124982124992%_)
                      (let ((_%e124985125000%_
                             (gx#syntax-e _%e124982124992%_)))
                        (let ((_%hd124986125003%_ (##car _%e124985125000%_))
                              (_%tl124987125005%_ (##cdr _%e124985125000%_)))
                          (if (gx#stx-pair? _%tl124987125005%_)
                              (let ((_%e124988125008%_
                                     (gx#syntax-e _%tl124987125005%_)))
                                (let ((_%hd124989125011%_
                                       (##car _%e124988125008%_))
                                      (_%tl124990125013%_
                                       (##cdr _%e124988125008%_)))
                                  (let* ((_%hd125016%_ _%hd124989125011%_)
                                         (_%body125018%_ _%tl124990125013%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd125016%_)
                                        (let ((_%expanders125020%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd125016%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd125016%_
                                              _%expanders125020%_)
                                             (gx#core-expand-local-block
                                              _%stx124981%_
                                              _%body125018%_))
                                           gx#current-expander-context
                                           (let ((__obj126402
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj126402)
                                             __obj126402)))
                                        (_%E124984124996%_)))))
                              (_%E124984124996%_))))
                      (_%E124984124996%_)))))
          (_%E124983125023%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx124930%_)
        (let* ((_%e124931124941%_ _%stx124930%_)
               (_%E124933124945%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124931124941%_)))
               (_%E124932124977%_
                (lambda ()
                  (if (gx#stx-pair? _%e124931124941%_)
                      (let ((_%e124934124949%_
                             (gx#syntax-e _%e124931124941%_)))
                        (let ((_%hd124935124952%_ (##car _%e124934124949%_))
                              (_%tl124936124954%_ (##cdr _%e124934124949%_)))
                          (if (gx#stx-pair? _%tl124936124954%_)
                              (let ((_%e124937124957%_
                                     (gx#syntax-e _%tl124936124954%_)))
                                (let ((_%hd124938124960%_
                                       (##car _%e124937124957%_))
                                      (_%tl124939124962%_
                                       (##cdr _%e124937124957%_)))
                                  (let* ((_%hd124965%_ _%hd124938124960%_)
                                         (_%body124967%_ _%tl124939124962%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124965%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd124965%_
                                            (make-list
                                             (gx#stx-length _%hd124965%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g124969124972%_
                                                     _%g124970124974%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g124969124972%_
                                               _%g124970124974%_
                                               '#t))
                                            _%hd124965%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd124965%_))
                                           (gx#core-expand-local-block
                                            _%stx124930%_
                                            _%body124967%_))
                                         gx#current-expander-context
                                         (let ((__obj126403
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj126403)
                                           __obj126403))
                                        (_%E124933124945%_)))))
                              (_%E124933124945%_))))
                      (_%E124933124945%_)))))
          (_%E124932124977%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx124887%_)
        (if (gx#stx-list? _%stx124887%_)
            (gx#stx-andmap
             (lambda (_%bind124889%_)
               (let* ((_%e124890124900%_ _%bind124889%_)
                      (_%E124892124904%_ (lambda () '#f))
                      (_%E124891124926%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124890124900%_)
                             (let ((_%e124893124908%_
                                    (gx#syntax-e _%e124890124900%_)))
                               (let ((_%hd124894124911%_
                                      (##car _%e124893124908%_))
                                     (_%tl124895124913%_
                                      (##cdr _%e124893124908%_)))
                                 (let ((_%hd124916%_ _%hd124894124911%_))
                                   (if (gx#stx-pair? _%tl124895124913%_)
                                       (let ((_%e124896124918%_
                                              (gx#syntax-e
                                               _%tl124895124913%_)))
                                         (let ((_%hd124897124921%_
                                                (##car _%e124896124918%_))
                                               (_%tl124898124923%_
                                                (##cdr _%e124896124918%_)))
                                           (if (gx#stx-null?
                                                _%tl124898124923%_)
                                               (gx#identifier? _%hd124916%_)
                                               (_%E124892124904%_))))
                                       (_%E124892124904%_)))))
                             (_%E124892124904%_)))))
                 (_%E124891124926%_)))
             _%stx124887%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind124843%_)
        (let* ((_%e124844124854%_ _%bind124843%_)
               (_%E124846124858%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124844124854%_)))
               (_%E124845124883%_
                (lambda ()
                  (if (gx#stx-pair? _%e124844124854%_)
                      (let ((_%e124847124862%_
                             (gx#syntax-e _%e124844124854%_)))
                        (let ((_%hd124848124865%_ (##car _%e124847124862%_))
                              (_%tl124849124867%_ (##cdr _%e124847124862%_)))
                          (if (gx#stx-pair? _%tl124849124867%_)
                              (let ((_%e124850124870%_
                                     (gx#syntax-e _%tl124849124867%_)))
                                (let ((_%hd124851124873%_
                                       (##car _%e124850124870%_))
                                      (_%tl124852124875%_
                                       (##cdr _%e124850124870%_)))
                                  (let ((_%expr124878%_ _%hd124851124873%_))
                                    (if (gx#stx-null? _%tl124852124875%_)
                                        (let ((_g126412_
                                               (gx#core-expand-expression+1
                                                _%expr124878%_)))
                                          (begin
                                            (let ((_g126413_
                                                   (if (##values? _g126412_)
                                                       (##values-length
                                                        _g126412_)
                                                       1)))
                                              (if (not (##fx= _g126413_ 2))
                                                  (error "Context expects 2 values"
                                                         _g126413_)))
                                            (let ((_%_124880%_
                                                   (##values-ref _g126412_ 0))
                                                  (_%e124881%_
                                                   (##values-ref _g126412_ 1)))
                                              _%e124881%_)))
                                        (_%E124846124858%_)))))
                              (_%E124846124858%_))))
                      (_%E124846124858%_)))))
          (_%E124845124883%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind124788%_ _%e124789%_ _%rebind?124790%_)
        (let* ((_%e124791124801%_ _%bind124788%_)
               (_%E124793124805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124791124801%_)))
               (_%E124792124827%_
                (lambda ()
                  (if (gx#stx-pair? _%e124791124801%_)
                      (let ((_%e124794124809%_
                             (gx#syntax-e _%e124791124801%_)))
                        (let ((_%hd124795124812%_ (##car _%e124794124809%_))
                              (_%tl124796124814%_ (##cdr _%e124794124809%_)))
                          (let ((_%id124817%_ _%hd124795124812%_))
                            (if (gx#stx-pair? _%tl124796124814%_)
                                (let ((_%e124797124819%_
                                       (gx#syntax-e _%tl124796124814%_)))
                                  (let ((_%hd124798124822%_
                                         (##car _%e124797124819%_))
                                        (_%tl124799124824%_
                                         (##cdr _%e124797124819%_)))
                                    (if (gx#stx-null? _%tl124799124824%_)
                                        (gx#core-bind-syntax!__1
                                         _%id124817%_
                                         _%e124789%_
                                         _%rebind?124790%_)
                                        (_%E124793124805%_))))
                                (_%E124793124805%_)))))
                      (_%E124793124805%_)))))
          (_%E124792124827%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind124834%_ _%e124835%_)
        (let ((_%rebind?124837%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind124834%_
           _%e124835%_
           _%rebind?124837%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g126415_
        (let ((_g126414_ (##length _g126415_)))
          (cond ((##fx= _g126414_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g126415_))
                ((##fx= _g126414_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g126415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g126415_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx124746%_)
        (let* ((_%e124747124757%_ _%stx124746%_)
               (_%E124749124761%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124747124757%_)))
               (_%E124748124783%_
                (lambda ()
                  (if (gx#stx-pair? _%e124747124757%_)
                      (let ((_%e124750124765%_
                             (gx#syntax-e _%e124747124757%_)))
                        (let ((_%hd124751124768%_ (##car _%e124750124765%_))
                              (_%tl124752124770%_ (##cdr _%e124750124765%_)))
                          (if (gx#stx-pair? _%tl124752124770%_)
                              (let ((_%e124753124773%_
                                     (gx#syntax-e _%tl124752124770%_)))
                                (let ((_%hd124754124776%_
                                       (##car _%e124753124773%_))
                                      (_%tl124755124778%_
                                       (##cdr _%e124753124773%_)))
                                  (let ((_%expr124781%_ _%hd124754124776%_))
                                    (if (gx#stx-null? _%tl124755124778%_)
                                        (gx#core-expand-expression
                                         _%expr124781%_)
                                        (_%E124749124761%_)))))
                              (_%E124749124761%_))))
                      (_%E124749124761%_)))))
          (_%E124748124783%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx124705%_)
        (let* ((_%e124706124716%_ _%stx124705%_)
               (_%E124708124720%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124706124716%_)))
               (_%E124707124742%_
                (lambda ()
                  (if (gx#stx-pair? _%e124706124716%_)
                      (let ((_%e124709124724%_
                             (gx#syntax-e _%e124706124716%_)))
                        (let ((_%hd124710124727%_ (##car _%e124709124724%_))
                              (_%tl124711124729%_ (##cdr _%e124709124724%_)))
                          (if (gx#stx-pair? _%tl124711124729%_)
                              (let ((_%e124712124732%_
                                     (gx#syntax-e _%tl124711124729%_)))
                                (let ((_%hd124713124735%_
                                       (##car _%e124712124732%_))
                                      (_%tl124714124737%_
                                       (##cdr _%e124712124732%_)))
                                  (let ((_%e124740%_ _%hd124713124735%_))
                                    (if (gx#stx-null? _%tl124714124737%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e124740%_)
                                                     '()))
                                         (gx#stx-source _%stx124705%_))
                                        (_%E124708124720%_)))))
                              (_%E124708124720%_))))
                      (_%E124708124720%_)))))
          (_%E124707124742%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx124664%_)
        (let* ((_%e124665124675%_ _%stx124664%_)
               (_%E124667124679%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124665124675%_)))
               (_%E124666124701%_
                (lambda ()
                  (if (gx#stx-pair? _%e124665124675%_)
                      (let ((_%e124668124683%_
                             (gx#syntax-e _%e124665124675%_)))
                        (let ((_%hd124669124686%_ (##car _%e124668124683%_))
                              (_%tl124670124688%_ (##cdr _%e124668124683%_)))
                          (if (gx#stx-pair? _%tl124670124688%_)
                              (let ((_%e124671124691%_
                                     (gx#syntax-e _%tl124670124688%_)))
                                (let ((_%hd124672124694%_
                                       (##car _%e124671124691%_))
                                      (_%tl124673124696%_
                                       (##cdr _%e124671124691%_)))
                                  (let ((_%e124699%_ _%hd124672124694%_))
                                    (if (gx#stx-null? _%tl124673124696%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e124699%_)
                                                     '()))
                                         (gx#stx-source _%stx124664%_))
                                        (_%E124667124679%_)))))
                              (_%E124667124679%_))))
                      (_%E124667124679%_)))))
          (_%E124666124701%_))))
    (define gx#core-expand-call%
      (lambda (_%stx124621%_)
        (let* ((_%e124622124632%_ _%stx124621%_)
               (_%E124624124636%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124622124632%_)))
               (_%E124623124660%_
                (lambda ()
                  (if (gx#stx-pair? _%e124622124632%_)
                      (let ((_%e124625124640%_
                             (gx#syntax-e _%e124622124632%_)))
                        (let ((_%hd124626124643%_ (##car _%e124625124640%_))
                              (_%tl124627124645%_ (##cdr _%e124625124640%_)))
                          (if (gx#stx-pair? _%tl124627124645%_)
                              (let ((_%e124628124648%_
                                     (gx#syntax-e _%tl124627124645%_)))
                                (let ((_%hd124629124651%_
                                       (##car _%e124628124648%_))
                                      (_%tl124630124653%_
                                       (##cdr _%e124628124648%_)))
                                  (let* ((_%rator124656%_ _%hd124629124651%_)
                                         (_%args124658%_ _%tl124630124653%_))
                                    (if (gx#stx-list? _%args124658%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator124656%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args124658%_))
                                         (gx#stx-source _%stx124621%_))
                                        (_%E124624124636%_)))))
                              (_%E124624124636%_))))
                      (_%E124624124636%_)))))
          (_%E124623124660%_))))
    (define gx#core-expand-if%
      (lambda (_%stx124554%_)
        (let* ((_%e124555124571%_ _%stx124554%_)
               (_%E124557124575%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124555124571%_)))
               (_%E124556124617%_
                (lambda ()
                  (if (gx#stx-pair? _%e124555124571%_)
                      (let ((_%e124558124579%_
                             (gx#syntax-e _%e124555124571%_)))
                        (let ((_%hd124559124582%_ (##car _%e124558124579%_))
                              (_%tl124560124584%_ (##cdr _%e124558124579%_)))
                          (if (gx#stx-pair? _%tl124560124584%_)
                              (let ((_%e124561124587%_
                                     (gx#syntax-e _%tl124560124584%_)))
                                (let ((_%hd124562124590%_
                                       (##car _%e124561124587%_))
                                      (_%tl124563124592%_
                                       (##cdr _%e124561124587%_)))
                                  (let ((_%test124595%_ _%hd124562124590%_))
                                    (if (gx#stx-pair? _%tl124563124592%_)
                                        (let ((_%e124564124597%_
                                               (gx#syntax-e
                                                _%tl124563124592%_)))
                                          (let ((_%hd124565124600%_
                                                 (##car _%e124564124597%_))
                                                (_%tl124566124602%_
                                                 (##cdr _%e124564124597%_)))
                                            (let ((_%K124605%_
                                                   _%hd124565124600%_))
                                              (if (gx#stx-pair?
                                                   _%tl124566124602%_)
                                                  (let ((_%e124567124607%_
                                                         (gx#syntax-e
                                                          _%tl124566124602%_)))
                                                    (let ((_%hd124568124610%_
                                                           (##car _%e124567124607%_))
                                                          (_%tl124569124612%_
                                                           (##cdr _%e124567124607%_)))
                                                      (let ((_%E124615%_
                                                             _%hd124568124610%_))
                                                        (if (gx#stx-null?
                                                             _%tl124569124612%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test124595%_)
                                 (cons (gx#core-expand-expression _%K124605%_)
                                       (cons (gx#core-expand-expression
                                              _%E124615%_)
                                             '()))))
                     (gx#stx-source _%stx124554%_))
                    (_%E124557124575%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124557124575%_)))))
                                        (_%E124557124575%_)))))
                              (_%E124557124575%_))))
                      (_%E124557124575%_)))))
          (_%E124556124617%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx124513%_)
        (let* ((_%e124514124524%_ _%stx124513%_)
               (_%E124516124528%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124514124524%_)))
               (_%E124515124550%_
                (lambda ()
                  (if (gx#stx-pair? _%e124514124524%_)
                      (let ((_%e124517124532%_
                             (gx#syntax-e _%e124514124524%_)))
                        (let ((_%hd124518124535%_ (##car _%e124517124532%_))
                              (_%tl124519124537%_ (##cdr _%e124517124532%_)))
                          (if (gx#stx-pair? _%tl124519124537%_)
                              (let ((_%e124520124540%_
                                     (gx#syntax-e _%tl124519124537%_)))
                                (let ((_%hd124521124543%_
                                       (##car _%e124520124540%_))
                                      (_%tl124522124545%_
                                       (##cdr _%e124520124540%_)))
                                  (let ((_%id124548%_ _%hd124521124543%_))
                                    (if (gx#stx-null? _%tl124522124545%_)
                                        (if (gx#identifier? _%id124548%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id124548%_
                                                          _%stx124513%_)
                                                         '()))
                                             (gx#stx-source _%stx124513%_))
                                            (_%E124516124528%_))
                                        (_%E124516124528%_)))))
                              (_%E124516124528%_))))
                      (_%E124516124528%_)))))
          (_%E124515124550%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx124459%_)
        (let* ((_%e124460124473%_ _%stx124459%_)
               (_%E124462124477%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124460124473%_)))
               (_%E124461124509%_
                (lambda ()
                  (if (gx#stx-pair? _%e124460124473%_)
                      (let ((_%e124463124481%_
                             (gx#syntax-e _%e124460124473%_)))
                        (let ((_%hd124464124484%_ (##car _%e124463124481%_))
                              (_%tl124465124486%_ (##cdr _%e124463124481%_)))
                          (if (gx#stx-pair? _%tl124465124486%_)
                              (let ((_%e124466124489%_
                                     (gx#syntax-e _%tl124465124486%_)))
                                (let ((_%hd124467124492%_
                                       (##car _%e124466124489%_))
                                      (_%tl124468124494%_
                                       (##cdr _%e124466124489%_)))
                                  (let ((_%id124497%_ _%hd124467124492%_))
                                    (if (gx#stx-pair? _%tl124468124494%_)
                                        (let ((_%e124469124499%_
                                               (gx#syntax-e
                                                _%tl124468124494%_)))
                                          (let ((_%hd124470124502%_
                                                 (##car _%e124469124499%_))
                                                (_%tl124471124504%_
                                                 (##cdr _%e124469124499%_)))
                                            (let ((_%expr124507%_
                                                   _%hd124470124502%_))
                                              (if (gx#stx-null?
                                                   _%tl124471124504%_)
                                                  (if (gx#identifier?
                                                       _%id124497%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id124497%_
                            _%stx124459%_)
                           (cons (gx#core-expand-expression _%expr124507%_)
                                 '())))
               (gx#stx-source _%stx124459%_))
              (_%E124462124477%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124462124477%_)))))
                                        (_%E124462124477%_)))))
                              (_%E124462124477%_))))
                      (_%E124462124477%_)))))
          (_%E124461124509%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx124304%_)
        (letrec ((_%generate124306%_
                  (lambda (_%body124336%_)
                    (let _%lp124338%_ ((_%rest124340%_ _%body124336%_)
                                       (_%ns124341%_
                                        (gx#core-context-namespace__0))
                                       (_%r124342%_ '()))
                      (let* ((_%e124343124358%_ _%rest124340%_)
                             (_%E124356124362%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e124343124358%_)))
                             (_%E124352124366%_
                              (lambda ()
                                (if (gx#stx-null? _%e124343124358%_)
                                    (reverse _%r124342%_)
                                    (_%E124356124362%_))))
                             (_%E124345124423%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124343124358%_)
                                    (let ((_%e124353124370%_
                                           (gx#syntax-e _%e124343124358%_)))
                                      (let ((_%hd124354124373%_
                                             (##car _%e124353124370%_))
                                            (_%tl124355124375%_
                                             (##cdr _%e124353124370%_)))
                                        (let* ((_%hd124378%_
                                                _%hd124354124373%_)
                                               (_%rest124380%_
                                                _%tl124355124375%_))
                                          (if (gx#identifier? _%hd124378%_)
                                              (_%lp124338%_
                                               _%rest124380%_
                                               _%ns124341%_
                                               (cons (cons _%hd124378%_
                                                           (cons (if _%ns124341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd124378%_
                              _%ns124341%_
                              '"#"
                              _%hd124378%_)
                             _%hd124378%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r124342%_))
                                              (let* ((_%e124381124391%_
                                                      _%hd124378%_)
                                                     (_%E124383124395%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e124381124391%_)))
                                                     (_%E124382124419%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e124381124391%_)
                                                            (let ((_%e124384124399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e124381124391%_)))
                      (let ((_%hd124385124402%_ (##car _%e124384124399%_))
                            (_%tl124386124404%_ (##cdr _%e124384124399%_)))
                        (let ((_%id124407%_ _%hd124385124402%_))
                          (if (gx#stx-pair? _%tl124386124404%_)
                              (let ((_%e124387124409%_
                                     (gx#syntax-e _%tl124386124404%_)))
                                (let ((_%hd124388124412%_
                                       (##car _%e124387124409%_))
                                      (_%tl124389124414%_
                                       (##cdr _%e124387124409%_)))
                                  (let ((_%eid124417%_ _%hd124388124412%_))
                                    (if (gx#stx-null? _%tl124389124414%_)
                                        (if (and (gx#identifier? _%id124407%_)
                                                 (gx#identifier?
                                                  _%eid124417%_))
                                            (_%lp124338%_
                                             _%rest124380%_
                                             _%ns124341%_
                                             (cons (cons _%id124407%_
                                                         (cons _%eid124417%_
                                                               '()))
                                                   _%r124342%_))
                                            (_%E124383124395%_))
                                        (_%E124383124395%_)))))
                              (_%E124383124395%_)))))
                    (_%E124383124395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124382124419%_))))))
                                    (_%E124352124366%_))))
                             (_%E124344124455%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124343124358%_)
                                    (let ((_%e124346124427%_
                                           (gx#syntax-e _%e124343124358%_)))
                                      (let ((_%hd124347124430%_
                                             (##car _%e124346124427%_))
                                            (_%tl124348124432%_
                                             (##cdr _%e124346124427%_)))
                                        (if (eq? (gx#stx-e _%hd124347124430%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl124348124432%_)
                                                (let ((_%e124349124435%_
                                                       (gx#syntax-e
                                                        _%tl124348124432%_)))
                                                  (let ((_%hd124350124438%_
                                                         (##car _%e124349124435%_))
                                                        (_%tl124351124440%_
                                                         (##cdr _%e124349124435%_)))
                                                    (let* ((_%ns124443%_
                                                            _%hd124350124438%_)
                                                           (_%rest124445%_
                                                            _%tl124351124440%_)
                                                           (_%ns124453%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns124443%_)
                        (symbol->string (gx#stx-e _%ns124443%_))
                        (if (or (gx#stx-string? _%ns124443%_)
                                (gx#stx-false? _%ns124443%_))
                            (gx#stx-e _%ns124443%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx124304%_
                             _%ns124443%_)))))
              (_%lp124338%_ _%rest124445%_ _%ns124453%_ _%r124342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E124345124423%_))
                                            (_%E124345124423%_))))
                                    (_%E124345124423%_)))))
                        (_%E124344124455%_))))))
          (let* ((_%e124307124314%_ _%stx124304%_)
                 (_%E124309124318%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124307124314%_)))
                 (_%E124308124332%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124307124314%_)
                        (let ((_%e124310124322%_
                               (gx#syntax-e _%e124307124314%_)))
                          (let ((_%hd124311124325%_ (##car _%e124310124322%_))
                                (_%tl124312124327%_ (##cdr _%e124310124322%_)))
                            (let ((_%body124330%_ _%tl124312124327%_))
                              (if (gx#stx-list? _%body124330%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate124306%_ _%body124330%_))
                                  (_%E124309124318%_)))))
                        (_%E124309124318%_)))))
            (_%E124308124332%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx124250%_)
        (let* ((_%e124251124264%_ _%stx124250%_)
               (_%E124253124268%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124251124264%_)))
               (_%E124252124300%_
                (lambda ()
                  (if (gx#stx-pair? _%e124251124264%_)
                      (let ((_%e124254124272%_
                             (gx#syntax-e _%e124251124264%_)))
                        (let ((_%hd124255124275%_ (##car _%e124254124272%_))
                              (_%tl124256124277%_ (##cdr _%e124254124272%_)))
                          (if (gx#stx-pair? _%tl124256124277%_)
                              (let ((_%e124257124280%_
                                     (gx#syntax-e _%tl124256124277%_)))
                                (let ((_%hd124258124283%_
                                       (##car _%e124257124280%_))
                                      (_%tl124259124285%_
                                       (##cdr _%e124257124280%_)))
                                  (let ((_%hd124288%_ _%hd124258124283%_))
                                    (if (gx#stx-pair? _%tl124259124285%_)
                                        (let ((_%e124260124290%_
                                               (gx#syntax-e
                                                _%tl124259124285%_)))
                                          (let ((_%hd124261124293%_
                                                 (##car _%e124260124290%_))
                                                (_%tl124262124295%_
                                                 (##cdr _%e124260124290%_)))
                                            (let ((_%expr124298%_
                                                   _%hd124261124293%_))
                                              (if (gx#stx-null?
                                                   _%tl124262124295%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd124288%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd124288%_)
                          (cons _%expr124298%_ '())))
              (_%E124253124268%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124253124268%_)))))
                                        (_%E124253124268%_)))))
                              (_%E124253124268%_))))
                      (_%E124253124268%_)))))
          (_%E124252124300%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx124196%_)
        (let* ((_%e124197124210%_ _%stx124196%_)
               (_%E124199124214%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124197124210%_)))
               (_%E124198124246%_
                (lambda ()
                  (if (gx#stx-pair? _%e124197124210%_)
                      (let ((_%e124200124218%_
                             (gx#syntax-e _%e124197124210%_)))
                        (let ((_%hd124201124221%_ (##car _%e124200124218%_))
                              (_%tl124202124223%_ (##cdr _%e124200124218%_)))
                          (if (gx#stx-pair? _%tl124202124223%_)
                              (let ((_%e124203124226%_
                                     (gx#syntax-e _%tl124202124223%_)))
                                (let ((_%hd124204124229%_
                                       (##car _%e124203124226%_))
                                      (_%tl124205124231%_
                                       (##cdr _%e124203124226%_)))
                                  (let ((_%hd124234%_ _%hd124204124229%_))
                                    (if (gx#stx-pair? _%tl124205124231%_)
                                        (let ((_%e124206124236%_
                                               (gx#syntax-e
                                                _%tl124205124231%_)))
                                          (let ((_%hd124207124239%_
                                                 (##car _%e124206124236%_))
                                                (_%tl124208124241%_
                                                 (##cdr _%e124206124236%_)))
                                            (let ((_%expr124244%_
                                                   _%hd124207124239%_))
                                              (if (gx#stx-null?
                                                   _%tl124208124241%_)
                                                  (if (gx#identifier?
                                                       _%hd124234%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd124234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr124244%_ '())))
              (_%E124199124214%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124199124214%_)))))
                                        (_%E124199124214%_)))))
                              (_%E124199124214%_))))
                      (_%E124199124214%_)))))
          (_%E124198124246%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx124142%_)
        (let* ((_%e124143124156%_ _%stx124142%_)
               (_%E124145124160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124143124156%_)))
               (_%E124144124192%_
                (lambda ()
                  (if (gx#stx-pair? _%e124143124156%_)
                      (let ((_%e124146124164%_
                             (gx#syntax-e _%e124143124156%_)))
                        (let ((_%hd124147124167%_ (##car _%e124146124164%_))
                              (_%tl124148124169%_ (##cdr _%e124146124164%_)))
                          (if (gx#stx-pair? _%tl124148124169%_)
                              (let ((_%e124149124172%_
                                     (gx#syntax-e _%tl124148124169%_)))
                                (let ((_%hd124150124175%_
                                       (##car _%e124149124172%_))
                                      (_%tl124151124177%_
                                       (##cdr _%e124149124172%_)))
                                  (let ((_%id124180%_ _%hd124150124175%_))
                                    (if (gx#stx-pair? _%tl124151124177%_)
                                        (let ((_%e124152124182%_
                                               (gx#syntax-e
                                                _%tl124151124177%_)))
                                          (let ((_%hd124153124185%_
                                                 (##car _%e124152124182%_))
                                                (_%tl124154124187%_
                                                 (##cdr _%e124152124182%_)))
                                            (let ((_%alias-id124190%_
                                                   _%hd124153124185%_))
                                              (if (gx#stx-null?
                                                   _%tl124154124187%_)
                                                  (if (and (gx#identifier?
                                                            _%id124180%_)
                                                           (gx#identifier?
                                                            _%alias-id124190%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id124180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id124190%_ '())))
              (_%E124145124160%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124145124160%_)))))
                                        (_%E124145124160%_)))))
                              (_%E124145124160%_))))
                      (_%E124145124160%_)))))
          (_%E124144124192%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx124099%_)
        (let* ((_%e124100124110%_ _%stx124099%_)
               (_%E124102124114%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124100124110%_)))
               (_%E124101124138%_
                (lambda ()
                  (if (gx#stx-pair? _%e124100124110%_)
                      (let ((_%e124103124118%_
                             (gx#syntax-e _%e124100124110%_)))
                        (let ((_%hd124104124121%_ (##car _%e124103124118%_))
                              (_%tl124105124123%_ (##cdr _%e124103124118%_)))
                          (if (gx#stx-pair? _%tl124105124123%_)
                              (let ((_%e124106124126%_
                                     (gx#syntax-e _%tl124105124123%_)))
                                (let ((_%hd124107124129%_
                                       (##car _%e124106124126%_))
                                      (_%tl124108124131%_
                                       (##cdr _%e124106124126%_)))
                                  (let* ((_%hd124134%_ _%hd124107124129%_)
                                         (_%body124136%_ _%tl124108124131%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd124134%_)
                                             (gx#stx-list? _%body124136%_)
                                             (not (gx#stx-null?
                                                   _%body124136%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd124134%_)
                                         _%body124136%_)
                                        (_%E124102124114%_)))))
                              (_%E124102124114%_))))
                      (_%E124102124114%_)))))
          (_%E124101124138%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx124035%_)
        (letrec ((_%generate124037%_
                  (lambda (_%clause124067%_)
                    (let* ((_%e124068124075%_ _%clause124067%_)
                           (_%E124070124079%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx124035%_
                               _%clause124067%_)))
                           (_%E124069124095%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124068124075%_)
                                  (let ((_%e124071124083%_
                                         (gx#syntax-e _%e124068124075%_)))
                                    (let ((_%hd124072124086%_
                                           (##car _%e124071124083%_))
                                          (_%tl124073124088%_
                                           (##cdr _%e124071124083%_)))
                                      (let* ((_%hd124091%_ _%hd124072124086%_)
                                             (_%body124093%_
                                              _%tl124073124088%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd124091%_)
                                                 (gx#stx-list? _%body124093%_)
                                                 (not (gx#stx-null?
                                                       _%body124093%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd124091%_)
                                                   _%body124093%_)
                                             (gx#stx-source _%clause124067%_))
                                            (_%E124070124079%_)))))
                                  (_%E124070124079%_)))))
                      (_%E124069124095%_)))))
          (let* ((_%e124038124045%_ _%stx124035%_)
                 (_%E124040124049%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e124038124045%_)))
                 (_%E124039124063%_
                  (lambda ()
                    (if (gx#stx-pair? _%e124038124045%_)
                        (let ((_%e124041124053%_
                               (gx#syntax-e _%e124038124045%_)))
                          (let ((_%hd124042124056%_ (##car _%e124041124053%_))
                                (_%tl124043124058%_ (##cdr _%e124041124053%_)))
                            (let ((_%clauses124061%_ _%tl124043124058%_))
                              (if (gx#stx-list? _%clauses124061%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate124037%_
                                    _%clauses124061%_))
                                  (_%E124040124049%_)))))
                        (_%E124040124049%_)))))
            (_%E124039124063%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx123936%_ _%form123937%_)
        (letrec ((_%generate123939%_
                  (lambda (_%bind123982%_)
                    (let* ((_%e123983123993%_ _%bind123982%_)
                           (_%E123985123997%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx123936%_
                               _%bind123982%_)))
                           (_%E123984124021%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123983123993%_)
                                  (let ((_%e123986124001%_
                                         (gx#syntax-e _%e123983123993%_)))
                                    (let ((_%hd123987124004%_
                                           (##car _%e123986124001%_))
                                          (_%tl123988124006%_
                                           (##cdr _%e123986124001%_)))
                                      (let ((_%ids124009%_ _%hd123987124004%_))
                                        (if (gx#stx-pair? _%tl123988124006%_)
                                            (let ((_%e123989124011%_
                                                   (gx#syntax-e
                                                    _%tl123988124006%_)))
                                              (let ((_%hd123990124014%_
                                                     (##car _%e123989124011%_))
                                                    (_%tl123991124016%_
                                                     (##cdr _%e123989124011%_)))
                                                (let ((_%expr124019%_
                                                       _%hd123990124014%_))
                                                  (if (gx#stx-null?
                                                       _%tl123991124016%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids124009%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids124009%_)
                        (cons _%expr124019%_ '()))
                  (_%E123985123997%_))
              (_%E123985123997%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E123985123997%_)))))
                                  (_%E123985123997%_)))))
                      (_%E123984124021%_)))))
          (let* ((_%e123940123950%_ _%stx123936%_)
                 (_%E123942123954%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123940123950%_)))
                 (_%E123941123978%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123940123950%_)
                        (let ((_%e123943123958%_
                               (gx#syntax-e _%e123940123950%_)))
                          (let ((_%hd123944123961%_ (##car _%e123943123958%_))
                                (_%tl123945123963%_ (##cdr _%e123943123958%_)))
                            (if (gx#stx-pair? _%tl123945123963%_)
                                (let ((_%e123946123966%_
                                       (gx#syntax-e _%tl123945123963%_)))
                                  (let ((_%hd123947123969%_
                                         (##car _%e123946123966%_))
                                        (_%tl123948123971%_
                                         (##cdr _%e123946123966%_)))
                                    (let* ((_%hd123974%_ _%hd123947123969%_)
                                           (_%body123976%_ _%tl123948123971%_))
                                      (if (and (gx#stx-list? _%hd123974%_)
                                               (gx#stx-list? _%body123976%_)
                                               (not (gx#stx-null?
                                                     _%body123976%_)))
                                          (gx#core-cons*
                                           _%form123937%_
                                           (gx#stx-map1
                                            _%generate123939%_
                                            _%hd123974%_)
                                           _%body123976%_)
                                          (_%E123942123954%_)))))
                                (_%E123942123954%_))))
                        (_%E123942123954%_)))))
            (_%E123941123978%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx124028%_)
        (let ((_%form124030%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx124028%_ _%form124030%_))))
    (define gx#macro-expand-let-values
      (lambda _g126417_
        (let ((_g126416_ (##length _g126417_)))
          (cond ((##fx= _g126416_ 1)
                 (apply gx#macro-expand-let-values__0 _g126417_))
                ((##fx= _g126416_ 2)
                 (apply gx#macro-expand-let-values__% _g126417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g126417_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx123933%_)
        (gx#macro-expand-let-values__% _%stx123933%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx123931%_)
        (gx#macro-expand-let-values__% _%stx123931%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx123822%_)
        (let* ((_%e123823123849%_ _%stx123822%_)
               (_%E123835123853%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123823123849%_)))
               (_%E123825123895%_
                (lambda ()
                  (if (gx#stx-pair? _%e123823123849%_)
                      (let ((_%e123836123857%_
                             (gx#syntax-e _%e123823123849%_)))
                        (let ((_%hd123837123860%_ (##car _%e123836123857%_))
                              (_%tl123838123862%_ (##cdr _%e123836123857%_)))
                          (if (gx#stx-pair? _%tl123838123862%_)
                              (let ((_%e123839123865%_
                                     (gx#syntax-e _%tl123838123862%_)))
                                (let ((_%hd123840123868%_
                                       (##car _%e123839123865%_))
                                      (_%tl123841123870%_
                                       (##cdr _%e123839123865%_)))
                                  (let ((_%test123873%_ _%hd123840123868%_))
                                    (if (gx#stx-pair? _%tl123841123870%_)
                                        (let ((_%e123842123875%_
                                               (gx#syntax-e
                                                _%tl123841123870%_)))
                                          (let ((_%hd123843123878%_
                                                 (##car _%e123842123875%_))
                                                (_%tl123844123880%_
                                                 (##cdr _%e123842123875%_)))
                                            (let ((_%K123883%_
                                                   _%hd123843123878%_))
                                              (if (gx#stx-pair?
                                                   _%tl123844123880%_)
                                                  (let ((_%e123845123885%_
                                                         (gx#syntax-e
                                                          _%tl123844123880%_)))
                                                    (let ((_%hd123846123888%_
                                                           (##car _%e123845123885%_))
                                                          (_%tl123847123890%_
                                                           (##cdr _%e123845123885%_)))
                                                      (let ((_%E123893%_
                                                             _%hd123846123888%_))
                                                        (if (gx#stx-null?
                                                             _%tl123847123890%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test123873%_
                                                             _%K123883%_
                                                             _%E123893%_)
                                                            (_%E123835123853%_)))))
                                                  (_%E123835123853%_)))))
                                        (_%E123835123853%_)))))
                              (_%E123835123853%_))))
                      (_%E123835123853%_))))
               (_%E123824123927%_
                (lambda ()
                  (if (gx#stx-pair? _%e123823123849%_)
                      (let ((_%e123826123899%_
                             (gx#syntax-e _%e123823123849%_)))
                        (let ((_%hd123827123902%_ (##car _%e123826123899%_))
                              (_%tl123828123904%_ (##cdr _%e123826123899%_)))
                          (if (gx#stx-pair? _%tl123828123904%_)
                              (let ((_%e123829123907%_
                                     (gx#syntax-e _%tl123828123904%_)))
                                (let ((_%hd123830123910%_
                                       (##car _%e123829123907%_))
                                      (_%tl123831123912%_
                                       (##cdr _%e123829123907%_)))
                                  (let ((_%test123915%_ _%hd123830123910%_))
                                    (if (gx#stx-pair? _%tl123831123912%_)
                                        (let ((_%e123832123917%_
                                               (gx#syntax-e
                                                _%tl123831123912%_)))
                                          (let ((_%hd123833123920%_
                                                 (##car _%e123832123917%_))
                                                (_%tl123834123922%_
                                                 (##cdr _%e123832123917%_)))
                                            (let ((_%K123925%_
                                                   _%hd123833123920%_))
                                              (if (gx#stx-null?
                                                   _%tl123834123922%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test123915%_
                                                   _%K123925%_
                                                   '#!void)
                                                  (_%E123825123895%_)))))
                                        (_%E123825123895%_)))))
                              (_%E123825123895%_))))
                      (_%E123825123895%_)))))
          (_%E123824123927%_))))
    (define gx#free-identifier=?
      (lambda (_%xid123807%_ _%yid123808%_)
        (let ((_%xe123810%_ (gx#resolve-identifier__0 _%xid123807%_))
              (_%ye123811%_ (gx#resolve-identifier__0 _%yid123808%_)))
          (if (and _%xe123810%_ _%ye123811%_)
              (let ((_%$e123814%_ (eq? _%xe123810%_ _%ye123811%_)))
                (if _%$e123814%_
                    _%$e123814%_
                    (if (##structure-instance-of? _%xe123810%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye123811%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe123810%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye123811%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe123810%_ _%ye123811%_)
                  '#f
                  (gx#stx-eq? _%xid123807%_ _%yid123808%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid123788%_ _%yid123789%_)
        (letrec ((_%context123791%_
                  (lambda (_%e123805%_)
                    (if (##structure-direct-instance-of?
                         _%e123805%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e123805%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks123792%_
                  (lambda (_%e123800%_)
                    (if (symbol? _%e123800%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e123800%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e123800%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e123800%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap123793%_
                  (lambda (_%e123798%_)
                    (if (symbol? _%e123798%_)
                        _%e123798%_
                        (gx#syntax-local-unwrap _%e123798%_)))))
          (let ((_%x123795%_ (_%unwrap123793%_ _%xid123788%_))
                (_%y123796%_ (_%unwrap123793%_ _%yid123789%_)))
            (if (gx#stx-eq? _%x123795%_ _%y123796%_)
                (if (eq? (_%context123791%_ _%x123795%_)
                         (_%context123791%_ _%y123796%_))
                    (equal? (_%marks123792%_ _%x123795%_)
                            (_%marks123792%_ _%y123796%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx123786%_)
        (if (gx#identifier? _%stx123786%_)
            (gx#core-identifier=? _%stx123786%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx123784%_)
        (if (gx#identifier? _%stx123784%_)
            (gx#core-identifier=? _%stx123784%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx123727%_ _%where123728%_)
        (let _%lp123730%_ ((_%rest123732%_ (gx#syntax->list _%stx123727%_)))
          (let* ((_%rest123733123741%_ _%rest123732%_)
                 (_%else123735123749%_ (lambda () '#t))
                 (_%K123737123762%_
                  (lambda (_%rest123752%_ _%hd123753%_)
                    (if (gx#identifier? _%hd123753%_)
                        (if (__find (lambda (_%g123755123757%_)
                                      (gx#bound-identifier=?
                                       _%g123755123757%_
                                       _%hd123753%_))
                                    _%rest123752%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where123728%_
                             _%hd123753%_)
                            (_%lp123730%_ _%rest123752%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where123728%_
                         _%hd123753%_)))))
            (if (pair? _%rest123733123741%_)
                (let ((_%hd123738123765%_ (##car _%rest123733123741%_))
                      (_%tl123739123767%_ (##cdr _%rest123733123741%_)))
                  (let* ((_%hd123770%_ _%hd123738123765%_)
                         (_%rest123772%_ _%tl123739123767%_))
                    (_%K123737123762%_ _%rest123772%_ _%hd123770%_)))
                (_%else123735123749%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx123777%_)
        (let ((_%where123779%_ _%stx123777%_))
          (gx#check-duplicate-identifiers__% _%stx123777%_ _%where123779%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g126419_
        (let ((_g126418_ (##length _g126419_)))
          (cond ((##fx= _g126418_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g126419_))
                ((##fx= _g126418_ 2)
                 (apply gx#check-duplicate-identifiers__% _g126419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g126419_))))))
    (define gx#core-bind-values?
      (lambda (_%stx123719%_)
        (gx#stx-andmap
         (lambda (_%x123721%_)
           (let ((_%$e123723%_ (gx#identifier? _%x123721%_)))
             (if _%$e123723%_ _%$e123723%_ (gx#stx-false? _%x123721%_))))
         _%stx123719%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx123683%_ _%rebind?123684%_ _%phi123685%_ _%ctx123686%_)
        (gx#stx-for-each1
         (lambda (_%id123688%_)
           (if (gx#identifier? _%id123688%_)
               (gx#core-bind-runtime!__%
                _%id123688%_
                _%rebind?123684%_
                _%phi123685%_
                _%ctx123686%_)
               '#!void))
         _%stx123683%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx123693%_)
        (let* ((_%rebind?123695%_ '#f)
               (_%phi123697%_ (gx#current-expander-phi))
               (_%ctx123699%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123693%_
           _%rebind?123695%_
           _%phi123697%_
           _%ctx123699%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx123701%_ _%rebind?123702%_)
        (let* ((_%phi123704%_ (gx#current-expander-phi))
               (_%ctx123706%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123701%_
           _%rebind?123702%_
           _%phi123704%_
           _%ctx123706%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx123708%_ _%rebind?123709%_ _%phi123710%_)
        (let ((_%ctx123712%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx123708%_
           _%rebind?123709%_
           _%phi123710%_
           _%ctx123712%_))))
    (define gx#core-bind-values!
      (lambda _g126421_
        (let ((_g126420_ (##length _g126421_)))
          (cond ((##fx= _g126420_ 1) (apply gx#core-bind-values!__0 _g126421_))
                ((##fx= _g126420_ 2) (apply gx#core-bind-values!__1 _g126421_))
                ((##fx= _g126420_ 3) (apply gx#core-bind-values!__2 _g126421_))
                ((##fx= _g126420_ 4) (apply gx#core-bind-values!__% _g126421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g126421_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx123678%_)
        (gx#stx-map1
         (lambda (_%x123680%_)
           (if (gx#identifier? _%x123680%_)
               (gx#core-quote-syntax__0 _%x123680%_)
               '#f))
         _%stx123678%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx123671%_)
        (if (gx#identifier? _%stx123671%_)
            (let* ((_%bind123673%_ (gx#resolve-identifier__0 _%stx123671%_))
                   (_%$e123675%_ (not _%bind123673%_)))
              (if _%$e123675%_
                  _%$e123675%_
                  (##structure-instance-of?
                   _%bind123673%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id123660%_ _%form123661%_)
        (let ((_%bind123663%_ (gx#resolve-identifier__0 _%id123660%_)))
          (if (##structure-instance-of? _%bind123663%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id123660%_)
              (if (not _%bind123663%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id123660%_)))
                      (gx#core-quote-syntax__0 _%id123660%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form123661%_
                       _%id123660%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form123661%_
                   _%id123660%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id123615%_ _%rebind?123616%_ _%phi123617%_ _%ctx123618%_)
        (let* ((_%key123620%_ (gx#core-identifier-key _%id123615%_))
               (_%eid123622%_
                (gx#make-binding-id__%
                 _%key123620%_
                 '#f
                 _%phi123617%_
                 _%ctx123618%_))
               (_%bind123628%_
                (if (##structure-instance-of?
                     _%ctx123618%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123622%_
                     _%key123620%_
                     _%phi123617%_
                     _%ctx123618%_)
                    (if (##structure-instance-of?
                         _%ctx123618%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123622%_
                         _%key123620%_
                         _%phi123617%_)
                        (if (##structure-instance-of?
                             _%ctx123618%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid123622%_
                             _%key123620%_
                             _%phi123617%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid123622%_
                             _%key123620%_
                             _%phi123617%_))))))
          (gx#bind-identifier!__%
           _%id123615%_
           _%bind123628%_
           _%rebind?123616%_
           _%phi123617%_
           _%ctx123618%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id123634%_)
        (let* ((_%rebind?123636%_ '#f)
               (_%phi123638%_ (gx#current-expander-phi))
               (_%ctx123640%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123634%_
           _%rebind?123636%_
           _%phi123638%_
           _%ctx123640%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id123642%_ _%rebind?123643%_)
        (let* ((_%phi123645%_ (gx#current-expander-phi))
               (_%ctx123647%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123642%_
           _%rebind?123643%_
           _%phi123645%_
           _%ctx123647%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id123649%_ _%rebind?123650%_ _%phi123651%_)
        (let ((_%ctx123653%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id123649%_
           _%rebind?123650%_
           _%phi123651%_
           _%ctx123653%_))))
    (define gx#core-bind-runtime!
      (lambda _g126423_
        (let ((_g126422_ (##length _g126423_)))
          (cond ((##fx= _g126422_ 1)
                 (apply gx#core-bind-runtime!__0 _g126423_))
                ((##fx= _g126422_ 2)
                 (apply gx#core-bind-runtime!__1 _g126423_))
                ((##fx= _g126422_ 3)
                 (apply gx#core-bind-runtime!__2 _g126423_))
                ((##fx= _g126422_ 4)
                 (apply gx#core-bind-runtime!__% _g126423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g126423_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id123567%_
               _%eid123568%_
               _%rebind?123569%_
               _%phi123570%_
               _%ctx123571%_)
        (let* ((_%key123573%_ (gx#core-identifier-key _%id123567%_))
               (_%bind123578%_
                (if (##structure-instance-of?
                     _%ctx123571%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid123568%_
                     _%key123573%_
                     _%phi123570%_
                     _%ctx123571%_)
                    (if (##structure-instance-of?
                         _%ctx123571%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid123568%_
                         _%key123573%_
                         _%phi123570%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid123568%_
                         _%key123573%_
                         _%phi123570%_)))))
          (gx#bind-identifier!__%
           _%id123567%_
           _%bind123578%_
           _%rebind?123569%_
           _%phi123570%_
           _%ctx123571%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id123584%_ _%eid123585%_)
        (let* ((_%rebind?123587%_ '#f)
               (_%phi123589%_ (gx#current-expander-phi))
               (_%ctx123591%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123584%_
           _%eid123585%_
           _%rebind?123587%_
           _%phi123589%_
           _%ctx123591%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id123593%_ _%eid123594%_ _%rebind?123595%_)
        (let* ((_%phi123597%_ (gx#current-expander-phi))
               (_%ctx123599%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123593%_
           _%eid123594%_
           _%rebind?123595%_
           _%phi123597%_
           _%ctx123599%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id123601%_ _%eid123602%_ _%rebind?123603%_ _%phi123604%_)
        (let ((_%ctx123606%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id123601%_
           _%eid123602%_
           _%rebind?123603%_
           _%phi123604%_
           _%ctx123606%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g126425_
        (let ((_g126424_ (##length _g126425_)))
          (cond ((##fx= _g126424_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g126425_))
                ((##fx= _g126424_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g126425_))
                ((##fx= _g126424_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g126425_))
                ((##fx= _g126424_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g126425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g126425_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id123527%_
               _%eid123528%_
               _%rebind?123529%_
               _%phi123530%_
               _%ctx123531%_)
        (gx#bind-identifier!__%
         _%id123527%_
         (##structure
          gx#extern-binding::t
          _%eid123528%_
          (gx#core-identifier-key _%id123527%_)
          _%phi123530%_)
         _%rebind?123529%_
         _%phi123530%_
         _%ctx123531%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id123536%_ _%eid123537%_)
        (let* ((_%rebind?123539%_ '#f)
               (_%phi123541%_ (gx#current-expander-phi))
               (_%ctx123543%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123536%_
           _%eid123537%_
           _%rebind?123539%_
           _%phi123541%_
           _%ctx123543%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id123545%_ _%eid123546%_ _%rebind?123547%_)
        (let* ((_%phi123549%_ (gx#current-expander-phi))
               (_%ctx123551%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123545%_
           _%eid123546%_
           _%rebind?123547%_
           _%phi123549%_
           _%ctx123551%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id123553%_ _%eid123554%_ _%rebind?123555%_ _%phi123556%_)
        (let ((_%ctx123558%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id123553%_
           _%eid123554%_
           _%rebind?123555%_
           _%phi123556%_
           _%ctx123558%_))))
    (define gx#core-bind-extern!
      (lambda _g126427_
        (let ((_g126426_ (##length _g126427_)))
          (cond ((##fx= _g126426_ 2) (apply gx#core-bind-extern!__0 _g126427_))
                ((##fx= _g126426_ 3) (apply gx#core-bind-extern!__1 _g126427_))
                ((##fx= _g126426_ 4) (apply gx#core-bind-extern!__2 _g126427_))
                ((##fx= _g126426_ 5) (apply gx#core-bind-extern!__% _g126427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g126427_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id123481%_
               _%e123482%_
               _%rebind?123483%_
               _%phi123484%_
               _%ctx123485%_)
        (gx#bind-identifier!__%
         _%id123481%_
         (let ((_%key123490%_ (gx#core-identifier-key _%id123481%_))
               (_%e123491%_
                (if (or (##structure-instance-of? _%e123482%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e123482%_
                         'gx#expander-context::t))
                    _%e123482%_
                    (##structure
                     gx#user-expander::t
                     _%e123482%_
                     _%ctx123485%_
                     _%phi123484%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key123490%_
             '#t
             _%phi123484%_
             _%ctx123485%_)
            _%key123490%_
            _%phi123484%_
            _%e123491%_))
         _%rebind?123483%_
         _%phi123484%_
         _%ctx123485%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id123496%_ _%e123497%_)
        (let* ((_%rebind?123499%_ '#f)
               (_%phi123501%_ (gx#current-expander-phi))
               (_%ctx123503%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123496%_
           _%e123497%_
           _%rebind?123499%_
           _%phi123501%_
           _%ctx123503%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id123505%_ _%e123506%_ _%rebind?123507%_)
        (let* ((_%phi123509%_ (gx#current-expander-phi))
               (_%ctx123511%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123505%_
           _%e123506%_
           _%rebind?123507%_
           _%phi123509%_
           _%ctx123511%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id123513%_ _%e123514%_ _%rebind?123515%_ _%phi123516%_)
        (let ((_%ctx123518%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id123513%_
           _%e123514%_
           _%rebind?123515%_
           _%phi123516%_
           _%ctx123518%_))))
    (define gx#core-bind-syntax!
      (lambda _g126429_
        (let ((_g126428_ (##length _g126429_)))
          (cond ((##fx= _g126428_ 2) (apply gx#core-bind-syntax!__0 _g126429_))
                ((##fx= _g126428_ 3) (apply gx#core-bind-syntax!__1 _g126429_))
                ((##fx= _g126428_ 4) (apply gx#core-bind-syntax!__2 _g126429_))
                ((##fx= _g126428_ 5) (apply gx#core-bind-syntax!__% _g126429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g126429_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id123464%_ _%e123465%_ _%rebind?123466%_)
        (gx#core-bind-syntax!__%
         _%id123464%_
         _%e123465%_
         _%rebind?123466%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id123471%_ _%e123472%_)
        (let ((_%rebind?123474%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id123471%_
           _%e123472%_
           _%rebind?123474%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g126431_
        (let ((_g126430_ (##length _g126431_)))
          (cond ((##fx= _g126430_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g126431_))
                ((##fx= _g126430_ 3)
                 (apply gx#core-bind-root-syntax!__% _g126431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g126431_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id123422%_
               _%alias-id123423%_
               _%rebind?123424%_
               _%phi123425%_
               _%ctx123426%_)
        (gx#bind-identifier!__%
         _%id123422%_
         (let ((_%key123428%_ (gx#core-identifier-key _%id123422%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key123428%_
             '#t
             _%phi123425%_
             _%ctx123426%_)
            _%key123428%_
            _%phi123425%_
            _%alias-id123423%_))
         _%rebind?123424%_
         _%phi123425%_
         _%ctx123426%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id123433%_ _%alias-id123434%_)
        (let* ((_%rebind?123436%_ '#f)
               (_%phi123438%_ (gx#current-expander-phi))
               (_%ctx123440%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123433%_
           _%alias-id123434%_
           _%rebind?123436%_
           _%phi123438%_
           _%ctx123440%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id123442%_ _%alias-id123443%_ _%rebind?123444%_)
        (let* ((_%phi123446%_ (gx#current-expander-phi))
               (_%ctx123448%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123442%_
           _%alias-id123443%_
           _%rebind?123444%_
           _%phi123446%_
           _%ctx123448%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id123450%_ _%alias-id123451%_ _%rebind?123452%_ _%phi123453%_)
        (let ((_%ctx123455%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id123450%_
           _%alias-id123451%_
           _%rebind?123452%_
           _%phi123453%_
           _%ctx123455%_))))
    (define gx#core-bind-alias!
      (lambda _g126433_
        (let ((_g126432_ (##length _g126433_)))
          (cond ((##fx= _g126432_ 2) (apply gx#core-bind-alias!__0 _g126433_))
                ((##fx= _g126432_ 3) (apply gx#core-bind-alias!__1 _g126433_))
                ((##fx= _g126432_ 4) (apply gx#core-bind-alias!__2 _g126433_))
                ((##fx= _g126432_ 5) (apply gx#core-bind-alias!__% _g126433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g126433_))))))
    (define gx#make-binding-id__%
      (lambda (_%key123372%_ _%syntax?123373%_ _%phi123374%_ _%ctx123375%_)
        (if (uninterned-symbol? _%key123372%_)
            (##gensym 'L)
            (if (pair? _%key123372%_)
                (gensym (##car _%key123372%_))
                (if (##structure-instance-of? _%ctx123375%_ 'gx#top-context::t)
                    (let ((_%ns123380%_
                           (gx#core-context-namespace__% _%ctx123375%_)))
                      (if (and (fxzero? _%phi123374%_) (not _%syntax?123373%_))
                          (if _%ns123380%_
                              (make-symbol__1 _%ns123380%_ '"#" _%key123372%_)
                              _%key123372%_)
                          (if _%syntax?123373%_
                              (make-symbol__1
                               (let ((_%$e123384%_ _%ns123380%_))
                                 (if _%$e123384%_ _%$e123384%_ '""))
                               '"[:"
                               (number->string _%phi123374%_)
                               '":]#"
                               _%key123372%_)
                              (make-symbol__1
                               (let ((_%$e123388%_ _%ns123380%_))
                                 (if _%$e123388%_ _%$e123388%_ '""))
                               '"["
                               (number->string _%phi123374%_)
                               '"]#"
                               _%key123372%_))))
                    (gensym _%key123372%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key123395%_)
        (let* ((_%syntax?123397%_ '#f)
               (_%phi123399%_ (gx#current-expander-phi))
               (_%ctx123401%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123395%_
           _%syntax?123397%_
           _%phi123399%_
           _%ctx123401%_))))
    (define gx#make-binding-id__1
      (lambda (_%key123403%_ _%syntax?123404%_)
        (let* ((_%phi123406%_ (gx#current-expander-phi))
               (_%ctx123408%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123403%_
           _%syntax?123404%_
           _%phi123406%_
           _%ctx123408%_))))
    (define gx#make-binding-id__2
      (lambda (_%key123410%_ _%syntax?123411%_ _%phi123412%_)
        (let ((_%ctx123414%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key123410%_
           _%syntax?123411%_
           _%phi123412%_
           _%ctx123414%_))))
    (define gx#make-binding-id
      (lambda _g126435_
        (let ((_g126434_ (##length _g126435_)))
          (cond ((##fx= _g126434_ 1) (apply gx#make-binding-id__0 _g126435_))
                ((##fx= _g126434_ 2) (apply gx#make-binding-id__1 _g126435_))
                ((##fx= _g126434_ 3) (apply gx#make-binding-id__2 _g126435_))
                ((##fx= _g126434_ 4) (apply gx#make-binding-id__% _g126435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g126435_))))))))
