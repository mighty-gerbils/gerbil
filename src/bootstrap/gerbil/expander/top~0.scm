(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712251112)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx122101%_)
        (letrec ((_%expand-special122103%_
                  (lambda (_%hd122105%_ _%K122106%_ _%rest122107%_ _%r122108%_)
                    (_%K122106%_
                     _%rest122107%_
                     (cons (gx#core-expand-top _%hd122105%_) _%r122108%_)))))
          (gx#core-expand-block__0 _%stx122101%_ _%expand-special122103%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121854%_)
        (letrec ((_%expand-special121856%_
                  (lambda (_%hd121976%_ _%K121977%_ _%rest121978%_ _%r121979%_)
                    (let* ((_%K121983%_
                            (lambda (_%e121981%_)
                              (_%K121977%_
                               _%rest121978%_
                               (cons _%e121981%_ _%r121979%_))))
                           (_%e121984122013%_ _%hd121976%_)
                           (_%E122008122017%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121984122013%_)))
                           (_%E122004122029%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121984122013%_)
                                  (let ((_%e122009122021%_
                                         (gx#syntax-e _%e121984122013%_)))
                                    (let ((_%hd122010122024%_
                                           (##car _%e122009122021%_))
                                          (_%tl122011122026%_
                                           (##cdr _%e122009122021%_)))
                                      (if (and (gx#identifier?
                                                _%hd122010122024%_)
                                               (gx#core-identifier=?
                                                _%hd122010122024%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121983%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121976%_))
                                              (_%E122008122017%_))
                                          (_%E122008122017%_))))
                                  (_%E122008122017%_))))
                           (_%E122000122041%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121984122013%_)
                                  (let ((_%e122005122033%_
                                         (gx#syntax-e _%e121984122013%_)))
                                    (let ((_%hd122006122036%_
                                           (##car _%e122005122033%_))
                                          (_%tl122007122038%_
                                           (##cdr _%e122005122033%_)))
                                      (if (and (gx#identifier?
                                                _%hd122006122036%_)
                                               (gx#core-identifier=?
                                                _%hd122006122036%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121983%_
                                               (gx#core-expand-define-alias%
                                                _%hd121976%_))
                                              (_%E122004122029%_))
                                          (_%E122004122029%_))))
                                  (_%E122004122029%_))))
                           (_%E121990122053%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121984122013%_)
                                  (let ((_%e122001122045%_
                                         (gx#syntax-e _%e121984122013%_)))
                                    (let ((_%hd122002122048%_
                                           (##car _%e122001122045%_))
                                          (_%tl122003122050%_
                                           (##cdr _%e122001122045%_)))
                                      (if (and (gx#identifier?
                                                _%hd122002122048%_)
                                               (gx#core-identifier=?
                                                _%hd122002122048%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121983%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121976%_))
                                              (_%E122000122041%_))
                                          (_%E122000122041%_))))
                                  (_%E122000122041%_))))
                           (_%E121986122085%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121984122013%_)
                                  (let ((_%e121991122057%_
                                         (gx#syntax-e _%e121984122013%_)))
                                    (let ((_%hd121992122060%_
                                           (##car _%e121991122057%_))
                                          (_%tl121993122062%_
                                           (##cdr _%e121991122057%_)))
                                      (if (and (gx#identifier?
                                                _%hd121992122060%_)
                                               (gx#core-identifier=?
                                                _%hd121992122060%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121993122062%_)
                                              (let ((_%e121994122065%_
                                                     (gx#syntax-e
                                                      _%tl121993122062%_)))
                                                (let ((_%hd121995122068%_
                                                       (##car _%e121994122065%_))
                                                      (_%tl121996122070%_
                                                       (##cdr _%e121994122065%_)))
                                                  (let ((_%hd-bind122073%_
                                                         _%hd121995122068%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121996122070%_)
                                                        (let ((_%e121997122075%_
                                                               (gx#syntax-e
                                                                _%tl121996122070%_)))
                                                          (let ((_%hd121998122078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121997122075%_))
                        (_%tl121999122080%_ (##cdr _%e121997122075%_)))
                    (let ((_%expr122083%_ _%hd121998122078%_))
                      (if (gx#stx-null? _%tl121999122080%_)
                          (if (gx#core-bind-values? _%hd-bind122073%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122073%_)
                                (_%K121983%_ _%hd121976%_))
                              (_%E121990122053%_))
                          (_%E121990122053%_)))))
                (_%E121990122053%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121990122053%_))
                                          (_%E121990122053%_))))
                                  (_%E121990122053%_))))
                           (_%E121985122097%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121984122013%_)
                                  (let ((_%e121987122089%_
                                         (gx#syntax-e _%e121984122013%_)))
                                    (let ((_%hd121988122092%_
                                           (##car _%e121987122089%_))
                                          (_%tl121989122094%_
                                           (##cdr _%e121987122089%_)))
                                      (if (and (gx#identifier?
                                                _%hd121988122092%_)
                                               (gx#core-identifier=?
                                                _%hd121988122092%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121983%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121976%_))
                                              (_%E121986122085%_))
                                          (_%E121986122085%_))))
                                  (_%E121986122085%_)))))
                      (_%E121985122097%_))))
                 (_%eval-body121857%_
                  (lambda (_%rbody121865%_)
                    (let _%lp121867%_ ((_%rest121869%_ _%rbody121865%_)
                                       (_%body121870%_ '())
                                       (_%ebody121871%_ '()))
                      (let* ((_%rest121872121880%_ _%rest121869%_)
                             (_%else121874121888%_
                              (lambda ()
                                (values _%body121870%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121871%_)
                                          (gx#stx-source _%stx121854%_))))))
                             (_%K121876121964%_
                              (lambda (_%rest121891%_ _%hd121892%_)
                                (let* ((_%e121893121910%_ _%hd121892%_)
                                       (_%E121905121914%_
                                        (lambda ()
                                          (_%lp121867%_
                                           _%rest121891%_
                                           (cons _%hd121892%_ _%body121870%_)
                                           (cons _%hd121892%_
                                                 _%ebody121871%_))))
                                       (_%E121895121926%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121893121910%_)
                                              (let ((_%e121906121918%_
                                                     (gx#syntax-e
                                                      _%e121893121910%_)))
                                                (let ((_%hd121907121921%_
                                                       (##car _%e121906121918%_))
                                                      (_%tl121908121923%_
                                                       (##cdr _%e121906121918%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121907121921%_)
                                                           (gx#core-identifier=?
                                                            _%hd121907121921%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121867%_
                                                           _%rest121891%_
                                                           (cons _%hd121892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121870%_)
                   _%ebody121871%_)
                  (_%E121905121914%_))
              (_%E121905121914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121905121914%_))))
                                       (_%E121894121960%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121893121910%_)
                                              (let ((_%e121896121930%_
                                                     (gx#syntax-e
                                                      _%e121893121910%_)))
                                                (let ((_%hd121897121933%_
                                                       (##car _%e121896121930%_))
                                                      (_%tl121898121935%_
                                                       (##cdr _%e121896121930%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121897121933%_)
                                                           (gx#core-identifier=?
                                                            _%hd121897121933%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121898121935%_)
                                                          (let ((_%e121899121938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121898121935%_)))
                    (let ((_%hd121900121941%_ (##car _%e121899121938%_))
                          (_%tl121901121943%_ (##cdr _%e121899121938%_)))
                      (let ((_%hd-bind121946%_ _%hd121900121941%_))
                        (if (gx#stx-pair? _%tl121901121943%_)
                            (let ((_%e121902121948%_
                                   (gx#syntax-e _%tl121901121943%_)))
                              (let ((_%hd121903121951%_
                                     (##car _%e121902121948%_))
                                    (_%tl121904121953%_
                                     (##cdr _%e121902121948%_)))
                                (let ((_%expr121956%_ _%hd121903121951%_))
                                  (if (gx#stx-null? _%tl121904121953%_)
                                      (if '#t
                                          (let ((_%ehd121958%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121946%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121956%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121892%_))))
                                            (_%lp121867%_
                                             _%rest121891%_
                                             (cons _%ehd121958%_
                                                   _%body121870%_)
                                             (cons _%ehd121958%_
                                                   _%ebody121871%_)))
                                          (_%E121895121926%_))
                                      (_%E121895121926%_)))))
                            (_%E121895121926%_)))))
                  (_%E121895121926%_))
              (_%E121895121926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121895121926%_)))))
                                  (_%E121894121960%_)))))
                        (if (##pair? _%rest121872121880%_)
                            (let ((_%hd121877121967%_
                                   (##car _%rest121872121880%_))
                                  (_%tl121878121969%_
                                   (##cdr _%rest121872121880%_)))
                              (let* ((_%hd121972%_ _%hd121877121967%_)
                                     (_%rest121974%_ _%tl121878121969%_))
                                (_%K121876121964%_
                                 _%rest121974%_
                                 _%hd121972%_)))
                            (_%else121874121888%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121860%_
                     (gx#core-expand-block__1
                      _%stx121854%_
                      _%expand-special121856%_
                      '#f))
                    (_g122124_ (_%eval-body121857%_ _%rbody121860%_)))
               (begin
                 (let ((_g122125_
                        (if (##values? _g122124_)
                            (##vector-length _g122124_)
                            1)))
                   (if (not (##fx= _g122125_ 2))
                       (error "Context expects 2 values" _g122125_)))
                 (let ((_%expanded-body121862%_ (##vector-ref _g122124_ 0))
                       (_%value121863%_ (##vector-ref _g122124_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121862%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121863%_ '())))
                    (gx#stx-source _%stx121854%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121824%_)
        (let* ((_%e121825121832%_ _%stx121824%_)
               (_%E121827121836%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121825121832%_)))
               (_%E121826121850%_
                (lambda ()
                  (if (gx#stx-pair? _%e121825121832%_)
                      (let ((_%e121828121840%_
                             (gx#syntax-e _%e121825121832%_)))
                        (let ((_%hd121829121843%_ (##car _%e121828121840%_))
                              (_%tl121830121845%_ (##cdr _%e121828121840%_)))
                          (let ((_%body121848%_ _%tl121830121845%_))
                            (if (gx#stx-list? _%body121848%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121848%_)
                                 (gx#stx-source _%stx121824%_))
                                (_%E121827121836%_)))))
                      (_%E121827121836%_)))))
          (_%E121826121850%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121822%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121822%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121768%_)
        (let* ((_%e121769121782%_ _%stx121768%_)
               (_%E121771121786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121769121782%_)))
               (_%E121770121818%_
                (lambda ()
                  (if (gx#stx-pair? _%e121769121782%_)
                      (let ((_%e121772121790%_
                             (gx#syntax-e _%e121769121782%_)))
                        (let ((_%hd121773121793%_ (##car _%e121772121790%_))
                              (_%tl121774121795%_ (##cdr _%e121772121790%_)))
                          (if (gx#stx-pair? _%tl121774121795%_)
                              (let ((_%e121775121798%_
                                     (gx#syntax-e _%tl121774121795%_)))
                                (let ((_%hd121776121801%_
                                       (##car _%e121775121798%_))
                                      (_%tl121777121803%_
                                       (##cdr _%e121775121798%_)))
                                  (let ((_%ann121806%_ _%hd121776121801%_))
                                    (if (gx#stx-pair? _%tl121777121803%_)
                                        (let ((_%e121778121808%_
                                               (gx#syntax-e
                                                _%tl121777121803%_)))
                                          (let ((_%hd121779121811%_
                                                 (##car _%e121778121808%_))
                                                (_%tl121780121813%_
                                                 (##cdr _%e121778121808%_)))
                                            (let ((_%expr121816%_
                                                   _%hd121779121811%_))
                                              (if (gx#stx-null?
                                                   _%tl121780121813%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121816%_)
                                 '())))
               (gx#stx-source _%stx121768%_))
              (_%E121771121786%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121771121786%_)))))
                                        (_%E121771121786%_)))))
                              (_%E121771121786%_))))
                      (_%E121771121786%_)))))
          (_%E121770121818%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx121492%_ _%body121493%_)
        (letrec ((_%expand-special121495%_
                  (lambda (_%hd121763%_ _%K121764%_ _%rest121765%_ _%r121766%_)
                    (_%K121764%_
                     '()
                     (cons (_%expand-internal121496%_
                            _%hd121763%_
                            _%rest121765%_)
                           _%r121766%_))))
                 (_%expand-internal121496%_
                  (lambda (_%hd121759%_ _%rest121760%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal121498%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121759%_ _%rest121760%_))
                          (gx#stx-source _%stx121492%_))
                         _%expand-internal-special121497%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj122118
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj122118)
                       __obj122118))))
                 (_%expand-internal-special121497%_
                  (lambda (_%hd121654%_ _%K121655%_ _%rest121656%_ _%r121657%_)
                    (let* ((_%e121658121683%_ _%hd121654%_)
                           (_%E121678121687%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121658121683%_)))
                           (_%E121674121699%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121658121683%_)
                                  (let ((_%e121679121691%_
                                         (gx#syntax-e _%e121658121683%_)))
                                    (let ((_%hd121680121694%_
                                           (##car _%e121679121691%_))
                                          (_%tl121681121696%_
                                           (##cdr _%e121679121691%_)))
                                      (if (and (gx#identifier?
                                                _%hd121680121694%_)
                                               (gx#core-identifier=?
                                                _%hd121680121694%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121655%_
                                               _%rest121656%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121654%_)
                                                     _%r121657%_))
                                              (_%E121678121687%_))
                                          (_%E121678121687%_))))
                                  (_%E121678121687%_))))
                           (_%E121670121711%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121658121683%_)
                                  (let ((_%e121675121703%_
                                         (gx#syntax-e _%e121658121683%_)))
                                    (let ((_%hd121676121706%_
                                           (##car _%e121675121703%_))
                                          (_%tl121677121708%_
                                           (##cdr _%e121675121703%_)))
                                      (if (and (gx#identifier?
                                                _%hd121676121706%_)
                                               (gx#core-identifier=?
                                                _%hd121676121706%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121654%_)
                                                (_%K121655%_
                                                 _%rest121656%_
                                                 _%r121657%_))
                                              (_%E121674121699%_))
                                          (_%E121674121699%_))))
                                  (_%E121674121699%_))))
                           (_%E121660121723%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121658121683%_)
                                  (let ((_%e121671121715%_
                                         (gx#syntax-e _%e121658121683%_)))
                                    (let ((_%hd121672121718%_
                                           (##car _%e121671121715%_))
                                          (_%tl121673121720%_
                                           (##cdr _%e121671121715%_)))
                                      (if (and (gx#identifier?
                                                _%hd121672121718%_)
                                               (gx#core-identifier=?
                                                _%hd121672121718%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121654%_)
                                                (_%K121655%_
                                                 _%rest121656%_
                                                 _%r121657%_))
                                              (_%E121670121711%_))
                                          (_%E121670121711%_))))
                                  (_%E121670121711%_))))
                           (_%E121659121755%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121658121683%_)
                                  (let ((_%e121661121727%_
                                         (gx#syntax-e _%e121658121683%_)))
                                    (let ((_%hd121662121730%_
                                           (##car _%e121661121727%_))
                                          (_%tl121663121732%_
                                           (##cdr _%e121661121727%_)))
                                      (if (and (gx#identifier?
                                                _%hd121662121730%_)
                                               (gx#core-identifier=?
                                                _%hd121662121730%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121663121732%_)
                                              (let ((_%e121664121735%_
                                                     (gx#syntax-e
                                                      _%tl121663121732%_)))
                                                (let ((_%hd121665121738%_
                                                       (##car _%e121664121735%_))
                                                      (_%tl121666121740%_
                                                       (##cdr _%e121664121735%_)))
                                                  (let ((_%hd-bind121743%_
                                                         _%hd121665121738%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121666121740%_)
                                                        (let ((_%e121667121745%_
                                                               (gx#syntax-e
                                                                _%tl121666121740%_)))
                                                          (let ((_%hd121668121748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121667121745%_))
                        (_%tl121669121750%_ (##cdr _%e121667121745%_)))
                    (let ((_%expr121753%_ _%hd121668121748%_))
                      (if (gx#stx-null? _%tl121669121750%_)
                          (if (gx#core-bind-values? _%hd-bind121743%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121743%_)
                                (_%K121655%_
                                 _%rest121656%_
                                 (cons _%hd121654%_ _%r121657%_)))
                              (_%E121660121723%_))
                          (_%E121660121723%_)))))
                (_%E121660121723%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121660121723%_))
                                          (_%E121660121723%_))))
                                  (_%E121660121723%_)))))
                      (_%E121659121755%_))))
                 (_%wrap-internal121498%_
                  (lambda (_%rbody121500%_)
                    (let _%lp121502%_ ((_%rest121504%_ _%rbody121500%_)
                                       (_%decls121505%_ '())
                                       (_%bind121506%_ '())
                                       (_%body121507%_ '()))
                      (let* ((_%e121508121515%_ _%rest121504%_)
                             (_%E121510121564%_
                              (lambda ()
                                (let* ((_%body121559%_
                                        (let* ((_%body121518121528%_
                                                _%body121507%_)
                                               (_%else121521121536%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body121507%_)
                                                   (gx#stx-source
                                                    _%stx121492%_)))))
                                          (let ((_%K121526121556%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx121492%_)))
                                                (_%K121523121542%_
                                                 (lambda (_%expr121540%_)
                                                   _%expr121540%_)))
                                            (let ((_%try-match121520121552%_
                                                   (lambda ()
                                                     (if (##pair? _%body121518121528%_)
                                                         (let ((_%tl121525121547%_
                                                                (##cdr _%body121518121528%_))
                                                               (_%hd121524121545%_
                                                                (##car _%body121518121528%_)))
                                                           (if (##null? _%tl121525121547%_)
                                                               (let ((_%expr121550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121524121545%_))
                         (_%K121523121542%_ _%expr121550%_))
                       (_%else121521121536%_)))
                 (_%else121521121536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body121518121528%_)
                                                  (_%K121526121556%_)
                                                  (_%try-match121520121552%_))))))
                                       (_%body121561%_
                                        (if (null? _%bind121506%_)
                                            _%body121559%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind121506%_
                                                         (cons _%body121559%_
                                                               '())))
                                             (gx#stx-source _%stx121492%_)))))
                                  (if (null? _%decls121505%_)
                                      _%body121561%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls121505%_
                                                   (cons _%body121561%_ '())))
                                       (gx#stx-source _%stx121492%_))))))
                             (_%E121509121650%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121508121515%_)
                                    (let ((_%e121511121568%_
                                           (gx#syntax-e _%e121508121515%_)))
                                      (let ((_%hd121512121571%_
                                             (##car _%e121511121568%_))
                                            (_%tl121513121573%_
                                             (##cdr _%e121511121568%_)))
                                        (let* ((_%hd121576%_
                                                _%hd121512121571%_)
                                               (_%rest121578%_
                                                _%tl121513121573%_))
                                          (if '#t
                                              (let* ((_%e121579121596%_
                                                      _%hd121576%_)
                                                     (_%E121591121600%_
                                                      (lambda ()
                                                        (if (null? _%bind121506%_)
                                                            (_%lp121502%_
                                                             _%rest121578%_
                                                             _%decls121505%_
                                                             _%bind121506%_
                                                             (cons _%hd121576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body121507%_))
                    (_%lp121502%_
                     _%rest121578%_
                     _%decls121505%_
                     (cons (cons '#f (cons _%hd121576%_ '())) _%bind121506%_)
                     _%body121507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121581121614%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121579121596%_)
                                                            (let ((_%e121592121604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121579121596%_)))
                      (let ((_%hd121593121607%_ (##car _%e121592121604%_))
                            (_%tl121594121609%_ (##cdr _%e121592121604%_)))
                        (if (and (gx#identifier? _%hd121593121607%_)
                                 (gx#core-identifier=?
                                  _%hd121593121607%_
                                  '%#declare))
                            (let ((_%xdecls121612%_ _%tl121594121609%_))
                              (if '#t
                                  (_%lp121502%_
                                   _%rest121578%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls121505%_
                                    _%xdecls121612%_)
                                   _%bind121506%_
                                   _%body121507%_)
                                  (_%E121591121600%_)))
                            (_%E121591121600%_))))
                    (_%E121591121600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121580121646%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121579121596%_)
                                                            (let ((_%e121582121618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121579121596%_)))
                      (let ((_%hd121583121621%_ (##car _%e121582121618%_))
                            (_%tl121584121623%_ (##cdr _%e121582121618%_)))
                        (if (and (gx#identifier? _%hd121583121621%_)
                                 (gx#core-identifier=?
                                  _%hd121583121621%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121584121623%_)
                                (let ((_%e121585121626%_
                                       (gx#syntax-e _%tl121584121623%_)))
                                  (let ((_%hd121586121629%_
                                         (##car _%e121585121626%_))
                                        (_%tl121587121631%_
                                         (##cdr _%e121585121626%_)))
                                    (let ((_%hd-bind121634%_
                                           _%hd121586121629%_))
                                      (if (gx#stx-pair? _%tl121587121631%_)
                                          (let ((_%e121588121636%_
                                                 (gx#syntax-e
                                                  _%tl121587121631%_)))
                                            (let ((_%hd121589121639%_
                                                   (##car _%e121588121636%_))
                                                  (_%tl121590121641%_
                                                   (##cdr _%e121588121636%_)))
                                              (let ((_%expr121644%_
                                                     _%hd121589121639%_))
                                                (if (gx#stx-null?
                                                     _%tl121590121641%_)
                                                    (if '#t
                                                        (_%lp121502%_
                                                         _%rest121578%_
                                                         _%decls121505%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121634%_)
                             (cons (gx#core-expand-expression _%expr121644%_)
                                   '()))
                       _%bind121506%_)
                 _%body121507%_)
                (_%E121581121614%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121581121614%_)))))
                                          (_%E121581121614%_)))))
                                (_%E121581121614%_))
                            (_%E121581121614%_))))
                    (_%E121581121614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121580121646%_))
                                              (_%E121510121564%_)))))
                                    (_%E121510121564%_)))))
                        (_%E121509121650%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body121493%_)
            (gx#stx-source _%stx121492%_))
           _%expand-special121495%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx121430%_)
        (let* ((_%e121431121438%_ _%stx121430%_)
               (_%E121433121442%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121431121438%_)))
               (_%E121432121488%_
                (lambda ()
                  (if (gx#stx-pair? _%e121431121438%_)
                      (let ((_%e121434121446%_
                             (gx#syntax-e _%e121431121438%_)))
                        (let ((_%hd121435121449%_ (##car _%e121434121446%_))
                              (_%tl121436121451%_ (##cdr _%e121434121446%_)))
                          (let ((_%body121454%_ _%tl121436121451%_))
                            (if (gx#stx-list? _%body121454%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl121456%_)
                                     (let* ((_%e121457121464%_ _%decl121456%_)
                                            (_%E121459121468%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e121457121464%_)))
                                            (_%E121458121484%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e121457121464%_)
                                                   (let ((_%e121460121472%_
                                                          (gx#syntax-e
                                                           _%e121457121464%_)))
                                                     (let ((_%hd121461121475%_
                                                            (##car _%e121460121472%_))
                                                           (_%tl121462121477%_
                                                            (##cdr _%e121460121472%_)))
                                                       (let* ((_%head121480%_
                                                               _%hd121461121475%_)
                                                              (_%args121482%_
                                                               _%tl121462121477%_))
                                                         (if (gx#stx-list?
                                                              _%args121482%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl121456%_)
                                                             (_%E121459121468%_)))))
                                                   (_%E121459121468%_)))))
                                       (_%E121458121484%_)))
                                   _%body121454%_))
                                 (gx#stx-source _%stx121430%_))
                                (_%E121433121442%_)))))
                      (_%E121433121442%_)))))
          (_%E121432121488%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx121334%_)
        (let* ((_%e121335121342%_ _%stx121334%_)
               (_%E121337121346%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121335121342%_)))
               (_%E121336121426%_
                (lambda ()
                  (if (gx#stx-pair? _%e121335121342%_)
                      (let ((_%e121338121350%_
                             (gx#syntax-e _%e121335121342%_)))
                        (let ((_%hd121339121353%_ (##car _%e121338121350%_))
                              (_%tl121340121355%_ (##cdr _%e121338121350%_)))
                          (let ((_%body121358%_ _%tl121340121355%_))
                            (if '#t
                                (let _%lp121360%_ ((_%rest121362%_
                                                    _%body121358%_)
                                                   (_%r121363%_ '()))
                                  (let* ((_%e121364121378%_ _%rest121362%_)
                                         (_%E121376121382%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx121334%_)))
                                         (_%E121366121386%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e121364121378%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r121363%_))
                                                     (gx#stx-source
                                                      _%stx121334%_))
                                                    (_%E121376121382%_))
                                                (_%E121376121382%_))))
                                         (_%E121365121422%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e121364121378%_)
                                                (let ((_%e121367121390%_
                                                       (gx#syntax-e
                                                        _%e121364121378%_)))
                                                  (let ((_%hd121368121393%_
                                                         (##car _%e121367121390%_))
                                                        (_%tl121369121395%_
                                                         (##cdr _%e121367121390%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd121368121393%_)
                                                        (let ((_%e121370121398%_
                                                               (gx#syntax-e
                                                                _%hd121368121393%_)))
                                                          (let ((_%hd121371121401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121370121398%_))
                        (_%tl121372121403%_ (##cdr _%e121370121398%_)))
                    (let ((_%id121406%_ _%hd121371121401%_))
                      (if (gx#stx-pair? _%tl121372121403%_)
                          (let ((_%e121373121408%_
                                 (gx#syntax-e _%tl121372121403%_)))
                            (let ((_%hd121374121411%_
                                   (##car _%e121373121408%_))
                                  (_%tl121375121413%_
                                   (##cdr _%e121373121408%_)))
                              (let ((_%eid121416%_ _%hd121374121411%_))
                                (if (gx#stx-null? _%tl121375121413%_)
                                    (let ((_%rest121418%_ _%tl121369121395%_))
                                      (if (and (gx#identifier? _%id121406%_)
                                               (gx#identifier? _%eid121416%_))
                                          (let ((_%eid121420%_
                                                 (gx#stx-e _%eid121416%_)))
                                            (gx#core-bind-extern!__0
                                             _%id121406%_
                                             _%eid121420%_)
                                            (_%lp121360%_
                                             _%rest121418%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id121406%_)
                                                         (cons _%eid121420%_
                                                               '()))
                                                   _%r121363%_)))
                                          (_%E121366121386%_)))
                                    (_%E121366121386%_)))))
                          (_%E121366121386%_)))))
                (_%E121366121386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121366121386%_)))))
                                    (_%E121365121422%_)))
                                (_%E121337121346%_)))))
                      (_%E121337121346%_)))))
          (_%E121336121426%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx121280%_)
        (let* ((_%e121281121294%_ _%stx121280%_)
               (_%E121283121298%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121281121294%_)))
               (_%E121282121330%_
                (lambda ()
                  (if (gx#stx-pair? _%e121281121294%_)
                      (let ((_%e121284121302%_
                             (gx#syntax-e _%e121281121294%_)))
                        (let ((_%hd121285121305%_ (##car _%e121284121302%_))
                              (_%tl121286121307%_ (##cdr _%e121284121302%_)))
                          (if (gx#stx-pair? _%tl121286121307%_)
                              (let ((_%e121287121310%_
                                     (gx#syntax-e _%tl121286121307%_)))
                                (let ((_%hd121288121313%_
                                       (##car _%e121287121310%_))
                                      (_%tl121289121315%_
                                       (##cdr _%e121287121310%_)))
                                  (let ((_%hd121318%_ _%hd121288121313%_))
                                    (if (gx#stx-pair? _%tl121289121315%_)
                                        (let ((_%e121290121320%_
                                               (gx#syntax-e
                                                _%tl121289121315%_)))
                                          (let ((_%hd121291121323%_
                                                 (##car _%e121290121320%_))
                                                (_%tl121292121325%_
                                                 (##cdr _%e121290121320%_)))
                                            (let ((_%expr121328%_
                                                   _%hd121291121323%_))
                                              (if (gx#stx-null?
                                                   _%tl121292121325%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd121318%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd121318%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121318%_)
                             (cons (gx#core-expand-expression _%expr121328%_)
                                   '())))
                 (gx#stx-source _%stx121280%_)))
              (_%E121283121298%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121283121298%_)))))
                                        (_%E121283121298%_)))))
                              (_%E121283121298%_))))
                      (_%E121283121298%_)))))
          (_%E121282121330%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx121224%_)
        (let* ((_%e121225121238%_ _%stx121224%_)
               (_%E121227121242%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121225121238%_)))
               (_%E121226121276%_
                (lambda ()
                  (if (gx#stx-pair? _%e121225121238%_)
                      (let ((_%e121228121246%_
                             (gx#syntax-e _%e121225121238%_)))
                        (let ((_%hd121229121249%_ (##car _%e121228121246%_))
                              (_%tl121230121251%_ (##cdr _%e121228121246%_)))
                          (if (gx#stx-pair? _%tl121230121251%_)
                              (let ((_%e121231121254%_
                                     (gx#syntax-e _%tl121230121251%_)))
                                (let ((_%hd121232121257%_
                                       (##car _%e121231121254%_))
                                      (_%tl121233121259%_
                                       (##cdr _%e121231121254%_)))
                                  (let ((_%id121262%_ _%hd121232121257%_))
                                    (if (gx#stx-pair? _%tl121233121259%_)
                                        (let ((_%e121234121264%_
                                               (gx#syntax-e
                                                _%tl121233121259%_)))
                                          (let ((_%hd121235121267%_
                                                 (##car _%e121234121264%_))
                                                (_%tl121236121269%_
                                                 (##cdr _%e121234121264%_)))
                                            (let ((_%binding-id121272%_
                                                   _%hd121235121267%_))
                                              (if (gx#stx-null?
                                                   _%tl121236121269%_)
                                                  (if (and (gx#identifier?
                                                            _%id121262%_)
                                                           (gx#identifier?
                                                            _%binding-id121272%_))
                                                      (let ((_%eid121274%_
                                                             (gx#stx-e
                                                              _%binding-id121272%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id121262%_
                                                         _%eid121274%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121262%_)
                             (cons _%eid121274%_ '())))))
              (_%E121227121242%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121227121242%_)))))
                                        (_%E121227121242%_)))))
                              (_%E121227121242%_))))
                      (_%E121227121242%_)))))
          (_%E121226121276%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx121167%_)
        (let* ((_%e121168121181%_ _%stx121167%_)
               (_%E121170121185%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121168121181%_)))
               (_%E121169121220%_
                (lambda ()
                  (if (gx#stx-pair? _%e121168121181%_)
                      (let ((_%e121171121189%_
                             (gx#syntax-e _%e121168121181%_)))
                        (let ((_%hd121172121192%_ (##car _%e121171121189%_))
                              (_%tl121173121194%_ (##cdr _%e121171121189%_)))
                          (if (gx#stx-pair? _%tl121173121194%_)
                              (let ((_%e121174121197%_
                                     (gx#syntax-e _%tl121173121194%_)))
                                (let ((_%hd121175121200%_
                                       (##car _%e121174121197%_))
                                      (_%tl121176121202%_
                                       (##cdr _%e121174121197%_)))
                                  (let ((_%id121205%_ _%hd121175121200%_))
                                    (if (gx#stx-pair? _%tl121176121202%_)
                                        (let ((_%e121177121207%_
                                               (gx#syntax-e
                                                _%tl121176121202%_)))
                                          (let ((_%hd121178121210%_
                                                 (##car _%e121177121207%_))
                                                (_%tl121179121212%_
                                                 (##cdr _%e121177121207%_)))
                                            (let ((_%expr121215%_
                                                   _%hd121178121210%_))
                                              (if (gx#stx-null?
                                                   _%tl121179121212%_)
                                                  (if (gx#identifier?
                                                       _%id121205%_)
                                                      (let ((_g122126_
                                                             (gx#core-expand-expression+1
                                                              _%expr121215%_)))
                                                        (begin
                                                          (let ((_g122127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g122126_)
                             (##vector-length _g122126_)
                             1)))
                    (if (not (##fx= _g122127_ 2))
                        (error "Context expects 2 values" _g122127_)))
                  (let ((_%e-stx121217%_ (##vector-ref _g122126_ 0))
                        (_%e121218%_ (##vector-ref _g122126_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id121205%_ _%e121218%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id121205%_)
                                   (cons _%e-stx121217%_ '())))
                       (gx#stx-source _%stx121167%_))))))
              (_%E121170121185%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121170121185%_)))))
                                        (_%E121170121185%_)))))
                              (_%E121170121185%_))))
                      (_%E121170121185%_)))))
          (_%E121169121220%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx121111%_)
        (let* ((_%e121112121125%_ _%stx121111%_)
               (_%E121114121129%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121112121125%_)))
               (_%E121113121163%_
                (lambda ()
                  (if (gx#stx-pair? _%e121112121125%_)
                      (let ((_%e121115121133%_
                             (gx#syntax-e _%e121112121125%_)))
                        (let ((_%hd121116121136%_ (##car _%e121115121133%_))
                              (_%tl121117121138%_ (##cdr _%e121115121133%_)))
                          (if (gx#stx-pair? _%tl121117121138%_)
                              (let ((_%e121118121141%_
                                     (gx#syntax-e _%tl121117121138%_)))
                                (let ((_%hd121119121144%_
                                       (##car _%e121118121141%_))
                                      (_%tl121120121146%_
                                       (##cdr _%e121118121141%_)))
                                  (let ((_%id121149%_ _%hd121119121144%_))
                                    (if (gx#stx-pair? _%tl121120121146%_)
                                        (let ((_%e121121121151%_
                                               (gx#syntax-e
                                                _%tl121120121146%_)))
                                          (let ((_%hd121122121154%_
                                                 (##car _%e121121121151%_))
                                                (_%tl121123121156%_
                                                 (##cdr _%e121121121151%_)))
                                            (let ((_%alias-id121159%_
                                                   _%hd121122121154%_))
                                              (if (gx#stx-null?
                                                   _%tl121123121156%_)
                                                  (if (and (gx#identifier?
                                                            _%id121149%_)
                                                           (gx#identifier?
                                                            _%alias-id121159%_))
                                                      (let ((_%alias-id121161%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id121159%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id121149%_
                                                         _%alias-id121161%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121149%_)
                             (cons _%alias-id121161%_ '())))))
              (_%E121114121129%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121114121129%_)))))
                                        (_%E121114121129%_)))))
                              (_%E121114121129%_))))
                      (_%E121114121129%_)))))
          (_%E121113121163%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx121054%_ _%wrap?121055%_)
        (let* ((_%e121056121066%_ _%stx121054%_)
               (_%E121058121070%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121056121066%_)))
               (_%E121057121097%_
                (lambda ()
                  (if (gx#stx-pair? _%e121056121066%_)
                      (let ((_%e121059121074%_
                             (gx#syntax-e _%e121056121066%_)))
                        (let ((_%hd121060121077%_ (##car _%e121059121074%_))
                              (_%tl121061121079%_ (##cdr _%e121059121074%_)))
                          (if (gx#stx-pair? _%tl121061121079%_)
                              (let ((_%e121062121082%_
                                     (gx#syntax-e _%tl121061121079%_)))
                                (let ((_%hd121063121085%_
                                       (##car _%e121062121082%_))
                                      (_%tl121064121087%_
                                       (##cdr _%e121062121082%_)))
                                  (let* ((_%hd121090%_ _%hd121063121085%_)
                                         (_%body121092%_ _%tl121064121087%_))
                                    (if (gx#core-bind-values? _%hd121090%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd121090%_)
                                           (let ((_%body121095%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd121090%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx121054%_
                                                               _%body121092%_)
                                                              '()))))
                                             (if _%wrap?121055%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body121095%_)
                                                  (gx#stx-source
                                                   _%stx121054%_))
                                                 _%body121095%_)))
                                         gx#current-expander-context
                                         (let ((__obj122119
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122119)
                                           __obj122119))
                                        (_%E121058121070%_)))))
                              (_%E121058121070%_))))
                      (_%E121058121070%_)))))
          (_%E121057121097%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx121104%_)
        (let ((_%wrap?121106%_ '#t))
          (gx#core-expand-lambda%__% _%stx121104%_ _%wrap?121106%_))))
    (define gx#core-expand-lambda%
      (lambda _g122129_
        (let ((_g122128_ (##length _g122129_)))
          (cond ((##fx= _g122128_ 1)
                 (apply (lambda (_%stx121104%_)
                          (gx#core-expand-lambda%__0 _%stx121104%_))
                        _g122129_))
                ((##fx= _g122128_ 2)
                 (apply (lambda (_%stx121108%_ _%wrap?121109%_)
                          (gx#core-expand-lambda%__%
                           _%stx121108%_
                           _%wrap?121109%_))
                        _g122129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g122129_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx121018%_)
        (let* ((_%e121019121026%_ _%stx121018%_)
               (_%E121021121030%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121019121026%_)))
               (_%E121020121049%_
                (lambda ()
                  (if (gx#stx-pair? _%e121019121026%_)
                      (let ((_%e121022121034%_
                             (gx#syntax-e _%e121019121026%_)))
                        (let ((_%hd121023121037%_ (##car _%e121022121034%_))
                              (_%tl121024121039%_ (##cdr _%e121022121034%_)))
                          (let ((_%clauses121042%_ _%tl121024121039%_))
                            (if (gx#stx-list? _%clauses121042%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause121044%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause121044%_)
                                       (let ((_%$e121046%_
                                              (gx#stx-source
                                               _%clause121044%_)))
                                         (if _%$e121046%_
                                             _%$e121046%_
                                             (gx#stx-source _%stx121018%_))))
                                      '#f))
                                   _%clauses121042%_))
                                 (gx#stx-source _%stx121018%_))
                                (_%E121021121030%_)))))
                      (_%E121021121030%_)))))
          (_%E121020121049%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120972%_)
        (let* ((_%e120973120983%_ _%stx120972%_)
               (_%E120975120987%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120973120983%_)))
               (_%E120974121014%_
                (lambda ()
                  (if (gx#stx-pair? _%e120973120983%_)
                      (let ((_%e120976120991%_
                             (gx#syntax-e _%e120973120983%_)))
                        (let ((_%hd120977120994%_ (##car _%e120976120991%_))
                              (_%tl120978120996%_ (##cdr _%e120976120991%_)))
                          (if (gx#stx-pair? _%tl120978120996%_)
                              (let ((_%e120979120999%_
                                     (gx#syntax-e _%tl120978120996%_)))
                                (let ((_%hd120980121002%_
                                       (##car _%e120979120999%_))
                                      (_%tl120981121004%_
                                       (##cdr _%e120979120999%_)))
                                  (let* ((_%hd121007%_ _%hd120980121002%_)
                                         (_%body121009%_ _%tl120981121004%_))
                                    (if (gx#core-expand-let-bind? _%hd121007%_)
                                        (let ((_%expressions121011%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd121007%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd121007%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd121007%_
                                                           _%expressions121011%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120972%_
                         _%body121009%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120972%_)))
                                           gx#current-expander-context
                                           (let ((__obj122120
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122120)
                                             __obj122120)))
                                        (_%E120975120987%_)))))
                              (_%E120975120987%_))))
                      (_%E120975120987%_)))))
          (_%E120974121014%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120917%_ _%form120918%_)
        (let* ((_%e120919120929%_ _%stx120917%_)
               (_%E120921120933%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120919120929%_)))
               (_%E120920120958%_
                (lambda ()
                  (if (gx#stx-pair? _%e120919120929%_)
                      (let ((_%e120922120937%_
                             (gx#syntax-e _%e120919120929%_)))
                        (let ((_%hd120923120940%_ (##car _%e120922120937%_))
                              (_%tl120924120942%_ (##cdr _%e120922120937%_)))
                          (if (gx#stx-pair? _%tl120924120942%_)
                              (let ((_%e120925120945%_
                                     (gx#syntax-e _%tl120924120942%_)))
                                (let ((_%hd120926120948%_
                                       (##car _%e120925120945%_))
                                      (_%tl120927120950%_
                                       (##cdr _%e120925120945%_)))
                                  (let* ((_%hd120953%_ _%hd120926120948%_)
                                         (_%body120955%_ _%tl120927120950%_))
                                    (if (gx#core-expand-let-bind? _%hd120953%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120953%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120918%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120953%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120953%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120917%_
                                                               _%body120955%_)
                                                              '())))
                                            (gx#stx-source _%stx120917%_)))
                                         gx#current-expander-context
                                         (let ((__obj122121
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122121)
                                           __obj122121))
                                        (_%E120921120933%_)))))
                              (_%E120921120933%_))))
                      (_%E120921120933%_)))))
          (_%E120920120958%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120965%_)
        (let ((_%form120967%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120965%_ _%form120967%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g122131_
        (let ((_g122130_ (##length _g122131_)))
          (cond ((##fx= _g122130_ 1)
                 (apply (lambda (_%stx120965%_)
                          (gx#core-expand-letrec-values%__0 _%stx120965%_))
                        _g122131_))
                ((##fx= _g122130_ 2)
                 (apply (lambda (_%stx120969%_ _%form120970%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120969%_
                           _%form120970%_))
                        _g122131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g122131_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120914%_)
        (gx#core-expand-letrec-values%__% _%stx120914%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120871%_)
        (if (gx#stx-list? _%stx120871%_)
            (gx#stx-andmap
             (lambda (_%bind120873%_)
               (let* ((_%e120874120884%_ _%bind120873%_)
                      (_%E120876120888%_ (lambda () '#f))
                      (_%E120875120910%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120874120884%_)
                             (let ((_%e120877120892%_
                                    (gx#syntax-e _%e120874120884%_)))
                               (let ((_%hd120878120895%_
                                      (##car _%e120877120892%_))
                                     (_%tl120879120897%_
                                      (##cdr _%e120877120892%_)))
                                 (let ((_%hd120900%_ _%hd120878120895%_))
                                   (if (gx#stx-pair? _%tl120879120897%_)
                                       (let ((_%e120880120902%_
                                              (gx#syntax-e
                                               _%tl120879120897%_)))
                                         (let ((_%hd120881120905%_
                                                (##car _%e120880120902%_))
                                               (_%tl120882120907%_
                                                (##cdr _%e120880120902%_)))
                                           (if (gx#stx-null?
                                                _%tl120882120907%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120900%_)
                                                   (_%E120876120888%_))
                                               (_%E120876120888%_))))
                                       (_%E120876120888%_)))))
                             (_%E120876120888%_)))))
                 (_%E120875120910%_)))
             _%stx120871%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120830%_)
        (let* ((_%e120831120841%_ _%bind120830%_)
               (_%E120833120845%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120831120841%_)))
               (_%E120832120867%_
                (lambda ()
                  (if (gx#stx-pair? _%e120831120841%_)
                      (let ((_%e120834120849%_
                             (gx#syntax-e _%e120831120841%_)))
                        (let ((_%hd120835120852%_ (##car _%e120834120849%_))
                              (_%tl120836120854%_ (##cdr _%e120834120849%_)))
                          (if (gx#stx-pair? _%tl120836120854%_)
                              (let ((_%e120837120857%_
                                     (gx#syntax-e _%tl120836120854%_)))
                                (let ((_%hd120838120860%_
                                       (##car _%e120837120857%_))
                                      (_%tl120839120862%_
                                       (##cdr _%e120837120857%_)))
                                  (let ((_%expr120865%_ _%hd120838120860%_))
                                    (if (gx#stx-null? _%tl120839120862%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120865%_)
                                            (_%E120833120845%_))
                                        (_%E120833120845%_)))))
                              (_%E120833120845%_))))
                      (_%E120833120845%_)))))
          (_%E120832120867%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120789%_)
        (let* ((_%e120790120800%_ _%bind120789%_)
               (_%E120792120804%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120790120800%_)))
               (_%E120791120826%_
                (lambda ()
                  (if (gx#stx-pair? _%e120790120800%_)
                      (let ((_%e120793120808%_
                             (gx#syntax-e _%e120790120800%_)))
                        (let ((_%hd120794120811%_ (##car _%e120793120808%_))
                              (_%tl120795120813%_ (##cdr _%e120793120808%_)))
                          (let ((_%hd120816%_ _%hd120794120811%_))
                            (if (gx#stx-pair? _%tl120795120813%_)
                                (let ((_%e120796120818%_
                                       (gx#syntax-e _%tl120795120813%_)))
                                  (let ((_%hd120797120821%_
                                         (##car _%e120796120818%_))
                                        (_%tl120798120823%_
                                         (##cdr _%e120796120818%_)))
                                    (if (gx#stx-null? _%tl120798120823%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120816%_)
                                            (_%E120792120804%_))
                                        (_%E120792120804%_))))
                                (_%E120792120804%_)))))
                      (_%E120792120804%_)))))
          (_%E120791120826%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120747%_ _%expr120748%_)
        (let* ((_%e120749120759%_ _%bind120747%_)
               (_%E120751120763%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120749120759%_)))
               (_%E120750120785%_
                (lambda ()
                  (if (gx#stx-pair? _%e120749120759%_)
                      (let ((_%e120752120767%_
                             (gx#syntax-e _%e120749120759%_)))
                        (let ((_%hd120753120770%_ (##car _%e120752120767%_))
                              (_%tl120754120772%_ (##cdr _%e120752120767%_)))
                          (let ((_%hd120775%_ _%hd120753120770%_))
                            (if (gx#stx-pair? _%tl120754120772%_)
                                (let ((_%e120755120777%_
                                       (gx#syntax-e _%tl120754120772%_)))
                                  (let ((_%hd120756120780%_
                                         (##car _%e120755120777%_))
                                        (_%tl120757120782%_
                                         (##cdr _%e120755120777%_)))
                                    (if (gx#stx-null? _%tl120757120782%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120775%_)
                                                  (cons _%expr120748%_ '()))
                                            (_%E120751120763%_))
                                        (_%E120751120763%_))))
                                (_%E120751120763%_)))))
                      (_%E120751120763%_)))))
          (_%E120750120785%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120701%_)
        (let* ((_%e120702120712%_ _%stx120701%_)
               (_%E120704120716%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120702120712%_)))
               (_%E120703120743%_
                (lambda ()
                  (if (gx#stx-pair? _%e120702120712%_)
                      (let ((_%e120705120720%_
                             (gx#syntax-e _%e120702120712%_)))
                        (let ((_%hd120706120723%_ (##car _%e120705120720%_))
                              (_%tl120707120725%_ (##cdr _%e120705120720%_)))
                          (if (gx#stx-pair? _%tl120707120725%_)
                              (let ((_%e120708120728%_
                                     (gx#syntax-e _%tl120707120725%_)))
                                (let ((_%hd120709120731%_
                                       (##car _%e120708120728%_))
                                      (_%tl120710120733%_
                                       (##cdr _%e120708120728%_)))
                                  (let* ((_%hd120736%_ _%hd120709120731%_)
                                         (_%body120738%_ _%tl120710120733%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120736%_)
                                        (let ((_%expanders120740%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120736%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120736%_
                                              _%expanders120740%_)
                                             (gx#core-expand-local-block
                                              _%stx120701%_
                                              _%body120738%_))
                                           gx#current-expander-context
                                           (let ((__obj122122
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122122)
                                             __obj122122)))
                                        (_%E120704120716%_)))))
                              (_%E120704120716%_))))
                      (_%E120704120716%_)))))
          (_%E120703120743%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120650%_)
        (let* ((_%e120651120661%_ _%stx120650%_)
               (_%E120653120665%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120651120661%_)))
               (_%E120652120697%_
                (lambda ()
                  (if (gx#stx-pair? _%e120651120661%_)
                      (let ((_%e120654120669%_
                             (gx#syntax-e _%e120651120661%_)))
                        (let ((_%hd120655120672%_ (##car _%e120654120669%_))
                              (_%tl120656120674%_ (##cdr _%e120654120669%_)))
                          (if (gx#stx-pair? _%tl120656120674%_)
                              (let ((_%e120657120677%_
                                     (gx#syntax-e _%tl120656120674%_)))
                                (let ((_%hd120658120680%_
                                       (##car _%e120657120677%_))
                                      (_%tl120659120682%_
                                       (##cdr _%e120657120677%_)))
                                  (let* ((_%hd120685%_ _%hd120658120680%_)
                                         (_%body120687%_ _%tl120659120682%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120685%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120685%_
                                            (make-list
                                             (gx#stx-length _%hd120685%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120689120692%_
                                                     _%g120690120694%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120689120692%_
                                               _%g120690120694%_
                                               '#t))
                                            _%hd120685%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120685%_))
                                           (gx#core-expand-local-block
                                            _%stx120650%_
                                            _%body120687%_))
                                         gx#current-expander-context
                                         (let ((__obj122123
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122123)
                                           __obj122123))
                                        (_%E120653120665%_)))))
                              (_%E120653120665%_))))
                      (_%E120653120665%_)))))
          (_%E120652120697%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120607%_)
        (if (gx#stx-list? _%stx120607%_)
            (gx#stx-andmap
             (lambda (_%bind120609%_)
               (let* ((_%e120610120620%_ _%bind120609%_)
                      (_%E120612120624%_ (lambda () '#f))
                      (_%E120611120646%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120610120620%_)
                             (let ((_%e120613120628%_
                                    (gx#syntax-e _%e120610120620%_)))
                               (let ((_%hd120614120631%_
                                      (##car _%e120613120628%_))
                                     (_%tl120615120633%_
                                      (##cdr _%e120613120628%_)))
                                 (let ((_%hd120636%_ _%hd120614120631%_))
                                   (if (gx#stx-pair? _%tl120615120633%_)
                                       (let ((_%e120616120638%_
                                              (gx#syntax-e
                                               _%tl120615120633%_)))
                                         (let ((_%hd120617120641%_
                                                (##car _%e120616120638%_))
                                               (_%tl120618120643%_
                                                (##cdr _%e120616120638%_)))
                                           (if (gx#stx-null?
                                                _%tl120618120643%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120636%_)
                                                   (_%E120612120624%_))
                                               (_%E120612120624%_))))
                                       (_%E120612120624%_)))))
                             (_%E120612120624%_)))))
                 (_%E120611120646%_)))
             _%stx120607%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind120563%_)
        (let* ((_%e120564120574%_ _%bind120563%_)
               (_%E120566120578%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120564120574%_)))
               (_%E120565120603%_
                (lambda ()
                  (if (gx#stx-pair? _%e120564120574%_)
                      (let ((_%e120567120582%_
                             (gx#syntax-e _%e120564120574%_)))
                        (let ((_%hd120568120585%_ (##car _%e120567120582%_))
                              (_%tl120569120587%_ (##cdr _%e120567120582%_)))
                          (if (gx#stx-pair? _%tl120569120587%_)
                              (let ((_%e120570120590%_
                                     (gx#syntax-e _%tl120569120587%_)))
                                (let ((_%hd120571120593%_
                                       (##car _%e120570120590%_))
                                      (_%tl120572120595%_
                                       (##cdr _%e120570120590%_)))
                                  (let ((_%expr120598%_ _%hd120571120593%_))
                                    (if (gx#stx-null? _%tl120572120595%_)
                                        (if '#t
                                            (let ((_g122132_
                                                   (gx#core-expand-expression+1
                                                    _%expr120598%_)))
                                              (begin
                                                (let ((_g122133_
                                                       (if (##values?
                                                            _g122132_)
                                                           (##vector-length
                                                            _g122132_)
                                                           1)))
                                                  (if (not (##fx= _g122133_ 2))
                                                      (error "Context expects 2 values"
                                                             _g122133_)))
                                                (let ((_%_120600%_
                                                       (##vector-ref
                                                        _g122132_
                                                        0))
                                                      (_%e120601%_
                                                       (##vector-ref
                                                        _g122132_
                                                        1)))
                                                  _%e120601%_)))
                                            (_%E120566120578%_))
                                        (_%E120566120578%_)))))
                              (_%E120566120578%_))))
                      (_%E120566120578%_)))))
          (_%E120565120603%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind120508%_ _%e120509%_ _%rebind?120510%_)
        (let* ((_%e120511120521%_ _%bind120508%_)
               (_%E120513120525%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120511120521%_)))
               (_%E120512120547%_
                (lambda ()
                  (if (gx#stx-pair? _%e120511120521%_)
                      (let ((_%e120514120529%_
                             (gx#syntax-e _%e120511120521%_)))
                        (let ((_%hd120515120532%_ (##car _%e120514120529%_))
                              (_%tl120516120534%_ (##cdr _%e120514120529%_)))
                          (let ((_%id120537%_ _%hd120515120532%_))
                            (if (gx#stx-pair? _%tl120516120534%_)
                                (let ((_%e120517120539%_
                                       (gx#syntax-e _%tl120516120534%_)))
                                  (let ((_%hd120518120542%_
                                         (##car _%e120517120539%_))
                                        (_%tl120519120544%_
                                         (##cdr _%e120517120539%_)))
                                    (if (gx#stx-null? _%tl120519120544%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id120537%_
                                             _%e120509%_
                                             _%rebind?120510%_)
                                            (_%E120513120525%_))
                                        (_%E120513120525%_))))
                                (_%E120513120525%_)))))
                      (_%E120513120525%_)))))
          (_%E120512120547%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind120554%_ _%e120555%_)
        (let ((_%rebind?120557%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind120554%_
           _%e120555%_
           _%rebind?120557%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g122135_
        (let ((_g122134_ (##length _g122135_)))
          (cond ((##fx= _g122134_ 2)
                 (apply (lambda (_%bind120554%_ _%e120555%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind120554%_
                           _%e120555%_))
                        _g122135_))
                ((##fx= _g122134_ 3)
                 (apply (lambda (_%bind120559%_ _%e120560%_ _%rebind?120561%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind120559%_
                           _%e120560%_
                           _%rebind?120561%_))
                        _g122135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g122135_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx120466%_)
        (let* ((_%e120467120477%_ _%stx120466%_)
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
                          (if (gx#stx-pair? _%tl120472120490%_)
                              (let ((_%e120473120493%_
                                     (gx#syntax-e _%tl120472120490%_)))
                                (let ((_%hd120474120496%_
                                       (##car _%e120473120493%_))
                                      (_%tl120475120498%_
                                       (##cdr _%e120473120493%_)))
                                  (let ((_%expr120501%_ _%hd120474120496%_))
                                    (if (gx#stx-null? _%tl120475120498%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120501%_)
                                            (_%E120469120481%_))
                                        (_%E120469120481%_)))))
                              (_%E120469120481%_))))
                      (_%E120469120481%_)))))
          (_%E120468120503%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx120425%_)
        (let* ((_%e120426120436%_ _%stx120425%_)
               (_%E120428120440%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120426120436%_)))
               (_%E120427120462%_
                (lambda ()
                  (if (gx#stx-pair? _%e120426120436%_)
                      (let ((_%e120429120444%_
                             (gx#syntax-e _%e120426120436%_)))
                        (let ((_%hd120430120447%_ (##car _%e120429120444%_))
                              (_%tl120431120449%_ (##cdr _%e120429120444%_)))
                          (if (gx#stx-pair? _%tl120431120449%_)
                              (let ((_%e120432120452%_
                                     (gx#syntax-e _%tl120431120449%_)))
                                (let ((_%hd120433120455%_
                                       (##car _%e120432120452%_))
                                      (_%tl120434120457%_
                                       (##cdr _%e120432120452%_)))
                                  (let ((_%e120460%_ _%hd120433120455%_))
                                    (if (gx#stx-null? _%tl120434120457%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e120460%_)
                                                         '()))
                                             (gx#stx-source _%stx120425%_))
                                            (_%E120428120440%_))
                                        (_%E120428120440%_)))))
                              (_%E120428120440%_))))
                      (_%E120428120440%_)))))
          (_%E120427120462%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx120384%_)
        (let* ((_%e120385120395%_ _%stx120384%_)
               (_%E120387120399%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120385120395%_)))
               (_%E120386120421%_
                (lambda ()
                  (if (gx#stx-pair? _%e120385120395%_)
                      (let ((_%e120388120403%_
                             (gx#syntax-e _%e120385120395%_)))
                        (let ((_%hd120389120406%_ (##car _%e120388120403%_))
                              (_%tl120390120408%_ (##cdr _%e120388120403%_)))
                          (if (gx#stx-pair? _%tl120390120408%_)
                              (let ((_%e120391120411%_
                                     (gx#syntax-e _%tl120390120408%_)))
                                (let ((_%hd120392120414%_
                                       (##car _%e120391120411%_))
                                      (_%tl120393120416%_
                                       (##cdr _%e120391120411%_)))
                                  (let ((_%e120419%_ _%hd120392120414%_))
                                    (if (gx#stx-null? _%tl120393120416%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e120419%_)
                                                         '()))
                                             (gx#stx-source _%stx120384%_))
                                            (_%E120387120399%_))
                                        (_%E120387120399%_)))))
                              (_%E120387120399%_))))
                      (_%E120387120399%_)))))
          (_%E120386120421%_))))
    (define gx#core-expand-call%
      (lambda (_%stx120341%_)
        (let* ((_%e120342120352%_ _%stx120341%_)
               (_%E120344120356%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120342120352%_)))
               (_%E120343120380%_
                (lambda ()
                  (if (gx#stx-pair? _%e120342120352%_)
                      (let ((_%e120345120360%_
                             (gx#syntax-e _%e120342120352%_)))
                        (let ((_%hd120346120363%_ (##car _%e120345120360%_))
                              (_%tl120347120365%_ (##cdr _%e120345120360%_)))
                          (if (gx#stx-pair? _%tl120347120365%_)
                              (let ((_%e120348120368%_
                                     (gx#syntax-e _%tl120347120365%_)))
                                (let ((_%hd120349120371%_
                                       (##car _%e120348120368%_))
                                      (_%tl120350120373%_
                                       (##cdr _%e120348120368%_)))
                                  (let* ((_%rator120376%_ _%hd120349120371%_)
                                         (_%args120378%_ _%tl120350120373%_))
                                    (if (gx#stx-list? _%args120378%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator120376%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args120378%_))
                                         (gx#stx-source _%stx120341%_))
                                        (_%E120344120356%_)))))
                              (_%E120344120356%_))))
                      (_%E120344120356%_)))))
          (_%E120343120380%_))))
    (define gx#core-expand-if%
      (lambda (_%stx120274%_)
        (let* ((_%e120275120291%_ _%stx120274%_)
               (_%E120277120295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120275120291%_)))
               (_%E120276120337%_
                (lambda ()
                  (if (gx#stx-pair? _%e120275120291%_)
                      (let ((_%e120278120299%_
                             (gx#syntax-e _%e120275120291%_)))
                        (let ((_%hd120279120302%_ (##car _%e120278120299%_))
                              (_%tl120280120304%_ (##cdr _%e120278120299%_)))
                          (if (gx#stx-pair? _%tl120280120304%_)
                              (let ((_%e120281120307%_
                                     (gx#syntax-e _%tl120280120304%_)))
                                (let ((_%hd120282120310%_
                                       (##car _%e120281120307%_))
                                      (_%tl120283120312%_
                                       (##cdr _%e120281120307%_)))
                                  (let ((_%test120315%_ _%hd120282120310%_))
                                    (if (gx#stx-pair? _%tl120283120312%_)
                                        (let ((_%e120284120317%_
                                               (gx#syntax-e
                                                _%tl120283120312%_)))
                                          (let ((_%hd120285120320%_
                                                 (##car _%e120284120317%_))
                                                (_%tl120286120322%_
                                                 (##cdr _%e120284120317%_)))
                                            (let ((_%K120325%_
                                                   _%hd120285120320%_))
                                              (if (gx#stx-pair?
                                                   _%tl120286120322%_)
                                                  (let ((_%e120287120327%_
                                                         (gx#syntax-e
                                                          _%tl120286120322%_)))
                                                    (let ((_%hd120288120330%_
                                                           (##car _%e120287120327%_))
                                                          (_%tl120289120332%_
                                                           (##cdr _%e120287120327%_)))
                                                      (let ((_%E120335%_
                                                             _%hd120288120330%_))
                                                        (if (gx#stx-null?
                                                             _%tl120289120332%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test120315%_)
                                     (cons (gx#core-expand-expression
                                            _%K120325%_)
                                           (cons (gx#core-expand-expression
                                                  _%E120335%_)
                                                 '()))))
                         (gx#stx-source _%stx120274%_))
                        (_%E120277120295%_))
                    (_%E120277120295%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120277120295%_)))))
                                        (_%E120277120295%_)))))
                              (_%E120277120295%_))))
                      (_%E120277120295%_)))))
          (_%E120276120337%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx120233%_)
        (let* ((_%e120234120244%_ _%stx120233%_)
               (_%E120236120248%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120234120244%_)))
               (_%E120235120270%_
                (lambda ()
                  (if (gx#stx-pair? _%e120234120244%_)
                      (let ((_%e120237120252%_
                             (gx#syntax-e _%e120234120244%_)))
                        (let ((_%hd120238120255%_ (##car _%e120237120252%_))
                              (_%tl120239120257%_ (##cdr _%e120237120252%_)))
                          (if (gx#stx-pair? _%tl120239120257%_)
                              (let ((_%e120240120260%_
                                     (gx#syntax-e _%tl120239120257%_)))
                                (let ((_%hd120241120263%_
                                       (##car _%e120240120260%_))
                                      (_%tl120242120265%_
                                       (##cdr _%e120240120260%_)))
                                  (let ((_%id120268%_ _%hd120241120263%_))
                                    (if (gx#stx-null? _%tl120242120265%_)
                                        (if (gx#identifier? _%id120268%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id120268%_
                                                          _%stx120233%_)
                                                         '()))
                                             (gx#stx-source _%stx120233%_))
                                            (_%E120236120248%_))
                                        (_%E120236120248%_)))))
                              (_%E120236120248%_))))
                      (_%E120236120248%_)))))
          (_%E120235120270%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx120179%_)
        (let* ((_%e120180120193%_ _%stx120179%_)
               (_%E120182120197%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120180120193%_)))
               (_%E120181120229%_
                (lambda ()
                  (if (gx#stx-pair? _%e120180120193%_)
                      (let ((_%e120183120201%_
                             (gx#syntax-e _%e120180120193%_)))
                        (let ((_%hd120184120204%_ (##car _%e120183120201%_))
                              (_%tl120185120206%_ (##cdr _%e120183120201%_)))
                          (if (gx#stx-pair? _%tl120185120206%_)
                              (let ((_%e120186120209%_
                                     (gx#syntax-e _%tl120185120206%_)))
                                (let ((_%hd120187120212%_
                                       (##car _%e120186120209%_))
                                      (_%tl120188120214%_
                                       (##cdr _%e120186120209%_)))
                                  (let ((_%id120217%_ _%hd120187120212%_))
                                    (if (gx#stx-pair? _%tl120188120214%_)
                                        (let ((_%e120189120219%_
                                               (gx#syntax-e
                                                _%tl120188120214%_)))
                                          (let ((_%hd120190120222%_
                                                 (##car _%e120189120219%_))
                                                (_%tl120191120224%_
                                                 (##cdr _%e120189120219%_)))
                                            (let ((_%expr120227%_
                                                   _%hd120190120222%_))
                                              (if (gx#stx-null?
                                                   _%tl120191120224%_)
                                                  (if (gx#identifier?
                                                       _%id120217%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id120217%_
                            _%stx120179%_)
                           (cons (gx#core-expand-expression _%expr120227%_)
                                 '())))
               (gx#stx-source _%stx120179%_))
              (_%E120182120197%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120182120197%_)))))
                                        (_%E120182120197%_)))))
                              (_%E120182120197%_))))
                      (_%E120182120197%_)))))
          (_%E120181120229%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx120024%_)
        (letrec ((_%generate120026%_
                  (lambda (_%body120056%_)
                    (let _%lp120058%_ ((_%rest120060%_ _%body120056%_)
                                       (_%ns120061%_
                                        (gx#core-context-namespace__0))
                                       (_%r120062%_ '()))
                      (let* ((_%e120063120078%_ _%rest120060%_)
                             (_%E120076120082%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e120063120078%_)))
                             (_%E120072120086%_
                              (lambda ()
                                (if (gx#stx-null? _%e120063120078%_)
                                    (if '#t
                                        (reverse _%r120062%_)
                                        (_%E120076120082%_))
                                    (_%E120076120082%_))))
                             (_%E120065120143%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120063120078%_)
                                    (let ((_%e120073120090%_
                                           (gx#syntax-e _%e120063120078%_)))
                                      (let ((_%hd120074120093%_
                                             (##car _%e120073120090%_))
                                            (_%tl120075120095%_
                                             (##cdr _%e120073120090%_)))
                                        (let* ((_%hd120098%_
                                                _%hd120074120093%_)
                                               (_%rest120100%_
                                                _%tl120075120095%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd120098%_)
                                                  (_%lp120058%_
                                                   _%rest120100%_
                                                   _%ns120061%_
                                                   (cons (cons _%hd120098%_
                                                               (cons (if _%ns120061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd120098%_
                                  _%ns120061%_
                                  '"#"
                                  _%hd120098%_)
                                 _%hd120098%_)
                             '()))
                 _%r120062%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e120101120111%_
                                                          _%hd120098%_)
                                                         (_%E120103120115%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e120101120111%_)))
                                                         (_%E120102120139%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e120101120111%_)
                        (let ((_%e120104120119%_
                               (gx#syntax-e _%e120101120111%_)))
                          (let ((_%hd120105120122%_ (##car _%e120104120119%_))
                                (_%tl120106120124%_ (##cdr _%e120104120119%_)))
                            (let ((_%id120127%_ _%hd120105120122%_))
                              (if (gx#stx-pair? _%tl120106120124%_)
                                  (let ((_%e120107120129%_
                                         (gx#syntax-e _%tl120106120124%_)))
                                    (let ((_%hd120108120132%_
                                           (##car _%e120107120129%_))
                                          (_%tl120109120134%_
                                           (##cdr _%e120107120129%_)))
                                      (let ((_%eid120137%_ _%hd120108120132%_))
                                        (if (gx#stx-null? _%tl120109120134%_)
                                            (if (and (gx#identifier?
                                                      _%id120127%_)
                                                     (gx#identifier?
                                                      _%eid120137%_))
                                                (_%lp120058%_
                                                 _%rest120100%_
                                                 _%ns120061%_
                                                 (cons (cons _%id120127%_
                                                             (cons _%eid120137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r120062%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120103120115%_))
                                            (_%E120103120115%_)))))
                                  (_%E120103120115%_)))))
                        (_%E120103120115%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120102120139%_)))
                                              (_%E120072120086%_)))))
                                    (_%E120072120086%_))))
                             (_%E120064120175%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120063120078%_)
                                    (let ((_%e120066120147%_
                                           (gx#syntax-e _%e120063120078%_)))
                                      (let ((_%hd120067120150%_
                                             (##car _%e120066120147%_))
                                            (_%tl120068120152%_
                                             (##cdr _%e120066120147%_)))
                                        (if (eq? (gx#stx-e _%hd120067120150%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl120068120152%_)
                                                (let ((_%e120069120155%_
                                                       (gx#syntax-e
                                                        _%tl120068120152%_)))
                                                  (let ((_%hd120070120158%_
                                                         (##car _%e120069120155%_))
                                                        (_%tl120071120160%_
                                                         (##cdr _%e120069120155%_)))
                                                    (let* ((_%ns120163%_
                                                            _%hd120070120158%_)
                                                           (_%rest120165%_
                                                            _%tl120071120160%_))
                                                      (if '#t
                                                          (let ((_%ns120173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns120163%_)
                             (let () (symbol->string (gx#stx-e _%ns120163%_)))
                             (if (or (gx#stx-string? _%ns120163%_)
                                     (gx#stx-false? _%ns120163%_))
                                 (let () (gx#stx-e _%ns120163%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx120024%_
                                    _%ns120163%_))))))
                    (_%lp120058%_ _%rest120165%_ _%ns120173%_ _%r120062%_))
                  (_%E120065120143%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120065120143%_))
                                            (_%E120065120143%_))))
                                    (_%E120065120143%_)))))
                        (_%E120064120175%_))))))
          (let* ((_%e120027120034%_ _%stx120024%_)
                 (_%E120029120038%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120027120034%_)))
                 (_%E120028120052%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120027120034%_)
                        (let ((_%e120030120042%_
                               (gx#syntax-e _%e120027120034%_)))
                          (let ((_%hd120031120045%_ (##car _%e120030120042%_))
                                (_%tl120032120047%_ (##cdr _%e120030120042%_)))
                            (let ((_%body120050%_ _%tl120032120047%_))
                              (if (gx#stx-list? _%body120050%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate120026%_ _%body120050%_))
                                  (_%E120029120038%_)))))
                        (_%E120029120038%_)))))
            (_%E120028120052%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119970%_)
        (let* ((_%e119971119984%_ _%stx119970%_)
               (_%E119973119988%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119971119984%_)))
               (_%E119972120020%_
                (lambda ()
                  (if (gx#stx-pair? _%e119971119984%_)
                      (let ((_%e119974119992%_
                             (gx#syntax-e _%e119971119984%_)))
                        (let ((_%hd119975119995%_ (##car _%e119974119992%_))
                              (_%tl119976119997%_ (##cdr _%e119974119992%_)))
                          (if (gx#stx-pair? _%tl119976119997%_)
                              (let ((_%e119977120000%_
                                     (gx#syntax-e _%tl119976119997%_)))
                                (let ((_%hd119978120003%_
                                       (##car _%e119977120000%_))
                                      (_%tl119979120005%_
                                       (##cdr _%e119977120000%_)))
                                  (let ((_%hd120008%_ _%hd119978120003%_))
                                    (if (gx#stx-pair? _%tl119979120005%_)
                                        (let ((_%e119980120010%_
                                               (gx#syntax-e
                                                _%tl119979120005%_)))
                                          (let ((_%hd119981120013%_
                                                 (##car _%e119980120010%_))
                                                (_%tl119982120015%_
                                                 (##cdr _%e119980120010%_)))
                                            (let ((_%expr120018%_
                                                   _%hd119981120013%_))
                                              (if (gx#stx-null?
                                                   _%tl119982120015%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd120008%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd120008%_)
                          (cons _%expr120018%_ '())))
              (_%E119973119988%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119973119988%_)))))
                                        (_%E119973119988%_)))))
                              (_%E119973119988%_))))
                      (_%E119973119988%_)))))
          (_%E119972120020%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119916%_)
        (let* ((_%e119917119930%_ _%stx119916%_)
               (_%E119919119934%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119917119930%_)))
               (_%E119918119966%_
                (lambda ()
                  (if (gx#stx-pair? _%e119917119930%_)
                      (let ((_%e119920119938%_
                             (gx#syntax-e _%e119917119930%_)))
                        (let ((_%hd119921119941%_ (##car _%e119920119938%_))
                              (_%tl119922119943%_ (##cdr _%e119920119938%_)))
                          (if (gx#stx-pair? _%tl119922119943%_)
                              (let ((_%e119923119946%_
                                     (gx#syntax-e _%tl119922119943%_)))
                                (let ((_%hd119924119949%_
                                       (##car _%e119923119946%_))
                                      (_%tl119925119951%_
                                       (##cdr _%e119923119946%_)))
                                  (let ((_%hd119954%_ _%hd119924119949%_))
                                    (if (gx#stx-pair? _%tl119925119951%_)
                                        (let ((_%e119926119956%_
                                               (gx#syntax-e
                                                _%tl119925119951%_)))
                                          (let ((_%hd119927119959%_
                                                 (##car _%e119926119956%_))
                                                (_%tl119928119961%_
                                                 (##cdr _%e119926119956%_)))
                                            (let ((_%expr119964%_
                                                   _%hd119927119959%_))
                                              (if (gx#stx-null?
                                                   _%tl119928119961%_)
                                                  (if (gx#identifier?
                                                       _%hd119954%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119964%_ '())))
              (_%E119919119934%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119919119934%_)))))
                                        (_%E119919119934%_)))))
                              (_%E119919119934%_))))
                      (_%E119919119934%_)))))
          (_%E119918119966%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119862%_)
        (let* ((_%e119863119876%_ _%stx119862%_)
               (_%E119865119880%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119863119876%_)))
               (_%E119864119912%_
                (lambda ()
                  (if (gx#stx-pair? _%e119863119876%_)
                      (let ((_%e119866119884%_
                             (gx#syntax-e _%e119863119876%_)))
                        (let ((_%hd119867119887%_ (##car _%e119866119884%_))
                              (_%tl119868119889%_ (##cdr _%e119866119884%_)))
                          (if (gx#stx-pair? _%tl119868119889%_)
                              (let ((_%e119869119892%_
                                     (gx#syntax-e _%tl119868119889%_)))
                                (let ((_%hd119870119895%_
                                       (##car _%e119869119892%_))
                                      (_%tl119871119897%_
                                       (##cdr _%e119869119892%_)))
                                  (let ((_%id119900%_ _%hd119870119895%_))
                                    (if (gx#stx-pair? _%tl119871119897%_)
                                        (let ((_%e119872119902%_
                                               (gx#syntax-e
                                                _%tl119871119897%_)))
                                          (let ((_%hd119873119905%_
                                                 (##car _%e119872119902%_))
                                                (_%tl119874119907%_
                                                 (##cdr _%e119872119902%_)))
                                            (let ((_%alias-id119910%_
                                                   _%hd119873119905%_))
                                              (if (gx#stx-null?
                                                   _%tl119874119907%_)
                                                  (if (and (gx#identifier?
                                                            _%id119900%_)
                                                           (gx#identifier?
                                                            _%alias-id119910%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119910%_ '())))
              (_%E119865119880%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119865119880%_)))))
                                        (_%E119865119880%_)))))
                              (_%E119865119880%_))))
                      (_%E119865119880%_)))))
          (_%E119864119912%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119819%_)
        (let* ((_%e119820119830%_ _%stx119819%_)
               (_%E119822119834%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119820119830%_)))
               (_%E119821119858%_
                (lambda ()
                  (if (gx#stx-pair? _%e119820119830%_)
                      (let ((_%e119823119838%_
                             (gx#syntax-e _%e119820119830%_)))
                        (let ((_%hd119824119841%_ (##car _%e119823119838%_))
                              (_%tl119825119843%_ (##cdr _%e119823119838%_)))
                          (if (gx#stx-pair? _%tl119825119843%_)
                              (let ((_%e119826119846%_
                                     (gx#syntax-e _%tl119825119843%_)))
                                (let ((_%hd119827119849%_
                                       (##car _%e119826119846%_))
                                      (_%tl119828119851%_
                                       (##cdr _%e119826119846%_)))
                                  (let* ((_%hd119854%_ _%hd119827119849%_)
                                         (_%body119856%_ _%tl119828119851%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119854%_)
                                             (gx#stx-list? _%body119856%_)
                                             (not (gx#stx-null?
                                                   _%body119856%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119854%_)
                                         _%body119856%_)
                                        (_%E119822119834%_)))))
                              (_%E119822119834%_))))
                      (_%E119822119834%_)))))
          (_%E119821119858%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119755%_)
        (letrec ((_%generate119757%_
                  (lambda (_%clause119787%_)
                    (let* ((_%e119788119795%_ _%clause119787%_)
                           (_%E119790119799%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119755%_
                               _%clause119787%_)))
                           (_%E119789119815%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119788119795%_)
                                  (let ((_%e119791119803%_
                                         (gx#syntax-e _%e119788119795%_)))
                                    (let ((_%hd119792119806%_
                                           (##car _%e119791119803%_))
                                          (_%tl119793119808%_
                                           (##cdr _%e119791119803%_)))
                                      (let* ((_%hd119811%_ _%hd119792119806%_)
                                             (_%body119813%_
                                              _%tl119793119808%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119811%_)
                                                 (gx#stx-list? _%body119813%_)
                                                 (not (gx#stx-null?
                                                       _%body119813%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119811%_)
                                                   _%body119813%_)
                                             (gx#stx-source _%clause119787%_))
                                            (_%E119790119799%_)))))
                                  (_%E119790119799%_)))))
                      (_%E119789119815%_)))))
          (let* ((_%e119758119765%_ _%stx119755%_)
                 (_%E119760119769%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119758119765%_)))
                 (_%E119759119783%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119758119765%_)
                        (let ((_%e119761119773%_
                               (gx#syntax-e _%e119758119765%_)))
                          (let ((_%hd119762119776%_ (##car _%e119761119773%_))
                                (_%tl119763119778%_ (##cdr _%e119761119773%_)))
                            (let ((_%clauses119781%_ _%tl119763119778%_))
                              (if (gx#stx-list? _%clauses119781%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119757%_
                                    _%clauses119781%_))
                                  (_%E119760119769%_)))))
                        (_%E119760119769%_)))))
            (_%E119759119783%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119656%_ _%form119657%_)
        (letrec ((_%generate119659%_
                  (lambda (_%bind119702%_)
                    (let* ((_%e119703119713%_ _%bind119702%_)
                           (_%E119705119717%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119656%_
                               _%bind119702%_)))
                           (_%E119704119741%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119703119713%_)
                                  (let ((_%e119706119721%_
                                         (gx#syntax-e _%e119703119713%_)))
                                    (let ((_%hd119707119724%_
                                           (##car _%e119706119721%_))
                                          (_%tl119708119726%_
                                           (##cdr _%e119706119721%_)))
                                      (let ((_%ids119729%_ _%hd119707119724%_))
                                        (if (gx#stx-pair? _%tl119708119726%_)
                                            (let ((_%e119709119731%_
                                                   (gx#syntax-e
                                                    _%tl119708119726%_)))
                                              (let ((_%hd119710119734%_
                                                     (##car _%e119709119731%_))
                                                    (_%tl119711119736%_
                                                     (##cdr _%e119709119731%_)))
                                                (let ((_%expr119739%_
                                                       _%hd119710119734%_))
                                                  (if (gx#stx-null?
                                                       _%tl119711119736%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119729%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119729%_)
                        (cons _%expr119739%_ '()))
                  (_%E119705119717%_))
              (_%E119705119717%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119705119717%_)))))
                                  (_%E119705119717%_)))))
                      (_%E119704119741%_)))))
          (let* ((_%e119660119670%_ _%stx119656%_)
                 (_%E119662119674%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119660119670%_)))
                 (_%E119661119698%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119660119670%_)
                        (let ((_%e119663119678%_
                               (gx#syntax-e _%e119660119670%_)))
                          (let ((_%hd119664119681%_ (##car _%e119663119678%_))
                                (_%tl119665119683%_ (##cdr _%e119663119678%_)))
                            (if (gx#stx-pair? _%tl119665119683%_)
                                (let ((_%e119666119686%_
                                       (gx#syntax-e _%tl119665119683%_)))
                                  (let ((_%hd119667119689%_
                                         (##car _%e119666119686%_))
                                        (_%tl119668119691%_
                                         (##cdr _%e119666119686%_)))
                                    (let* ((_%hd119694%_ _%hd119667119689%_)
                                           (_%body119696%_ _%tl119668119691%_))
                                      (if (and (gx#stx-list? _%hd119694%_)
                                               (gx#stx-list? _%body119696%_)
                                               (not (gx#stx-null?
                                                     _%body119696%_)))
                                          (gx#core-cons*
                                           _%form119657%_
                                           (gx#stx-map1
                                            _%generate119659%_
                                            _%hd119694%_)
                                           _%body119696%_)
                                          (_%E119662119674%_)))))
                                (_%E119662119674%_))))
                        (_%E119662119674%_)))))
            (_%E119661119698%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119748%_)
        (let ((_%form119750%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119748%_ _%form119750%_))))
    (define gx#macro-expand-let-values
      (lambda _g122137_
        (let ((_g122136_ (##length _g122137_)))
          (cond ((##fx= _g122136_ 1)
                 (apply (lambda (_%stx119748%_)
                          (gx#macro-expand-let-values__0 _%stx119748%_))
                        _g122137_))
                ((##fx= _g122136_ 2)
                 (apply (lambda (_%stx119752%_ _%form119753%_)
                          (gx#macro-expand-let-values__%
                           _%stx119752%_
                           _%form119753%_))
                        _g122137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g122137_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119653%_)
        (gx#macro-expand-let-values__% _%stx119653%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119651%_)
        (gx#macro-expand-let-values__% _%stx119651%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx119542%_)
        (let* ((_%e119543119569%_ _%stx119542%_)
               (_%E119555119573%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119543119569%_)))
               (_%E119545119615%_
                (lambda ()
                  (if (gx#stx-pair? _%e119543119569%_)
                      (let ((_%e119556119577%_
                             (gx#syntax-e _%e119543119569%_)))
                        (let ((_%hd119557119580%_ (##car _%e119556119577%_))
                              (_%tl119558119582%_ (##cdr _%e119556119577%_)))
                          (if (gx#stx-pair? _%tl119558119582%_)
                              (let ((_%e119559119585%_
                                     (gx#syntax-e _%tl119558119582%_)))
                                (let ((_%hd119560119588%_
                                       (##car _%e119559119585%_))
                                      (_%tl119561119590%_
                                       (##cdr _%e119559119585%_)))
                                  (let ((_%test119593%_ _%hd119560119588%_))
                                    (if (gx#stx-pair? _%tl119561119590%_)
                                        (let ((_%e119562119595%_
                                               (gx#syntax-e
                                                _%tl119561119590%_)))
                                          (let ((_%hd119563119598%_
                                                 (##car _%e119562119595%_))
                                                (_%tl119564119600%_
                                                 (##cdr _%e119562119595%_)))
                                            (let ((_%K119603%_
                                                   _%hd119563119598%_))
                                              (if (gx#stx-pair?
                                                   _%tl119564119600%_)
                                                  (let ((_%e119565119605%_
                                                         (gx#syntax-e
                                                          _%tl119564119600%_)))
                                                    (let ((_%hd119566119608%_
                                                           (##car _%e119565119605%_))
                                                          (_%tl119567119610%_
                                                           (##cdr _%e119565119605%_)))
                                                      (let ((_%E119613%_
                                                             _%hd119566119608%_))
                                                        (if (gx#stx-null?
                                                             _%tl119567119610%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119593%_
                         _%K119603%_
                         _%E119613%_)
                        (_%E119555119573%_))
                    (_%E119555119573%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119555119573%_)))))
                                        (_%E119555119573%_)))))
                              (_%E119555119573%_))))
                      (_%E119555119573%_))))
               (_%E119544119647%_
                (lambda ()
                  (if (gx#stx-pair? _%e119543119569%_)
                      (let ((_%e119546119619%_
                             (gx#syntax-e _%e119543119569%_)))
                        (let ((_%hd119547119622%_ (##car _%e119546119619%_))
                              (_%tl119548119624%_ (##cdr _%e119546119619%_)))
                          (if (gx#stx-pair? _%tl119548119624%_)
                              (let ((_%e119549119627%_
                                     (gx#syntax-e _%tl119548119624%_)))
                                (let ((_%hd119550119630%_
                                       (##car _%e119549119627%_))
                                      (_%tl119551119632%_
                                       (##cdr _%e119549119627%_)))
                                  (let ((_%test119635%_ _%hd119550119630%_))
                                    (if (gx#stx-pair? _%tl119551119632%_)
                                        (let ((_%e119552119637%_
                                               (gx#syntax-e
                                                _%tl119551119632%_)))
                                          (let ((_%hd119553119640%_
                                                 (##car _%e119552119637%_))
                                                (_%tl119554119642%_
                                                 (##cdr _%e119552119637%_)))
                                            (let ((_%K119645%_
                                                   _%hd119553119640%_))
                                              (if (gx#stx-null?
                                                   _%tl119554119642%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119635%_
                                                       _%K119645%_
                                                       '#!void)
                                                      (_%E119545119615%_))
                                                  (_%E119545119615%_)))))
                                        (_%E119545119615%_)))))
                              (_%E119545119615%_))))
                      (_%E119545119615%_)))))
          (_%E119544119647%_))))
    (define gx#free-identifier=?
      (lambda (_%xid119527%_ _%yid119528%_)
        (let ((_%xe119530%_ (gx#resolve-identifier__0 _%xid119527%_))
              (_%ye119531%_ (gx#resolve-identifier__0 _%yid119528%_)))
          (if (and _%xe119530%_ _%ye119531%_)
              (let ((_%$e119534%_ (eq? _%xe119530%_ _%ye119531%_)))
                (if _%$e119534%_
                    _%$e119534%_
                    (if (##structure-instance-of? _%xe119530%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye119531%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe119530%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye119531%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe119530%_ _%ye119531%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid119527%_ _%yid119528%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid119508%_ _%yid119509%_)
        (letrec ((_%context119511%_
                  (lambda (_%e119525%_)
                    (if (##structure-direct-instance-of?
                         _%e119525%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e119525%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks119512%_
                  (lambda (_%e119520%_)
                    (if (symbol? _%e119520%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e119520%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e119520%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e119520%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap119513%_
                  (lambda (_%e119518%_)
                    (if (symbol? _%e119518%_)
                        _%e119518%_
                        (gx#syntax-local-unwrap _%e119518%_)))))
          (let ((_%x119515%_ (_%unwrap119513%_ _%xid119508%_))
                (_%y119516%_ (_%unwrap119513%_ _%yid119509%_)))
            (if (gx#stx-eq? _%x119515%_ _%y119516%_)
                (if (eq? (_%context119511%_ _%x119515%_)
                         (_%context119511%_ _%y119516%_))
                    (equal? (_%marks119512%_ _%x119515%_)
                            (_%marks119512%_ _%y119516%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx119506%_)
        (if (gx#identifier? _%stx119506%_)
            (gx#core-identifier=? _%stx119506%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx119504%_)
        (if (gx#identifier? _%stx119504%_)
            (gx#core-identifier=? _%stx119504%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx119447%_ _%where119448%_)
        (let _%lp119450%_ ((_%rest119452%_ (gx#syntax->list _%stx119447%_)))
          (let* ((_%rest119453119461%_ _%rest119452%_)
                 (_%else119455119469%_ (lambda () '#t))
                 (_%K119457119482%_
                  (lambda (_%rest119472%_ _%hd119473%_)
                    (if (not (gx#identifier? _%hd119473%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where119448%_
                           _%hd119473%_))
                        (if (__find (lambda (_%g119475119477%_)
                                      (gx#bound-identifier=?
                                       _%g119475119477%_
                                       _%hd119473%_))
                                    _%rest119472%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where119448%_
                               _%hd119473%_))
                            (let () (_%lp119450%_ _%rest119472%_)))))))
            (if (##pair? _%rest119453119461%_)
                (let ((_%hd119458119485%_ (##car _%rest119453119461%_))
                      (_%tl119459119487%_ (##cdr _%rest119453119461%_)))
                  (let* ((_%hd119490%_ _%hd119458119485%_)
                         (_%rest119492%_ _%tl119459119487%_))
                    (_%K119457119482%_ _%rest119492%_ _%hd119490%_)))
                (_%else119455119469%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx119497%_)
        (let ((_%where119499%_ _%stx119497%_))
          (gx#check-duplicate-identifiers__% _%stx119497%_ _%where119499%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g122139_
        (let ((_g122138_ (##length _g122139_)))
          (cond ((##fx= _g122138_ 1)
                 (apply (lambda (_%stx119497%_)
                          (gx#check-duplicate-identifiers__0 _%stx119497%_))
                        _g122139_))
                ((##fx= _g122138_ 2)
                 (apply (lambda (_%stx119501%_ _%where119502%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx119501%_
                           _%where119502%_))
                        _g122139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g122139_))))))
    (define gx#core-bind-values?
      (lambda (_%stx119439%_)
        (gx#stx-andmap
         (lambda (_%x119441%_)
           (let ((_%$e119443%_ (gx#identifier? _%x119441%_)))
             (if _%$e119443%_ _%$e119443%_ (gx#stx-false? _%x119441%_))))
         _%stx119439%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx119403%_ _%rebind?119404%_ _%phi119405%_ _%ctx119406%_)
        (gx#stx-for-each1
         (lambda (_%id119408%_)
           (if (gx#identifier? _%id119408%_)
               (gx#core-bind-runtime!__%
                _%id119408%_
                _%rebind?119404%_
                _%phi119405%_
                _%ctx119406%_)
               '#!void))
         _%stx119403%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx119413%_)
        (let* ((_%rebind?119415%_ '#f)
               (_%phi119417%_ (gx#current-expander-phi))
               (_%ctx119419%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119413%_
           _%rebind?119415%_
           _%phi119417%_
           _%ctx119419%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx119421%_ _%rebind?119422%_)
        (let* ((_%phi119424%_ (gx#current-expander-phi))
               (_%ctx119426%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119421%_
           _%rebind?119422%_
           _%phi119424%_
           _%ctx119426%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx119428%_ _%rebind?119429%_ _%phi119430%_)
        (let ((_%ctx119432%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119428%_
           _%rebind?119429%_
           _%phi119430%_
           _%ctx119432%_))))
    (define gx#core-bind-values!
      (lambda _g122141_
        (let ((_g122140_ (##length _g122141_)))
          (cond ((##fx= _g122140_ 1)
                 (apply (lambda (_%stx119413%_)
                          (gx#core-bind-values!__0 _%stx119413%_))
                        _g122141_))
                ((##fx= _g122140_ 2)
                 (apply (lambda (_%stx119421%_ _%rebind?119422%_)
                          (gx#core-bind-values!__1
                           _%stx119421%_
                           _%rebind?119422%_))
                        _g122141_))
                ((##fx= _g122140_ 3)
                 (apply (lambda (_%stx119428%_ _%rebind?119429%_ _%phi119430%_)
                          (gx#core-bind-values!__2
                           _%stx119428%_
                           _%rebind?119429%_
                           _%phi119430%_))
                        _g122141_))
                ((##fx= _g122140_ 4)
                 (apply (lambda (_%stx119434%_
                                 _%rebind?119435%_
                                 _%phi119436%_
                                 _%ctx119437%_)
                          (gx#core-bind-values!__%
                           _%stx119434%_
                           _%rebind?119435%_
                           _%phi119436%_
                           _%ctx119437%_))
                        _g122141_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g122141_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx119398%_)
        (gx#stx-map1
         (lambda (_%x119400%_)
           (if (gx#identifier? _%x119400%_)
               (gx#core-quote-syntax__0 _%x119400%_)
               '#f))
         _%stx119398%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx119391%_)
        (if (gx#identifier? _%stx119391%_)
            (let* ((_%bind119393%_ (gx#resolve-identifier__0 _%stx119391%_))
                   (_%$e119395%_ (not _%bind119393%_)))
              (if _%$e119395%_
                  _%$e119395%_
                  (##structure-instance-of?
                   _%bind119393%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id119380%_ _%form119381%_)
        (let ((_%bind119383%_ (gx#resolve-identifier__0 _%id119380%_)))
          (if (##structure-instance-of? _%bind119383%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id119380%_))
              (if (not _%bind119383%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id119380%_)))
                        (gx#core-quote-syntax__0 _%id119380%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form119381%_
                         _%id119380%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form119381%_
                     _%id119380%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id119335%_ _%rebind?119336%_ _%phi119337%_ _%ctx119338%_)
        (let* ((_%key119340%_ (gx#core-identifier-key _%id119335%_))
               (_%eid119342%_
                (gx#make-binding-id__%
                 _%key119340%_
                 '#f
                 _%phi119337%_
                 _%ctx119338%_))
               (_%bind119348%_
                (if (##structure-instance-of?
                     _%ctx119338%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119342%_
                       _%key119340%_
                       _%phi119337%_
                       _%ctx119338%_))
                    (if (##structure-instance-of?
                         _%ctx119338%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119342%_
                           _%key119340%_
                           _%phi119337%_))
                        (if (##structure-instance-of?
                             _%ctx119338%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid119342%_
                               _%key119340%_
                               _%phi119337%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid119342%_
                               _%key119340%_
                               _%phi119337%_)))))))
          (gx#bind-identifier!__%
           _%id119335%_
           _%bind119348%_
           _%rebind?119336%_
           _%phi119337%_
           _%ctx119338%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id119354%_)
        (let* ((_%rebind?119356%_ '#f)
               (_%phi119358%_ (gx#current-expander-phi))
               (_%ctx119360%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119354%_
           _%rebind?119356%_
           _%phi119358%_
           _%ctx119360%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id119362%_ _%rebind?119363%_)
        (let* ((_%phi119365%_ (gx#current-expander-phi))
               (_%ctx119367%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119362%_
           _%rebind?119363%_
           _%phi119365%_
           _%ctx119367%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id119369%_ _%rebind?119370%_ _%phi119371%_)
        (let ((_%ctx119373%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119369%_
           _%rebind?119370%_
           _%phi119371%_
           _%ctx119373%_))))
    (define gx#core-bind-runtime!
      (lambda _g122143_
        (let ((_g122142_ (##length _g122143_)))
          (cond ((##fx= _g122142_ 1)
                 (apply (lambda (_%id119354%_)
                          (gx#core-bind-runtime!__0 _%id119354%_))
                        _g122143_))
                ((##fx= _g122142_ 2)
                 (apply (lambda (_%id119362%_ _%rebind?119363%_)
                          (gx#core-bind-runtime!__1
                           _%id119362%_
                           _%rebind?119363%_))
                        _g122143_))
                ((##fx= _g122142_ 3)
                 (apply (lambda (_%id119369%_ _%rebind?119370%_ _%phi119371%_)
                          (gx#core-bind-runtime!__2
                           _%id119369%_
                           _%rebind?119370%_
                           _%phi119371%_))
                        _g122143_))
                ((##fx= _g122142_ 4)
                 (apply (lambda (_%id119375%_
                                 _%rebind?119376%_
                                 _%phi119377%_
                                 _%ctx119378%_)
                          (gx#core-bind-runtime!__%
                           _%id119375%_
                           _%rebind?119376%_
                           _%phi119377%_
                           _%ctx119378%_))
                        _g122143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g122143_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id119287%_
               _%eid119288%_
               _%rebind?119289%_
               _%phi119290%_
               _%ctx119291%_)
        (let* ((_%key119293%_ (gx#core-identifier-key _%id119287%_))
               (_%bind119298%_
                (if (##structure-instance-of?
                     _%ctx119291%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119288%_
                       _%key119293%_
                       _%phi119290%_
                       _%ctx119291%_))
                    (if (##structure-instance-of?
                         _%ctx119291%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119288%_
                           _%key119293%_
                           _%phi119290%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid119288%_
                           _%key119293%_
                           _%phi119290%_))))))
          (gx#bind-identifier!__%
           _%id119287%_
           _%bind119298%_
           _%rebind?119289%_
           _%phi119290%_
           _%ctx119291%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id119304%_ _%eid119305%_)
        (let* ((_%rebind?119307%_ '#f)
               (_%phi119309%_ (gx#current-expander-phi))
               (_%ctx119311%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119304%_
           _%eid119305%_
           _%rebind?119307%_
           _%phi119309%_
           _%ctx119311%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id119313%_ _%eid119314%_ _%rebind?119315%_)
        (let* ((_%phi119317%_ (gx#current-expander-phi))
               (_%ctx119319%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119313%_
           _%eid119314%_
           _%rebind?119315%_
           _%phi119317%_
           _%ctx119319%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id119321%_ _%eid119322%_ _%rebind?119323%_ _%phi119324%_)
        (let ((_%ctx119326%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119321%_
           _%eid119322%_
           _%rebind?119323%_
           _%phi119324%_
           _%ctx119326%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g122145_
        (let ((_g122144_ (##length _g122145_)))
          (cond ((##fx= _g122144_ 2)
                 (apply (lambda (_%id119304%_ _%eid119305%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id119304%_
                           _%eid119305%_))
                        _g122145_))
                ((##fx= _g122144_ 3)
                 (apply (lambda (_%id119313%_ _%eid119314%_ _%rebind?119315%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id119313%_
                           _%eid119314%_
                           _%rebind?119315%_))
                        _g122145_))
                ((##fx= _g122144_ 4)
                 (apply (lambda (_%id119321%_
                                 _%eid119322%_
                                 _%rebind?119323%_
                                 _%phi119324%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id119321%_
                           _%eid119322%_
                           _%rebind?119323%_
                           _%phi119324%_))
                        _g122145_))
                ((##fx= _g122144_ 5)
                 (apply (lambda (_%id119328%_
                                 _%eid119329%_
                                 _%rebind?119330%_
                                 _%phi119331%_
                                 _%ctx119332%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id119328%_
                           _%eid119329%_
                           _%rebind?119330%_
                           _%phi119331%_
                           _%ctx119332%_))
                        _g122145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g122145_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id119247%_
               _%eid119248%_
               _%rebind?119249%_
               _%phi119250%_
               _%ctx119251%_)
        (gx#bind-identifier!__%
         _%id119247%_
         (##structure
          gx#extern-binding::t
          _%eid119248%_
          (gx#core-identifier-key _%id119247%_)
          _%phi119250%_)
         _%rebind?119249%_
         _%phi119250%_
         _%ctx119251%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id119256%_ _%eid119257%_)
        (let* ((_%rebind?119259%_ '#f)
               (_%phi119261%_ (gx#current-expander-phi))
               (_%ctx119263%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119256%_
           _%eid119257%_
           _%rebind?119259%_
           _%phi119261%_
           _%ctx119263%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id119265%_ _%eid119266%_ _%rebind?119267%_)
        (let* ((_%phi119269%_ (gx#current-expander-phi))
               (_%ctx119271%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119265%_
           _%eid119266%_
           _%rebind?119267%_
           _%phi119269%_
           _%ctx119271%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id119273%_ _%eid119274%_ _%rebind?119275%_ _%phi119276%_)
        (let ((_%ctx119278%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119273%_
           _%eid119274%_
           _%rebind?119275%_
           _%phi119276%_
           _%ctx119278%_))))
    (define gx#core-bind-extern!
      (lambda _g122147_
        (let ((_g122146_ (##length _g122147_)))
          (cond ((##fx= _g122146_ 2)
                 (apply (lambda (_%id119256%_ _%eid119257%_)
                          (gx#core-bind-extern!__0 _%id119256%_ _%eid119257%_))
                        _g122147_))
                ((##fx= _g122146_ 3)
                 (apply (lambda (_%id119265%_ _%eid119266%_ _%rebind?119267%_)
                          (gx#core-bind-extern!__1
                           _%id119265%_
                           _%eid119266%_
                           _%rebind?119267%_))
                        _g122147_))
                ((##fx= _g122146_ 4)
                 (apply (lambda (_%id119273%_
                                 _%eid119274%_
                                 _%rebind?119275%_
                                 _%phi119276%_)
                          (gx#core-bind-extern!__2
                           _%id119273%_
                           _%eid119274%_
                           _%rebind?119275%_
                           _%phi119276%_))
                        _g122147_))
                ((##fx= _g122146_ 5)
                 (apply (lambda (_%id119280%_
                                 _%eid119281%_
                                 _%rebind?119282%_
                                 _%phi119283%_
                                 _%ctx119284%_)
                          (gx#core-bind-extern!__%
                           _%id119280%_
                           _%eid119281%_
                           _%rebind?119282%_
                           _%phi119283%_
                           _%ctx119284%_))
                        _g122147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g122147_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id119201%_
               _%e119202%_
               _%rebind?119203%_
               _%phi119204%_
               _%ctx119205%_)
        (gx#bind-identifier!__%
         _%id119201%_
         (let ((_%key119210%_ (gx#core-identifier-key _%id119201%_))
               (_%e119211%_
                (if (or (##structure-instance-of? _%e119202%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e119202%_
                         'gx#expander-context::t))
                    _%e119202%_
                    (##structure
                     gx#user-expander::t
                     _%e119202%_
                     _%ctx119205%_
                     _%phi119204%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key119210%_
             '#t
             _%phi119204%_
             _%ctx119205%_)
            _%key119210%_
            _%phi119204%_
            _%e119211%_))
         _%rebind?119203%_
         _%phi119204%_
         _%ctx119205%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id119216%_ _%e119217%_)
        (let* ((_%rebind?119219%_ '#f)
               (_%phi119221%_ (gx#current-expander-phi))
               (_%ctx119223%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119216%_
           _%e119217%_
           _%rebind?119219%_
           _%phi119221%_
           _%ctx119223%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id119225%_ _%e119226%_ _%rebind?119227%_)
        (let* ((_%phi119229%_ (gx#current-expander-phi))
               (_%ctx119231%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119225%_
           _%e119226%_
           _%rebind?119227%_
           _%phi119229%_
           _%ctx119231%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id119233%_ _%e119234%_ _%rebind?119235%_ _%phi119236%_)
        (let ((_%ctx119238%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119233%_
           _%e119234%_
           _%rebind?119235%_
           _%phi119236%_
           _%ctx119238%_))))
    (define gx#core-bind-syntax!
      (lambda _g122149_
        (let ((_g122148_ (##length _g122149_)))
          (cond ((##fx= _g122148_ 2)
                 (apply (lambda (_%id119216%_ _%e119217%_)
                          (gx#core-bind-syntax!__0 _%id119216%_ _%e119217%_))
                        _g122149_))
                ((##fx= _g122148_ 3)
                 (apply (lambda (_%id119225%_ _%e119226%_ _%rebind?119227%_)
                          (gx#core-bind-syntax!__1
                           _%id119225%_
                           _%e119226%_
                           _%rebind?119227%_))
                        _g122149_))
                ((##fx= _g122148_ 4)
                 (apply (lambda (_%id119233%_
                                 _%e119234%_
                                 _%rebind?119235%_
                                 _%phi119236%_)
                          (gx#core-bind-syntax!__2
                           _%id119233%_
                           _%e119234%_
                           _%rebind?119235%_
                           _%phi119236%_))
                        _g122149_))
                ((##fx= _g122148_ 5)
                 (apply (lambda (_%id119240%_
                                 _%e119241%_
                                 _%rebind?119242%_
                                 _%phi119243%_
                                 _%ctx119244%_)
                          (gx#core-bind-syntax!__%
                           _%id119240%_
                           _%e119241%_
                           _%rebind?119242%_
                           _%phi119243%_
                           _%ctx119244%_))
                        _g122149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g122149_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id119184%_ _%e119185%_ _%rebind?119186%_)
        (gx#core-bind-syntax!__%
         _%id119184%_
         _%e119185%_
         _%rebind?119186%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id119191%_ _%e119192%_)
        (let ((_%rebind?119194%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id119191%_
           _%e119192%_
           _%rebind?119194%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g122151_
        (let ((_g122150_ (##length _g122151_)))
          (cond ((##fx= _g122150_ 2)
                 (apply (lambda (_%id119191%_ _%e119192%_)
                          (gx#core-bind-root-syntax!__0
                           _%id119191%_
                           _%e119192%_))
                        _g122151_))
                ((##fx= _g122150_ 3)
                 (apply (lambda (_%id119196%_ _%e119197%_ _%rebind?119198%_)
                          (gx#core-bind-root-syntax!__%
                           _%id119196%_
                           _%e119197%_
                           _%rebind?119198%_))
                        _g122151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g122151_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id119142%_
               _%alias-id119143%_
               _%rebind?119144%_
               _%phi119145%_
               _%ctx119146%_)
        (gx#bind-identifier!__%
         _%id119142%_
         (let ((_%key119148%_ (gx#core-identifier-key _%id119142%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key119148%_
             '#t
             _%phi119145%_
             _%ctx119146%_)
            _%key119148%_
            _%phi119145%_
            _%alias-id119143%_))
         _%rebind?119144%_
         _%phi119145%_
         _%ctx119146%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id119153%_ _%alias-id119154%_)
        (let* ((_%rebind?119156%_ '#f)
               (_%phi119158%_ (gx#current-expander-phi))
               (_%ctx119160%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119153%_
           _%alias-id119154%_
           _%rebind?119156%_
           _%phi119158%_
           _%ctx119160%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id119162%_ _%alias-id119163%_ _%rebind?119164%_)
        (let* ((_%phi119166%_ (gx#current-expander-phi))
               (_%ctx119168%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119162%_
           _%alias-id119163%_
           _%rebind?119164%_
           _%phi119166%_
           _%ctx119168%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id119170%_ _%alias-id119171%_ _%rebind?119172%_ _%phi119173%_)
        (let ((_%ctx119175%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119170%_
           _%alias-id119171%_
           _%rebind?119172%_
           _%phi119173%_
           _%ctx119175%_))))
    (define gx#core-bind-alias!
      (lambda _g122153_
        (let ((_g122152_ (##length _g122153_)))
          (cond ((##fx= _g122152_ 2)
                 (apply (lambda (_%id119153%_ _%alias-id119154%_)
                          (gx#core-bind-alias!__0
                           _%id119153%_
                           _%alias-id119154%_))
                        _g122153_))
                ((##fx= _g122152_ 3)
                 (apply (lambda (_%id119162%_
                                 _%alias-id119163%_
                                 _%rebind?119164%_)
                          (gx#core-bind-alias!__1
                           _%id119162%_
                           _%alias-id119163%_
                           _%rebind?119164%_))
                        _g122153_))
                ((##fx= _g122152_ 4)
                 (apply (lambda (_%id119170%_
                                 _%alias-id119171%_
                                 _%rebind?119172%_
                                 _%phi119173%_)
                          (gx#core-bind-alias!__2
                           _%id119170%_
                           _%alias-id119171%_
                           _%rebind?119172%_
                           _%phi119173%_))
                        _g122153_))
                ((##fx= _g122152_ 5)
                 (apply (lambda (_%id119177%_
                                 _%alias-id119178%_
                                 _%rebind?119179%_
                                 _%phi119180%_
                                 _%ctx119181%_)
                          (gx#core-bind-alias!__%
                           _%id119177%_
                           _%alias-id119178%_
                           _%rebind?119179%_
                           _%phi119180%_
                           _%ctx119181%_))
                        _g122153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g122153_))))))
    (define gx#make-binding-id__%
      (lambda (_%key119092%_ _%syntax?119093%_ _%phi119094%_ _%ctx119095%_)
        (if (uninterned-symbol? _%key119092%_)
            (let () (##gensym 'L))
            (if (pair? _%key119092%_)
                (let () (gensym (car _%key119092%_)))
                (if (##structure-instance-of? _%ctx119095%_ 'gx#top-context::t)
                    (let ((_%ns119100%_
                           (gx#core-context-namespace__% _%ctx119095%_)))
                      (if (and (fxzero? _%phi119094%_) (not _%syntax?119093%_))
                          (let ()
                            (if _%ns119100%_
                                (make-symbol__1
                                 _%ns119100%_
                                 '"#"
                                 _%key119092%_)
                                _%key119092%_))
                          (if _%syntax?119093%_
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119104%_ _%ns119100%_))
                                   (if _%$e119104%_ _%$e119104%_ '""))
                                 '"[:"
                                 (number->string _%phi119094%_)
                                 '":]#"
                                 _%key119092%_))
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119108%_ _%ns119100%_))
                                   (if _%$e119108%_ _%$e119108%_ '""))
                                 '"["
                                 (number->string _%phi119094%_)
                                 '"]#"
                                 _%key119092%_)))))
                    (let () (gensym _%key119092%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key119115%_)
        (let* ((_%syntax?119117%_ '#f)
               (_%phi119119%_ (gx#current-expander-phi))
               (_%ctx119121%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119115%_
           _%syntax?119117%_
           _%phi119119%_
           _%ctx119121%_))))
    (define gx#make-binding-id__1
      (lambda (_%key119123%_ _%syntax?119124%_)
        (let* ((_%phi119126%_ (gx#current-expander-phi))
               (_%ctx119128%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119123%_
           _%syntax?119124%_
           _%phi119126%_
           _%ctx119128%_))))
    (define gx#make-binding-id__2
      (lambda (_%key119130%_ _%syntax?119131%_ _%phi119132%_)
        (let ((_%ctx119134%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119130%_
           _%syntax?119131%_
           _%phi119132%_
           _%ctx119134%_))))
    (define gx#make-binding-id
      (lambda _g122155_
        (let ((_g122154_ (##length _g122155_)))
          (cond ((##fx= _g122154_ 1)
                 (apply (lambda (_%key119115%_)
                          (gx#make-binding-id__0 _%key119115%_))
                        _g122155_))
                ((##fx= _g122154_ 2)
                 (apply (lambda (_%key119123%_ _%syntax?119124%_)
                          (gx#make-binding-id__1
                           _%key119123%_
                           _%syntax?119124%_))
                        _g122155_))
                ((##fx= _g122154_ 3)
                 (apply (lambda (_%key119130%_ _%syntax?119131%_ _%phi119132%_)
                          (gx#make-binding-id__2
                           _%key119130%_
                           _%syntax?119131%_
                           _%phi119132%_))
                        _g122155_))
                ((##fx= _g122154_ 4)
                 (apply (lambda (_%key119136%_
                                 _%syntax?119137%_
                                 _%phi119138%_
                                 _%ctx119139%_)
                          (gx#make-binding-id__%
                           _%key119136%_
                           _%syntax?119137%_
                           _%phi119138%_
                           _%ctx119139%_))
                        _g122155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g122155_))))))))
