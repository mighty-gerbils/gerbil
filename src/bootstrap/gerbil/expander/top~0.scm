(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1755903076)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx129754%_)
        (letrec ((_%expand-special129756%_
                  (lambda (_%hd129758%_ _%K129759%_ _%rest129760%_ _%r129761%_)
                    (_%K129759%_
                     _%rest129760%_
                     (cons (gx#core-expand-top _%hd129758%_) _%r129761%_)))))
          (gx#core-expand-block__0 _%stx129754%_ _%expand-special129756%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx129507%_)
        (letrec ((_%expand-special129509%_
                  (lambda (_%hd129629%_ _%K129630%_ _%rest129631%_ _%r129632%_)
                    (let* ((_%K129636%_
                            (lambda (_%e129634%_)
                              (_%K129630%_
                               _%rest129631%_
                               (cons _%e129634%_ _%r129632%_))))
                           (_%e129637129666%_ _%hd129629%_)
                           (_%E129661129670%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e129637129666%_)))
                           (_%E129657129682%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129637129666%_)
                                  (let ((_%e129662129674%_
                                         (gx#syntax-e _%e129637129666%_)))
                                    (let ((_%hd129663129677%_
                                           (##car _%e129662129674%_))
                                          (_%tl129664129679%_
                                           (##cdr _%e129662129674%_)))
                                      (if (and (gx#identifier?
                                                _%hd129663129677%_)
                                               (gx#core-identifier=?
                                                _%hd129663129677%_
                                                '%#define-runtime))
                                          (_%K129636%_
                                           (gx#core-expand-define-runtime%
                                            _%hd129629%_))
                                          (_%E129661129670%_))))
                                  (_%E129661129670%_))))
                           (_%E129653129694%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129637129666%_)
                                  (let ((_%e129658129686%_
                                         (gx#syntax-e _%e129637129666%_)))
                                    (let ((_%hd129659129689%_
                                           (##car _%e129658129686%_))
                                          (_%tl129660129691%_
                                           (##cdr _%e129658129686%_)))
                                      (if (and (gx#identifier?
                                                _%hd129659129689%_)
                                               (gx#core-identifier=?
                                                _%hd129659129689%_
                                                '%#define-alias))
                                          (_%K129636%_
                                           (gx#core-expand-define-alias%
                                            _%hd129629%_))
                                          (_%E129657129682%_))))
                                  (_%E129657129682%_))))
                           (_%E129643129706%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129637129666%_)
                                  (let ((_%e129654129698%_
                                         (gx#syntax-e _%e129637129666%_)))
                                    (let ((_%hd129655129701%_
                                           (##car _%e129654129698%_))
                                          (_%tl129656129703%_
                                           (##cdr _%e129654129698%_)))
                                      (if (and (gx#identifier?
                                                _%hd129655129701%_)
                                               (gx#core-identifier=?
                                                _%hd129655129701%_
                                                '%#define-syntax))
                                          (_%K129636%_
                                           (gx#core-expand-define-syntax%
                                            _%hd129629%_))
                                          (_%E129653129694%_))))
                                  (_%E129653129694%_))))
                           (_%E129639129738%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129637129666%_)
                                  (let ((_%e129644129710%_
                                         (gx#syntax-e _%e129637129666%_)))
                                    (let ((_%hd129645129713%_
                                           (##car _%e129644129710%_))
                                          (_%tl129646129715%_
                                           (##cdr _%e129644129710%_)))
                                      (if (and (gx#identifier?
                                                _%hd129645129713%_)
                                               (gx#core-identifier=?
                                                _%hd129645129713%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl129646129715%_)
                                              (let ((_%e129647129718%_
                                                     (gx#syntax-e
                                                      _%tl129646129715%_)))
                                                (let ((_%hd129648129721%_
                                                       (##car _%e129647129718%_))
                                                      (_%tl129649129723%_
                                                       (##cdr _%e129647129718%_)))
                                                  (let ((_%hd-bind129726%_
                                                         _%hd129648129721%_))
                                                    (if (gx#stx-pair?
                                                         _%tl129649129723%_)
                                                        (let ((_%e129650129728%_
                                                               (gx#syntax-e
                                                                _%tl129649129723%_)))
                                                          (let ((_%hd129651129731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e129650129728%_))
                        (_%tl129652129733%_ (##cdr _%e129650129728%_)))
                    (let ((_%expr129736%_ _%hd129651129731%_))
                      (if (gx#stx-null? _%tl129652129733%_)
                          (if (gx#core-bind-values? _%hd-bind129726%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind129726%_)
                                (_%K129636%_ _%hd129629%_))
                              (_%E129643129706%_))
                          (_%E129643129706%_)))))
                (_%E129643129706%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E129643129706%_))
                                          (_%E129643129706%_))))
                                  (_%E129643129706%_))))
                           (_%E129638129750%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129637129666%_)
                                  (let ((_%e129640129742%_
                                         (gx#syntax-e _%e129637129666%_)))
                                    (let ((_%hd129641129745%_
                                           (##car _%e129640129742%_))
                                          (_%tl129642129747%_
                                           (##cdr _%e129640129742%_)))
                                      (if (and (gx#identifier?
                                                _%hd129641129745%_)
                                               (gx#core-identifier=?
                                                _%hd129641129745%_
                                                '%#begin-syntax))
                                          (_%K129636%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd129629%_))
                                          (_%E129639129738%_))))
                                  (_%E129639129738%_)))))
                      (_%E129638129750%_))))
                 (_%eval-body129510%_
                  (lambda (_%rbody129518%_)
                    (let _%lp129520%_ ((_%rest129522%_ _%rbody129518%_)
                                       (_%body129523%_ '())
                                       (_%ebody129524%_ '()))
                      (let* ((_%rest129525129533%_ _%rest129522%_)
                             (_%else129527129541%_
                              (lambda ()
                                (values _%body129523%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody129524%_)
                                          (gx#stx-source _%stx129507%_))))))
                             (_%K129529129617%_
                              (lambda (_%rest129544%_ _%hd129545%_)
                                (let* ((_%e129546129563%_ _%hd129545%_)
                                       (_%E129558129567%_
                                        (lambda ()
                                          (_%lp129520%_
                                           _%rest129544%_
                                           (cons _%hd129545%_ _%body129523%_)
                                           (cons _%hd129545%_
                                                 _%ebody129524%_))))
                                       (_%E129548129579%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e129546129563%_)
                                              (let ((_%e129559129571%_
                                                     (gx#syntax-e
                                                      _%e129546129563%_)))
                                                (let ((_%hd129560129574%_
                                                       (##car _%e129559129571%_))
                                                      (_%tl129561129576%_
                                                       (##cdr _%e129559129571%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd129560129574%_)
                                                           (gx#core-identifier=?
                                                            _%hd129560129574%_
                                                            '%#begin-syntax))
                                                      (_%lp129520%_
                                                       _%rest129544%_
                                                       (cons _%hd129545%_
                                                             _%body129523%_)
                                                       _%ebody129524%_)
                                                      (_%E129558129567%_))))
                                              (_%E129558129567%_))))
                                       (_%E129547129613%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e129546129563%_)
                                              (let ((_%e129549129583%_
                                                     (gx#syntax-e
                                                      _%e129546129563%_)))
                                                (let ((_%hd129550129586%_
                                                       (##car _%e129549129583%_))
                                                      (_%tl129551129588%_
                                                       (##cdr _%e129549129583%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd129550129586%_)
                                                           (gx#core-identifier=?
                                                            _%hd129550129586%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl129551129588%_)
                                                          (let ((_%e129552129591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl129551129588%_)))
                    (let ((_%hd129553129594%_ (##car _%e129552129591%_))
                          (_%tl129554129596%_ (##cdr _%e129552129591%_)))
                      (let ((_%hd-bind129599%_ _%hd129553129594%_))
                        (if (gx#stx-pair? _%tl129554129596%_)
                            (let ((_%e129555129601%_
                                   (gx#syntax-e _%tl129554129596%_)))
                              (let ((_%hd129556129604%_
                                     (##car _%e129555129601%_))
                                    (_%tl129557129606%_
                                     (##cdr _%e129555129601%_)))
                                (let ((_%expr129609%_ _%hd129556129604%_))
                                  (if (gx#stx-null? _%tl129557129606%_)
                                      (let ((_%ehd129611%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind129599%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr129609%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd129545%_))))
                                        (_%lp129520%_
                                         _%rest129544%_
                                         (cons _%ehd129611%_ _%body129523%_)
                                         (cons _%ehd129611%_ _%ebody129524%_)))
                                      (_%E129548129579%_)))))
                            (_%E129548129579%_)))))
                  (_%E129548129579%_))
              (_%E129548129579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E129548129579%_)))))
                                  (_%E129547129613%_)))))
                        (if (pair? _%rest129525129533%_)
                            (let ((_%hd129530129620%_
                                   (##car _%rest129525129533%_))
                                  (_%tl129531129622%_
                                   (##cdr _%rest129525129533%_)))
                              (let* ((_%hd129625%_ _%hd129530129620%_)
                                     (_%rest129627%_ _%tl129531129622%_))
                                (_%K129529129617%_
                                 _%rest129627%_
                                 _%hd129625%_)))
                            (_%else129527129541%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody129513%_
                     (gx#core-expand-block__1
                      _%stx129507%_
                      _%expand-special129509%_
                      '#f))
                    (_g129777_ (_%eval-body129510%_ _%rbody129513%_)))
               (begin
                 (let ((_g129778_
                        (if (##values? _g129777_)
                            (##values-length _g129777_)
                            1)))
                   (if (not (##fx= _g129778_ 2))
                       (error "Context expects 2 values" _g129778_)))
                 (let ((_%expanded-body129515%_ (##values-ref _g129777_ 0))
                       (_%value129516%_ (##values-ref _g129777_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body129515%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value129516%_ '())))
                    (gx#stx-source _%stx129507%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx129477%_)
        (let* ((_%e129478129485%_ _%stx129477%_)
               (_%E129480129489%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129478129485%_)))
               (_%E129479129503%_
                (lambda ()
                  (if (gx#stx-pair? _%e129478129485%_)
                      (let ((_%e129481129493%_
                             (gx#syntax-e _%e129478129485%_)))
                        (let ((_%hd129482129496%_ (##car _%e129481129493%_))
                              (_%tl129483129498%_ (##cdr _%e129481129493%_)))
                          (let ((_%body129501%_ _%tl129483129498%_))
                            (if (gx#stx-list? _%body129501%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body129501%_)
                                 (gx#stx-source _%stx129477%_))
                                (_%E129480129489%_)))))
                      (_%E129480129489%_)))))
          (_%E129479129503%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx129475%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx129475%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx129421%_)
        (let* ((_%e129422129435%_ _%stx129421%_)
               (_%E129424129439%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129422129435%_)))
               (_%E129423129471%_
                (lambda ()
                  (if (gx#stx-pair? _%e129422129435%_)
                      (let ((_%e129425129443%_
                             (gx#syntax-e _%e129422129435%_)))
                        (let ((_%hd129426129446%_ (##car _%e129425129443%_))
                              (_%tl129427129448%_ (##cdr _%e129425129443%_)))
                          (if (gx#stx-pair? _%tl129427129448%_)
                              (let ((_%e129428129451%_
                                     (gx#syntax-e _%tl129427129448%_)))
                                (let ((_%hd129429129454%_
                                       (##car _%e129428129451%_))
                                      (_%tl129430129456%_
                                       (##cdr _%e129428129451%_)))
                                  (let ((_%ann129459%_ _%hd129429129454%_))
                                    (if (gx#stx-pair? _%tl129430129456%_)
                                        (let ((_%e129431129461%_
                                               (gx#syntax-e
                                                _%tl129430129456%_)))
                                          (let ((_%hd129432129464%_
                                                 (##car _%e129431129461%_))
                                                (_%tl129433129466%_
                                                 (##cdr _%e129431129461%_)))
                                            (let ((_%expr129469%_
                                                   _%hd129432129464%_))
                                              (if (gx#stx-null?
                                                   _%tl129433129466%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann129459%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr129469%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx129421%_))
                                                  (_%E129424129439%_)))))
                                        (_%E129424129439%_)))))
                              (_%E129424129439%_))))
                      (_%E129424129439%_)))))
          (_%E129423129471%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx129145%_ _%body129146%_)
        (letrec ((_%expand-special129148%_
                  (lambda (_%hd129416%_ _%K129417%_ _%rest129418%_ _%r129419%_)
                    (_%K129417%_
                     '()
                     (cons (_%expand-internal129149%_
                            _%hd129416%_
                            _%rest129418%_)
                           _%r129419%_))))
                 (_%expand-internal129149%_
                  (lambda (_%hd129412%_ _%rest129413%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal129151%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd129412%_ _%rest129413%_))
                          (gx#stx-source _%stx129145%_))
                         _%expand-internal-special129150%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj129771
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj129771)
                       __obj129771))))
                 (_%expand-internal-special129150%_
                  (lambda (_%hd129307%_ _%K129308%_ _%rest129309%_ _%r129310%_)
                    (let* ((_%e129311129336%_ _%hd129307%_)
                           (_%E129331129340%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e129311129336%_)))
                           (_%E129327129352%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129311129336%_)
                                  (let ((_%e129332129344%_
                                         (gx#syntax-e _%e129311129336%_)))
                                    (let ((_%hd129333129347%_
                                           (##car _%e129332129344%_))
                                          (_%tl129334129349%_
                                           (##cdr _%e129332129344%_)))
                                      (if (and (gx#identifier?
                                                _%hd129333129347%_)
                                               (gx#core-identifier=?
                                                _%hd129333129347%_
                                                '%#declare))
                                          (_%K129308%_
                                           _%rest129309%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd129307%_)
                                                 _%r129310%_))
                                          (_%E129331129340%_))))
                                  (_%E129331129340%_))))
                           (_%E129323129364%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129311129336%_)
                                  (let ((_%e129328129356%_
                                         (gx#syntax-e _%e129311129336%_)))
                                    (let ((_%hd129329129359%_
                                           (##car _%e129328129356%_))
                                          (_%tl129330129361%_
                                           (##cdr _%e129328129356%_)))
                                      (if (and (gx#identifier?
                                                _%hd129329129359%_)
                                               (gx#core-identifier=?
                                                _%hd129329129359%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd129307%_)
                                            (_%K129308%_
                                             _%rest129309%_
                                             _%r129310%_))
                                          (_%E129327129352%_))))
                                  (_%E129327129352%_))))
                           (_%E129313129376%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129311129336%_)
                                  (let ((_%e129324129368%_
                                         (gx#syntax-e _%e129311129336%_)))
                                    (let ((_%hd129325129371%_
                                           (##car _%e129324129368%_))
                                          (_%tl129326129373%_
                                           (##cdr _%e129324129368%_)))
                                      (if (and (gx#identifier?
                                                _%hd129325129371%_)
                                               (gx#core-identifier=?
                                                _%hd129325129371%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd129307%_)
                                            (_%K129308%_
                                             _%rest129309%_
                                             _%r129310%_))
                                          (_%E129323129364%_))))
                                  (_%E129323129364%_))))
                           (_%E129312129408%_
                            (lambda ()
                              (if (gx#stx-pair? _%e129311129336%_)
                                  (let ((_%e129314129380%_
                                         (gx#syntax-e _%e129311129336%_)))
                                    (let ((_%hd129315129383%_
                                           (##car _%e129314129380%_))
                                          (_%tl129316129385%_
                                           (##cdr _%e129314129380%_)))
                                      (if (and (gx#identifier?
                                                _%hd129315129383%_)
                                               (gx#core-identifier=?
                                                _%hd129315129383%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl129316129385%_)
                                              (let ((_%e129317129388%_
                                                     (gx#syntax-e
                                                      _%tl129316129385%_)))
                                                (let ((_%hd129318129391%_
                                                       (##car _%e129317129388%_))
                                                      (_%tl129319129393%_
                                                       (##cdr _%e129317129388%_)))
                                                  (let ((_%hd-bind129396%_
                                                         _%hd129318129391%_))
                                                    (if (gx#stx-pair?
                                                         _%tl129319129393%_)
                                                        (let ((_%e129320129398%_
                                                               (gx#syntax-e
                                                                _%tl129319129393%_)))
                                                          (let ((_%hd129321129401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e129320129398%_))
                        (_%tl129322129403%_ (##cdr _%e129320129398%_)))
                    (let ((_%expr129406%_ _%hd129321129401%_))
                      (if (gx#stx-null? _%tl129322129403%_)
                          (if (gx#core-bind-values? _%hd-bind129396%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind129396%_)
                                (_%K129308%_
                                 _%rest129309%_
                                 (cons _%hd129307%_ _%r129310%_)))
                              (_%E129313129376%_))
                          (_%E129313129376%_)))))
                (_%E129313129376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E129313129376%_))
                                          (_%E129313129376%_))))
                                  (_%E129313129376%_)))))
                      (_%E129312129408%_))))
                 (_%wrap-internal129151%_
                  (lambda (_%rbody129153%_)
                    (let _%lp129155%_ ((_%rest129157%_ _%rbody129153%_)
                                       (_%decls129158%_ '())
                                       (_%bind129159%_ '())
                                       (_%body129160%_ '()))
                      (let* ((_%e129161129168%_ _%rest129157%_)
                             (_%E129163129217%_
                              (lambda ()
                                (let* ((_%body129212%_
                                        (let* ((_%body129171129181%_
                                                _%body129160%_)
                                               (_%else129174129189%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body129160%_)
                                                   (gx#stx-source
                                                    _%stx129145%_)))))
                                          (let ((_%K129179129209%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx129145%_)))
                                                (_%K129176129195%_
                                                 (lambda (_%expr129193%_)
                                                   _%expr129193%_)))
                                            (let ((_%try-match129173129205%_
                                                   (lambda ()
                                                     (if (pair? _%body129171129181%_)
                                                         (let ((_%tl129178129200%_
                                                                (##cdr _%body129171129181%_))
                                                               (_%hd129177129198%_
                                                                (##car _%body129171129181%_)))
                                                           (if (null? _%tl129178129200%_)
                                                               (let ((_%expr129203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd129177129198%_))
                         (_%K129176129195%_ _%expr129203%_))
                       (_%else129174129189%_)))
                 (_%else129174129189%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body129171129181%_)
                                                  (_%K129179129209%_)
                                                  (_%try-match129173129205%_))))))
                                       (_%body129214%_
                                        (if (null? _%bind129159%_)
                                            _%body129212%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind129159%_
                                                         (cons _%body129212%_
                                                               '())))
                                             (gx#stx-source _%stx129145%_)))))
                                  (if (null? _%decls129158%_)
                                      _%body129214%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls129158%_
                                                   (cons _%body129214%_ '())))
                                       (gx#stx-source _%stx129145%_))))))
                             (_%E129162129303%_
                              (lambda ()
                                (if (gx#stx-pair? _%e129161129168%_)
                                    (let ((_%e129164129221%_
                                           (gx#syntax-e _%e129161129168%_)))
                                      (let ((_%hd129165129224%_
                                             (##car _%e129164129221%_))
                                            (_%tl129166129226%_
                                             (##cdr _%e129164129221%_)))
                                        (let* ((_%hd129229%_
                                                _%hd129165129224%_)
                                               (_%rest129231%_
                                                _%tl129166129226%_)
                                               (_%e129232129249%_ _%hd129229%_)
                                               (_%E129244129253%_
                                                (lambda ()
                                                  (if (null? _%bind129159%_)
                                                      (_%lp129155%_
                                                       _%rest129231%_
                                                       _%decls129158%_
                                                       _%bind129159%_
                                                       (cons _%hd129229%_
                                                             _%body129160%_))
                                                      (_%lp129155%_
                                                       _%rest129231%_
                                                       _%decls129158%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd129229%_ '()))
                     _%bind129159%_)
               _%body129160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E129234129267%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e129232129249%_)
                                                      (let ((_%e129245129257%_
                                                             (gx#syntax-e
                                                              _%e129232129249%_)))
                                                        (let ((_%hd129246129260%_
                                                               (##car _%e129245129257%_))
                                                              (_%tl129247129262%_
                                                               (##cdr _%e129245129257%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd129246129260%_)
                           (gx#core-identifier=?
                            _%hd129246129260%_
                            '%#declare))
                      (let ((_%xdecls129265%_ _%tl129247129262%_))
                        (_%lp129155%_
                         _%rest129231%_
                         (gx#stx-foldr cons _%decls129158%_ _%xdecls129265%_)
                         _%bind129159%_
                         _%body129160%_))
                      (_%E129244129253%_))))
              (_%E129244129253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E129233129299%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e129232129249%_)
                                                      (let ((_%e129235129271%_
                                                             (gx#syntax-e
                                                              _%e129232129249%_)))
                                                        (let ((_%hd129236129274%_
                                                               (##car _%e129235129271%_))
                                                              (_%tl129237129276%_
                                                               (##cdr _%e129235129271%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd129236129274%_)
                           (gx#core-identifier=?
                            _%hd129236129274%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl129237129276%_)
                          (let ((_%e129238129279%_
                                 (gx#syntax-e _%tl129237129276%_)))
                            (let ((_%hd129239129282%_
                                   (##car _%e129238129279%_))
                                  (_%tl129240129284%_
                                   (##cdr _%e129238129279%_)))
                              (let ((_%hd-bind129287%_ _%hd129239129282%_))
                                (if (gx#stx-pair? _%tl129240129284%_)
                                    (let ((_%e129241129289%_
                                           (gx#syntax-e _%tl129240129284%_)))
                                      (let ((_%hd129242129292%_
                                             (##car _%e129241129289%_))
                                            (_%tl129243129294%_
                                             (##cdr _%e129241129289%_)))
                                        (let ((_%expr129297%_
                                               _%hd129242129292%_))
                                          (if (gx#stx-null? _%tl129243129294%_)
                                              (_%lp129155%_
                                               _%rest129231%_
                                               _%decls129158%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind129287%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr129297%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind129159%_)
                                               _%body129160%_)
                                              (_%E129234129267%_)))))
                                    (_%E129234129267%_)))))
                          (_%E129234129267%_))
                      (_%E129234129267%_))))
              (_%E129234129267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E129233129299%_))))
                                    (_%E129163129217%_)))))
                        (_%E129162129303%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body129146%_)
            (gx#stx-source _%stx129145%_))
           _%expand-special129148%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx129083%_)
        (let* ((_%e129084129091%_ _%stx129083%_)
               (_%E129086129095%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129084129091%_)))
               (_%E129085129141%_
                (lambda ()
                  (if (gx#stx-pair? _%e129084129091%_)
                      (let ((_%e129087129099%_
                             (gx#syntax-e _%e129084129091%_)))
                        (let ((_%hd129088129102%_ (##car _%e129087129099%_))
                              (_%tl129089129104%_ (##cdr _%e129087129099%_)))
                          (let ((_%body129107%_ _%tl129089129104%_))
                            (if (gx#stx-list? _%body129107%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl129109%_)
                                     (let* ((_%e129110129117%_ _%decl129109%_)
                                            (_%E129112129121%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e129110129117%_)))
                                            (_%E129111129137%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e129110129117%_)
                                                   (let ((_%e129113129125%_
                                                          (gx#syntax-e
                                                           _%e129110129117%_)))
                                                     (let ((_%hd129114129128%_
                                                            (##car _%e129113129125%_))
                                                           (_%tl129115129130%_
                                                            (##cdr _%e129113129125%_)))
                                                       (let* ((_%head129133%_
                                                               _%hd129114129128%_)
                                                              (_%args129135%_
                                                               _%tl129115129130%_))
                                                         (if (gx#stx-list?
                                                              _%args129135%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl129109%_)
                                                             (_%E129112129121%_)))))
                                                   (_%E129112129121%_)))))
                                       (_%E129111129137%_)))
                                   _%body129107%_))
                                 (gx#stx-source _%stx129083%_))
                                (_%E129086129095%_)))))
                      (_%E129086129095%_)))))
          (_%E129085129141%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx128987%_)
        (let* ((_%e128988128995%_ _%stx128987%_)
               (_%E128990128999%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128988128995%_)))
               (_%E128989129079%_
                (lambda ()
                  (if (gx#stx-pair? _%e128988128995%_)
                      (let ((_%e128991129003%_
                             (gx#syntax-e _%e128988128995%_)))
                        (let ((_%hd128992129006%_ (##car _%e128991129003%_))
                              (_%tl128993129008%_ (##cdr _%e128991129003%_)))
                          (let ((_%body129011%_ _%tl128993129008%_))
                            (let _%lp129013%_ ((_%rest129015%_ _%body129011%_)
                                               (_%r129016%_ '()))
                              (let* ((_%e129017129031%_ _%rest129015%_)
                                     (_%E129029129035%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx128987%_)))
                                     (_%E129019129039%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e129017129031%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r129016%_))
                                             (gx#stx-source _%stx128987%_))
                                            (_%E129029129035%_))))
                                     (_%E129018129075%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e129017129031%_)
                                            (let ((_%e129020129043%_
                                                   (gx#syntax-e
                                                    _%e129017129031%_)))
                                              (let ((_%hd129021129046%_
                                                     (##car _%e129020129043%_))
                                                    (_%tl129022129048%_
                                                     (##cdr _%e129020129043%_)))
                                                (if (gx#stx-pair?
                                                     _%hd129021129046%_)
                                                    (let ((_%e129023129051%_
                                                           (gx#syntax-e
                                                            _%hd129021129046%_)))
                                                      (let ((_%hd129024129054%_
                                                             (##car _%e129023129051%_))
                                                            (_%tl129025129056%_
                                                             (##cdr _%e129023129051%_)))
                                                        (let ((_%id129059%_
                                                               _%hd129024129054%_))
                                                          (if (gx#stx-pair?
                                                               _%tl129025129056%_)
                                                              (let ((_%e129026129061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl129025129056%_)))
                        (let ((_%hd129027129064%_ (##car _%e129026129061%_))
                              (_%tl129028129066%_ (##cdr _%e129026129061%_)))
                          (let ((_%eid129069%_ _%hd129027129064%_))
                            (if (gx#stx-null? _%tl129028129066%_)
                                (let ((_%rest129071%_ _%tl129022129048%_))
                                  (if (and (gx#identifier? _%id129059%_)
                                           (gx#identifier? _%eid129069%_))
                                      (let ((_%eid129073%_
                                             (gx#stx-e _%eid129069%_)))
                                        (gx#core-bind-extern!__0
                                         _%id129059%_
                                         _%eid129073%_)
                                        (_%lp129013%_
                                         _%rest129071%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id129059%_)
                                                     (cons _%eid129073%_ '()))
                                               _%r129016%_)))
                                      (_%E129019129039%_)))
                                (_%E129019129039%_)))))
                      (_%E129019129039%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E129019129039%_))))
                                            (_%E129019129039%_)))))
                                (_%E129018129075%_))))))
                      (_%E128990128999%_)))))
          (_%E128989129079%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx128933%_)
        (let* ((_%e128934128947%_ _%stx128933%_)
               (_%E128936128951%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128934128947%_)))
               (_%E128935128983%_
                (lambda ()
                  (if (gx#stx-pair? _%e128934128947%_)
                      (let ((_%e128937128955%_
                             (gx#syntax-e _%e128934128947%_)))
                        (let ((_%hd128938128958%_ (##car _%e128937128955%_))
                              (_%tl128939128960%_ (##cdr _%e128937128955%_)))
                          (if (gx#stx-pair? _%tl128939128960%_)
                              (let ((_%e128940128963%_
                                     (gx#syntax-e _%tl128939128960%_)))
                                (let ((_%hd128941128966%_
                                       (##car _%e128940128963%_))
                                      (_%tl128942128968%_
                                       (##cdr _%e128940128963%_)))
                                  (let ((_%hd128971%_ _%hd128941128966%_))
                                    (if (gx#stx-pair? _%tl128942128968%_)
                                        (let ((_%e128943128973%_
                                               (gx#syntax-e
                                                _%tl128942128968%_)))
                                          (let ((_%hd128944128976%_
                                                 (##car _%e128943128973%_))
                                                (_%tl128945128978%_
                                                 (##cdr _%e128943128973%_)))
                                            (let ((_%expr128981%_
                                                   _%hd128944128976%_))
                                              (if (gx#stx-null?
                                                   _%tl128945128978%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd128971%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd128971%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd128971%_)
                             (cons (gx#core-expand-expression _%expr128981%_)
                                   '())))
                 (gx#stx-source _%stx128933%_)))
              (_%E128936128951%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128936128951%_)))))
                                        (_%E128936128951%_)))))
                              (_%E128936128951%_))))
                      (_%E128936128951%_)))))
          (_%E128935128983%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx128877%_)
        (let* ((_%e128878128891%_ _%stx128877%_)
               (_%E128880128895%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128878128891%_)))
               (_%E128879128929%_
                (lambda ()
                  (if (gx#stx-pair? _%e128878128891%_)
                      (let ((_%e128881128899%_
                             (gx#syntax-e _%e128878128891%_)))
                        (let ((_%hd128882128902%_ (##car _%e128881128899%_))
                              (_%tl128883128904%_ (##cdr _%e128881128899%_)))
                          (if (gx#stx-pair? _%tl128883128904%_)
                              (let ((_%e128884128907%_
                                     (gx#syntax-e _%tl128883128904%_)))
                                (let ((_%hd128885128910%_
                                       (##car _%e128884128907%_))
                                      (_%tl128886128912%_
                                       (##cdr _%e128884128907%_)))
                                  (let ((_%id128915%_ _%hd128885128910%_))
                                    (if (gx#stx-pair? _%tl128886128912%_)
                                        (let ((_%e128887128917%_
                                               (gx#syntax-e
                                                _%tl128886128912%_)))
                                          (let ((_%hd128888128920%_
                                                 (##car _%e128887128917%_))
                                                (_%tl128889128922%_
                                                 (##cdr _%e128887128917%_)))
                                            (let ((_%binding-id128925%_
                                                   _%hd128888128920%_))
                                              (if (gx#stx-null?
                                                   _%tl128889128922%_)
                                                  (if (and (gx#identifier?
                                                            _%id128915%_)
                                                           (gx#identifier?
                                                            _%binding-id128925%_))
                                                      (let ((_%eid128927%_
                                                             (gx#stx-e
                                                              _%binding-id128925%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id128915%_
                                                         _%eid128927%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id128915%_)
                             (cons _%eid128927%_ '())))))
              (_%E128880128895%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128880128895%_)))))
                                        (_%E128880128895%_)))))
                              (_%E128880128895%_))))
                      (_%E128880128895%_)))))
          (_%E128879128929%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx128820%_)
        (let* ((_%e128821128834%_ _%stx128820%_)
               (_%E128823128838%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128821128834%_)))
               (_%E128822128873%_
                (lambda ()
                  (if (gx#stx-pair? _%e128821128834%_)
                      (let ((_%e128824128842%_
                             (gx#syntax-e _%e128821128834%_)))
                        (let ((_%hd128825128845%_ (##car _%e128824128842%_))
                              (_%tl128826128847%_ (##cdr _%e128824128842%_)))
                          (if (gx#stx-pair? _%tl128826128847%_)
                              (let ((_%e128827128850%_
                                     (gx#syntax-e _%tl128826128847%_)))
                                (let ((_%hd128828128853%_
                                       (##car _%e128827128850%_))
                                      (_%tl128829128855%_
                                       (##cdr _%e128827128850%_)))
                                  (let ((_%id128858%_ _%hd128828128853%_))
                                    (if (gx#stx-pair? _%tl128829128855%_)
                                        (let ((_%e128830128860%_
                                               (gx#syntax-e
                                                _%tl128829128855%_)))
                                          (let ((_%hd128831128863%_
                                                 (##car _%e128830128860%_))
                                                (_%tl128832128865%_
                                                 (##cdr _%e128830128860%_)))
                                            (let ((_%expr128868%_
                                                   _%hd128831128863%_))
                                              (if (gx#stx-null?
                                                   _%tl128832128865%_)
                                                  (if (gx#identifier?
                                                       _%id128858%_)
                                                      (let ((_g129779_
                                                             (gx#core-expand-expression+1
                                                              _%expr128868%_)))
                                                        (begin
                                                          (let ((_g129780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g129779_)
                             (##values-length _g129779_)
                             1)))
                    (if (not (##fx= _g129780_ 2))
                        (error "Context expects 2 values" _g129780_)))
                  (let ((_%e-stx128870%_ (##values-ref _g129779_ 0))
                        (_%e128871%_ (##values-ref _g129779_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id128858%_ _%e128871%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id128858%_)
                                   (cons _%e-stx128870%_ '())))
                       (gx#stx-source _%stx128820%_))))))
              (_%E128823128838%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128823128838%_)))))
                                        (_%E128823128838%_)))))
                              (_%E128823128838%_))))
                      (_%E128823128838%_)))))
          (_%E128822128873%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx128764%_)
        (let* ((_%e128765128778%_ _%stx128764%_)
               (_%E128767128782%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128765128778%_)))
               (_%E128766128816%_
                (lambda ()
                  (if (gx#stx-pair? _%e128765128778%_)
                      (let ((_%e128768128786%_
                             (gx#syntax-e _%e128765128778%_)))
                        (let ((_%hd128769128789%_ (##car _%e128768128786%_))
                              (_%tl128770128791%_ (##cdr _%e128768128786%_)))
                          (if (gx#stx-pair? _%tl128770128791%_)
                              (let ((_%e128771128794%_
                                     (gx#syntax-e _%tl128770128791%_)))
                                (let ((_%hd128772128797%_
                                       (##car _%e128771128794%_))
                                      (_%tl128773128799%_
                                       (##cdr _%e128771128794%_)))
                                  (let ((_%id128802%_ _%hd128772128797%_))
                                    (if (gx#stx-pair? _%tl128773128799%_)
                                        (let ((_%e128774128804%_
                                               (gx#syntax-e
                                                _%tl128773128799%_)))
                                          (let ((_%hd128775128807%_
                                                 (##car _%e128774128804%_))
                                                (_%tl128776128809%_
                                                 (##cdr _%e128774128804%_)))
                                            (let ((_%alias-id128812%_
                                                   _%hd128775128807%_))
                                              (if (gx#stx-null?
                                                   _%tl128776128809%_)
                                                  (if (and (gx#identifier?
                                                            _%id128802%_)
                                                           (gx#identifier?
                                                            _%alias-id128812%_))
                                                      (let ((_%alias-id128814%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id128812%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id128802%_
                                                         _%alias-id128814%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id128802%_)
                             (cons _%alias-id128814%_ '())))))
              (_%E128767128782%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128767128782%_)))))
                                        (_%E128767128782%_)))))
                              (_%E128767128782%_))))
                      (_%E128767128782%_)))))
          (_%E128766128816%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx128707%_ _%wrap?128708%_)
        (let* ((_%e128709128719%_ _%stx128707%_)
               (_%E128711128723%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128709128719%_)))
               (_%E128710128750%_
                (lambda ()
                  (if (gx#stx-pair? _%e128709128719%_)
                      (let ((_%e128712128727%_
                             (gx#syntax-e _%e128709128719%_)))
                        (let ((_%hd128713128730%_ (##car _%e128712128727%_))
                              (_%tl128714128732%_ (##cdr _%e128712128727%_)))
                          (if (gx#stx-pair? _%tl128714128732%_)
                              (let ((_%e128715128735%_
                                     (gx#syntax-e _%tl128714128732%_)))
                                (let ((_%hd128716128738%_
                                       (##car _%e128715128735%_))
                                      (_%tl128717128740%_
                                       (##cdr _%e128715128735%_)))
                                  (let* ((_%hd128743%_ _%hd128716128738%_)
                                         (_%body128745%_ _%tl128717128740%_))
                                    (if (gx#core-bind-values? _%hd128743%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd128743%_)
                                           (let ((_%body128748%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd128743%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx128707%_
                                                               _%body128745%_)
                                                              '()))))
                                             (if _%wrap?128708%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body128748%_)
                                                  (gx#stx-source
                                                   _%stx128707%_))
                                                 _%body128748%_)))
                                         gx#current-expander-context
                                         (let ((__obj129772
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj129772)
                                           __obj129772))
                                        (_%E128711128723%_)))))
                              (_%E128711128723%_))))
                      (_%E128711128723%_)))))
          (_%E128710128750%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx128757%_)
        (let ((_%wrap?128759%_ '#t))
          (gx#core-expand-lambda%__% _%stx128757%_ _%wrap?128759%_))))
    (define gx#core-expand-lambda%
      (lambda _g129781_
        (let ((_g129782_ (##length _g129781_)))
          (cond ((##fx= _g129782_ 1)
                 (apply gx#core-expand-lambda%__0 _g129781_))
                ((##fx= _g129782_ 2)
                 (apply gx#core-expand-lambda%__% _g129781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g129781_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx128671%_)
        (let* ((_%e128672128679%_ _%stx128671%_)
               (_%E128674128683%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128672128679%_)))
               (_%E128673128702%_
                (lambda ()
                  (if (gx#stx-pair? _%e128672128679%_)
                      (let ((_%e128675128687%_
                             (gx#syntax-e _%e128672128679%_)))
                        (let ((_%hd128676128690%_ (##car _%e128675128687%_))
                              (_%tl128677128692%_ (##cdr _%e128675128687%_)))
                          (let ((_%clauses128695%_ _%tl128677128692%_))
                            (if (gx#stx-list? _%clauses128695%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause128697%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause128697%_)
                                       (let ((_%$e128699%_
                                              (gx#stx-source
                                               _%clause128697%_)))
                                         (if _%$e128699%_
                                             _%$e128699%_
                                             (gx#stx-source _%stx128671%_))))
                                      '#f))
                                   _%clauses128695%_))
                                 (gx#stx-source _%stx128671%_))
                                (_%E128674128683%_)))))
                      (_%E128674128683%_)))))
          (_%E128673128702%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx128625%_)
        (let* ((_%e128626128636%_ _%stx128625%_)
               (_%E128628128640%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128626128636%_)))
               (_%E128627128667%_
                (lambda ()
                  (if (gx#stx-pair? _%e128626128636%_)
                      (let ((_%e128629128644%_
                             (gx#syntax-e _%e128626128636%_)))
                        (let ((_%hd128630128647%_ (##car _%e128629128644%_))
                              (_%tl128631128649%_ (##cdr _%e128629128644%_)))
                          (if (gx#stx-pair? _%tl128631128649%_)
                              (let ((_%e128632128652%_
                                     (gx#syntax-e _%tl128631128649%_)))
                                (let ((_%hd128633128655%_
                                       (##car _%e128632128652%_))
                                      (_%tl128634128657%_
                                       (##cdr _%e128632128652%_)))
                                  (let* ((_%hd128660%_ _%hd128633128655%_)
                                         (_%body128662%_ _%tl128634128657%_))
                                    (if (gx#core-expand-let-bind? _%hd128660%_)
                                        (let ((_%expressions128664%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd128660%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd128660%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd128660%_
                                                           _%expressions128664%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx128625%_
                         _%body128662%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx128625%_)))
                                           gx#current-expander-context
                                           (let ((__obj129773
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj129773)
                                             __obj129773)))
                                        (_%E128628128640%_)))))
                              (_%E128628128640%_))))
                      (_%E128628128640%_)))))
          (_%E128627128667%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx128570%_ _%form128571%_)
        (let* ((_%e128572128582%_ _%stx128570%_)
               (_%E128574128586%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128572128582%_)))
               (_%E128573128611%_
                (lambda ()
                  (if (gx#stx-pair? _%e128572128582%_)
                      (let ((_%e128575128590%_
                             (gx#syntax-e _%e128572128582%_)))
                        (let ((_%hd128576128593%_ (##car _%e128575128590%_))
                              (_%tl128577128595%_ (##cdr _%e128575128590%_)))
                          (if (gx#stx-pair? _%tl128577128595%_)
                              (let ((_%e128578128598%_
                                     (gx#syntax-e _%tl128577128595%_)))
                                (let ((_%hd128579128601%_
                                       (##car _%e128578128598%_))
                                      (_%tl128580128603%_
                                       (##cdr _%e128578128598%_)))
                                  (let* ((_%hd128606%_ _%hd128579128601%_)
                                         (_%body128608%_ _%tl128580128603%_))
                                    (if (gx#core-expand-let-bind? _%hd128606%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd128606%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form128571%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd128606%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd128606%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx128570%_
                                                               _%body128608%_)
                                                              '())))
                                            (gx#stx-source _%stx128570%_)))
                                         gx#current-expander-context
                                         (let ((__obj129774
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj129774)
                                           __obj129774))
                                        (_%E128574128586%_)))))
                              (_%E128574128586%_))))
                      (_%E128574128586%_)))))
          (_%E128573128611%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx128618%_)
        (let ((_%form128620%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx128618%_ _%form128620%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g129783_
        (let ((_g129784_ (##length _g129783_)))
          (cond ((##fx= _g129784_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g129783_))
                ((##fx= _g129784_ 2)
                 (apply gx#core-expand-letrec-values%__% _g129783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g129783_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx128567%_)
        (gx#core-expand-letrec-values%__% _%stx128567%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx128524%_)
        (if (gx#stx-list? _%stx128524%_)
            (gx#stx-andmap
             (lambda (_%bind128526%_)
               (let* ((_%e128527128537%_ _%bind128526%_)
                      (_%E128529128541%_ (lambda () '#f))
                      (_%E128528128563%_
                       (lambda ()
                         (if (gx#stx-pair? _%e128527128537%_)
                             (let ((_%e128530128545%_
                                    (gx#syntax-e _%e128527128537%_)))
                               (let ((_%hd128531128548%_
                                      (##car _%e128530128545%_))
                                     (_%tl128532128550%_
                                      (##cdr _%e128530128545%_)))
                                 (let ((_%hd128553%_ _%hd128531128548%_))
                                   (if (gx#stx-pair? _%tl128532128550%_)
                                       (let ((_%e128533128555%_
                                              (gx#syntax-e
                                               _%tl128532128550%_)))
                                         (let ((_%hd128534128558%_
                                                (##car _%e128533128555%_))
                                               (_%tl128535128560%_
                                                (##cdr _%e128533128555%_)))
                                           (if (gx#stx-null?
                                                _%tl128535128560%_)
                                               (gx#core-bind-values?
                                                _%hd128553%_)
                                               (_%E128529128541%_))))
                                       (_%E128529128541%_)))))
                             (_%E128529128541%_)))))
                 (_%E128528128563%_)))
             _%stx128524%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind128483%_)
        (let* ((_%e128484128494%_ _%bind128483%_)
               (_%E128486128498%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128484128494%_)))
               (_%E128485128520%_
                (lambda ()
                  (if (gx#stx-pair? _%e128484128494%_)
                      (let ((_%e128487128502%_
                             (gx#syntax-e _%e128484128494%_)))
                        (let ((_%hd128488128505%_ (##car _%e128487128502%_))
                              (_%tl128489128507%_ (##cdr _%e128487128502%_)))
                          (if (gx#stx-pair? _%tl128489128507%_)
                              (let ((_%e128490128510%_
                                     (gx#syntax-e _%tl128489128507%_)))
                                (let ((_%hd128491128513%_
                                       (##car _%e128490128510%_))
                                      (_%tl128492128515%_
                                       (##cdr _%e128490128510%_)))
                                  (let ((_%expr128518%_ _%hd128491128513%_))
                                    (if (gx#stx-null? _%tl128492128515%_)
                                        (gx#core-expand-expression
                                         _%expr128518%_)
                                        (_%E128486128498%_)))))
                              (_%E128486128498%_))))
                      (_%E128486128498%_)))))
          (_%E128485128520%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind128442%_)
        (let* ((_%e128443128453%_ _%bind128442%_)
               (_%E128445128457%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128443128453%_)))
               (_%E128444128479%_
                (lambda ()
                  (if (gx#stx-pair? _%e128443128453%_)
                      (let ((_%e128446128461%_
                             (gx#syntax-e _%e128443128453%_)))
                        (let ((_%hd128447128464%_ (##car _%e128446128461%_))
                              (_%tl128448128466%_ (##cdr _%e128446128461%_)))
                          (let ((_%hd128469%_ _%hd128447128464%_))
                            (if (gx#stx-pair? _%tl128448128466%_)
                                (let ((_%e128449128471%_
                                       (gx#syntax-e _%tl128448128466%_)))
                                  (let ((_%hd128450128474%_
                                         (##car _%e128449128471%_))
                                        (_%tl128451128476%_
                                         (##cdr _%e128449128471%_)))
                                    (if (gx#stx-null? _%tl128451128476%_)
                                        (gx#core-bind-values!__0 _%hd128469%_)
                                        (_%E128445128457%_))))
                                (_%E128445128457%_)))))
                      (_%E128445128457%_)))))
          (_%E128444128479%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind128400%_ _%expr128401%_)
        (let* ((_%e128402128412%_ _%bind128400%_)
               (_%E128404128416%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128402128412%_)))
               (_%E128403128438%_
                (lambda ()
                  (if (gx#stx-pair? _%e128402128412%_)
                      (let ((_%e128405128420%_
                             (gx#syntax-e _%e128402128412%_)))
                        (let ((_%hd128406128423%_ (##car _%e128405128420%_))
                              (_%tl128407128425%_ (##cdr _%e128405128420%_)))
                          (let ((_%hd128428%_ _%hd128406128423%_))
                            (if (gx#stx-pair? _%tl128407128425%_)
                                (let ((_%e128408128430%_
                                       (gx#syntax-e _%tl128407128425%_)))
                                  (let ((_%hd128409128433%_
                                         (##car _%e128408128430%_))
                                        (_%tl128410128435%_
                                         (##cdr _%e128408128430%_)))
                                    (if (gx#stx-null? _%tl128410128435%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd128428%_)
                                              (cons _%expr128401%_ '()))
                                        (_%E128404128416%_))))
                                (_%E128404128416%_)))))
                      (_%E128404128416%_)))))
          (_%E128403128438%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx128354%_)
        (let* ((_%e128355128365%_ _%stx128354%_)
               (_%E128357128369%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128355128365%_)))
               (_%E128356128396%_
                (lambda ()
                  (if (gx#stx-pair? _%e128355128365%_)
                      (let ((_%e128358128373%_
                             (gx#syntax-e _%e128355128365%_)))
                        (let ((_%hd128359128376%_ (##car _%e128358128373%_))
                              (_%tl128360128378%_ (##cdr _%e128358128373%_)))
                          (if (gx#stx-pair? _%tl128360128378%_)
                              (let ((_%e128361128381%_
                                     (gx#syntax-e _%tl128360128378%_)))
                                (let ((_%hd128362128384%_
                                       (##car _%e128361128381%_))
                                      (_%tl128363128386%_
                                       (##cdr _%e128361128381%_)))
                                  (let* ((_%hd128389%_ _%hd128362128384%_)
                                         (_%body128391%_ _%tl128363128386%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd128389%_)
                                        (let ((_%expanders128393%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd128389%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd128389%_
                                              _%expanders128393%_)
                                             (gx#core-expand-local-block
                                              _%stx128354%_
                                              _%body128391%_))
                                           gx#current-expander-context
                                           (let ((__obj129775
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj129775)
                                             __obj129775)))
                                        (_%E128357128369%_)))))
                              (_%E128357128369%_))))
                      (_%E128357128369%_)))))
          (_%E128356128396%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx128303%_)
        (let* ((_%e128304128314%_ _%stx128303%_)
               (_%E128306128318%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128304128314%_)))
               (_%E128305128350%_
                (lambda ()
                  (if (gx#stx-pair? _%e128304128314%_)
                      (let ((_%e128307128322%_
                             (gx#syntax-e _%e128304128314%_)))
                        (let ((_%hd128308128325%_ (##car _%e128307128322%_))
                              (_%tl128309128327%_ (##cdr _%e128307128322%_)))
                          (if (gx#stx-pair? _%tl128309128327%_)
                              (let ((_%e128310128330%_
                                     (gx#syntax-e _%tl128309128327%_)))
                                (let ((_%hd128311128333%_
                                       (##car _%e128310128330%_))
                                      (_%tl128312128335%_
                                       (##cdr _%e128310128330%_)))
                                  (let* ((_%hd128338%_ _%hd128311128333%_)
                                         (_%body128340%_ _%tl128312128335%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd128338%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd128338%_
                                            (make-list
                                             (gx#stx-length _%hd128338%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g128342128345%_
                                                     _%g128343128347%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g128342128345%_
                                               _%g128343128347%_
                                               '#t))
                                            _%hd128338%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd128338%_))
                                           (gx#core-expand-local-block
                                            _%stx128303%_
                                            _%body128340%_))
                                         gx#current-expander-context
                                         (let ((__obj129776
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj129776)
                                           __obj129776))
                                        (_%E128306128318%_)))))
                              (_%E128306128318%_))))
                      (_%E128306128318%_)))))
          (_%E128305128350%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx128260%_)
        (if (gx#stx-list? _%stx128260%_)
            (gx#stx-andmap
             (lambda (_%bind128262%_)
               (let* ((_%e128263128273%_ _%bind128262%_)
                      (_%E128265128277%_ (lambda () '#f))
                      (_%E128264128299%_
                       (lambda ()
                         (if (gx#stx-pair? _%e128263128273%_)
                             (let ((_%e128266128281%_
                                    (gx#syntax-e _%e128263128273%_)))
                               (let ((_%hd128267128284%_
                                      (##car _%e128266128281%_))
                                     (_%tl128268128286%_
                                      (##cdr _%e128266128281%_)))
                                 (let ((_%hd128289%_ _%hd128267128284%_))
                                   (if (gx#stx-pair? _%tl128268128286%_)
                                       (let ((_%e128269128291%_
                                              (gx#syntax-e
                                               _%tl128268128286%_)))
                                         (let ((_%hd128270128294%_
                                                (##car _%e128269128291%_))
                                               (_%tl128271128296%_
                                                (##cdr _%e128269128291%_)))
                                           (if (gx#stx-null?
                                                _%tl128271128296%_)
                                               (gx#identifier? _%hd128289%_)
                                               (_%E128265128277%_))))
                                       (_%E128265128277%_)))))
                             (_%E128265128277%_)))))
                 (_%E128264128299%_)))
             _%stx128260%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind128216%_)
        (let* ((_%e128217128227%_ _%bind128216%_)
               (_%E128219128231%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128217128227%_)))
               (_%E128218128256%_
                (lambda ()
                  (if (gx#stx-pair? _%e128217128227%_)
                      (let ((_%e128220128235%_
                             (gx#syntax-e _%e128217128227%_)))
                        (let ((_%hd128221128238%_ (##car _%e128220128235%_))
                              (_%tl128222128240%_ (##cdr _%e128220128235%_)))
                          (if (gx#stx-pair? _%tl128222128240%_)
                              (let ((_%e128223128243%_
                                     (gx#syntax-e _%tl128222128240%_)))
                                (let ((_%hd128224128246%_
                                       (##car _%e128223128243%_))
                                      (_%tl128225128248%_
                                       (##cdr _%e128223128243%_)))
                                  (let ((_%expr128251%_ _%hd128224128246%_))
                                    (if (gx#stx-null? _%tl128225128248%_)
                                        (let ((_g129785_
                                               (gx#core-expand-expression+1
                                                _%expr128251%_)))
                                          (begin
                                            (let ((_g129786_
                                                   (if (##values? _g129785_)
                                                       (##values-length
                                                        _g129785_)
                                                       1)))
                                              (if (not (##fx= _g129786_ 2))
                                                  (error "Context expects 2 values"
                                                         _g129786_)))
                                            (let ((_%_128253%_
                                                   (##values-ref _g129785_ 0))
                                                  (_%e128254%_
                                                   (##values-ref _g129785_ 1)))
                                              _%e128254%_)))
                                        (_%E128219128231%_)))))
                              (_%E128219128231%_))))
                      (_%E128219128231%_)))))
          (_%E128218128256%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind128161%_ _%e128162%_ _%rebind?128163%_)
        (let* ((_%e128164128174%_ _%bind128161%_)
               (_%E128166128178%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128164128174%_)))
               (_%E128165128200%_
                (lambda ()
                  (if (gx#stx-pair? _%e128164128174%_)
                      (let ((_%e128167128182%_
                             (gx#syntax-e _%e128164128174%_)))
                        (let ((_%hd128168128185%_ (##car _%e128167128182%_))
                              (_%tl128169128187%_ (##cdr _%e128167128182%_)))
                          (let ((_%id128190%_ _%hd128168128185%_))
                            (if (gx#stx-pair? _%tl128169128187%_)
                                (let ((_%e128170128192%_
                                       (gx#syntax-e _%tl128169128187%_)))
                                  (let ((_%hd128171128195%_
                                         (##car _%e128170128192%_))
                                        (_%tl128172128197%_
                                         (##cdr _%e128170128192%_)))
                                    (if (gx#stx-null? _%tl128172128197%_)
                                        (gx#core-bind-syntax!__1
                                         _%id128190%_
                                         _%e128162%_
                                         _%rebind?128163%_)
                                        (_%E128166128178%_))))
                                (_%E128166128178%_)))))
                      (_%E128166128178%_)))))
          (_%E128165128200%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind128207%_ _%e128208%_)
        (let ((_%rebind?128210%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind128207%_
           _%e128208%_
           _%rebind?128210%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g129787_
        (let ((_g129788_ (##length _g129787_)))
          (cond ((##fx= _g129788_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g129787_))
                ((##fx= _g129788_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g129787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g129787_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx128119%_)
        (let* ((_%e128120128130%_ _%stx128119%_)
               (_%E128122128134%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128120128130%_)))
               (_%E128121128156%_
                (lambda ()
                  (if (gx#stx-pair? _%e128120128130%_)
                      (let ((_%e128123128138%_
                             (gx#syntax-e _%e128120128130%_)))
                        (let ((_%hd128124128141%_ (##car _%e128123128138%_))
                              (_%tl128125128143%_ (##cdr _%e128123128138%_)))
                          (if (gx#stx-pair? _%tl128125128143%_)
                              (let ((_%e128126128146%_
                                     (gx#syntax-e _%tl128125128143%_)))
                                (let ((_%hd128127128149%_
                                       (##car _%e128126128146%_))
                                      (_%tl128128128151%_
                                       (##cdr _%e128126128146%_)))
                                  (let ((_%expr128154%_ _%hd128127128149%_))
                                    (if (gx#stx-null? _%tl128128128151%_)
                                        (gx#core-expand-expression
                                         _%expr128154%_)
                                        (_%E128122128134%_)))))
                              (_%E128122128134%_))))
                      (_%E128122128134%_)))))
          (_%E128121128156%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx128078%_)
        (let* ((_%e128079128089%_ _%stx128078%_)
               (_%E128081128093%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128079128089%_)))
               (_%E128080128115%_
                (lambda ()
                  (if (gx#stx-pair? _%e128079128089%_)
                      (let ((_%e128082128097%_
                             (gx#syntax-e _%e128079128089%_)))
                        (let ((_%hd128083128100%_ (##car _%e128082128097%_))
                              (_%tl128084128102%_ (##cdr _%e128082128097%_)))
                          (if (gx#stx-pair? _%tl128084128102%_)
                              (let ((_%e128085128105%_
                                     (gx#syntax-e _%tl128084128102%_)))
                                (let ((_%hd128086128108%_
                                       (##car _%e128085128105%_))
                                      (_%tl128087128110%_
                                       (##cdr _%e128085128105%_)))
                                  (let ((_%e128113%_ _%hd128086128108%_))
                                    (if (gx#stx-null? _%tl128087128110%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e128113%_)
                                                     '()))
                                         (gx#stx-source _%stx128078%_))
                                        (_%E128081128093%_)))))
                              (_%E128081128093%_))))
                      (_%E128081128093%_)))))
          (_%E128080128115%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx128037%_)
        (let* ((_%e128038128048%_ _%stx128037%_)
               (_%E128040128052%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128038128048%_)))
               (_%E128039128074%_
                (lambda ()
                  (if (gx#stx-pair? _%e128038128048%_)
                      (let ((_%e128041128056%_
                             (gx#syntax-e _%e128038128048%_)))
                        (let ((_%hd128042128059%_ (##car _%e128041128056%_))
                              (_%tl128043128061%_ (##cdr _%e128041128056%_)))
                          (if (gx#stx-pair? _%tl128043128061%_)
                              (let ((_%e128044128064%_
                                     (gx#syntax-e _%tl128043128061%_)))
                                (let ((_%hd128045128067%_
                                       (##car _%e128044128064%_))
                                      (_%tl128046128069%_
                                       (##cdr _%e128044128064%_)))
                                  (let ((_%e128072%_ _%hd128045128067%_))
                                    (if (gx#stx-null? _%tl128046128069%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e128072%_)
                                                     '()))
                                         (gx#stx-source _%stx128037%_))
                                        (_%E128040128052%_)))))
                              (_%E128040128052%_))))
                      (_%E128040128052%_)))))
          (_%E128039128074%_))))
    (define gx#core-expand-call%
      (lambda (_%stx127994%_)
        (let* ((_%e127995128005%_ _%stx127994%_)
               (_%E127997128009%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127995128005%_)))
               (_%E127996128033%_
                (lambda ()
                  (if (gx#stx-pair? _%e127995128005%_)
                      (let ((_%e127998128013%_
                             (gx#syntax-e _%e127995128005%_)))
                        (let ((_%hd127999128016%_ (##car _%e127998128013%_))
                              (_%tl128000128018%_ (##cdr _%e127998128013%_)))
                          (if (gx#stx-pair? _%tl128000128018%_)
                              (let ((_%e128001128021%_
                                     (gx#syntax-e _%tl128000128018%_)))
                                (let ((_%hd128002128024%_
                                       (##car _%e128001128021%_))
                                      (_%tl128003128026%_
                                       (##cdr _%e128001128021%_)))
                                  (let* ((_%rator128029%_ _%hd128002128024%_)
                                         (_%args128031%_ _%tl128003128026%_))
                                    (if (gx#stx-list? _%args128031%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator128029%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args128031%_))
                                         (gx#stx-source _%stx127994%_))
                                        (_%E127997128009%_)))))
                              (_%E127997128009%_))))
                      (_%E127997128009%_)))))
          (_%E127996128033%_))))
    (define gx#core-expand-if%
      (lambda (_%stx127927%_)
        (let* ((_%e127928127944%_ _%stx127927%_)
               (_%E127930127948%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127928127944%_)))
               (_%E127929127990%_
                (lambda ()
                  (if (gx#stx-pair? _%e127928127944%_)
                      (let ((_%e127931127952%_
                             (gx#syntax-e _%e127928127944%_)))
                        (let ((_%hd127932127955%_ (##car _%e127931127952%_))
                              (_%tl127933127957%_ (##cdr _%e127931127952%_)))
                          (if (gx#stx-pair? _%tl127933127957%_)
                              (let ((_%e127934127960%_
                                     (gx#syntax-e _%tl127933127957%_)))
                                (let ((_%hd127935127963%_
                                       (##car _%e127934127960%_))
                                      (_%tl127936127965%_
                                       (##cdr _%e127934127960%_)))
                                  (let ((_%test127968%_ _%hd127935127963%_))
                                    (if (gx#stx-pair? _%tl127936127965%_)
                                        (let ((_%e127937127970%_
                                               (gx#syntax-e
                                                _%tl127936127965%_)))
                                          (let ((_%hd127938127973%_
                                                 (##car _%e127937127970%_))
                                                (_%tl127939127975%_
                                                 (##cdr _%e127937127970%_)))
                                            (let ((_%K127978%_
                                                   _%hd127938127973%_))
                                              (if (gx#stx-pair?
                                                   _%tl127939127975%_)
                                                  (let ((_%e127940127980%_
                                                         (gx#syntax-e
                                                          _%tl127939127975%_)))
                                                    (let ((_%hd127941127983%_
                                                           (##car _%e127940127980%_))
                                                          (_%tl127942127985%_
                                                           (##cdr _%e127940127980%_)))
                                                      (let ((_%E127988%_
                                                             _%hd127941127983%_))
                                                        (if (gx#stx-null?
                                                             _%tl127942127985%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test127968%_)
                                 (cons (gx#core-expand-expression _%K127978%_)
                                       (cons (gx#core-expand-expression
                                              _%E127988%_)
                                             '()))))
                     (gx#stx-source _%stx127927%_))
                    (_%E127930127948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127930127948%_)))))
                                        (_%E127930127948%_)))))
                              (_%E127930127948%_))))
                      (_%E127930127948%_)))))
          (_%E127929127990%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx127886%_)
        (let* ((_%e127887127897%_ _%stx127886%_)
               (_%E127889127901%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127887127897%_)))
               (_%E127888127923%_
                (lambda ()
                  (if (gx#stx-pair? _%e127887127897%_)
                      (let ((_%e127890127905%_
                             (gx#syntax-e _%e127887127897%_)))
                        (let ((_%hd127891127908%_ (##car _%e127890127905%_))
                              (_%tl127892127910%_ (##cdr _%e127890127905%_)))
                          (if (gx#stx-pair? _%tl127892127910%_)
                              (let ((_%e127893127913%_
                                     (gx#syntax-e _%tl127892127910%_)))
                                (let ((_%hd127894127916%_
                                       (##car _%e127893127913%_))
                                      (_%tl127895127918%_
                                       (##cdr _%e127893127913%_)))
                                  (let ((_%id127921%_ _%hd127894127916%_))
                                    (if (gx#stx-null? _%tl127895127918%_)
                                        (if (gx#identifier? _%id127921%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id127921%_
                                                          _%stx127886%_)
                                                         '()))
                                             (gx#stx-source _%stx127886%_))
                                            (_%E127889127901%_))
                                        (_%E127889127901%_)))))
                              (_%E127889127901%_))))
                      (_%E127889127901%_)))))
          (_%E127888127923%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx127832%_)
        (let* ((_%e127833127846%_ _%stx127832%_)
               (_%E127835127850%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127833127846%_)))
               (_%E127834127882%_
                (lambda ()
                  (if (gx#stx-pair? _%e127833127846%_)
                      (let ((_%e127836127854%_
                             (gx#syntax-e _%e127833127846%_)))
                        (let ((_%hd127837127857%_ (##car _%e127836127854%_))
                              (_%tl127838127859%_ (##cdr _%e127836127854%_)))
                          (if (gx#stx-pair? _%tl127838127859%_)
                              (let ((_%e127839127862%_
                                     (gx#syntax-e _%tl127838127859%_)))
                                (let ((_%hd127840127865%_
                                       (##car _%e127839127862%_))
                                      (_%tl127841127867%_
                                       (##cdr _%e127839127862%_)))
                                  (let ((_%id127870%_ _%hd127840127865%_))
                                    (if (gx#stx-pair? _%tl127841127867%_)
                                        (let ((_%e127842127872%_
                                               (gx#syntax-e
                                                _%tl127841127867%_)))
                                          (let ((_%hd127843127875%_
                                                 (##car _%e127842127872%_))
                                                (_%tl127844127877%_
                                                 (##cdr _%e127842127872%_)))
                                            (let ((_%expr127880%_
                                                   _%hd127843127875%_))
                                              (if (gx#stx-null?
                                                   _%tl127844127877%_)
                                                  (if (gx#identifier?
                                                       _%id127870%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id127870%_
                            _%stx127832%_)
                           (cons (gx#core-expand-expression _%expr127880%_)
                                 '())))
               (gx#stx-source _%stx127832%_))
              (_%E127835127850%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127835127850%_)))))
                                        (_%E127835127850%_)))))
                              (_%E127835127850%_))))
                      (_%E127835127850%_)))))
          (_%E127834127882%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx127677%_)
        (letrec ((_%generate127679%_
                  (lambda (_%body127709%_)
                    (let _%lp127711%_ ((_%rest127713%_ _%body127709%_)
                                       (_%ns127714%_
                                        (gx#core-context-namespace__0))
                                       (_%r127715%_ '()))
                      (let* ((_%e127716127731%_ _%rest127713%_)
                             (_%E127729127735%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e127716127731%_)))
                             (_%E127725127739%_
                              (lambda ()
                                (if (gx#stx-null? _%e127716127731%_)
                                    (reverse _%r127715%_)
                                    (_%E127729127735%_))))
                             (_%E127718127796%_
                              (lambda ()
                                (if (gx#stx-pair? _%e127716127731%_)
                                    (let ((_%e127726127743%_
                                           (gx#syntax-e _%e127716127731%_)))
                                      (let ((_%hd127727127746%_
                                             (##car _%e127726127743%_))
                                            (_%tl127728127748%_
                                             (##cdr _%e127726127743%_)))
                                        (let* ((_%hd127751%_
                                                _%hd127727127746%_)
                                               (_%rest127753%_
                                                _%tl127728127748%_))
                                          (if (gx#identifier? _%hd127751%_)
                                              (_%lp127711%_
                                               _%rest127753%_
                                               _%ns127714%_
                                               (cons (cons _%hd127751%_
                                                           (cons (if _%ns127714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd127751%_
                              _%ns127714%_
                              '"#"
                              _%hd127751%_)
                             _%hd127751%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r127715%_))
                                              (let* ((_%e127754127764%_
                                                      _%hd127751%_)
                                                     (_%E127756127768%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e127754127764%_)))
                                                     (_%E127755127792%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e127754127764%_)
                                                            (let ((_%e127757127772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e127754127764%_)))
                      (let ((_%hd127758127775%_ (##car _%e127757127772%_))
                            (_%tl127759127777%_ (##cdr _%e127757127772%_)))
                        (let ((_%id127780%_ _%hd127758127775%_))
                          (if (gx#stx-pair? _%tl127759127777%_)
                              (let ((_%e127760127782%_
                                     (gx#syntax-e _%tl127759127777%_)))
                                (let ((_%hd127761127785%_
                                       (##car _%e127760127782%_))
                                      (_%tl127762127787%_
                                       (##cdr _%e127760127782%_)))
                                  (let ((_%eid127790%_ _%hd127761127785%_))
                                    (if (gx#stx-null? _%tl127762127787%_)
                                        (if (and (gx#identifier? _%id127780%_)
                                                 (gx#identifier?
                                                  _%eid127790%_))
                                            (_%lp127711%_
                                             _%rest127753%_
                                             _%ns127714%_
                                             (cons (cons _%id127780%_
                                                         (cons _%eid127790%_
                                                               '()))
                                                   _%r127715%_))
                                            (_%E127756127768%_))
                                        (_%E127756127768%_)))))
                              (_%E127756127768%_)))))
                    (_%E127756127768%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E127755127792%_))))))
                                    (_%E127725127739%_))))
                             (_%E127717127828%_
                              (lambda ()
                                (if (gx#stx-pair? _%e127716127731%_)
                                    (let ((_%e127719127800%_
                                           (gx#syntax-e _%e127716127731%_)))
                                      (let ((_%hd127720127803%_
                                             (##car _%e127719127800%_))
                                            (_%tl127721127805%_
                                             (##cdr _%e127719127800%_)))
                                        (if (eq? (gx#stx-e _%hd127720127803%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl127721127805%_)
                                                (let ((_%e127722127808%_
                                                       (gx#syntax-e
                                                        _%tl127721127805%_)))
                                                  (let ((_%hd127723127811%_
                                                         (##car _%e127722127808%_))
                                                        (_%tl127724127813%_
                                                         (##cdr _%e127722127808%_)))
                                                    (let* ((_%ns127816%_
                                                            _%hd127723127811%_)
                                                           (_%rest127818%_
                                                            _%tl127724127813%_)
                                                           (_%ns127826%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns127816%_)
                        (symbol->string (gx#stx-e _%ns127816%_))
                        (if (or (gx#stx-string? _%ns127816%_)
                                (gx#stx-false? _%ns127816%_))
                            (gx#stx-e _%ns127816%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx127677%_
                             _%ns127816%_)))))
              (_%lp127711%_ _%rest127818%_ _%ns127826%_ _%r127715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E127718127796%_))
                                            (_%E127718127796%_))))
                                    (_%E127718127796%_)))))
                        (_%E127717127828%_))))))
          (let* ((_%e127680127687%_ _%stx127677%_)
                 (_%E127682127691%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127680127687%_)))
                 (_%E127681127705%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127680127687%_)
                        (let ((_%e127683127695%_
                               (gx#syntax-e _%e127680127687%_)))
                          (let ((_%hd127684127698%_ (##car _%e127683127695%_))
                                (_%tl127685127700%_ (##cdr _%e127683127695%_)))
                            (let ((_%body127703%_ _%tl127685127700%_))
                              (if (gx#stx-list? _%body127703%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate127679%_ _%body127703%_))
                                  (_%E127682127691%_)))))
                        (_%E127682127691%_)))))
            (_%E127681127705%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx127623%_)
        (let* ((_%e127624127637%_ _%stx127623%_)
               (_%E127626127641%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127624127637%_)))
               (_%E127625127673%_
                (lambda ()
                  (if (gx#stx-pair? _%e127624127637%_)
                      (let ((_%e127627127645%_
                             (gx#syntax-e _%e127624127637%_)))
                        (let ((_%hd127628127648%_ (##car _%e127627127645%_))
                              (_%tl127629127650%_ (##cdr _%e127627127645%_)))
                          (if (gx#stx-pair? _%tl127629127650%_)
                              (let ((_%e127630127653%_
                                     (gx#syntax-e _%tl127629127650%_)))
                                (let ((_%hd127631127656%_
                                       (##car _%e127630127653%_))
                                      (_%tl127632127658%_
                                       (##cdr _%e127630127653%_)))
                                  (let ((_%hd127661%_ _%hd127631127656%_))
                                    (if (gx#stx-pair? _%tl127632127658%_)
                                        (let ((_%e127633127663%_
                                               (gx#syntax-e
                                                _%tl127632127658%_)))
                                          (let ((_%hd127634127666%_
                                                 (##car _%e127633127663%_))
                                                (_%tl127635127668%_
                                                 (##cdr _%e127633127663%_)))
                                            (let ((_%expr127671%_
                                                   _%hd127634127666%_))
                                              (if (gx#stx-null?
                                                   _%tl127635127668%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd127661%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd127661%_)
                          (cons _%expr127671%_ '())))
              (_%E127626127641%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127626127641%_)))))
                                        (_%E127626127641%_)))))
                              (_%E127626127641%_))))
                      (_%E127626127641%_)))))
          (_%E127625127673%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx127569%_)
        (let* ((_%e127570127583%_ _%stx127569%_)
               (_%E127572127587%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127570127583%_)))
               (_%E127571127619%_
                (lambda ()
                  (if (gx#stx-pair? _%e127570127583%_)
                      (let ((_%e127573127591%_
                             (gx#syntax-e _%e127570127583%_)))
                        (let ((_%hd127574127594%_ (##car _%e127573127591%_))
                              (_%tl127575127596%_ (##cdr _%e127573127591%_)))
                          (if (gx#stx-pair? _%tl127575127596%_)
                              (let ((_%e127576127599%_
                                     (gx#syntax-e _%tl127575127596%_)))
                                (let ((_%hd127577127602%_
                                       (##car _%e127576127599%_))
                                      (_%tl127578127604%_
                                       (##cdr _%e127576127599%_)))
                                  (let ((_%hd127607%_ _%hd127577127602%_))
                                    (if (gx#stx-pair? _%tl127578127604%_)
                                        (let ((_%e127579127609%_
                                               (gx#syntax-e
                                                _%tl127578127604%_)))
                                          (let ((_%hd127580127612%_
                                                 (##car _%e127579127609%_))
                                                (_%tl127581127614%_
                                                 (##cdr _%e127579127609%_)))
                                            (let ((_%expr127617%_
                                                   _%hd127580127612%_))
                                              (if (gx#stx-null?
                                                   _%tl127581127614%_)
                                                  (if (gx#identifier?
                                                       _%hd127607%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd127607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr127617%_ '())))
              (_%E127572127587%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127572127587%_)))))
                                        (_%E127572127587%_)))))
                              (_%E127572127587%_))))
                      (_%E127572127587%_)))))
          (_%E127571127619%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx127515%_)
        (let* ((_%e127516127529%_ _%stx127515%_)
               (_%E127518127533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127516127529%_)))
               (_%E127517127565%_
                (lambda ()
                  (if (gx#stx-pair? _%e127516127529%_)
                      (let ((_%e127519127537%_
                             (gx#syntax-e _%e127516127529%_)))
                        (let ((_%hd127520127540%_ (##car _%e127519127537%_))
                              (_%tl127521127542%_ (##cdr _%e127519127537%_)))
                          (if (gx#stx-pair? _%tl127521127542%_)
                              (let ((_%e127522127545%_
                                     (gx#syntax-e _%tl127521127542%_)))
                                (let ((_%hd127523127548%_
                                       (##car _%e127522127545%_))
                                      (_%tl127524127550%_
                                       (##cdr _%e127522127545%_)))
                                  (let ((_%id127553%_ _%hd127523127548%_))
                                    (if (gx#stx-pair? _%tl127524127550%_)
                                        (let ((_%e127525127555%_
                                               (gx#syntax-e
                                                _%tl127524127550%_)))
                                          (let ((_%hd127526127558%_
                                                 (##car _%e127525127555%_))
                                                (_%tl127527127560%_
                                                 (##cdr _%e127525127555%_)))
                                            (let ((_%alias-id127563%_
                                                   _%hd127526127558%_))
                                              (if (gx#stx-null?
                                                   _%tl127527127560%_)
                                                  (if (and (gx#identifier?
                                                            _%id127553%_)
                                                           (gx#identifier?
                                                            _%alias-id127563%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id127553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id127563%_ '())))
              (_%E127518127533%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127518127533%_)))))
                                        (_%E127518127533%_)))))
                              (_%E127518127533%_))))
                      (_%E127518127533%_)))))
          (_%E127517127565%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx127472%_)
        (let* ((_%e127473127483%_ _%stx127472%_)
               (_%E127475127487%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127473127483%_)))
               (_%E127474127511%_
                (lambda ()
                  (if (gx#stx-pair? _%e127473127483%_)
                      (let ((_%e127476127491%_
                             (gx#syntax-e _%e127473127483%_)))
                        (let ((_%hd127477127494%_ (##car _%e127476127491%_))
                              (_%tl127478127496%_ (##cdr _%e127476127491%_)))
                          (if (gx#stx-pair? _%tl127478127496%_)
                              (let ((_%e127479127499%_
                                     (gx#syntax-e _%tl127478127496%_)))
                                (let ((_%hd127480127502%_
                                       (##car _%e127479127499%_))
                                      (_%tl127481127504%_
                                       (##cdr _%e127479127499%_)))
                                  (let* ((_%hd127507%_ _%hd127480127502%_)
                                         (_%body127509%_ _%tl127481127504%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd127507%_)
                                             (gx#stx-list? _%body127509%_)
                                             (not (gx#stx-null?
                                                   _%body127509%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd127507%_)
                                         _%body127509%_)
                                        (_%E127475127487%_)))))
                              (_%E127475127487%_))))
                      (_%E127475127487%_)))))
          (_%E127474127511%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx127408%_)
        (letrec ((_%generate127410%_
                  (lambda (_%clause127440%_)
                    (let* ((_%e127441127448%_ _%clause127440%_)
                           (_%E127443127452%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx127408%_
                               _%clause127440%_)))
                           (_%E127442127468%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127441127448%_)
                                  (let ((_%e127444127456%_
                                         (gx#syntax-e _%e127441127448%_)))
                                    (let ((_%hd127445127459%_
                                           (##car _%e127444127456%_))
                                          (_%tl127446127461%_
                                           (##cdr _%e127444127456%_)))
                                      (let* ((_%hd127464%_ _%hd127445127459%_)
                                             (_%body127466%_
                                              _%tl127446127461%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd127464%_)
                                                 (gx#stx-list? _%body127466%_)
                                                 (not (gx#stx-null?
                                                       _%body127466%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd127464%_)
                                                   _%body127466%_)
                                             (gx#stx-source _%clause127440%_))
                                            (_%E127443127452%_)))))
                                  (_%E127443127452%_)))))
                      (_%E127442127468%_)))))
          (let* ((_%e127411127418%_ _%stx127408%_)
                 (_%E127413127422%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127411127418%_)))
                 (_%E127412127436%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127411127418%_)
                        (let ((_%e127414127426%_
                               (gx#syntax-e _%e127411127418%_)))
                          (let ((_%hd127415127429%_ (##car _%e127414127426%_))
                                (_%tl127416127431%_ (##cdr _%e127414127426%_)))
                            (let ((_%clauses127434%_ _%tl127416127431%_))
                              (if (gx#stx-list? _%clauses127434%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate127410%_
                                    _%clauses127434%_))
                                  (_%E127413127422%_)))))
                        (_%E127413127422%_)))))
            (_%E127412127436%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx127309%_ _%form127310%_)
        (letrec ((_%generate127312%_
                  (lambda (_%bind127355%_)
                    (let* ((_%e127356127366%_ _%bind127355%_)
                           (_%E127358127370%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx127309%_
                               _%bind127355%_)))
                           (_%E127357127394%_
                            (lambda ()
                              (if (gx#stx-pair? _%e127356127366%_)
                                  (let ((_%e127359127374%_
                                         (gx#syntax-e _%e127356127366%_)))
                                    (let ((_%hd127360127377%_
                                           (##car _%e127359127374%_))
                                          (_%tl127361127379%_
                                           (##cdr _%e127359127374%_)))
                                      (let ((_%ids127382%_ _%hd127360127377%_))
                                        (if (gx#stx-pair? _%tl127361127379%_)
                                            (let ((_%e127362127384%_
                                                   (gx#syntax-e
                                                    _%tl127361127379%_)))
                                              (let ((_%hd127363127387%_
                                                     (##car _%e127362127384%_))
                                                    (_%tl127364127389%_
                                                     (##cdr _%e127362127384%_)))
                                                (let ((_%expr127392%_
                                                       _%hd127363127387%_))
                                                  (if (gx#stx-null?
                                                       _%tl127364127389%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids127382%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids127382%_)
                        (cons _%expr127392%_ '()))
                  (_%E127358127370%_))
              (_%E127358127370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E127358127370%_)))))
                                  (_%E127358127370%_)))))
                      (_%E127357127394%_)))))
          (let* ((_%e127313127323%_ _%stx127309%_)
                 (_%E127315127327%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e127313127323%_)))
                 (_%E127314127351%_
                  (lambda ()
                    (if (gx#stx-pair? _%e127313127323%_)
                        (let ((_%e127316127331%_
                               (gx#syntax-e _%e127313127323%_)))
                          (let ((_%hd127317127334%_ (##car _%e127316127331%_))
                                (_%tl127318127336%_ (##cdr _%e127316127331%_)))
                            (if (gx#stx-pair? _%tl127318127336%_)
                                (let ((_%e127319127339%_
                                       (gx#syntax-e _%tl127318127336%_)))
                                  (let ((_%hd127320127342%_
                                         (##car _%e127319127339%_))
                                        (_%tl127321127344%_
                                         (##cdr _%e127319127339%_)))
                                    (let* ((_%hd127347%_ _%hd127320127342%_)
                                           (_%body127349%_ _%tl127321127344%_))
                                      (if (and (gx#stx-list? _%hd127347%_)
                                               (gx#stx-list? _%body127349%_)
                                               (not (gx#stx-null?
                                                     _%body127349%_)))
                                          (gx#core-cons*
                                           _%form127310%_
                                           (gx#stx-map1
                                            _%generate127312%_
                                            _%hd127347%_)
                                           _%body127349%_)
                                          (_%E127315127327%_)))))
                                (_%E127315127327%_))))
                        (_%E127315127327%_)))))
            (_%E127314127351%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx127401%_)
        (let ((_%form127403%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx127401%_ _%form127403%_))))
    (define gx#macro-expand-let-values
      (lambda _g129789_
        (let ((_g129790_ (##length _g129789_)))
          (cond ((##fx= _g129790_ 1)
                 (apply gx#macro-expand-let-values__0 _g129789_))
                ((##fx= _g129790_ 2)
                 (apply gx#macro-expand-let-values__% _g129789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g129789_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx127306%_)
        (gx#macro-expand-let-values__% _%stx127306%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx127304%_)
        (gx#macro-expand-let-values__% _%stx127304%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx127195%_)
        (let* ((_%e127196127222%_ _%stx127195%_)
               (_%E127208127226%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127196127222%_)))
               (_%E127198127268%_
                (lambda ()
                  (if (gx#stx-pair? _%e127196127222%_)
                      (let ((_%e127209127230%_
                             (gx#syntax-e _%e127196127222%_)))
                        (let ((_%hd127210127233%_ (##car _%e127209127230%_))
                              (_%tl127211127235%_ (##cdr _%e127209127230%_)))
                          (if (gx#stx-pair? _%tl127211127235%_)
                              (let ((_%e127212127238%_
                                     (gx#syntax-e _%tl127211127235%_)))
                                (let ((_%hd127213127241%_
                                       (##car _%e127212127238%_))
                                      (_%tl127214127243%_
                                       (##cdr _%e127212127238%_)))
                                  (let ((_%test127246%_ _%hd127213127241%_))
                                    (if (gx#stx-pair? _%tl127214127243%_)
                                        (let ((_%e127215127248%_
                                               (gx#syntax-e
                                                _%tl127214127243%_)))
                                          (let ((_%hd127216127251%_
                                                 (##car _%e127215127248%_))
                                                (_%tl127217127253%_
                                                 (##cdr _%e127215127248%_)))
                                            (let ((_%K127256%_
                                                   _%hd127216127251%_))
                                              (if (gx#stx-pair?
                                                   _%tl127217127253%_)
                                                  (let ((_%e127218127258%_
                                                         (gx#syntax-e
                                                          _%tl127217127253%_)))
                                                    (let ((_%hd127219127261%_
                                                           (##car _%e127218127258%_))
                                                          (_%tl127220127263%_
                                                           (##cdr _%e127218127258%_)))
                                                      (let ((_%E127266%_
                                                             _%hd127219127261%_))
                                                        (if (gx#stx-null?
                                                             _%tl127220127263%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test127246%_
                                                             _%K127256%_
                                                             _%E127266%_)
                                                            (_%E127208127226%_)))))
                                                  (_%E127208127226%_)))))
                                        (_%E127208127226%_)))))
                              (_%E127208127226%_))))
                      (_%E127208127226%_))))
               (_%E127197127300%_
                (lambda ()
                  (if (gx#stx-pair? _%e127196127222%_)
                      (let ((_%e127199127272%_
                             (gx#syntax-e _%e127196127222%_)))
                        (let ((_%hd127200127275%_ (##car _%e127199127272%_))
                              (_%tl127201127277%_ (##cdr _%e127199127272%_)))
                          (if (gx#stx-pair? _%tl127201127277%_)
                              (let ((_%e127202127280%_
                                     (gx#syntax-e _%tl127201127277%_)))
                                (let ((_%hd127203127283%_
                                       (##car _%e127202127280%_))
                                      (_%tl127204127285%_
                                       (##cdr _%e127202127280%_)))
                                  (let ((_%test127288%_ _%hd127203127283%_))
                                    (if (gx#stx-pair? _%tl127204127285%_)
                                        (let ((_%e127205127290%_
                                               (gx#syntax-e
                                                _%tl127204127285%_)))
                                          (let ((_%hd127206127293%_
                                                 (##car _%e127205127290%_))
                                                (_%tl127207127295%_
                                                 (##cdr _%e127205127290%_)))
                                            (let ((_%K127298%_
                                                   _%hd127206127293%_))
                                              (if (gx#stx-null?
                                                   _%tl127207127295%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test127288%_
                                                   _%K127298%_
                                                   '#!void)
                                                  (_%E127198127268%_)))))
                                        (_%E127198127268%_)))))
                              (_%E127198127268%_))))
                      (_%E127198127268%_)))))
          (_%E127197127300%_))))
    (define gx#free-identifier=?
      (lambda (_%xid127180%_ _%yid127181%_)
        (let ((_%xe127183%_ (gx#resolve-identifier__0 _%xid127180%_))
              (_%ye127184%_ (gx#resolve-identifier__0 _%yid127181%_)))
          (if (and _%xe127183%_ _%ye127184%_)
              (let ((_%$e127187%_ (eq? _%xe127183%_ _%ye127184%_)))
                (if _%$e127187%_
                    _%$e127187%_
                    (if (##structure-instance-of? _%xe127183%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye127184%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe127183%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye127184%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe127183%_ _%ye127184%_)
                  '#f
                  (gx#stx-eq? _%xid127180%_ _%yid127181%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid127161%_ _%yid127162%_)
        (letrec ((_%context127164%_
                  (lambda (_%e127178%_)
                    (if (##structure-direct-instance-of?
                         _%e127178%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e127178%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks127165%_
                  (lambda (_%e127173%_)
                    (if (symbol? _%e127173%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e127173%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e127173%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e127173%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap127166%_
                  (lambda (_%e127171%_)
                    (if (symbol? _%e127171%_)
                        _%e127171%_
                        (gx#syntax-local-unwrap _%e127171%_)))))
          (let ((_%x127168%_ (_%unwrap127166%_ _%xid127161%_))
                (_%y127169%_ (_%unwrap127166%_ _%yid127162%_)))
            (if (gx#stx-eq? _%x127168%_ _%y127169%_)
                (if (eq? (_%context127164%_ _%x127168%_)
                         (_%context127164%_ _%y127169%_))
                    (equal? (_%marks127165%_ _%x127168%_)
                            (_%marks127165%_ _%y127169%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx127159%_)
        (if (gx#identifier? _%stx127159%_)
            (gx#core-identifier=? _%stx127159%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx127157%_)
        (if (gx#identifier? _%stx127157%_)
            (gx#core-identifier=? _%stx127157%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx127100%_ _%where127101%_)
        (let _%lp127103%_ ((_%rest127105%_ (gx#syntax->list _%stx127100%_)))
          (let* ((_%rest127106127114%_ _%rest127105%_)
                 (_%else127108127122%_ (lambda () '#t))
                 (_%K127110127135%_
                  (lambda (_%rest127125%_ _%hd127126%_)
                    (if (gx#identifier? _%hd127126%_)
                        (if (__find (lambda (_%g127128127130%_)
                                      (gx#bound-identifier=?
                                       _%g127128127130%_
                                       _%hd127126%_))
                                    _%rest127125%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where127101%_
                             _%hd127126%_)
                            (_%lp127103%_ _%rest127125%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where127101%_
                         _%hd127126%_)))))
            (if (pair? _%rest127106127114%_)
                (let ((_%hd127111127138%_ (##car _%rest127106127114%_))
                      (_%tl127112127140%_ (##cdr _%rest127106127114%_)))
                  (let* ((_%hd127143%_ _%hd127111127138%_)
                         (_%rest127145%_ _%tl127112127140%_))
                    (_%K127110127135%_ _%rest127145%_ _%hd127143%_)))
                (_%else127108127122%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx127150%_)
        (let ((_%where127152%_ _%stx127150%_))
          (gx#check-duplicate-identifiers__% _%stx127150%_ _%where127152%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g129791_
        (let ((_g129792_ (##length _g129791_)))
          (cond ((##fx= _g129792_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g129791_))
                ((##fx= _g129792_ 2)
                 (apply gx#check-duplicate-identifiers__% _g129791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g129791_))))))
    (define gx#core-bind-values?
      (lambda (_%stx127092%_)
        (gx#stx-andmap
         (lambda (_%x127094%_)
           (let ((_%$e127096%_ (gx#identifier? _%x127094%_)))
             (if _%$e127096%_ _%$e127096%_ (gx#stx-false? _%x127094%_))))
         _%stx127092%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx127056%_ _%rebind?127057%_ _%phi127058%_ _%ctx127059%_)
        (gx#stx-for-each1
         (lambda (_%id127061%_)
           (if (gx#identifier? _%id127061%_)
               (gx#core-bind-runtime!__%
                _%id127061%_
                _%rebind?127057%_
                _%phi127058%_
                _%ctx127059%_)
               '#!void))
         _%stx127056%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx127066%_)
        (let* ((_%rebind?127068%_ '#f)
               (_%phi127070%_ (gx#current-expander-phi))
               (_%ctx127072%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx127066%_
           _%rebind?127068%_
           _%phi127070%_
           _%ctx127072%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx127074%_ _%rebind?127075%_)
        (let* ((_%phi127077%_ (gx#current-expander-phi))
               (_%ctx127079%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx127074%_
           _%rebind?127075%_
           _%phi127077%_
           _%ctx127079%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx127081%_ _%rebind?127082%_ _%phi127083%_)
        (let ((_%ctx127085%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx127081%_
           _%rebind?127082%_
           _%phi127083%_
           _%ctx127085%_))))
    (define gx#core-bind-values!
      (lambda _g129793_
        (let ((_g129794_ (##length _g129793_)))
          (cond ((##fx= _g129794_ 1) (apply gx#core-bind-values!__0 _g129793_))
                ((##fx= _g129794_ 2) (apply gx#core-bind-values!__1 _g129793_))
                ((##fx= _g129794_ 3) (apply gx#core-bind-values!__2 _g129793_))
                ((##fx= _g129794_ 4) (apply gx#core-bind-values!__% _g129793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g129793_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx127051%_)
        (gx#stx-map1
         (lambda (_%x127053%_)
           (if (gx#identifier? _%x127053%_)
               (gx#core-quote-syntax__0 _%x127053%_)
               '#f))
         _%stx127051%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx127044%_)
        (if (gx#identifier? _%stx127044%_)
            (let* ((_%bind127046%_ (gx#resolve-identifier__0 _%stx127044%_))
                   (_%$e127048%_ (not _%bind127046%_)))
              (if _%$e127048%_
                  _%$e127048%_
                  (##structure-instance-of?
                   _%bind127046%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id127033%_ _%form127034%_)
        (let ((_%bind127036%_ (gx#resolve-identifier__0 _%id127033%_)))
          (if (##structure-instance-of? _%bind127036%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id127033%_)
              (if (not _%bind127036%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id127033%_)))
                      (gx#core-quote-syntax__0 _%id127033%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form127034%_
                       _%id127033%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form127034%_
                   _%id127033%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id126988%_ _%rebind?126989%_ _%phi126990%_ _%ctx126991%_)
        (let* ((_%key126993%_ (gx#core-identifier-key _%id126988%_))
               (_%eid126995%_
                (gx#make-binding-id__%
                 _%key126993%_
                 '#f
                 _%phi126990%_
                 _%ctx126991%_))
               (_%bind127001%_
                (if (##structure-instance-of?
                     _%ctx126991%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid126995%_
                     _%key126993%_
                     _%phi126990%_
                     _%ctx126991%_)
                    (if (##structure-instance-of?
                         _%ctx126991%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid126995%_
                         _%key126993%_
                         _%phi126990%_)
                        (if (##structure-instance-of?
                             _%ctx126991%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid126995%_
                             _%key126993%_
                             _%phi126990%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid126995%_
                             _%key126993%_
                             _%phi126990%_))))))
          (gx#bind-identifier!__%
           _%id126988%_
           _%bind127001%_
           _%rebind?126989%_
           _%phi126990%_
           _%ctx126991%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id127007%_)
        (let* ((_%rebind?127009%_ '#f)
               (_%phi127011%_ (gx#current-expander-phi))
               (_%ctx127013%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id127007%_
           _%rebind?127009%_
           _%phi127011%_
           _%ctx127013%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id127015%_ _%rebind?127016%_)
        (let* ((_%phi127018%_ (gx#current-expander-phi))
               (_%ctx127020%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id127015%_
           _%rebind?127016%_
           _%phi127018%_
           _%ctx127020%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id127022%_ _%rebind?127023%_ _%phi127024%_)
        (let ((_%ctx127026%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id127022%_
           _%rebind?127023%_
           _%phi127024%_
           _%ctx127026%_))))
    (define gx#core-bind-runtime!
      (lambda _g129795_
        (let ((_g129796_ (##length _g129795_)))
          (cond ((##fx= _g129796_ 1)
                 (apply gx#core-bind-runtime!__0 _g129795_))
                ((##fx= _g129796_ 2)
                 (apply gx#core-bind-runtime!__1 _g129795_))
                ((##fx= _g129796_ 3)
                 (apply gx#core-bind-runtime!__2 _g129795_))
                ((##fx= _g129796_ 4)
                 (apply gx#core-bind-runtime!__% _g129795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g129795_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id126940%_
               _%eid126941%_
               _%rebind?126942%_
               _%phi126943%_
               _%ctx126944%_)
        (let* ((_%key126946%_ (gx#core-identifier-key _%id126940%_))
               (_%bind126951%_
                (if (##structure-instance-of?
                     _%ctx126944%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid126941%_
                     _%key126946%_
                     _%phi126943%_
                     _%ctx126944%_)
                    (if (##structure-instance-of?
                         _%ctx126944%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid126941%_
                         _%key126946%_
                         _%phi126943%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid126941%_
                         _%key126946%_
                         _%phi126943%_)))))
          (gx#bind-identifier!__%
           _%id126940%_
           _%bind126951%_
           _%rebind?126942%_
           _%phi126943%_
           _%ctx126944%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id126957%_ _%eid126958%_)
        (let* ((_%rebind?126960%_ '#f)
               (_%phi126962%_ (gx#current-expander-phi))
               (_%ctx126964%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id126957%_
           _%eid126958%_
           _%rebind?126960%_
           _%phi126962%_
           _%ctx126964%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id126966%_ _%eid126967%_ _%rebind?126968%_)
        (let* ((_%phi126970%_ (gx#current-expander-phi))
               (_%ctx126972%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id126966%_
           _%eid126967%_
           _%rebind?126968%_
           _%phi126970%_
           _%ctx126972%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id126974%_ _%eid126975%_ _%rebind?126976%_ _%phi126977%_)
        (let ((_%ctx126979%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id126974%_
           _%eid126975%_
           _%rebind?126976%_
           _%phi126977%_
           _%ctx126979%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g129797_
        (let ((_g129798_ (##length _g129797_)))
          (cond ((##fx= _g129798_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g129797_))
                ((##fx= _g129798_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g129797_))
                ((##fx= _g129798_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g129797_))
                ((##fx= _g129798_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g129797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g129797_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id126900%_
               _%eid126901%_
               _%rebind?126902%_
               _%phi126903%_
               _%ctx126904%_)
        (gx#bind-identifier!__%
         _%id126900%_
         (##structure
          gx#extern-binding::t
          _%eid126901%_
          (gx#core-identifier-key _%id126900%_)
          _%phi126903%_)
         _%rebind?126902%_
         _%phi126903%_
         _%ctx126904%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id126909%_ _%eid126910%_)
        (let* ((_%rebind?126912%_ '#f)
               (_%phi126914%_ (gx#current-expander-phi))
               (_%ctx126916%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id126909%_
           _%eid126910%_
           _%rebind?126912%_
           _%phi126914%_
           _%ctx126916%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id126918%_ _%eid126919%_ _%rebind?126920%_)
        (let* ((_%phi126922%_ (gx#current-expander-phi))
               (_%ctx126924%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id126918%_
           _%eid126919%_
           _%rebind?126920%_
           _%phi126922%_
           _%ctx126924%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id126926%_ _%eid126927%_ _%rebind?126928%_ _%phi126929%_)
        (let ((_%ctx126931%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id126926%_
           _%eid126927%_
           _%rebind?126928%_
           _%phi126929%_
           _%ctx126931%_))))
    (define gx#core-bind-extern!
      (lambda _g129799_
        (let ((_g129800_ (##length _g129799_)))
          (cond ((##fx= _g129800_ 2) (apply gx#core-bind-extern!__0 _g129799_))
                ((##fx= _g129800_ 3) (apply gx#core-bind-extern!__1 _g129799_))
                ((##fx= _g129800_ 4) (apply gx#core-bind-extern!__2 _g129799_))
                ((##fx= _g129800_ 5) (apply gx#core-bind-extern!__% _g129799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g129799_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id126854%_
               _%e126855%_
               _%rebind?126856%_
               _%phi126857%_
               _%ctx126858%_)
        (gx#bind-identifier!__%
         _%id126854%_
         (let ((_%key126863%_ (gx#core-identifier-key _%id126854%_))
               (_%e126864%_
                (if (or (##structure-instance-of? _%e126855%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e126855%_
                         'gx#expander-context::t))
                    _%e126855%_
                    (##structure
                     gx#user-expander::t
                     _%e126855%_
                     _%ctx126858%_
                     _%phi126857%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key126863%_
             '#t
             _%phi126857%_
             _%ctx126858%_)
            _%key126863%_
            _%phi126857%_
            _%e126864%_))
         _%rebind?126856%_
         _%phi126857%_
         _%ctx126858%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id126869%_ _%e126870%_)
        (let* ((_%rebind?126872%_ '#f)
               (_%phi126874%_ (gx#current-expander-phi))
               (_%ctx126876%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id126869%_
           _%e126870%_
           _%rebind?126872%_
           _%phi126874%_
           _%ctx126876%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id126878%_ _%e126879%_ _%rebind?126880%_)
        (let* ((_%phi126882%_ (gx#current-expander-phi))
               (_%ctx126884%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id126878%_
           _%e126879%_
           _%rebind?126880%_
           _%phi126882%_
           _%ctx126884%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id126886%_ _%e126887%_ _%rebind?126888%_ _%phi126889%_)
        (let ((_%ctx126891%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id126886%_
           _%e126887%_
           _%rebind?126888%_
           _%phi126889%_
           _%ctx126891%_))))
    (define gx#core-bind-syntax!
      (lambda _g129801_
        (let ((_g129802_ (##length _g129801_)))
          (cond ((##fx= _g129802_ 2) (apply gx#core-bind-syntax!__0 _g129801_))
                ((##fx= _g129802_ 3) (apply gx#core-bind-syntax!__1 _g129801_))
                ((##fx= _g129802_ 4) (apply gx#core-bind-syntax!__2 _g129801_))
                ((##fx= _g129802_ 5) (apply gx#core-bind-syntax!__% _g129801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g129801_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id126837%_ _%e126838%_ _%rebind?126839%_)
        (gx#core-bind-syntax!__%
         _%id126837%_
         _%e126838%_
         _%rebind?126839%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id126844%_ _%e126845%_)
        (let ((_%rebind?126847%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id126844%_
           _%e126845%_
           _%rebind?126847%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g129803_
        (let ((_g129804_ (##length _g129803_)))
          (cond ((##fx= _g129804_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g129803_))
                ((##fx= _g129804_ 3)
                 (apply gx#core-bind-root-syntax!__% _g129803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g129803_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id126795%_
               _%alias-id126796%_
               _%rebind?126797%_
               _%phi126798%_
               _%ctx126799%_)
        (gx#bind-identifier!__%
         _%id126795%_
         (let ((_%key126801%_ (gx#core-identifier-key _%id126795%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key126801%_
             '#t
             _%phi126798%_
             _%ctx126799%_)
            _%key126801%_
            _%phi126798%_
            _%alias-id126796%_))
         _%rebind?126797%_
         _%phi126798%_
         _%ctx126799%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id126806%_ _%alias-id126807%_)
        (let* ((_%rebind?126809%_ '#f)
               (_%phi126811%_ (gx#current-expander-phi))
               (_%ctx126813%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id126806%_
           _%alias-id126807%_
           _%rebind?126809%_
           _%phi126811%_
           _%ctx126813%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id126815%_ _%alias-id126816%_ _%rebind?126817%_)
        (let* ((_%phi126819%_ (gx#current-expander-phi))
               (_%ctx126821%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id126815%_
           _%alias-id126816%_
           _%rebind?126817%_
           _%phi126819%_
           _%ctx126821%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id126823%_ _%alias-id126824%_ _%rebind?126825%_ _%phi126826%_)
        (let ((_%ctx126828%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id126823%_
           _%alias-id126824%_
           _%rebind?126825%_
           _%phi126826%_
           _%ctx126828%_))))
    (define gx#core-bind-alias!
      (lambda _g129805_
        (let ((_g129806_ (##length _g129805_)))
          (cond ((##fx= _g129806_ 2) (apply gx#core-bind-alias!__0 _g129805_))
                ((##fx= _g129806_ 3) (apply gx#core-bind-alias!__1 _g129805_))
                ((##fx= _g129806_ 4) (apply gx#core-bind-alias!__2 _g129805_))
                ((##fx= _g129806_ 5) (apply gx#core-bind-alias!__% _g129805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g129805_))))))
    (define gx#make-binding-id__%
      (lambda (_%key126745%_ _%syntax?126746%_ _%phi126747%_ _%ctx126748%_)
        (if (uninterned-symbol? _%key126745%_)
            (##gensym 'L)
            (if (pair? _%key126745%_)
                (gensym (##car _%key126745%_))
                (if (##structure-instance-of? _%ctx126748%_ 'gx#top-context::t)
                    (let ((_%ns126753%_
                           (gx#core-context-namespace__% _%ctx126748%_)))
                      (if (and (fxzero? _%phi126747%_) (not _%syntax?126746%_))
                          (if _%ns126753%_
                              (make-symbol__1 _%ns126753%_ '"#" _%key126745%_)
                              _%key126745%_)
                          (if _%syntax?126746%_
                              (make-symbol__1
                               (let ((_%$e126757%_ _%ns126753%_))
                                 (if _%$e126757%_ _%$e126757%_ '""))
                               '"[:"
                               (number->string _%phi126747%_)
                               '":]#"
                               _%key126745%_)
                              (make-symbol__1
                               (let ((_%$e126761%_ _%ns126753%_))
                                 (if _%$e126761%_ _%$e126761%_ '""))
                               '"["
                               (number->string _%phi126747%_)
                               '"]#"
                               _%key126745%_))))
                    (gensym _%key126745%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key126768%_)
        (let* ((_%syntax?126770%_ '#f)
               (_%phi126772%_ (gx#current-expander-phi))
               (_%ctx126774%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key126768%_
           _%syntax?126770%_
           _%phi126772%_
           _%ctx126774%_))))
    (define gx#make-binding-id__1
      (lambda (_%key126776%_ _%syntax?126777%_)
        (let* ((_%phi126779%_ (gx#current-expander-phi))
               (_%ctx126781%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key126776%_
           _%syntax?126777%_
           _%phi126779%_
           _%ctx126781%_))))
    (define gx#make-binding-id__2
      (lambda (_%key126783%_ _%syntax?126784%_ _%phi126785%_)
        (let ((_%ctx126787%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key126783%_
           _%syntax?126784%_
           _%phi126785%_
           _%ctx126787%_))))
    (define gx#make-binding-id
      (lambda _g129807_
        (let ((_g129808_ (##length _g129807_)))
          (cond ((##fx= _g129808_ 1) (apply gx#make-binding-id__0 _g129807_))
                ((##fx= _g129808_ 2) (apply gx#make-binding-id__1 _g129807_))
                ((##fx= _g129808_ 3) (apply gx#make-binding-id__2 _g129807_))
                ((##fx= _g129808_ 4) (apply gx#make-binding-id__% _g129807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g129807_))))))))
