(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712507489)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx122036%_)
        (letrec ((_%expand-special122038%_
                  (lambda (_%hd122040%_ _%K122041%_ _%rest122042%_ _%r122043%_)
                    (_%K122041%_
                     _%rest122042%_
                     (cons (gx#core-expand-top _%hd122040%_) _%r122043%_)))))
          (gx#core-expand-block__0 _%stx122036%_ _%expand-special122038%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121789%_)
        (letrec ((_%expand-special121791%_
                  (lambda (_%hd121911%_ _%K121912%_ _%rest121913%_ _%r121914%_)
                    (let* ((_%K121918%_
                            (lambda (_%e121916%_)
                              (_%K121912%_
                               _%rest121913%_
                               (cons _%e121916%_ _%r121914%_))))
                           (_%e121919121948%_ _%hd121911%_)
                           (_%E121943121952%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121919121948%_)))
                           (_%E121939121964%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121919121948%_)
                                  (let ((_%e121944121956%_
                                         (gx#syntax-e _%e121919121948%_)))
                                    (let ((_%hd121945121959%_
                                           (##car _%e121944121956%_))
                                          (_%tl121946121961%_
                                           (##cdr _%e121944121956%_)))
                                      (if (and (gx#identifier?
                                                _%hd121945121959%_)
                                               (gx#core-identifier=?
                                                _%hd121945121959%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121918%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121911%_))
                                              (_%E121943121952%_))
                                          (_%E121943121952%_))))
                                  (_%E121943121952%_))))
                           (_%E121935121976%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121919121948%_)
                                  (let ((_%e121940121968%_
                                         (gx#syntax-e _%e121919121948%_)))
                                    (let ((_%hd121941121971%_
                                           (##car _%e121940121968%_))
                                          (_%tl121942121973%_
                                           (##cdr _%e121940121968%_)))
                                      (if (and (gx#identifier?
                                                _%hd121941121971%_)
                                               (gx#core-identifier=?
                                                _%hd121941121971%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121918%_
                                               (gx#core-expand-define-alias%
                                                _%hd121911%_))
                                              (_%E121939121964%_))
                                          (_%E121939121964%_))))
                                  (_%E121939121964%_))))
                           (_%E121925121988%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121919121948%_)
                                  (let ((_%e121936121980%_
                                         (gx#syntax-e _%e121919121948%_)))
                                    (let ((_%hd121937121983%_
                                           (##car _%e121936121980%_))
                                          (_%tl121938121985%_
                                           (##cdr _%e121936121980%_)))
                                      (if (and (gx#identifier?
                                                _%hd121937121983%_)
                                               (gx#core-identifier=?
                                                _%hd121937121983%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121918%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121911%_))
                                              (_%E121935121976%_))
                                          (_%E121935121976%_))))
                                  (_%E121935121976%_))))
                           (_%E121921122020%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121919121948%_)
                                  (let ((_%e121926121992%_
                                         (gx#syntax-e _%e121919121948%_)))
                                    (let ((_%hd121927121995%_
                                           (##car _%e121926121992%_))
                                          (_%tl121928121997%_
                                           (##cdr _%e121926121992%_)))
                                      (if (and (gx#identifier?
                                                _%hd121927121995%_)
                                               (gx#core-identifier=?
                                                _%hd121927121995%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121928121997%_)
                                              (let ((_%e121929122000%_
                                                     (gx#syntax-e
                                                      _%tl121928121997%_)))
                                                (let ((_%hd121930122003%_
                                                       (##car _%e121929122000%_))
                                                      (_%tl121931122005%_
                                                       (##cdr _%e121929122000%_)))
                                                  (let ((_%hd-bind122008%_
                                                         _%hd121930122003%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121931122005%_)
                                                        (let ((_%e121932122010%_
                                                               (gx#syntax-e
                                                                _%tl121931122005%_)))
                                                          (let ((_%hd121933122013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121932122010%_))
                        (_%tl121934122015%_ (##cdr _%e121932122010%_)))
                    (let ((_%expr122018%_ _%hd121933122013%_))
                      (if (gx#stx-null? _%tl121934122015%_)
                          (if (gx#core-bind-values? _%hd-bind122008%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122008%_)
                                (_%K121918%_ _%hd121911%_))
                              (_%E121925121988%_))
                          (_%E121925121988%_)))))
                (_%E121925121988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121925121988%_))
                                          (_%E121925121988%_))))
                                  (_%E121925121988%_))))
                           (_%E121920122032%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121919121948%_)
                                  (let ((_%e121922122024%_
                                         (gx#syntax-e _%e121919121948%_)))
                                    (let ((_%hd121923122027%_
                                           (##car _%e121922122024%_))
                                          (_%tl121924122029%_
                                           (##cdr _%e121922122024%_)))
                                      (if (and (gx#identifier?
                                                _%hd121923122027%_)
                                               (gx#core-identifier=?
                                                _%hd121923122027%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121918%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121911%_))
                                              (_%E121921122020%_))
                                          (_%E121921122020%_))))
                                  (_%E121921122020%_)))))
                      (_%E121920122032%_))))
                 (_%eval-body121792%_
                  (lambda (_%rbody121800%_)
                    (let _%lp121802%_ ((_%rest121804%_ _%rbody121800%_)
                                       (_%body121805%_ '())
                                       (_%ebody121806%_ '()))
                      (let* ((_%rest121807121815%_ _%rest121804%_)
                             (_%else121809121823%_
                              (lambda ()
                                (values _%body121805%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121806%_)
                                          (gx#stx-source _%stx121789%_))))))
                             (_%K121811121899%_
                              (lambda (_%rest121826%_ _%hd121827%_)
                                (let* ((_%e121828121845%_ _%hd121827%_)
                                       (_%E121840121849%_
                                        (lambda ()
                                          (_%lp121802%_
                                           _%rest121826%_
                                           (cons _%hd121827%_ _%body121805%_)
                                           (cons _%hd121827%_
                                                 _%ebody121806%_))))
                                       (_%E121830121861%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121828121845%_)
                                              (let ((_%e121841121853%_
                                                     (gx#syntax-e
                                                      _%e121828121845%_)))
                                                (let ((_%hd121842121856%_
                                                       (##car _%e121841121853%_))
                                                      (_%tl121843121858%_
                                                       (##cdr _%e121841121853%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121842121856%_)
                                                           (gx#core-identifier=?
                                                            _%hd121842121856%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121802%_
                                                           _%rest121826%_
                                                           (cons _%hd121827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121805%_)
                   _%ebody121806%_)
                  (_%E121840121849%_))
              (_%E121840121849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121840121849%_))))
                                       (_%E121829121895%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121828121845%_)
                                              (let ((_%e121831121865%_
                                                     (gx#syntax-e
                                                      _%e121828121845%_)))
                                                (let ((_%hd121832121868%_
                                                       (##car _%e121831121865%_))
                                                      (_%tl121833121870%_
                                                       (##cdr _%e121831121865%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121832121868%_)
                                                           (gx#core-identifier=?
                                                            _%hd121832121868%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121833121870%_)
                                                          (let ((_%e121834121873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121833121870%_)))
                    (let ((_%hd121835121876%_ (##car _%e121834121873%_))
                          (_%tl121836121878%_ (##cdr _%e121834121873%_)))
                      (let ((_%hd-bind121881%_ _%hd121835121876%_))
                        (if (gx#stx-pair? _%tl121836121878%_)
                            (let ((_%e121837121883%_
                                   (gx#syntax-e _%tl121836121878%_)))
                              (let ((_%hd121838121886%_
                                     (##car _%e121837121883%_))
                                    (_%tl121839121888%_
                                     (##cdr _%e121837121883%_)))
                                (let ((_%expr121891%_ _%hd121838121886%_))
                                  (if (gx#stx-null? _%tl121839121888%_)
                                      (if '#t
                                          (let ((_%ehd121893%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121881%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121891%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121827%_))))
                                            (_%lp121802%_
                                             _%rest121826%_
                                             (cons _%ehd121893%_
                                                   _%body121805%_)
                                             (cons _%ehd121893%_
                                                   _%ebody121806%_)))
                                          (_%E121830121861%_))
                                      (_%E121830121861%_)))))
                            (_%E121830121861%_)))))
                  (_%E121830121861%_))
              (_%E121830121861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121830121861%_)))))
                                  (_%E121829121895%_)))))
                        (if (##pair? _%rest121807121815%_)
                            (let ((_%hd121812121902%_
                                   (##car _%rest121807121815%_))
                                  (_%tl121813121904%_
                                   (##cdr _%rest121807121815%_)))
                              (let* ((_%hd121907%_ _%hd121812121902%_)
                                     (_%rest121909%_ _%tl121813121904%_))
                                (_%K121811121899%_
                                 _%rest121909%_
                                 _%hd121907%_)))
                            (_%else121809121823%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121795%_
                     (gx#core-expand-block__1
                      _%stx121789%_
                      _%expand-special121791%_
                      '#f))
                    (_g122059_ (_%eval-body121792%_ _%rbody121795%_)))
               (begin
                 (let ((_g122060_
                        (if (##values? _g122059_)
                            (##vector-length _g122059_)
                            1)))
                   (if (not (##fx= _g122060_ 2))
                       (error "Context expects 2 values" _g122060_)))
                 (let ((_%expanded-body121797%_ (##vector-ref _g122059_ 0))
                       (_%value121798%_ (##vector-ref _g122059_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121797%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121798%_ '())))
                    (gx#stx-source _%stx121789%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121759%_)
        (let* ((_%e121760121767%_ _%stx121759%_)
               (_%E121762121771%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121760121767%_)))
               (_%E121761121785%_
                (lambda ()
                  (if (gx#stx-pair? _%e121760121767%_)
                      (let ((_%e121763121775%_
                             (gx#syntax-e _%e121760121767%_)))
                        (let ((_%hd121764121778%_ (##car _%e121763121775%_))
                              (_%tl121765121780%_ (##cdr _%e121763121775%_)))
                          (let ((_%body121783%_ _%tl121765121780%_))
                            (if (gx#stx-list? _%body121783%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121783%_)
                                 (gx#stx-source _%stx121759%_))
                                (_%E121762121771%_)))))
                      (_%E121762121771%_)))))
          (_%E121761121785%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121757%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121757%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121703%_)
        (let* ((_%e121704121717%_ _%stx121703%_)
               (_%E121706121721%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121704121717%_)))
               (_%E121705121753%_
                (lambda ()
                  (if (gx#stx-pair? _%e121704121717%_)
                      (let ((_%e121707121725%_
                             (gx#syntax-e _%e121704121717%_)))
                        (let ((_%hd121708121728%_ (##car _%e121707121725%_))
                              (_%tl121709121730%_ (##cdr _%e121707121725%_)))
                          (if (gx#stx-pair? _%tl121709121730%_)
                              (let ((_%e121710121733%_
                                     (gx#syntax-e _%tl121709121730%_)))
                                (let ((_%hd121711121736%_
                                       (##car _%e121710121733%_))
                                      (_%tl121712121738%_
                                       (##cdr _%e121710121733%_)))
                                  (let ((_%ann121741%_ _%hd121711121736%_))
                                    (if (gx#stx-pair? _%tl121712121738%_)
                                        (let ((_%e121713121743%_
                                               (gx#syntax-e
                                                _%tl121712121738%_)))
                                          (let ((_%hd121714121746%_
                                                 (##car _%e121713121743%_))
                                                (_%tl121715121748%_
                                                 (##cdr _%e121713121743%_)))
                                            (let ((_%expr121751%_
                                                   _%hd121714121746%_))
                                              (if (gx#stx-null?
                                                   _%tl121715121748%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121751%_)
                                 '())))
               (gx#stx-source _%stx121703%_))
              (_%E121706121721%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121706121721%_)))))
                                        (_%E121706121721%_)))))
                              (_%E121706121721%_))))
                      (_%E121706121721%_)))))
          (_%E121705121753%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx121427%_ _%body121428%_)
        (letrec ((_%expand-special121430%_
                  (lambda (_%hd121698%_ _%K121699%_ _%rest121700%_ _%r121701%_)
                    (_%K121699%_
                     '()
                     (cons (_%expand-internal121431%_
                            _%hd121698%_
                            _%rest121700%_)
                           _%r121701%_))))
                 (_%expand-internal121431%_
                  (lambda (_%hd121694%_ _%rest121695%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal121433%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121694%_ _%rest121695%_))
                          (gx#stx-source _%stx121427%_))
                         _%expand-internal-special121432%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj122053
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj122053)
                       __obj122053))))
                 (_%expand-internal-special121432%_
                  (lambda (_%hd121589%_ _%K121590%_ _%rest121591%_ _%r121592%_)
                    (let* ((_%e121593121618%_ _%hd121589%_)
                           (_%E121613121622%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121593121618%_)))
                           (_%E121609121634%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121593121618%_)
                                  (let ((_%e121614121626%_
                                         (gx#syntax-e _%e121593121618%_)))
                                    (let ((_%hd121615121629%_
                                           (##car _%e121614121626%_))
                                          (_%tl121616121631%_
                                           (##cdr _%e121614121626%_)))
                                      (if (and (gx#identifier?
                                                _%hd121615121629%_)
                                               (gx#core-identifier=?
                                                _%hd121615121629%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121590%_
                                               _%rest121591%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121589%_)
                                                     _%r121592%_))
                                              (_%E121613121622%_))
                                          (_%E121613121622%_))))
                                  (_%E121613121622%_))))
                           (_%E121605121646%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121593121618%_)
                                  (let ((_%e121610121638%_
                                         (gx#syntax-e _%e121593121618%_)))
                                    (let ((_%hd121611121641%_
                                           (##car _%e121610121638%_))
                                          (_%tl121612121643%_
                                           (##cdr _%e121610121638%_)))
                                      (if (and (gx#identifier?
                                                _%hd121611121641%_)
                                               (gx#core-identifier=?
                                                _%hd121611121641%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121589%_)
                                                (_%K121590%_
                                                 _%rest121591%_
                                                 _%r121592%_))
                                              (_%E121609121634%_))
                                          (_%E121609121634%_))))
                                  (_%E121609121634%_))))
                           (_%E121595121658%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121593121618%_)
                                  (let ((_%e121606121650%_
                                         (gx#syntax-e _%e121593121618%_)))
                                    (let ((_%hd121607121653%_
                                           (##car _%e121606121650%_))
                                          (_%tl121608121655%_
                                           (##cdr _%e121606121650%_)))
                                      (if (and (gx#identifier?
                                                _%hd121607121653%_)
                                               (gx#core-identifier=?
                                                _%hd121607121653%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121589%_)
                                                (_%K121590%_
                                                 _%rest121591%_
                                                 _%r121592%_))
                                              (_%E121605121646%_))
                                          (_%E121605121646%_))))
                                  (_%E121605121646%_))))
                           (_%E121594121690%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121593121618%_)
                                  (let ((_%e121596121662%_
                                         (gx#syntax-e _%e121593121618%_)))
                                    (let ((_%hd121597121665%_
                                           (##car _%e121596121662%_))
                                          (_%tl121598121667%_
                                           (##cdr _%e121596121662%_)))
                                      (if (and (gx#identifier?
                                                _%hd121597121665%_)
                                               (gx#core-identifier=?
                                                _%hd121597121665%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121598121667%_)
                                              (let ((_%e121599121670%_
                                                     (gx#syntax-e
                                                      _%tl121598121667%_)))
                                                (let ((_%hd121600121673%_
                                                       (##car _%e121599121670%_))
                                                      (_%tl121601121675%_
                                                       (##cdr _%e121599121670%_)))
                                                  (let ((_%hd-bind121678%_
                                                         _%hd121600121673%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121601121675%_)
                                                        (let ((_%e121602121680%_
                                                               (gx#syntax-e
                                                                _%tl121601121675%_)))
                                                          (let ((_%hd121603121683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121602121680%_))
                        (_%tl121604121685%_ (##cdr _%e121602121680%_)))
                    (let ((_%expr121688%_ _%hd121603121683%_))
                      (if (gx#stx-null? _%tl121604121685%_)
                          (if (gx#core-bind-values? _%hd-bind121678%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121678%_)
                                (_%K121590%_
                                 _%rest121591%_
                                 (cons _%hd121589%_ _%r121592%_)))
                              (_%E121595121658%_))
                          (_%E121595121658%_)))))
                (_%E121595121658%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121595121658%_))
                                          (_%E121595121658%_))))
                                  (_%E121595121658%_)))))
                      (_%E121594121690%_))))
                 (_%wrap-internal121433%_
                  (lambda (_%rbody121435%_)
                    (let _%lp121437%_ ((_%rest121439%_ _%rbody121435%_)
                                       (_%decls121440%_ '())
                                       (_%bind121441%_ '())
                                       (_%body121442%_ '()))
                      (let* ((_%e121443121450%_ _%rest121439%_)
                             (_%E121445121499%_
                              (lambda ()
                                (let* ((_%body121494%_
                                        (let* ((_%body121453121463%_
                                                _%body121442%_)
                                               (_%else121456121471%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body121442%_)
                                                   (gx#stx-source
                                                    _%stx121427%_)))))
                                          (let ((_%K121461121491%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx121427%_)))
                                                (_%K121458121477%_
                                                 (lambda (_%expr121475%_)
                                                   _%expr121475%_)))
                                            (let ((_%try-match121455121487%_
                                                   (lambda ()
                                                     (if (##pair? _%body121453121463%_)
                                                         (let ((_%tl121460121482%_
                                                                (##cdr _%body121453121463%_))
                                                               (_%hd121459121480%_
                                                                (##car _%body121453121463%_)))
                                                           (if (##null? _%tl121460121482%_)
                                                               (let ((_%expr121485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121459121480%_))
                         (_%K121458121477%_ _%expr121485%_))
                       (_%else121456121471%_)))
                 (_%else121456121471%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body121453121463%_)
                                                  (_%K121461121491%_)
                                                  (_%try-match121455121487%_))))))
                                       (_%body121496%_
                                        (if (null? _%bind121441%_)
                                            _%body121494%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind121441%_
                                                         (cons _%body121494%_
                                                               '())))
                                             (gx#stx-source _%stx121427%_)))))
                                  (if (null? _%decls121440%_)
                                      _%body121496%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls121440%_
                                                   (cons _%body121496%_ '())))
                                       (gx#stx-source _%stx121427%_))))))
                             (_%E121444121585%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121443121450%_)
                                    (let ((_%e121446121503%_
                                           (gx#syntax-e _%e121443121450%_)))
                                      (let ((_%hd121447121506%_
                                             (##car _%e121446121503%_))
                                            (_%tl121448121508%_
                                             (##cdr _%e121446121503%_)))
                                        (let* ((_%hd121511%_
                                                _%hd121447121506%_)
                                               (_%rest121513%_
                                                _%tl121448121508%_))
                                          (if '#t
                                              (let* ((_%e121514121531%_
                                                      _%hd121511%_)
                                                     (_%E121526121535%_
                                                      (lambda ()
                                                        (if (null? _%bind121441%_)
                                                            (_%lp121437%_
                                                             _%rest121513%_
                                                             _%decls121440%_
                                                             _%bind121441%_
                                                             (cons _%hd121511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body121442%_))
                    (_%lp121437%_
                     _%rest121513%_
                     _%decls121440%_
                     (cons (cons '#f (cons _%hd121511%_ '())) _%bind121441%_)
                     _%body121442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121516121549%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121514121531%_)
                                                            (let ((_%e121527121539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121514121531%_)))
                      (let ((_%hd121528121542%_ (##car _%e121527121539%_))
                            (_%tl121529121544%_ (##cdr _%e121527121539%_)))
                        (if (and (gx#identifier? _%hd121528121542%_)
                                 (gx#core-identifier=?
                                  _%hd121528121542%_
                                  '%#declare))
                            (let ((_%xdecls121547%_ _%tl121529121544%_))
                              (if '#t
                                  (_%lp121437%_
                                   _%rest121513%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls121440%_
                                    _%xdecls121547%_)
                                   _%bind121441%_
                                   _%body121442%_)
                                  (_%E121526121535%_)))
                            (_%E121526121535%_))))
                    (_%E121526121535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121515121581%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121514121531%_)
                                                            (let ((_%e121517121553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121514121531%_)))
                      (let ((_%hd121518121556%_ (##car _%e121517121553%_))
                            (_%tl121519121558%_ (##cdr _%e121517121553%_)))
                        (if (and (gx#identifier? _%hd121518121556%_)
                                 (gx#core-identifier=?
                                  _%hd121518121556%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121519121558%_)
                                (let ((_%e121520121561%_
                                       (gx#syntax-e _%tl121519121558%_)))
                                  (let ((_%hd121521121564%_
                                         (##car _%e121520121561%_))
                                        (_%tl121522121566%_
                                         (##cdr _%e121520121561%_)))
                                    (let ((_%hd-bind121569%_
                                           _%hd121521121564%_))
                                      (if (gx#stx-pair? _%tl121522121566%_)
                                          (let ((_%e121523121571%_
                                                 (gx#syntax-e
                                                  _%tl121522121566%_)))
                                            (let ((_%hd121524121574%_
                                                   (##car _%e121523121571%_))
                                                  (_%tl121525121576%_
                                                   (##cdr _%e121523121571%_)))
                                              (let ((_%expr121579%_
                                                     _%hd121524121574%_))
                                                (if (gx#stx-null?
                                                     _%tl121525121576%_)
                                                    (if '#t
                                                        (_%lp121437%_
                                                         _%rest121513%_
                                                         _%decls121440%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121569%_)
                             (cons (gx#core-expand-expression _%expr121579%_)
                                   '()))
                       _%bind121441%_)
                 _%body121442%_)
                (_%E121516121549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121516121549%_)))))
                                          (_%E121516121549%_)))))
                                (_%E121516121549%_))
                            (_%E121516121549%_))))
                    (_%E121516121549%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121515121581%_))
                                              (_%E121445121499%_)))))
                                    (_%E121445121499%_)))))
                        (_%E121444121585%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body121428%_)
            (gx#stx-source _%stx121427%_))
           _%expand-special121430%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx121365%_)
        (let* ((_%e121366121373%_ _%stx121365%_)
               (_%E121368121377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121366121373%_)))
               (_%E121367121423%_
                (lambda ()
                  (if (gx#stx-pair? _%e121366121373%_)
                      (let ((_%e121369121381%_
                             (gx#syntax-e _%e121366121373%_)))
                        (let ((_%hd121370121384%_ (##car _%e121369121381%_))
                              (_%tl121371121386%_ (##cdr _%e121369121381%_)))
                          (let ((_%body121389%_ _%tl121371121386%_))
                            (if (gx#stx-list? _%body121389%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl121391%_)
                                     (let* ((_%e121392121399%_ _%decl121391%_)
                                            (_%E121394121403%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e121392121399%_)))
                                            (_%E121393121419%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e121392121399%_)
                                                   (let ((_%e121395121407%_
                                                          (gx#syntax-e
                                                           _%e121392121399%_)))
                                                     (let ((_%hd121396121410%_
                                                            (##car _%e121395121407%_))
                                                           (_%tl121397121412%_
                                                            (##cdr _%e121395121407%_)))
                                                       (let* ((_%head121415%_
                                                               _%hd121396121410%_)
                                                              (_%args121417%_
                                                               _%tl121397121412%_))
                                                         (if (gx#stx-list?
                                                              _%args121417%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl121391%_)
                                                             (_%E121394121403%_)))))
                                                   (_%E121394121403%_)))))
                                       (_%E121393121419%_)))
                                   _%body121389%_))
                                 (gx#stx-source _%stx121365%_))
                                (_%E121368121377%_)))))
                      (_%E121368121377%_)))))
          (_%E121367121423%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx121269%_)
        (let* ((_%e121270121277%_ _%stx121269%_)
               (_%E121272121281%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121270121277%_)))
               (_%E121271121361%_
                (lambda ()
                  (if (gx#stx-pair? _%e121270121277%_)
                      (let ((_%e121273121285%_
                             (gx#syntax-e _%e121270121277%_)))
                        (let ((_%hd121274121288%_ (##car _%e121273121285%_))
                              (_%tl121275121290%_ (##cdr _%e121273121285%_)))
                          (let ((_%body121293%_ _%tl121275121290%_))
                            (if '#t
                                (let _%lp121295%_ ((_%rest121297%_
                                                    _%body121293%_)
                                                   (_%r121298%_ '()))
                                  (let* ((_%e121299121313%_ _%rest121297%_)
                                         (_%E121311121317%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx121269%_)))
                                         (_%E121301121321%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e121299121313%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r121298%_))
                                                     (gx#stx-source
                                                      _%stx121269%_))
                                                    (_%E121311121317%_))
                                                (_%E121311121317%_))))
                                         (_%E121300121357%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e121299121313%_)
                                                (let ((_%e121302121325%_
                                                       (gx#syntax-e
                                                        _%e121299121313%_)))
                                                  (let ((_%hd121303121328%_
                                                         (##car _%e121302121325%_))
                                                        (_%tl121304121330%_
                                                         (##cdr _%e121302121325%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd121303121328%_)
                                                        (let ((_%e121305121333%_
                                                               (gx#syntax-e
                                                                _%hd121303121328%_)))
                                                          (let ((_%hd121306121336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121305121333%_))
                        (_%tl121307121338%_ (##cdr _%e121305121333%_)))
                    (let ((_%id121341%_ _%hd121306121336%_))
                      (if (gx#stx-pair? _%tl121307121338%_)
                          (let ((_%e121308121343%_
                                 (gx#syntax-e _%tl121307121338%_)))
                            (let ((_%hd121309121346%_
                                   (##car _%e121308121343%_))
                                  (_%tl121310121348%_
                                   (##cdr _%e121308121343%_)))
                              (let ((_%eid121351%_ _%hd121309121346%_))
                                (if (gx#stx-null? _%tl121310121348%_)
                                    (let ((_%rest121353%_ _%tl121304121330%_))
                                      (if (and (gx#identifier? _%id121341%_)
                                               (gx#identifier? _%eid121351%_))
                                          (let ((_%eid121355%_
                                                 (gx#stx-e _%eid121351%_)))
                                            (gx#core-bind-extern!__0
                                             _%id121341%_
                                             _%eid121355%_)
                                            (_%lp121295%_
                                             _%rest121353%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id121341%_)
                                                         (cons _%eid121355%_
                                                               '()))
                                                   _%r121298%_)))
                                          (_%E121301121321%_)))
                                    (_%E121301121321%_)))))
                          (_%E121301121321%_)))))
                (_%E121301121321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121301121321%_)))))
                                    (_%E121300121357%_)))
                                (_%E121272121281%_)))))
                      (_%E121272121281%_)))))
          (_%E121271121361%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx121215%_)
        (let* ((_%e121216121229%_ _%stx121215%_)
               (_%E121218121233%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121216121229%_)))
               (_%E121217121265%_
                (lambda ()
                  (if (gx#stx-pair? _%e121216121229%_)
                      (let ((_%e121219121237%_
                             (gx#syntax-e _%e121216121229%_)))
                        (let ((_%hd121220121240%_ (##car _%e121219121237%_))
                              (_%tl121221121242%_ (##cdr _%e121219121237%_)))
                          (if (gx#stx-pair? _%tl121221121242%_)
                              (let ((_%e121222121245%_
                                     (gx#syntax-e _%tl121221121242%_)))
                                (let ((_%hd121223121248%_
                                       (##car _%e121222121245%_))
                                      (_%tl121224121250%_
                                       (##cdr _%e121222121245%_)))
                                  (let ((_%hd121253%_ _%hd121223121248%_))
                                    (if (gx#stx-pair? _%tl121224121250%_)
                                        (let ((_%e121225121255%_
                                               (gx#syntax-e
                                                _%tl121224121250%_)))
                                          (let ((_%hd121226121258%_
                                                 (##car _%e121225121255%_))
                                                (_%tl121227121260%_
                                                 (##cdr _%e121225121255%_)))
                                            (let ((_%expr121263%_
                                                   _%hd121226121258%_))
                                              (if (gx#stx-null?
                                                   _%tl121227121260%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd121253%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd121253%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121253%_)
                             (cons (gx#core-expand-expression _%expr121263%_)
                                   '())))
                 (gx#stx-source _%stx121215%_)))
              (_%E121218121233%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121218121233%_)))))
                                        (_%E121218121233%_)))))
                              (_%E121218121233%_))))
                      (_%E121218121233%_)))))
          (_%E121217121265%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx121159%_)
        (let* ((_%e121160121173%_ _%stx121159%_)
               (_%E121162121177%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121160121173%_)))
               (_%E121161121211%_
                (lambda ()
                  (if (gx#stx-pair? _%e121160121173%_)
                      (let ((_%e121163121181%_
                             (gx#syntax-e _%e121160121173%_)))
                        (let ((_%hd121164121184%_ (##car _%e121163121181%_))
                              (_%tl121165121186%_ (##cdr _%e121163121181%_)))
                          (if (gx#stx-pair? _%tl121165121186%_)
                              (let ((_%e121166121189%_
                                     (gx#syntax-e _%tl121165121186%_)))
                                (let ((_%hd121167121192%_
                                       (##car _%e121166121189%_))
                                      (_%tl121168121194%_
                                       (##cdr _%e121166121189%_)))
                                  (let ((_%id121197%_ _%hd121167121192%_))
                                    (if (gx#stx-pair? _%tl121168121194%_)
                                        (let ((_%e121169121199%_
                                               (gx#syntax-e
                                                _%tl121168121194%_)))
                                          (let ((_%hd121170121202%_
                                                 (##car _%e121169121199%_))
                                                (_%tl121171121204%_
                                                 (##cdr _%e121169121199%_)))
                                            (let ((_%binding-id121207%_
                                                   _%hd121170121202%_))
                                              (if (gx#stx-null?
                                                   _%tl121171121204%_)
                                                  (if (and (gx#identifier?
                                                            _%id121197%_)
                                                           (gx#identifier?
                                                            _%binding-id121207%_))
                                                      (let ((_%eid121209%_
                                                             (gx#stx-e
                                                              _%binding-id121207%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id121197%_
                                                         _%eid121209%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121197%_)
                             (cons _%eid121209%_ '())))))
              (_%E121162121177%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121162121177%_)))))
                                        (_%E121162121177%_)))))
                              (_%E121162121177%_))))
                      (_%E121162121177%_)))))
          (_%E121161121211%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx121102%_)
        (let* ((_%e121103121116%_ _%stx121102%_)
               (_%E121105121120%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121103121116%_)))
               (_%E121104121155%_
                (lambda ()
                  (if (gx#stx-pair? _%e121103121116%_)
                      (let ((_%e121106121124%_
                             (gx#syntax-e _%e121103121116%_)))
                        (let ((_%hd121107121127%_ (##car _%e121106121124%_))
                              (_%tl121108121129%_ (##cdr _%e121106121124%_)))
                          (if (gx#stx-pair? _%tl121108121129%_)
                              (let ((_%e121109121132%_
                                     (gx#syntax-e _%tl121108121129%_)))
                                (let ((_%hd121110121135%_
                                       (##car _%e121109121132%_))
                                      (_%tl121111121137%_
                                       (##cdr _%e121109121132%_)))
                                  (let ((_%id121140%_ _%hd121110121135%_))
                                    (if (gx#stx-pair? _%tl121111121137%_)
                                        (let ((_%e121112121142%_
                                               (gx#syntax-e
                                                _%tl121111121137%_)))
                                          (let ((_%hd121113121145%_
                                                 (##car _%e121112121142%_))
                                                (_%tl121114121147%_
                                                 (##cdr _%e121112121142%_)))
                                            (let ((_%expr121150%_
                                                   _%hd121113121145%_))
                                              (if (gx#stx-null?
                                                   _%tl121114121147%_)
                                                  (if (gx#identifier?
                                                       _%id121140%_)
                                                      (let ((_g122061_
                                                             (gx#core-expand-expression+1
                                                              _%expr121150%_)))
                                                        (begin
                                                          (let ((_g122062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g122061_)
                             (##vector-length _g122061_)
                             1)))
                    (if (not (##fx= _g122062_ 2))
                        (error "Context expects 2 values" _g122062_)))
                  (let ((_%e-stx121152%_ (##vector-ref _g122061_ 0))
                        (_%e121153%_ (##vector-ref _g122061_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id121140%_ _%e121153%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id121140%_)
                                   (cons _%e-stx121152%_ '())))
                       (gx#stx-source _%stx121102%_))))))
              (_%E121105121120%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121105121120%_)))))
                                        (_%E121105121120%_)))))
                              (_%E121105121120%_))))
                      (_%E121105121120%_)))))
          (_%E121104121155%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx121046%_)
        (let* ((_%e121047121060%_ _%stx121046%_)
               (_%E121049121064%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121047121060%_)))
               (_%E121048121098%_
                (lambda ()
                  (if (gx#stx-pair? _%e121047121060%_)
                      (let ((_%e121050121068%_
                             (gx#syntax-e _%e121047121060%_)))
                        (let ((_%hd121051121071%_ (##car _%e121050121068%_))
                              (_%tl121052121073%_ (##cdr _%e121050121068%_)))
                          (if (gx#stx-pair? _%tl121052121073%_)
                              (let ((_%e121053121076%_
                                     (gx#syntax-e _%tl121052121073%_)))
                                (let ((_%hd121054121079%_
                                       (##car _%e121053121076%_))
                                      (_%tl121055121081%_
                                       (##cdr _%e121053121076%_)))
                                  (let ((_%id121084%_ _%hd121054121079%_))
                                    (if (gx#stx-pair? _%tl121055121081%_)
                                        (let ((_%e121056121086%_
                                               (gx#syntax-e
                                                _%tl121055121081%_)))
                                          (let ((_%hd121057121089%_
                                                 (##car _%e121056121086%_))
                                                (_%tl121058121091%_
                                                 (##cdr _%e121056121086%_)))
                                            (let ((_%alias-id121094%_
                                                   _%hd121057121089%_))
                                              (if (gx#stx-null?
                                                   _%tl121058121091%_)
                                                  (if (and (gx#identifier?
                                                            _%id121084%_)
                                                           (gx#identifier?
                                                            _%alias-id121094%_))
                                                      (let ((_%alias-id121096%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id121094%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id121084%_
                                                         _%alias-id121096%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121084%_)
                             (cons _%alias-id121096%_ '())))))
              (_%E121049121064%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121049121064%_)))))
                                        (_%E121049121064%_)))))
                              (_%E121049121064%_))))
                      (_%E121049121064%_)))))
          (_%E121048121098%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120989%_ _%wrap?120990%_)
        (let* ((_%e120991121001%_ _%stx120989%_)
               (_%E120993121005%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120991121001%_)))
               (_%E120992121032%_
                (lambda ()
                  (if (gx#stx-pair? _%e120991121001%_)
                      (let ((_%e120994121009%_
                             (gx#syntax-e _%e120991121001%_)))
                        (let ((_%hd120995121012%_ (##car _%e120994121009%_))
                              (_%tl120996121014%_ (##cdr _%e120994121009%_)))
                          (if (gx#stx-pair? _%tl120996121014%_)
                              (let ((_%e120997121017%_
                                     (gx#syntax-e _%tl120996121014%_)))
                                (let ((_%hd120998121020%_
                                       (##car _%e120997121017%_))
                                      (_%tl120999121022%_
                                       (##cdr _%e120997121017%_)))
                                  (let* ((_%hd121025%_ _%hd120998121020%_)
                                         (_%body121027%_ _%tl120999121022%_))
                                    (if (gx#core-bind-values? _%hd121025%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd121025%_)
                                           (let ((_%body121030%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd121025%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120989%_
                                                               _%body121027%_)
                                                              '()))))
                                             (if _%wrap?120990%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body121030%_)
                                                  (gx#stx-source
                                                   _%stx120989%_))
                                                 _%body121030%_)))
                                         gx#current-expander-context
                                         (let ((__obj122054
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122054)
                                           __obj122054))
                                        (_%E120993121005%_)))))
                              (_%E120993121005%_))))
                      (_%E120993121005%_)))))
          (_%E120992121032%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx121039%_)
        (let ((_%wrap?121041%_ '#t))
          (gx#core-expand-lambda%__% _%stx121039%_ _%wrap?121041%_))))
    (define gx#core-expand-lambda%
      (lambda _g122064_
        (let ((_g122063_ (##length _g122064_)))
          (cond ((##fx= _g122063_ 1)
                 (apply (lambda (_%stx121039%_)
                          (gx#core-expand-lambda%__0 _%stx121039%_))
                        _g122064_))
                ((##fx= _g122063_ 2)
                 (apply (lambda (_%stx121043%_ _%wrap?121044%_)
                          (gx#core-expand-lambda%__%
                           _%stx121043%_
                           _%wrap?121044%_))
                        _g122064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g122064_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120953%_)
        (let* ((_%e120954120961%_ _%stx120953%_)
               (_%E120956120965%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120954120961%_)))
               (_%E120955120984%_
                (lambda ()
                  (if (gx#stx-pair? _%e120954120961%_)
                      (let ((_%e120957120969%_
                             (gx#syntax-e _%e120954120961%_)))
                        (let ((_%hd120958120972%_ (##car _%e120957120969%_))
                              (_%tl120959120974%_ (##cdr _%e120957120969%_)))
                          (let ((_%clauses120977%_ _%tl120959120974%_))
                            (if (gx#stx-list? _%clauses120977%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120979%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120979%_)
                                       (let ((_%$e120981%_
                                              (gx#stx-source
                                               _%clause120979%_)))
                                         (if _%$e120981%_
                                             _%$e120981%_
                                             (gx#stx-source _%stx120953%_))))
                                      '#f))
                                   _%clauses120977%_))
                                 (gx#stx-source _%stx120953%_))
                                (_%E120956120965%_)))))
                      (_%E120956120965%_)))))
          (_%E120955120984%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120907%_)
        (let* ((_%e120908120918%_ _%stx120907%_)
               (_%E120910120922%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120908120918%_)))
               (_%E120909120949%_
                (lambda ()
                  (if (gx#stx-pair? _%e120908120918%_)
                      (let ((_%e120911120926%_
                             (gx#syntax-e _%e120908120918%_)))
                        (let ((_%hd120912120929%_ (##car _%e120911120926%_))
                              (_%tl120913120931%_ (##cdr _%e120911120926%_)))
                          (if (gx#stx-pair? _%tl120913120931%_)
                              (let ((_%e120914120934%_
                                     (gx#syntax-e _%tl120913120931%_)))
                                (let ((_%hd120915120937%_
                                       (##car _%e120914120934%_))
                                      (_%tl120916120939%_
                                       (##cdr _%e120914120934%_)))
                                  (let* ((_%hd120942%_ _%hd120915120937%_)
                                         (_%body120944%_ _%tl120916120939%_))
                                    (if (gx#core-expand-let-bind? _%hd120942%_)
                                        (let ((_%expressions120946%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120942%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120942%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120942%_
                                                           _%expressions120946%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120907%_
                         _%body120944%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120907%_)))
                                           gx#current-expander-context
                                           (let ((__obj122055
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122055)
                                             __obj122055)))
                                        (_%E120910120922%_)))))
                              (_%E120910120922%_))))
                      (_%E120910120922%_)))))
          (_%E120909120949%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120852%_ _%form120853%_)
        (let* ((_%e120854120864%_ _%stx120852%_)
               (_%E120856120868%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120854120864%_)))
               (_%E120855120893%_
                (lambda ()
                  (if (gx#stx-pair? _%e120854120864%_)
                      (let ((_%e120857120872%_
                             (gx#syntax-e _%e120854120864%_)))
                        (let ((_%hd120858120875%_ (##car _%e120857120872%_))
                              (_%tl120859120877%_ (##cdr _%e120857120872%_)))
                          (if (gx#stx-pair? _%tl120859120877%_)
                              (let ((_%e120860120880%_
                                     (gx#syntax-e _%tl120859120877%_)))
                                (let ((_%hd120861120883%_
                                       (##car _%e120860120880%_))
                                      (_%tl120862120885%_
                                       (##cdr _%e120860120880%_)))
                                  (let* ((_%hd120888%_ _%hd120861120883%_)
                                         (_%body120890%_ _%tl120862120885%_))
                                    (if (gx#core-expand-let-bind? _%hd120888%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120888%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120853%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120888%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120888%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120852%_
                                                               _%body120890%_)
                                                              '())))
                                            (gx#stx-source _%stx120852%_)))
                                         gx#current-expander-context
                                         (let ((__obj122056
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122056)
                                           __obj122056))
                                        (_%E120856120868%_)))))
                              (_%E120856120868%_))))
                      (_%E120856120868%_)))))
          (_%E120855120893%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120900%_)
        (let ((_%form120902%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120900%_ _%form120902%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g122066_
        (let ((_g122065_ (##length _g122066_)))
          (cond ((##fx= _g122065_ 1)
                 (apply (lambda (_%stx120900%_)
                          (gx#core-expand-letrec-values%__0 _%stx120900%_))
                        _g122066_))
                ((##fx= _g122065_ 2)
                 (apply (lambda (_%stx120904%_ _%form120905%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120904%_
                           _%form120905%_))
                        _g122066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g122066_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120849%_)
        (gx#core-expand-letrec-values%__% _%stx120849%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120806%_)
        (if (gx#stx-list? _%stx120806%_)
            (gx#stx-andmap
             (lambda (_%bind120808%_)
               (let* ((_%e120809120819%_ _%bind120808%_)
                      (_%E120811120823%_ (lambda () '#f))
                      (_%E120810120845%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120809120819%_)
                             (let ((_%e120812120827%_
                                    (gx#syntax-e _%e120809120819%_)))
                               (let ((_%hd120813120830%_
                                      (##car _%e120812120827%_))
                                     (_%tl120814120832%_
                                      (##cdr _%e120812120827%_)))
                                 (let ((_%hd120835%_ _%hd120813120830%_))
                                   (if (gx#stx-pair? _%tl120814120832%_)
                                       (let ((_%e120815120837%_
                                              (gx#syntax-e
                                               _%tl120814120832%_)))
                                         (let ((_%hd120816120840%_
                                                (##car _%e120815120837%_))
                                               (_%tl120817120842%_
                                                (##cdr _%e120815120837%_)))
                                           (if (gx#stx-null?
                                                _%tl120817120842%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120835%_)
                                                   (_%E120811120823%_))
                                               (_%E120811120823%_))))
                                       (_%E120811120823%_)))))
                             (_%E120811120823%_)))))
                 (_%E120810120845%_)))
             _%stx120806%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120765%_)
        (let* ((_%e120766120776%_ _%bind120765%_)
               (_%E120768120780%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120766120776%_)))
               (_%E120767120802%_
                (lambda ()
                  (if (gx#stx-pair? _%e120766120776%_)
                      (let ((_%e120769120784%_
                             (gx#syntax-e _%e120766120776%_)))
                        (let ((_%hd120770120787%_ (##car _%e120769120784%_))
                              (_%tl120771120789%_ (##cdr _%e120769120784%_)))
                          (if (gx#stx-pair? _%tl120771120789%_)
                              (let ((_%e120772120792%_
                                     (gx#syntax-e _%tl120771120789%_)))
                                (let ((_%hd120773120795%_
                                       (##car _%e120772120792%_))
                                      (_%tl120774120797%_
                                       (##cdr _%e120772120792%_)))
                                  (let ((_%expr120800%_ _%hd120773120795%_))
                                    (if (gx#stx-null? _%tl120774120797%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120800%_)
                                            (_%E120768120780%_))
                                        (_%E120768120780%_)))))
                              (_%E120768120780%_))))
                      (_%E120768120780%_)))))
          (_%E120767120802%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120724%_)
        (let* ((_%e120725120735%_ _%bind120724%_)
               (_%E120727120739%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120725120735%_)))
               (_%E120726120761%_
                (lambda ()
                  (if (gx#stx-pair? _%e120725120735%_)
                      (let ((_%e120728120743%_
                             (gx#syntax-e _%e120725120735%_)))
                        (let ((_%hd120729120746%_ (##car _%e120728120743%_))
                              (_%tl120730120748%_ (##cdr _%e120728120743%_)))
                          (let ((_%hd120751%_ _%hd120729120746%_))
                            (if (gx#stx-pair? _%tl120730120748%_)
                                (let ((_%e120731120753%_
                                       (gx#syntax-e _%tl120730120748%_)))
                                  (let ((_%hd120732120756%_
                                         (##car _%e120731120753%_))
                                        (_%tl120733120758%_
                                         (##cdr _%e120731120753%_)))
                                    (if (gx#stx-null? _%tl120733120758%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120751%_)
                                            (_%E120727120739%_))
                                        (_%E120727120739%_))))
                                (_%E120727120739%_)))))
                      (_%E120727120739%_)))))
          (_%E120726120761%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120682%_ _%expr120683%_)
        (let* ((_%e120684120694%_ _%bind120682%_)
               (_%E120686120698%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120684120694%_)))
               (_%E120685120720%_
                (lambda ()
                  (if (gx#stx-pair? _%e120684120694%_)
                      (let ((_%e120687120702%_
                             (gx#syntax-e _%e120684120694%_)))
                        (let ((_%hd120688120705%_ (##car _%e120687120702%_))
                              (_%tl120689120707%_ (##cdr _%e120687120702%_)))
                          (let ((_%hd120710%_ _%hd120688120705%_))
                            (if (gx#stx-pair? _%tl120689120707%_)
                                (let ((_%e120690120712%_
                                       (gx#syntax-e _%tl120689120707%_)))
                                  (let ((_%hd120691120715%_
                                         (##car _%e120690120712%_))
                                        (_%tl120692120717%_
                                         (##cdr _%e120690120712%_)))
                                    (if (gx#stx-null? _%tl120692120717%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120710%_)
                                                  (cons _%expr120683%_ '()))
                                            (_%E120686120698%_))
                                        (_%E120686120698%_))))
                                (_%E120686120698%_)))))
                      (_%E120686120698%_)))))
          (_%E120685120720%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120636%_)
        (let* ((_%e120637120647%_ _%stx120636%_)
               (_%E120639120651%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120637120647%_)))
               (_%E120638120678%_
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
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120671%_)
                                        (let ((_%expanders120675%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120671%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120671%_
                                              _%expanders120675%_)
                                             (gx#core-expand-local-block
                                              _%stx120636%_
                                              _%body120673%_))
                                           gx#current-expander-context
                                           (let ((__obj122057
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122057)
                                             __obj122057)))
                                        (_%E120639120651%_)))))
                              (_%E120639120651%_))))
                      (_%E120639120651%_)))))
          (_%E120638120678%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120585%_)
        (let* ((_%e120586120596%_ _%stx120585%_)
               (_%E120588120600%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120586120596%_)))
               (_%E120587120632%_
                (lambda ()
                  (if (gx#stx-pair? _%e120586120596%_)
                      (let ((_%e120589120604%_
                             (gx#syntax-e _%e120586120596%_)))
                        (let ((_%hd120590120607%_ (##car _%e120589120604%_))
                              (_%tl120591120609%_ (##cdr _%e120589120604%_)))
                          (if (gx#stx-pair? _%tl120591120609%_)
                              (let ((_%e120592120612%_
                                     (gx#syntax-e _%tl120591120609%_)))
                                (let ((_%hd120593120615%_
                                       (##car _%e120592120612%_))
                                      (_%tl120594120617%_
                                       (##cdr _%e120592120612%_)))
                                  (let* ((_%hd120620%_ _%hd120593120615%_)
                                         (_%body120622%_ _%tl120594120617%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120620%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120620%_
                                            (make-list
                                             (gx#stx-length _%hd120620%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120624120627%_
                                                     _%g120625120629%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120624120627%_
                                               _%g120625120629%_
                                               '#t))
                                            _%hd120620%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120620%_))
                                           (gx#core-expand-local-block
                                            _%stx120585%_
                                            _%body120622%_))
                                         gx#current-expander-context
                                         (let ((__obj122058
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122058)
                                           __obj122058))
                                        (_%E120588120600%_)))))
                              (_%E120588120600%_))))
                      (_%E120588120600%_)))))
          (_%E120587120632%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120542%_)
        (if (gx#stx-list? _%stx120542%_)
            (gx#stx-andmap
             (lambda (_%bind120544%_)
               (let* ((_%e120545120555%_ _%bind120544%_)
                      (_%E120547120559%_ (lambda () '#f))
                      (_%E120546120581%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120545120555%_)
                             (let ((_%e120548120563%_
                                    (gx#syntax-e _%e120545120555%_)))
                               (let ((_%hd120549120566%_
                                      (##car _%e120548120563%_))
                                     (_%tl120550120568%_
                                      (##cdr _%e120548120563%_)))
                                 (let ((_%hd120571%_ _%hd120549120566%_))
                                   (if (gx#stx-pair? _%tl120550120568%_)
                                       (let ((_%e120551120573%_
                                              (gx#syntax-e
                                               _%tl120550120568%_)))
                                         (let ((_%hd120552120576%_
                                                (##car _%e120551120573%_))
                                               (_%tl120553120578%_
                                                (##cdr _%e120551120573%_)))
                                           (if (gx#stx-null?
                                                _%tl120553120578%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120571%_)
                                                   (_%E120547120559%_))
                                               (_%E120547120559%_))))
                                       (_%E120547120559%_)))))
                             (_%E120547120559%_)))))
                 (_%E120546120581%_)))
             _%stx120542%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind120498%_)
        (let* ((_%e120499120509%_ _%bind120498%_)
               (_%E120501120513%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120499120509%_)))
               (_%E120500120538%_
                (lambda ()
                  (if (gx#stx-pair? _%e120499120509%_)
                      (let ((_%e120502120517%_
                             (gx#syntax-e _%e120499120509%_)))
                        (let ((_%hd120503120520%_ (##car _%e120502120517%_))
                              (_%tl120504120522%_ (##cdr _%e120502120517%_)))
                          (if (gx#stx-pair? _%tl120504120522%_)
                              (let ((_%e120505120525%_
                                     (gx#syntax-e _%tl120504120522%_)))
                                (let ((_%hd120506120528%_
                                       (##car _%e120505120525%_))
                                      (_%tl120507120530%_
                                       (##cdr _%e120505120525%_)))
                                  (let ((_%expr120533%_ _%hd120506120528%_))
                                    (if (gx#stx-null? _%tl120507120530%_)
                                        (if '#t
                                            (let ((_g122067_
                                                   (gx#core-expand-expression+1
                                                    _%expr120533%_)))
                                              (begin
                                                (let ((_g122068_
                                                       (if (##values?
                                                            _g122067_)
                                                           (##vector-length
                                                            _g122067_)
                                                           1)))
                                                  (if (not (##fx= _g122068_ 2))
                                                      (error "Context expects 2 values"
                                                             _g122068_)))
                                                (let ((_%_120535%_
                                                       (##vector-ref
                                                        _g122067_
                                                        0))
                                                      (_%e120536%_
                                                       (##vector-ref
                                                        _g122067_
                                                        1)))
                                                  _%e120536%_)))
                                            (_%E120501120513%_))
                                        (_%E120501120513%_)))))
                              (_%E120501120513%_))))
                      (_%E120501120513%_)))))
          (_%E120500120538%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind120443%_ _%e120444%_ _%rebind?120445%_)
        (let* ((_%e120446120456%_ _%bind120443%_)
               (_%E120448120460%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120446120456%_)))
               (_%E120447120482%_
                (lambda ()
                  (if (gx#stx-pair? _%e120446120456%_)
                      (let ((_%e120449120464%_
                             (gx#syntax-e _%e120446120456%_)))
                        (let ((_%hd120450120467%_ (##car _%e120449120464%_))
                              (_%tl120451120469%_ (##cdr _%e120449120464%_)))
                          (let ((_%id120472%_ _%hd120450120467%_))
                            (if (gx#stx-pair? _%tl120451120469%_)
                                (let ((_%e120452120474%_
                                       (gx#syntax-e _%tl120451120469%_)))
                                  (let ((_%hd120453120477%_
                                         (##car _%e120452120474%_))
                                        (_%tl120454120479%_
                                         (##cdr _%e120452120474%_)))
                                    (if (gx#stx-null? _%tl120454120479%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id120472%_
                                             _%e120444%_
                                             _%rebind?120445%_)
                                            (_%E120448120460%_))
                                        (_%E120448120460%_))))
                                (_%E120448120460%_)))))
                      (_%E120448120460%_)))))
          (_%E120447120482%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind120489%_ _%e120490%_)
        (let ((_%rebind?120492%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind120489%_
           _%e120490%_
           _%rebind?120492%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g122070_
        (let ((_g122069_ (##length _g122070_)))
          (cond ((##fx= _g122069_ 2)
                 (apply (lambda (_%bind120489%_ _%e120490%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind120489%_
                           _%e120490%_))
                        _g122070_))
                ((##fx= _g122069_ 3)
                 (apply (lambda (_%bind120494%_ _%e120495%_ _%rebind?120496%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind120494%_
                           _%e120495%_
                           _%rebind?120496%_))
                        _g122070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g122070_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx120401%_)
        (let* ((_%e120402120412%_ _%stx120401%_)
               (_%E120404120416%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120402120412%_)))
               (_%E120403120438%_
                (lambda ()
                  (if (gx#stx-pair? _%e120402120412%_)
                      (let ((_%e120405120420%_
                             (gx#syntax-e _%e120402120412%_)))
                        (let ((_%hd120406120423%_ (##car _%e120405120420%_))
                              (_%tl120407120425%_ (##cdr _%e120405120420%_)))
                          (if (gx#stx-pair? _%tl120407120425%_)
                              (let ((_%e120408120428%_
                                     (gx#syntax-e _%tl120407120425%_)))
                                (let ((_%hd120409120431%_
                                       (##car _%e120408120428%_))
                                      (_%tl120410120433%_
                                       (##cdr _%e120408120428%_)))
                                  (let ((_%expr120436%_ _%hd120409120431%_))
                                    (if (gx#stx-null? _%tl120410120433%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120436%_)
                                            (_%E120404120416%_))
                                        (_%E120404120416%_)))))
                              (_%E120404120416%_))))
                      (_%E120404120416%_)))))
          (_%E120403120438%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx120360%_)
        (let* ((_%e120361120371%_ _%stx120360%_)
               (_%E120363120375%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120361120371%_)))
               (_%E120362120397%_
                (lambda ()
                  (if (gx#stx-pair? _%e120361120371%_)
                      (let ((_%e120364120379%_
                             (gx#syntax-e _%e120361120371%_)))
                        (let ((_%hd120365120382%_ (##car _%e120364120379%_))
                              (_%tl120366120384%_ (##cdr _%e120364120379%_)))
                          (if (gx#stx-pair? _%tl120366120384%_)
                              (let ((_%e120367120387%_
                                     (gx#syntax-e _%tl120366120384%_)))
                                (let ((_%hd120368120390%_
                                       (##car _%e120367120387%_))
                                      (_%tl120369120392%_
                                       (##cdr _%e120367120387%_)))
                                  (let ((_%e120395%_ _%hd120368120390%_))
                                    (if (gx#stx-null? _%tl120369120392%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e120395%_)
                                                         '()))
                                             (gx#stx-source _%stx120360%_))
                                            (_%E120363120375%_))
                                        (_%E120363120375%_)))))
                              (_%E120363120375%_))))
                      (_%E120363120375%_)))))
          (_%E120362120397%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx120319%_)
        (let* ((_%e120320120330%_ _%stx120319%_)
               (_%E120322120334%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120320120330%_)))
               (_%E120321120356%_
                (lambda ()
                  (if (gx#stx-pair? _%e120320120330%_)
                      (let ((_%e120323120338%_
                             (gx#syntax-e _%e120320120330%_)))
                        (let ((_%hd120324120341%_ (##car _%e120323120338%_))
                              (_%tl120325120343%_ (##cdr _%e120323120338%_)))
                          (if (gx#stx-pair? _%tl120325120343%_)
                              (let ((_%e120326120346%_
                                     (gx#syntax-e _%tl120325120343%_)))
                                (let ((_%hd120327120349%_
                                       (##car _%e120326120346%_))
                                      (_%tl120328120351%_
                                       (##cdr _%e120326120346%_)))
                                  (let ((_%e120354%_ _%hd120327120349%_))
                                    (if (gx#stx-null? _%tl120328120351%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e120354%_)
                                                         '()))
                                             (gx#stx-source _%stx120319%_))
                                            (_%E120322120334%_))
                                        (_%E120322120334%_)))))
                              (_%E120322120334%_))))
                      (_%E120322120334%_)))))
          (_%E120321120356%_))))
    (define gx#core-expand-call%
      (lambda (_%stx120276%_)
        (let* ((_%e120277120287%_ _%stx120276%_)
               (_%E120279120291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120277120287%_)))
               (_%E120278120315%_
                (lambda ()
                  (if (gx#stx-pair? _%e120277120287%_)
                      (let ((_%e120280120295%_
                             (gx#syntax-e _%e120277120287%_)))
                        (let ((_%hd120281120298%_ (##car _%e120280120295%_))
                              (_%tl120282120300%_ (##cdr _%e120280120295%_)))
                          (if (gx#stx-pair? _%tl120282120300%_)
                              (let ((_%e120283120303%_
                                     (gx#syntax-e _%tl120282120300%_)))
                                (let ((_%hd120284120306%_
                                       (##car _%e120283120303%_))
                                      (_%tl120285120308%_
                                       (##cdr _%e120283120303%_)))
                                  (let* ((_%rator120311%_ _%hd120284120306%_)
                                         (_%args120313%_ _%tl120285120308%_))
                                    (if (gx#stx-list? _%args120313%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator120311%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args120313%_))
                                         (gx#stx-source _%stx120276%_))
                                        (_%E120279120291%_)))))
                              (_%E120279120291%_))))
                      (_%E120279120291%_)))))
          (_%E120278120315%_))))
    (define gx#core-expand-if%
      (lambda (_%stx120209%_)
        (let* ((_%e120210120226%_ _%stx120209%_)
               (_%E120212120230%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120210120226%_)))
               (_%E120211120272%_
                (lambda ()
                  (if (gx#stx-pair? _%e120210120226%_)
                      (let ((_%e120213120234%_
                             (gx#syntax-e _%e120210120226%_)))
                        (let ((_%hd120214120237%_ (##car _%e120213120234%_))
                              (_%tl120215120239%_ (##cdr _%e120213120234%_)))
                          (if (gx#stx-pair? _%tl120215120239%_)
                              (let ((_%e120216120242%_
                                     (gx#syntax-e _%tl120215120239%_)))
                                (let ((_%hd120217120245%_
                                       (##car _%e120216120242%_))
                                      (_%tl120218120247%_
                                       (##cdr _%e120216120242%_)))
                                  (let ((_%test120250%_ _%hd120217120245%_))
                                    (if (gx#stx-pair? _%tl120218120247%_)
                                        (let ((_%e120219120252%_
                                               (gx#syntax-e
                                                _%tl120218120247%_)))
                                          (let ((_%hd120220120255%_
                                                 (##car _%e120219120252%_))
                                                (_%tl120221120257%_
                                                 (##cdr _%e120219120252%_)))
                                            (let ((_%K120260%_
                                                   _%hd120220120255%_))
                                              (if (gx#stx-pair?
                                                   _%tl120221120257%_)
                                                  (let ((_%e120222120262%_
                                                         (gx#syntax-e
                                                          _%tl120221120257%_)))
                                                    (let ((_%hd120223120265%_
                                                           (##car _%e120222120262%_))
                                                          (_%tl120224120267%_
                                                           (##cdr _%e120222120262%_)))
                                                      (let ((_%E120270%_
                                                             _%hd120223120265%_))
                                                        (if (gx#stx-null?
                                                             _%tl120224120267%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test120250%_)
                                     (cons (gx#core-expand-expression
                                            _%K120260%_)
                                           (cons (gx#core-expand-expression
                                                  _%E120270%_)
                                                 '()))))
                         (gx#stx-source _%stx120209%_))
                        (_%E120212120230%_))
                    (_%E120212120230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120212120230%_)))))
                                        (_%E120212120230%_)))))
                              (_%E120212120230%_))))
                      (_%E120212120230%_)))))
          (_%E120211120272%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx120168%_)
        (let* ((_%e120169120179%_ _%stx120168%_)
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
                          (if (gx#stx-pair? _%tl120174120192%_)
                              (let ((_%e120175120195%_
                                     (gx#syntax-e _%tl120174120192%_)))
                                (let ((_%hd120176120198%_
                                       (##car _%e120175120195%_))
                                      (_%tl120177120200%_
                                       (##cdr _%e120175120195%_)))
                                  (let ((_%id120203%_ _%hd120176120198%_))
                                    (if (gx#stx-null? _%tl120177120200%_)
                                        (if (gx#identifier? _%id120203%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id120203%_
                                                          _%stx120168%_)
                                                         '()))
                                             (gx#stx-source _%stx120168%_))
                                            (_%E120171120183%_))
                                        (_%E120171120183%_)))))
                              (_%E120171120183%_))))
                      (_%E120171120183%_)))))
          (_%E120170120205%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx120114%_)
        (let* ((_%e120115120128%_ _%stx120114%_)
               (_%E120117120132%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120115120128%_)))
               (_%E120116120164%_
                (lambda ()
                  (if (gx#stx-pair? _%e120115120128%_)
                      (let ((_%e120118120136%_
                             (gx#syntax-e _%e120115120128%_)))
                        (let ((_%hd120119120139%_ (##car _%e120118120136%_))
                              (_%tl120120120141%_ (##cdr _%e120118120136%_)))
                          (if (gx#stx-pair? _%tl120120120141%_)
                              (let ((_%e120121120144%_
                                     (gx#syntax-e _%tl120120120141%_)))
                                (let ((_%hd120122120147%_
                                       (##car _%e120121120144%_))
                                      (_%tl120123120149%_
                                       (##cdr _%e120121120144%_)))
                                  (let ((_%id120152%_ _%hd120122120147%_))
                                    (if (gx#stx-pair? _%tl120123120149%_)
                                        (let ((_%e120124120154%_
                                               (gx#syntax-e
                                                _%tl120123120149%_)))
                                          (let ((_%hd120125120157%_
                                                 (##car _%e120124120154%_))
                                                (_%tl120126120159%_
                                                 (##cdr _%e120124120154%_)))
                                            (let ((_%expr120162%_
                                                   _%hd120125120157%_))
                                              (if (gx#stx-null?
                                                   _%tl120126120159%_)
                                                  (if (gx#identifier?
                                                       _%id120152%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id120152%_
                            _%stx120114%_)
                           (cons (gx#core-expand-expression _%expr120162%_)
                                 '())))
               (gx#stx-source _%stx120114%_))
              (_%E120117120132%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120117120132%_)))))
                                        (_%E120117120132%_)))))
                              (_%E120117120132%_))))
                      (_%E120117120132%_)))))
          (_%E120116120164%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119959%_)
        (letrec ((_%generate119961%_
                  (lambda (_%body119991%_)
                    (let _%lp119993%_ ((_%rest119995%_ _%body119991%_)
                                       (_%ns119996%_
                                        (gx#core-context-namespace__0))
                                       (_%r119997%_ '()))
                      (let* ((_%e119998120013%_ _%rest119995%_)
                             (_%E120011120017%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119998120013%_)))
                             (_%E120007120021%_
                              (lambda ()
                                (if (gx#stx-null? _%e119998120013%_)
                                    (if '#t
                                        (reverse _%r119997%_)
                                        (_%E120011120017%_))
                                    (_%E120011120017%_))))
                             (_%E120000120078%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119998120013%_)
                                    (let ((_%e120008120025%_
                                           (gx#syntax-e _%e119998120013%_)))
                                      (let ((_%hd120009120028%_
                                             (##car _%e120008120025%_))
                                            (_%tl120010120030%_
                                             (##cdr _%e120008120025%_)))
                                        (let* ((_%hd120033%_
                                                _%hd120009120028%_)
                                               (_%rest120035%_
                                                _%tl120010120030%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd120033%_)
                                                  (_%lp119993%_
                                                   _%rest120035%_
                                                   _%ns119996%_
                                                   (cons (cons _%hd120033%_
                                                               (cons (if _%ns119996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd120033%_
                                  _%ns119996%_
                                  '"#"
                                  _%hd120033%_)
                                 _%hd120033%_)
                             '()))
                 _%r119997%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e120036120046%_
                                                          _%hd120033%_)
                                                         (_%E120038120050%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e120036120046%_)))
                                                         (_%E120037120074%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e120036120046%_)
                        (let ((_%e120039120054%_
                               (gx#syntax-e _%e120036120046%_)))
                          (let ((_%hd120040120057%_ (##car _%e120039120054%_))
                                (_%tl120041120059%_ (##cdr _%e120039120054%_)))
                            (let ((_%id120062%_ _%hd120040120057%_))
                              (if (gx#stx-pair? _%tl120041120059%_)
                                  (let ((_%e120042120064%_
                                         (gx#syntax-e _%tl120041120059%_)))
                                    (let ((_%hd120043120067%_
                                           (##car _%e120042120064%_))
                                          (_%tl120044120069%_
                                           (##cdr _%e120042120064%_)))
                                      (let ((_%eid120072%_ _%hd120043120067%_))
                                        (if (gx#stx-null? _%tl120044120069%_)
                                            (if (and (gx#identifier?
                                                      _%id120062%_)
                                                     (gx#identifier?
                                                      _%eid120072%_))
                                                (_%lp119993%_
                                                 _%rest120035%_
                                                 _%ns119996%_
                                                 (cons (cons _%id120062%_
                                                             (cons _%eid120072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119997%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120038120050%_))
                                            (_%E120038120050%_)))))
                                  (_%E120038120050%_)))))
                        (_%E120038120050%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120037120074%_)))
                                              (_%E120007120021%_)))))
                                    (_%E120007120021%_))))
                             (_%E119999120110%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119998120013%_)
                                    (let ((_%e120001120082%_
                                           (gx#syntax-e _%e119998120013%_)))
                                      (let ((_%hd120002120085%_
                                             (##car _%e120001120082%_))
                                            (_%tl120003120087%_
                                             (##cdr _%e120001120082%_)))
                                        (if (eq? (gx#stx-e _%hd120002120085%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl120003120087%_)
                                                (let ((_%e120004120090%_
                                                       (gx#syntax-e
                                                        _%tl120003120087%_)))
                                                  (let ((_%hd120005120093%_
                                                         (##car _%e120004120090%_))
                                                        (_%tl120006120095%_
                                                         (##cdr _%e120004120090%_)))
                                                    (let* ((_%ns120098%_
                                                            _%hd120005120093%_)
                                                           (_%rest120100%_
                                                            _%tl120006120095%_))
                                                      (if '#t
                                                          (let ((_%ns120108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns120098%_)
                             (let () (symbol->string (gx#stx-e _%ns120098%_)))
                             (if (or (gx#stx-string? _%ns120098%_)
                                     (gx#stx-false? _%ns120098%_))
                                 (let () (gx#stx-e _%ns120098%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx119959%_
                                    _%ns120098%_))))))
                    (_%lp119993%_ _%rest120100%_ _%ns120108%_ _%r119997%_))
                  (_%E120000120078%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120000120078%_))
                                            (_%E120000120078%_))))
                                    (_%E120000120078%_)))))
                        (_%E119999120110%_))))))
          (let* ((_%e119962119969%_ _%stx119959%_)
                 (_%E119964119973%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119962119969%_)))
                 (_%E119963119987%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119962119969%_)
                        (let ((_%e119965119977%_
                               (gx#syntax-e _%e119962119969%_)))
                          (let ((_%hd119966119980%_ (##car _%e119965119977%_))
                                (_%tl119967119982%_ (##cdr _%e119965119977%_)))
                            (let ((_%body119985%_ _%tl119967119982%_))
                              (if (gx#stx-list? _%body119985%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119961%_ _%body119985%_))
                                  (_%E119964119973%_)))))
                        (_%E119964119973%_)))))
            (_%E119963119987%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119905%_)
        (let* ((_%e119906119919%_ _%stx119905%_)
               (_%E119908119923%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119906119919%_)))
               (_%E119907119955%_
                (lambda ()
                  (if (gx#stx-pair? _%e119906119919%_)
                      (let ((_%e119909119927%_
                             (gx#syntax-e _%e119906119919%_)))
                        (let ((_%hd119910119930%_ (##car _%e119909119927%_))
                              (_%tl119911119932%_ (##cdr _%e119909119927%_)))
                          (if (gx#stx-pair? _%tl119911119932%_)
                              (let ((_%e119912119935%_
                                     (gx#syntax-e _%tl119911119932%_)))
                                (let ((_%hd119913119938%_
                                       (##car _%e119912119935%_))
                                      (_%tl119914119940%_
                                       (##cdr _%e119912119935%_)))
                                  (let ((_%hd119943%_ _%hd119913119938%_))
                                    (if (gx#stx-pair? _%tl119914119940%_)
                                        (let ((_%e119915119945%_
                                               (gx#syntax-e
                                                _%tl119914119940%_)))
                                          (let ((_%hd119916119948%_
                                                 (##car _%e119915119945%_))
                                                (_%tl119917119950%_
                                                 (##cdr _%e119915119945%_)))
                                            (let ((_%expr119953%_
                                                   _%hd119916119948%_))
                                              (if (gx#stx-null?
                                                   _%tl119917119950%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119943%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119943%_)
                          (cons _%expr119953%_ '())))
              (_%E119908119923%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119908119923%_)))))
                                        (_%E119908119923%_)))))
                              (_%E119908119923%_))))
                      (_%E119908119923%_)))))
          (_%E119907119955%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119851%_)
        (let* ((_%e119852119865%_ _%stx119851%_)
               (_%E119854119869%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119852119865%_)))
               (_%E119853119901%_
                (lambda ()
                  (if (gx#stx-pair? _%e119852119865%_)
                      (let ((_%e119855119873%_
                             (gx#syntax-e _%e119852119865%_)))
                        (let ((_%hd119856119876%_ (##car _%e119855119873%_))
                              (_%tl119857119878%_ (##cdr _%e119855119873%_)))
                          (if (gx#stx-pair? _%tl119857119878%_)
                              (let ((_%e119858119881%_
                                     (gx#syntax-e _%tl119857119878%_)))
                                (let ((_%hd119859119884%_
                                       (##car _%e119858119881%_))
                                      (_%tl119860119886%_
                                       (##cdr _%e119858119881%_)))
                                  (let ((_%hd119889%_ _%hd119859119884%_))
                                    (if (gx#stx-pair? _%tl119860119886%_)
                                        (let ((_%e119861119891%_
                                               (gx#syntax-e
                                                _%tl119860119886%_)))
                                          (let ((_%hd119862119894%_
                                                 (##car _%e119861119891%_))
                                                (_%tl119863119896%_
                                                 (##cdr _%e119861119891%_)))
                                            (let ((_%expr119899%_
                                                   _%hd119862119894%_))
                                              (if (gx#stx-null?
                                                   _%tl119863119896%_)
                                                  (if (gx#identifier?
                                                       _%hd119889%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119899%_ '())))
              (_%E119854119869%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119854119869%_)))))
                                        (_%E119854119869%_)))))
                              (_%E119854119869%_))))
                      (_%E119854119869%_)))))
          (_%E119853119901%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119797%_)
        (let* ((_%e119798119811%_ _%stx119797%_)
               (_%E119800119815%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119798119811%_)))
               (_%E119799119847%_
                (lambda ()
                  (if (gx#stx-pair? _%e119798119811%_)
                      (let ((_%e119801119819%_
                             (gx#syntax-e _%e119798119811%_)))
                        (let ((_%hd119802119822%_ (##car _%e119801119819%_))
                              (_%tl119803119824%_ (##cdr _%e119801119819%_)))
                          (if (gx#stx-pair? _%tl119803119824%_)
                              (let ((_%e119804119827%_
                                     (gx#syntax-e _%tl119803119824%_)))
                                (let ((_%hd119805119830%_
                                       (##car _%e119804119827%_))
                                      (_%tl119806119832%_
                                       (##cdr _%e119804119827%_)))
                                  (let ((_%id119835%_ _%hd119805119830%_))
                                    (if (gx#stx-pair? _%tl119806119832%_)
                                        (let ((_%e119807119837%_
                                               (gx#syntax-e
                                                _%tl119806119832%_)))
                                          (let ((_%hd119808119840%_
                                                 (##car _%e119807119837%_))
                                                (_%tl119809119842%_
                                                 (##cdr _%e119807119837%_)))
                                            (let ((_%alias-id119845%_
                                                   _%hd119808119840%_))
                                              (if (gx#stx-null?
                                                   _%tl119809119842%_)
                                                  (if (and (gx#identifier?
                                                            _%id119835%_)
                                                           (gx#identifier?
                                                            _%alias-id119845%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119845%_ '())))
              (_%E119800119815%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119800119815%_)))))
                                        (_%E119800119815%_)))))
                              (_%E119800119815%_))))
                      (_%E119800119815%_)))))
          (_%E119799119847%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119754%_)
        (let* ((_%e119755119765%_ _%stx119754%_)
               (_%E119757119769%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119755119765%_)))
               (_%E119756119793%_
                (lambda ()
                  (if (gx#stx-pair? _%e119755119765%_)
                      (let ((_%e119758119773%_
                             (gx#syntax-e _%e119755119765%_)))
                        (let ((_%hd119759119776%_ (##car _%e119758119773%_))
                              (_%tl119760119778%_ (##cdr _%e119758119773%_)))
                          (if (gx#stx-pair? _%tl119760119778%_)
                              (let ((_%e119761119781%_
                                     (gx#syntax-e _%tl119760119778%_)))
                                (let ((_%hd119762119784%_
                                       (##car _%e119761119781%_))
                                      (_%tl119763119786%_
                                       (##cdr _%e119761119781%_)))
                                  (let* ((_%hd119789%_ _%hd119762119784%_)
                                         (_%body119791%_ _%tl119763119786%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119789%_)
                                             (gx#stx-list? _%body119791%_)
                                             (not (gx#stx-null?
                                                   _%body119791%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119789%_)
                                         _%body119791%_)
                                        (_%E119757119769%_)))))
                              (_%E119757119769%_))))
                      (_%E119757119769%_)))))
          (_%E119756119793%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119690%_)
        (letrec ((_%generate119692%_
                  (lambda (_%clause119722%_)
                    (let* ((_%e119723119730%_ _%clause119722%_)
                           (_%E119725119734%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119690%_
                               _%clause119722%_)))
                           (_%E119724119750%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119723119730%_)
                                  (let ((_%e119726119738%_
                                         (gx#syntax-e _%e119723119730%_)))
                                    (let ((_%hd119727119741%_
                                           (##car _%e119726119738%_))
                                          (_%tl119728119743%_
                                           (##cdr _%e119726119738%_)))
                                      (let* ((_%hd119746%_ _%hd119727119741%_)
                                             (_%body119748%_
                                              _%tl119728119743%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119746%_)
                                                 (gx#stx-list? _%body119748%_)
                                                 (not (gx#stx-null?
                                                       _%body119748%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119746%_)
                                                   _%body119748%_)
                                             (gx#stx-source _%clause119722%_))
                                            (_%E119725119734%_)))))
                                  (_%E119725119734%_)))))
                      (_%E119724119750%_)))))
          (let* ((_%e119693119700%_ _%stx119690%_)
                 (_%E119695119704%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119693119700%_)))
                 (_%E119694119718%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119693119700%_)
                        (let ((_%e119696119708%_
                               (gx#syntax-e _%e119693119700%_)))
                          (let ((_%hd119697119711%_ (##car _%e119696119708%_))
                                (_%tl119698119713%_ (##cdr _%e119696119708%_)))
                            (let ((_%clauses119716%_ _%tl119698119713%_))
                              (if (gx#stx-list? _%clauses119716%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119692%_
                                    _%clauses119716%_))
                                  (_%E119695119704%_)))))
                        (_%E119695119704%_)))))
            (_%E119694119718%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119591%_ _%form119592%_)
        (letrec ((_%generate119594%_
                  (lambda (_%bind119637%_)
                    (let* ((_%e119638119648%_ _%bind119637%_)
                           (_%E119640119652%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119591%_
                               _%bind119637%_)))
                           (_%E119639119676%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119638119648%_)
                                  (let ((_%e119641119656%_
                                         (gx#syntax-e _%e119638119648%_)))
                                    (let ((_%hd119642119659%_
                                           (##car _%e119641119656%_))
                                          (_%tl119643119661%_
                                           (##cdr _%e119641119656%_)))
                                      (let ((_%ids119664%_ _%hd119642119659%_))
                                        (if (gx#stx-pair? _%tl119643119661%_)
                                            (let ((_%e119644119666%_
                                                   (gx#syntax-e
                                                    _%tl119643119661%_)))
                                              (let ((_%hd119645119669%_
                                                     (##car _%e119644119666%_))
                                                    (_%tl119646119671%_
                                                     (##cdr _%e119644119666%_)))
                                                (let ((_%expr119674%_
                                                       _%hd119645119669%_))
                                                  (if (gx#stx-null?
                                                       _%tl119646119671%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119664%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119664%_)
                        (cons _%expr119674%_ '()))
                  (_%E119640119652%_))
              (_%E119640119652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119640119652%_)))))
                                  (_%E119640119652%_)))))
                      (_%E119639119676%_)))))
          (let* ((_%e119595119605%_ _%stx119591%_)
                 (_%E119597119609%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119595119605%_)))
                 (_%E119596119633%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119595119605%_)
                        (let ((_%e119598119613%_
                               (gx#syntax-e _%e119595119605%_)))
                          (let ((_%hd119599119616%_ (##car _%e119598119613%_))
                                (_%tl119600119618%_ (##cdr _%e119598119613%_)))
                            (if (gx#stx-pair? _%tl119600119618%_)
                                (let ((_%e119601119621%_
                                       (gx#syntax-e _%tl119600119618%_)))
                                  (let ((_%hd119602119624%_
                                         (##car _%e119601119621%_))
                                        (_%tl119603119626%_
                                         (##cdr _%e119601119621%_)))
                                    (let* ((_%hd119629%_ _%hd119602119624%_)
                                           (_%body119631%_ _%tl119603119626%_))
                                      (if (and (gx#stx-list? _%hd119629%_)
                                               (gx#stx-list? _%body119631%_)
                                               (not (gx#stx-null?
                                                     _%body119631%_)))
                                          (gx#core-cons*
                                           _%form119592%_
                                           (gx#stx-map1
                                            _%generate119594%_
                                            _%hd119629%_)
                                           _%body119631%_)
                                          (_%E119597119609%_)))))
                                (_%E119597119609%_))))
                        (_%E119597119609%_)))))
            (_%E119596119633%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119683%_)
        (let ((_%form119685%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119683%_ _%form119685%_))))
    (define gx#macro-expand-let-values
      (lambda _g122072_
        (let ((_g122071_ (##length _g122072_)))
          (cond ((##fx= _g122071_ 1)
                 (apply (lambda (_%stx119683%_)
                          (gx#macro-expand-let-values__0 _%stx119683%_))
                        _g122072_))
                ((##fx= _g122071_ 2)
                 (apply (lambda (_%stx119687%_ _%form119688%_)
                          (gx#macro-expand-let-values__%
                           _%stx119687%_
                           _%form119688%_))
                        _g122072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g122072_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119588%_)
        (gx#macro-expand-let-values__% _%stx119588%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119586%_)
        (gx#macro-expand-let-values__% _%stx119586%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx119477%_)
        (let* ((_%e119478119504%_ _%stx119477%_)
               (_%E119490119508%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119478119504%_)))
               (_%E119480119550%_
                (lambda ()
                  (if (gx#stx-pair? _%e119478119504%_)
                      (let ((_%e119491119512%_
                             (gx#syntax-e _%e119478119504%_)))
                        (let ((_%hd119492119515%_ (##car _%e119491119512%_))
                              (_%tl119493119517%_ (##cdr _%e119491119512%_)))
                          (if (gx#stx-pair? _%tl119493119517%_)
                              (let ((_%e119494119520%_
                                     (gx#syntax-e _%tl119493119517%_)))
                                (let ((_%hd119495119523%_
                                       (##car _%e119494119520%_))
                                      (_%tl119496119525%_
                                       (##cdr _%e119494119520%_)))
                                  (let ((_%test119528%_ _%hd119495119523%_))
                                    (if (gx#stx-pair? _%tl119496119525%_)
                                        (let ((_%e119497119530%_
                                               (gx#syntax-e
                                                _%tl119496119525%_)))
                                          (let ((_%hd119498119533%_
                                                 (##car _%e119497119530%_))
                                                (_%tl119499119535%_
                                                 (##cdr _%e119497119530%_)))
                                            (let ((_%K119538%_
                                                   _%hd119498119533%_))
                                              (if (gx#stx-pair?
                                                   _%tl119499119535%_)
                                                  (let ((_%e119500119540%_
                                                         (gx#syntax-e
                                                          _%tl119499119535%_)))
                                                    (let ((_%hd119501119543%_
                                                           (##car _%e119500119540%_))
                                                          (_%tl119502119545%_
                                                           (##cdr _%e119500119540%_)))
                                                      (let ((_%E119548%_
                                                             _%hd119501119543%_))
                                                        (if (gx#stx-null?
                                                             _%tl119502119545%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119528%_
                         _%K119538%_
                         _%E119548%_)
                        (_%E119490119508%_))
                    (_%E119490119508%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119490119508%_)))))
                                        (_%E119490119508%_)))))
                              (_%E119490119508%_))))
                      (_%E119490119508%_))))
               (_%E119479119582%_
                (lambda ()
                  (if (gx#stx-pair? _%e119478119504%_)
                      (let ((_%e119481119554%_
                             (gx#syntax-e _%e119478119504%_)))
                        (let ((_%hd119482119557%_ (##car _%e119481119554%_))
                              (_%tl119483119559%_ (##cdr _%e119481119554%_)))
                          (if (gx#stx-pair? _%tl119483119559%_)
                              (let ((_%e119484119562%_
                                     (gx#syntax-e _%tl119483119559%_)))
                                (let ((_%hd119485119565%_
                                       (##car _%e119484119562%_))
                                      (_%tl119486119567%_
                                       (##cdr _%e119484119562%_)))
                                  (let ((_%test119570%_ _%hd119485119565%_))
                                    (if (gx#stx-pair? _%tl119486119567%_)
                                        (let ((_%e119487119572%_
                                               (gx#syntax-e
                                                _%tl119486119567%_)))
                                          (let ((_%hd119488119575%_
                                                 (##car _%e119487119572%_))
                                                (_%tl119489119577%_
                                                 (##cdr _%e119487119572%_)))
                                            (let ((_%K119580%_
                                                   _%hd119488119575%_))
                                              (if (gx#stx-null?
                                                   _%tl119489119577%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119570%_
                                                       _%K119580%_
                                                       '#!void)
                                                      (_%E119480119550%_))
                                                  (_%E119480119550%_)))))
                                        (_%E119480119550%_)))))
                              (_%E119480119550%_))))
                      (_%E119480119550%_)))))
          (_%E119479119582%_))))
    (define gx#free-identifier=?
      (lambda (_%xid119462%_ _%yid119463%_)
        (let ((_%xe119465%_ (gx#resolve-identifier__0 _%xid119462%_))
              (_%ye119466%_ (gx#resolve-identifier__0 _%yid119463%_)))
          (if (and _%xe119465%_ _%ye119466%_)
              (let ((_%$e119469%_ (eq? _%xe119465%_ _%ye119466%_)))
                (if _%$e119469%_
                    _%$e119469%_
                    (if (##structure-instance-of? _%xe119465%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye119466%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe119465%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye119466%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe119465%_ _%ye119466%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid119462%_ _%yid119463%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid119443%_ _%yid119444%_)
        (letrec ((_%context119446%_
                  (lambda (_%e119460%_)
                    (if (##structure-direct-instance-of?
                         _%e119460%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e119460%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks119447%_
                  (lambda (_%e119455%_)
                    (if (symbol? _%e119455%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e119455%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e119455%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e119455%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap119448%_
                  (lambda (_%e119453%_)
                    (if (symbol? _%e119453%_)
                        _%e119453%_
                        (gx#syntax-local-unwrap _%e119453%_)))))
          (let ((_%x119450%_ (_%unwrap119448%_ _%xid119443%_))
                (_%y119451%_ (_%unwrap119448%_ _%yid119444%_)))
            (if (gx#stx-eq? _%x119450%_ _%y119451%_)
                (if (eq? (_%context119446%_ _%x119450%_)
                         (_%context119446%_ _%y119451%_))
                    (equal? (_%marks119447%_ _%x119450%_)
                            (_%marks119447%_ _%y119451%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx119441%_)
        (if (gx#identifier? _%stx119441%_)
            (gx#core-identifier=? _%stx119441%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx119439%_)
        (if (gx#identifier? _%stx119439%_)
            (gx#core-identifier=? _%stx119439%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx119382%_ _%where119383%_)
        (let _%lp119385%_ ((_%rest119387%_ (gx#syntax->list _%stx119382%_)))
          (let* ((_%rest119388119396%_ _%rest119387%_)
                 (_%else119390119404%_ (lambda () '#t))
                 (_%K119392119417%_
                  (lambda (_%rest119407%_ _%hd119408%_)
                    (if (not (gx#identifier? _%hd119408%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where119383%_
                           _%hd119408%_))
                        (if (__find (lambda (_%g119410119412%_)
                                      (gx#bound-identifier=?
                                       _%g119410119412%_
                                       _%hd119408%_))
                                    _%rest119407%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where119383%_
                               _%hd119408%_))
                            (let () (_%lp119385%_ _%rest119407%_)))))))
            (if (##pair? _%rest119388119396%_)
                (let ((_%hd119393119420%_ (##car _%rest119388119396%_))
                      (_%tl119394119422%_ (##cdr _%rest119388119396%_)))
                  (let* ((_%hd119425%_ _%hd119393119420%_)
                         (_%rest119427%_ _%tl119394119422%_))
                    (_%K119392119417%_ _%rest119427%_ _%hd119425%_)))
                (_%else119390119404%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx119432%_)
        (let ((_%where119434%_ _%stx119432%_))
          (gx#check-duplicate-identifiers__% _%stx119432%_ _%where119434%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g122074_
        (let ((_g122073_ (##length _g122074_)))
          (cond ((##fx= _g122073_ 1)
                 (apply (lambda (_%stx119432%_)
                          (gx#check-duplicate-identifiers__0 _%stx119432%_))
                        _g122074_))
                ((##fx= _g122073_ 2)
                 (apply (lambda (_%stx119436%_ _%where119437%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx119436%_
                           _%where119437%_))
                        _g122074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g122074_))))))
    (define gx#core-bind-values?
      (lambda (_%stx119374%_)
        (gx#stx-andmap
         (lambda (_%x119376%_)
           (let ((_%$e119378%_ (gx#identifier? _%x119376%_)))
             (if _%$e119378%_ _%$e119378%_ (gx#stx-false? _%x119376%_))))
         _%stx119374%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx119338%_ _%rebind?119339%_ _%phi119340%_ _%ctx119341%_)
        (gx#stx-for-each1
         (lambda (_%id119343%_)
           (if (gx#identifier? _%id119343%_)
               (gx#core-bind-runtime!__%
                _%id119343%_
                _%rebind?119339%_
                _%phi119340%_
                _%ctx119341%_)
               '#!void))
         _%stx119338%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx119348%_)
        (let* ((_%rebind?119350%_ '#f)
               (_%phi119352%_ (gx#current-expander-phi))
               (_%ctx119354%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119348%_
           _%rebind?119350%_
           _%phi119352%_
           _%ctx119354%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx119356%_ _%rebind?119357%_)
        (let* ((_%phi119359%_ (gx#current-expander-phi))
               (_%ctx119361%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119356%_
           _%rebind?119357%_
           _%phi119359%_
           _%ctx119361%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx119363%_ _%rebind?119364%_ _%phi119365%_)
        (let ((_%ctx119367%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119363%_
           _%rebind?119364%_
           _%phi119365%_
           _%ctx119367%_))))
    (define gx#core-bind-values!
      (lambda _g122076_
        (let ((_g122075_ (##length _g122076_)))
          (cond ((##fx= _g122075_ 1)
                 (apply (lambda (_%stx119348%_)
                          (gx#core-bind-values!__0 _%stx119348%_))
                        _g122076_))
                ((##fx= _g122075_ 2)
                 (apply (lambda (_%stx119356%_ _%rebind?119357%_)
                          (gx#core-bind-values!__1
                           _%stx119356%_
                           _%rebind?119357%_))
                        _g122076_))
                ((##fx= _g122075_ 3)
                 (apply (lambda (_%stx119363%_ _%rebind?119364%_ _%phi119365%_)
                          (gx#core-bind-values!__2
                           _%stx119363%_
                           _%rebind?119364%_
                           _%phi119365%_))
                        _g122076_))
                ((##fx= _g122075_ 4)
                 (apply (lambda (_%stx119369%_
                                 _%rebind?119370%_
                                 _%phi119371%_
                                 _%ctx119372%_)
                          (gx#core-bind-values!__%
                           _%stx119369%_
                           _%rebind?119370%_
                           _%phi119371%_
                           _%ctx119372%_))
                        _g122076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g122076_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx119333%_)
        (gx#stx-map1
         (lambda (_%x119335%_)
           (if (gx#identifier? _%x119335%_)
               (gx#core-quote-syntax__0 _%x119335%_)
               '#f))
         _%stx119333%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx119326%_)
        (if (gx#identifier? _%stx119326%_)
            (let* ((_%bind119328%_ (gx#resolve-identifier__0 _%stx119326%_))
                   (_%$e119330%_ (not _%bind119328%_)))
              (if _%$e119330%_
                  _%$e119330%_
                  (##structure-instance-of?
                   _%bind119328%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id119315%_ _%form119316%_)
        (let ((_%bind119318%_ (gx#resolve-identifier__0 _%id119315%_)))
          (if (##structure-instance-of? _%bind119318%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id119315%_))
              (if (not _%bind119318%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id119315%_)))
                        (gx#core-quote-syntax__0 _%id119315%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form119316%_
                         _%id119315%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form119316%_
                     _%id119315%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id119270%_ _%rebind?119271%_ _%phi119272%_ _%ctx119273%_)
        (let* ((_%key119275%_ (gx#core-identifier-key _%id119270%_))
               (_%eid119277%_
                (gx#make-binding-id__%
                 _%key119275%_
                 '#f
                 _%phi119272%_
                 _%ctx119273%_))
               (_%bind119283%_
                (if (##structure-instance-of?
                     _%ctx119273%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119277%_
                       _%key119275%_
                       _%phi119272%_
                       _%ctx119273%_))
                    (if (##structure-instance-of?
                         _%ctx119273%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119277%_
                           _%key119275%_
                           _%phi119272%_))
                        (if (##structure-instance-of?
                             _%ctx119273%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid119277%_
                               _%key119275%_
                               _%phi119272%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid119277%_
                               _%key119275%_
                               _%phi119272%_)))))))
          (gx#bind-identifier!__%
           _%id119270%_
           _%bind119283%_
           _%rebind?119271%_
           _%phi119272%_
           _%ctx119273%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id119289%_)
        (let* ((_%rebind?119291%_ '#f)
               (_%phi119293%_ (gx#current-expander-phi))
               (_%ctx119295%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119289%_
           _%rebind?119291%_
           _%phi119293%_
           _%ctx119295%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id119297%_ _%rebind?119298%_)
        (let* ((_%phi119300%_ (gx#current-expander-phi))
               (_%ctx119302%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119297%_
           _%rebind?119298%_
           _%phi119300%_
           _%ctx119302%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id119304%_ _%rebind?119305%_ _%phi119306%_)
        (let ((_%ctx119308%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119304%_
           _%rebind?119305%_
           _%phi119306%_
           _%ctx119308%_))))
    (define gx#core-bind-runtime!
      (lambda _g122078_
        (let ((_g122077_ (##length _g122078_)))
          (cond ((##fx= _g122077_ 1)
                 (apply (lambda (_%id119289%_)
                          (gx#core-bind-runtime!__0 _%id119289%_))
                        _g122078_))
                ((##fx= _g122077_ 2)
                 (apply (lambda (_%id119297%_ _%rebind?119298%_)
                          (gx#core-bind-runtime!__1
                           _%id119297%_
                           _%rebind?119298%_))
                        _g122078_))
                ((##fx= _g122077_ 3)
                 (apply (lambda (_%id119304%_ _%rebind?119305%_ _%phi119306%_)
                          (gx#core-bind-runtime!__2
                           _%id119304%_
                           _%rebind?119305%_
                           _%phi119306%_))
                        _g122078_))
                ((##fx= _g122077_ 4)
                 (apply (lambda (_%id119310%_
                                 _%rebind?119311%_
                                 _%phi119312%_
                                 _%ctx119313%_)
                          (gx#core-bind-runtime!__%
                           _%id119310%_
                           _%rebind?119311%_
                           _%phi119312%_
                           _%ctx119313%_))
                        _g122078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g122078_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id119222%_
               _%eid119223%_
               _%rebind?119224%_
               _%phi119225%_
               _%ctx119226%_)
        (let* ((_%key119228%_ (gx#core-identifier-key _%id119222%_))
               (_%bind119233%_
                (if (##structure-instance-of?
                     _%ctx119226%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119223%_
                       _%key119228%_
                       _%phi119225%_
                       _%ctx119226%_))
                    (if (##structure-instance-of?
                         _%ctx119226%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119223%_
                           _%key119228%_
                           _%phi119225%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid119223%_
                           _%key119228%_
                           _%phi119225%_))))))
          (gx#bind-identifier!__%
           _%id119222%_
           _%bind119233%_
           _%rebind?119224%_
           _%phi119225%_
           _%ctx119226%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id119239%_ _%eid119240%_)
        (let* ((_%rebind?119242%_ '#f)
               (_%phi119244%_ (gx#current-expander-phi))
               (_%ctx119246%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119239%_
           _%eid119240%_
           _%rebind?119242%_
           _%phi119244%_
           _%ctx119246%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id119248%_ _%eid119249%_ _%rebind?119250%_)
        (let* ((_%phi119252%_ (gx#current-expander-phi))
               (_%ctx119254%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119248%_
           _%eid119249%_
           _%rebind?119250%_
           _%phi119252%_
           _%ctx119254%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id119256%_ _%eid119257%_ _%rebind?119258%_ _%phi119259%_)
        (let ((_%ctx119261%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119256%_
           _%eid119257%_
           _%rebind?119258%_
           _%phi119259%_
           _%ctx119261%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g122080_
        (let ((_g122079_ (##length _g122080_)))
          (cond ((##fx= _g122079_ 2)
                 (apply (lambda (_%id119239%_ _%eid119240%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id119239%_
                           _%eid119240%_))
                        _g122080_))
                ((##fx= _g122079_ 3)
                 (apply (lambda (_%id119248%_ _%eid119249%_ _%rebind?119250%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id119248%_
                           _%eid119249%_
                           _%rebind?119250%_))
                        _g122080_))
                ((##fx= _g122079_ 4)
                 (apply (lambda (_%id119256%_
                                 _%eid119257%_
                                 _%rebind?119258%_
                                 _%phi119259%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id119256%_
                           _%eid119257%_
                           _%rebind?119258%_
                           _%phi119259%_))
                        _g122080_))
                ((##fx= _g122079_ 5)
                 (apply (lambda (_%id119263%_
                                 _%eid119264%_
                                 _%rebind?119265%_
                                 _%phi119266%_
                                 _%ctx119267%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id119263%_
                           _%eid119264%_
                           _%rebind?119265%_
                           _%phi119266%_
                           _%ctx119267%_))
                        _g122080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g122080_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id119182%_
               _%eid119183%_
               _%rebind?119184%_
               _%phi119185%_
               _%ctx119186%_)
        (gx#bind-identifier!__%
         _%id119182%_
         (##structure
          gx#extern-binding::t
          _%eid119183%_
          (gx#core-identifier-key _%id119182%_)
          _%phi119185%_)
         _%rebind?119184%_
         _%phi119185%_
         _%ctx119186%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id119191%_ _%eid119192%_)
        (let* ((_%rebind?119194%_ '#f)
               (_%phi119196%_ (gx#current-expander-phi))
               (_%ctx119198%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119191%_
           _%eid119192%_
           _%rebind?119194%_
           _%phi119196%_
           _%ctx119198%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id119200%_ _%eid119201%_ _%rebind?119202%_)
        (let* ((_%phi119204%_ (gx#current-expander-phi))
               (_%ctx119206%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119200%_
           _%eid119201%_
           _%rebind?119202%_
           _%phi119204%_
           _%ctx119206%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id119208%_ _%eid119209%_ _%rebind?119210%_ _%phi119211%_)
        (let ((_%ctx119213%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119208%_
           _%eid119209%_
           _%rebind?119210%_
           _%phi119211%_
           _%ctx119213%_))))
    (define gx#core-bind-extern!
      (lambda _g122082_
        (let ((_g122081_ (##length _g122082_)))
          (cond ((##fx= _g122081_ 2)
                 (apply (lambda (_%id119191%_ _%eid119192%_)
                          (gx#core-bind-extern!__0 _%id119191%_ _%eid119192%_))
                        _g122082_))
                ((##fx= _g122081_ 3)
                 (apply (lambda (_%id119200%_ _%eid119201%_ _%rebind?119202%_)
                          (gx#core-bind-extern!__1
                           _%id119200%_
                           _%eid119201%_
                           _%rebind?119202%_))
                        _g122082_))
                ((##fx= _g122081_ 4)
                 (apply (lambda (_%id119208%_
                                 _%eid119209%_
                                 _%rebind?119210%_
                                 _%phi119211%_)
                          (gx#core-bind-extern!__2
                           _%id119208%_
                           _%eid119209%_
                           _%rebind?119210%_
                           _%phi119211%_))
                        _g122082_))
                ((##fx= _g122081_ 5)
                 (apply (lambda (_%id119215%_
                                 _%eid119216%_
                                 _%rebind?119217%_
                                 _%phi119218%_
                                 _%ctx119219%_)
                          (gx#core-bind-extern!__%
                           _%id119215%_
                           _%eid119216%_
                           _%rebind?119217%_
                           _%phi119218%_
                           _%ctx119219%_))
                        _g122082_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g122082_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id119136%_
               _%e119137%_
               _%rebind?119138%_
               _%phi119139%_
               _%ctx119140%_)
        (gx#bind-identifier!__%
         _%id119136%_
         (let ((_%key119145%_ (gx#core-identifier-key _%id119136%_))
               (_%e119146%_
                (if (or (##structure-instance-of? _%e119137%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e119137%_
                         'gx#expander-context::t))
                    _%e119137%_
                    (##structure
                     gx#user-expander::t
                     _%e119137%_
                     _%ctx119140%_
                     _%phi119139%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key119145%_
             '#t
             _%phi119139%_
             _%ctx119140%_)
            _%key119145%_
            _%phi119139%_
            _%e119146%_))
         _%rebind?119138%_
         _%phi119139%_
         _%ctx119140%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id119151%_ _%e119152%_)
        (let* ((_%rebind?119154%_ '#f)
               (_%phi119156%_ (gx#current-expander-phi))
               (_%ctx119158%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119151%_
           _%e119152%_
           _%rebind?119154%_
           _%phi119156%_
           _%ctx119158%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id119160%_ _%e119161%_ _%rebind?119162%_)
        (let* ((_%phi119164%_ (gx#current-expander-phi))
               (_%ctx119166%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119160%_
           _%e119161%_
           _%rebind?119162%_
           _%phi119164%_
           _%ctx119166%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id119168%_ _%e119169%_ _%rebind?119170%_ _%phi119171%_)
        (let ((_%ctx119173%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119168%_
           _%e119169%_
           _%rebind?119170%_
           _%phi119171%_
           _%ctx119173%_))))
    (define gx#core-bind-syntax!
      (lambda _g122084_
        (let ((_g122083_ (##length _g122084_)))
          (cond ((##fx= _g122083_ 2)
                 (apply (lambda (_%id119151%_ _%e119152%_)
                          (gx#core-bind-syntax!__0 _%id119151%_ _%e119152%_))
                        _g122084_))
                ((##fx= _g122083_ 3)
                 (apply (lambda (_%id119160%_ _%e119161%_ _%rebind?119162%_)
                          (gx#core-bind-syntax!__1
                           _%id119160%_
                           _%e119161%_
                           _%rebind?119162%_))
                        _g122084_))
                ((##fx= _g122083_ 4)
                 (apply (lambda (_%id119168%_
                                 _%e119169%_
                                 _%rebind?119170%_
                                 _%phi119171%_)
                          (gx#core-bind-syntax!__2
                           _%id119168%_
                           _%e119169%_
                           _%rebind?119170%_
                           _%phi119171%_))
                        _g122084_))
                ((##fx= _g122083_ 5)
                 (apply (lambda (_%id119175%_
                                 _%e119176%_
                                 _%rebind?119177%_
                                 _%phi119178%_
                                 _%ctx119179%_)
                          (gx#core-bind-syntax!__%
                           _%id119175%_
                           _%e119176%_
                           _%rebind?119177%_
                           _%phi119178%_
                           _%ctx119179%_))
                        _g122084_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g122084_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id119119%_ _%e119120%_ _%rebind?119121%_)
        (gx#core-bind-syntax!__%
         _%id119119%_
         _%e119120%_
         _%rebind?119121%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id119126%_ _%e119127%_)
        (let ((_%rebind?119129%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id119126%_
           _%e119127%_
           _%rebind?119129%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g122086_
        (let ((_g122085_ (##length _g122086_)))
          (cond ((##fx= _g122085_ 2)
                 (apply (lambda (_%id119126%_ _%e119127%_)
                          (gx#core-bind-root-syntax!__0
                           _%id119126%_
                           _%e119127%_))
                        _g122086_))
                ((##fx= _g122085_ 3)
                 (apply (lambda (_%id119131%_ _%e119132%_ _%rebind?119133%_)
                          (gx#core-bind-root-syntax!__%
                           _%id119131%_
                           _%e119132%_
                           _%rebind?119133%_))
                        _g122086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g122086_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id119077%_
               _%alias-id119078%_
               _%rebind?119079%_
               _%phi119080%_
               _%ctx119081%_)
        (gx#bind-identifier!__%
         _%id119077%_
         (let ((_%key119083%_ (gx#core-identifier-key _%id119077%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key119083%_
             '#t
             _%phi119080%_
             _%ctx119081%_)
            _%key119083%_
            _%phi119080%_
            _%alias-id119078%_))
         _%rebind?119079%_
         _%phi119080%_
         _%ctx119081%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id119088%_ _%alias-id119089%_)
        (let* ((_%rebind?119091%_ '#f)
               (_%phi119093%_ (gx#current-expander-phi))
               (_%ctx119095%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119088%_
           _%alias-id119089%_
           _%rebind?119091%_
           _%phi119093%_
           _%ctx119095%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id119097%_ _%alias-id119098%_ _%rebind?119099%_)
        (let* ((_%phi119101%_ (gx#current-expander-phi))
               (_%ctx119103%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119097%_
           _%alias-id119098%_
           _%rebind?119099%_
           _%phi119101%_
           _%ctx119103%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id119105%_ _%alias-id119106%_ _%rebind?119107%_ _%phi119108%_)
        (let ((_%ctx119110%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119105%_
           _%alias-id119106%_
           _%rebind?119107%_
           _%phi119108%_
           _%ctx119110%_))))
    (define gx#core-bind-alias!
      (lambda _g122088_
        (let ((_g122087_ (##length _g122088_)))
          (cond ((##fx= _g122087_ 2)
                 (apply (lambda (_%id119088%_ _%alias-id119089%_)
                          (gx#core-bind-alias!__0
                           _%id119088%_
                           _%alias-id119089%_))
                        _g122088_))
                ((##fx= _g122087_ 3)
                 (apply (lambda (_%id119097%_
                                 _%alias-id119098%_
                                 _%rebind?119099%_)
                          (gx#core-bind-alias!__1
                           _%id119097%_
                           _%alias-id119098%_
                           _%rebind?119099%_))
                        _g122088_))
                ((##fx= _g122087_ 4)
                 (apply (lambda (_%id119105%_
                                 _%alias-id119106%_
                                 _%rebind?119107%_
                                 _%phi119108%_)
                          (gx#core-bind-alias!__2
                           _%id119105%_
                           _%alias-id119106%_
                           _%rebind?119107%_
                           _%phi119108%_))
                        _g122088_))
                ((##fx= _g122087_ 5)
                 (apply (lambda (_%id119112%_
                                 _%alias-id119113%_
                                 _%rebind?119114%_
                                 _%phi119115%_
                                 _%ctx119116%_)
                          (gx#core-bind-alias!__%
                           _%id119112%_
                           _%alias-id119113%_
                           _%rebind?119114%_
                           _%phi119115%_
                           _%ctx119116%_))
                        _g122088_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g122088_))))))
    (define gx#make-binding-id__%
      (lambda (_%key119027%_ _%syntax?119028%_ _%phi119029%_ _%ctx119030%_)
        (if (uninterned-symbol? _%key119027%_)
            (let () (##gensym 'L))
            (if (pair? _%key119027%_)
                (let () (gensym (car _%key119027%_)))
                (if (##structure-instance-of? _%ctx119030%_ 'gx#top-context::t)
                    (let ((_%ns119035%_
                           (gx#core-context-namespace__% _%ctx119030%_)))
                      (if (and (fxzero? _%phi119029%_) (not _%syntax?119028%_))
                          (let ()
                            (if _%ns119035%_
                                (make-symbol__1
                                 _%ns119035%_
                                 '"#"
                                 _%key119027%_)
                                _%key119027%_))
                          (if _%syntax?119028%_
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119039%_ _%ns119035%_))
                                   (if _%$e119039%_ _%$e119039%_ '""))
                                 '"[:"
                                 (number->string _%phi119029%_)
                                 '":]#"
                                 _%key119027%_))
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119043%_ _%ns119035%_))
                                   (if _%$e119043%_ _%$e119043%_ '""))
                                 '"["
                                 (number->string _%phi119029%_)
                                 '"]#"
                                 _%key119027%_)))))
                    (let () (gensym _%key119027%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key119050%_)
        (let* ((_%syntax?119052%_ '#f)
               (_%phi119054%_ (gx#current-expander-phi))
               (_%ctx119056%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119050%_
           _%syntax?119052%_
           _%phi119054%_
           _%ctx119056%_))))
    (define gx#make-binding-id__1
      (lambda (_%key119058%_ _%syntax?119059%_)
        (let* ((_%phi119061%_ (gx#current-expander-phi))
               (_%ctx119063%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119058%_
           _%syntax?119059%_
           _%phi119061%_
           _%ctx119063%_))))
    (define gx#make-binding-id__2
      (lambda (_%key119065%_ _%syntax?119066%_ _%phi119067%_)
        (let ((_%ctx119069%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119065%_
           _%syntax?119066%_
           _%phi119067%_
           _%ctx119069%_))))
    (define gx#make-binding-id
      (lambda _g122090_
        (let ((_g122089_ (##length _g122090_)))
          (cond ((##fx= _g122089_ 1)
                 (apply (lambda (_%key119050%_)
                          (gx#make-binding-id__0 _%key119050%_))
                        _g122090_))
                ((##fx= _g122089_ 2)
                 (apply (lambda (_%key119058%_ _%syntax?119059%_)
                          (gx#make-binding-id__1
                           _%key119058%_
                           _%syntax?119059%_))
                        _g122090_))
                ((##fx= _g122089_ 3)
                 (apply (lambda (_%key119065%_ _%syntax?119066%_ _%phi119067%_)
                          (gx#make-binding-id__2
                           _%key119065%_
                           _%syntax?119066%_
                           _%phi119067%_))
                        _g122090_))
                ((##fx= _g122089_ 4)
                 (apply (lambda (_%key119071%_
                                 _%syntax?119072%_
                                 _%phi119073%_
                                 _%ctx119074%_)
                          (gx#make-binding-id__%
                           _%key119071%_
                           _%syntax?119072%_
                           _%phi119073%_
                           _%ctx119074%_))
                        _g122090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g122090_))))))))
