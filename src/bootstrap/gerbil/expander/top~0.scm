(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712269045)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx122035%_)
        (letrec ((_%expand-special122037%_
                  (lambda (_%hd122039%_ _%K122040%_ _%rest122041%_ _%r122042%_)
                    (_%K122040%_
                     _%rest122041%_
                     (cons (gx#core-expand-top _%hd122039%_) _%r122042%_)))))
          (gx#core-expand-block__0 _%stx122035%_ _%expand-special122037%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121788%_)
        (letrec ((_%expand-special121790%_
                  (lambda (_%hd121910%_ _%K121911%_ _%rest121912%_ _%r121913%_)
                    (let* ((_%K121917%_
                            (lambda (_%e121915%_)
                              (_%K121911%_
                               _%rest121912%_
                               (cons _%e121915%_ _%r121913%_))))
                           (_%e121918121947%_ _%hd121910%_)
                           (_%E121942121951%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121918121947%_)))
                           (_%E121938121963%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121918121947%_)
                                  (let ((_%e121943121955%_
                                         (gx#syntax-e _%e121918121947%_)))
                                    (let ((_%hd121944121958%_
                                           (##car _%e121943121955%_))
                                          (_%tl121945121960%_
                                           (##cdr _%e121943121955%_)))
                                      (if (and (gx#identifier?
                                                _%hd121944121958%_)
                                               (gx#core-identifier=?
                                                _%hd121944121958%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121917%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121910%_))
                                              (_%E121942121951%_))
                                          (_%E121942121951%_))))
                                  (_%E121942121951%_))))
                           (_%E121934121975%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121918121947%_)
                                  (let ((_%e121939121967%_
                                         (gx#syntax-e _%e121918121947%_)))
                                    (let ((_%hd121940121970%_
                                           (##car _%e121939121967%_))
                                          (_%tl121941121972%_
                                           (##cdr _%e121939121967%_)))
                                      (if (and (gx#identifier?
                                                _%hd121940121970%_)
                                               (gx#core-identifier=?
                                                _%hd121940121970%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121917%_
                                               (gx#core-expand-define-alias%
                                                _%hd121910%_))
                                              (_%E121938121963%_))
                                          (_%E121938121963%_))))
                                  (_%E121938121963%_))))
                           (_%E121924121987%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121918121947%_)
                                  (let ((_%e121935121979%_
                                         (gx#syntax-e _%e121918121947%_)))
                                    (let ((_%hd121936121982%_
                                           (##car _%e121935121979%_))
                                          (_%tl121937121984%_
                                           (##cdr _%e121935121979%_)))
                                      (if (and (gx#identifier?
                                                _%hd121936121982%_)
                                               (gx#core-identifier=?
                                                _%hd121936121982%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121917%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121910%_))
                                              (_%E121934121975%_))
                                          (_%E121934121975%_))))
                                  (_%E121934121975%_))))
                           (_%E121920122019%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121918121947%_)
                                  (let ((_%e121925121991%_
                                         (gx#syntax-e _%e121918121947%_)))
                                    (let ((_%hd121926121994%_
                                           (##car _%e121925121991%_))
                                          (_%tl121927121996%_
                                           (##cdr _%e121925121991%_)))
                                      (if (and (gx#identifier?
                                                _%hd121926121994%_)
                                               (gx#core-identifier=?
                                                _%hd121926121994%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121927121996%_)
                                              (let ((_%e121928121999%_
                                                     (gx#syntax-e
                                                      _%tl121927121996%_)))
                                                (let ((_%hd121929122002%_
                                                       (##car _%e121928121999%_))
                                                      (_%tl121930122004%_
                                                       (##cdr _%e121928121999%_)))
                                                  (let ((_%hd-bind122007%_
                                                         _%hd121929122002%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121930122004%_)
                                                        (let ((_%e121931122009%_
                                                               (gx#syntax-e
                                                                _%tl121930122004%_)))
                                                          (let ((_%hd121932122012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121931122009%_))
                        (_%tl121933122014%_ (##cdr _%e121931122009%_)))
                    (let ((_%expr122017%_ _%hd121932122012%_))
                      (if (gx#stx-null? _%tl121933122014%_)
                          (if (gx#core-bind-values? _%hd-bind122007%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122007%_)
                                (_%K121917%_ _%hd121910%_))
                              (_%E121924121987%_))
                          (_%E121924121987%_)))))
                (_%E121924121987%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121924121987%_))
                                          (_%E121924121987%_))))
                                  (_%E121924121987%_))))
                           (_%E121919122031%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121918121947%_)
                                  (let ((_%e121921122023%_
                                         (gx#syntax-e _%e121918121947%_)))
                                    (let ((_%hd121922122026%_
                                           (##car _%e121921122023%_))
                                          (_%tl121923122028%_
                                           (##cdr _%e121921122023%_)))
                                      (if (and (gx#identifier?
                                                _%hd121922122026%_)
                                               (gx#core-identifier=?
                                                _%hd121922122026%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121917%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121910%_))
                                              (_%E121920122019%_))
                                          (_%E121920122019%_))))
                                  (_%E121920122019%_)))))
                      (_%E121919122031%_))))
                 (_%eval-body121791%_
                  (lambda (_%rbody121799%_)
                    (let _%lp121801%_ ((_%rest121803%_ _%rbody121799%_)
                                       (_%body121804%_ '())
                                       (_%ebody121805%_ '()))
                      (let* ((_%rest121806121814%_ _%rest121803%_)
                             (_%else121808121822%_
                              (lambda ()
                                (values _%body121804%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121805%_)
                                          (gx#stx-source _%stx121788%_))))))
                             (_%K121810121898%_
                              (lambda (_%rest121825%_ _%hd121826%_)
                                (let* ((_%e121827121844%_ _%hd121826%_)
                                       (_%E121839121848%_
                                        (lambda ()
                                          (_%lp121801%_
                                           _%rest121825%_
                                           (cons _%hd121826%_ _%body121804%_)
                                           (cons _%hd121826%_
                                                 _%ebody121805%_))))
                                       (_%E121829121860%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121827121844%_)
                                              (let ((_%e121840121852%_
                                                     (gx#syntax-e
                                                      _%e121827121844%_)))
                                                (let ((_%hd121841121855%_
                                                       (##car _%e121840121852%_))
                                                      (_%tl121842121857%_
                                                       (##cdr _%e121840121852%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121841121855%_)
                                                           (gx#core-identifier=?
                                                            _%hd121841121855%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121801%_
                                                           _%rest121825%_
                                                           (cons _%hd121826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121804%_)
                   _%ebody121805%_)
                  (_%E121839121848%_))
              (_%E121839121848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121839121848%_))))
                                       (_%E121828121894%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121827121844%_)
                                              (let ((_%e121830121864%_
                                                     (gx#syntax-e
                                                      _%e121827121844%_)))
                                                (let ((_%hd121831121867%_
                                                       (##car _%e121830121864%_))
                                                      (_%tl121832121869%_
                                                       (##cdr _%e121830121864%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121831121867%_)
                                                           (gx#core-identifier=?
                                                            _%hd121831121867%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121832121869%_)
                                                          (let ((_%e121833121872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121832121869%_)))
                    (let ((_%hd121834121875%_ (##car _%e121833121872%_))
                          (_%tl121835121877%_ (##cdr _%e121833121872%_)))
                      (let ((_%hd-bind121880%_ _%hd121834121875%_))
                        (if (gx#stx-pair? _%tl121835121877%_)
                            (let ((_%e121836121882%_
                                   (gx#syntax-e _%tl121835121877%_)))
                              (let ((_%hd121837121885%_
                                     (##car _%e121836121882%_))
                                    (_%tl121838121887%_
                                     (##cdr _%e121836121882%_)))
                                (let ((_%expr121890%_ _%hd121837121885%_))
                                  (if (gx#stx-null? _%tl121838121887%_)
                                      (if '#t
                                          (let ((_%ehd121892%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121880%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121890%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121826%_))))
                                            (_%lp121801%_
                                             _%rest121825%_
                                             (cons _%ehd121892%_
                                                   _%body121804%_)
                                             (cons _%ehd121892%_
                                                   _%ebody121805%_)))
                                          (_%E121829121860%_))
                                      (_%E121829121860%_)))))
                            (_%E121829121860%_)))))
                  (_%E121829121860%_))
              (_%E121829121860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121829121860%_)))))
                                  (_%E121828121894%_)))))
                        (if (##pair? _%rest121806121814%_)
                            (let ((_%hd121811121901%_
                                   (##car _%rest121806121814%_))
                                  (_%tl121812121903%_
                                   (##cdr _%rest121806121814%_)))
                              (let* ((_%hd121906%_ _%hd121811121901%_)
                                     (_%rest121908%_ _%tl121812121903%_))
                                (_%K121810121898%_
                                 _%rest121908%_
                                 _%hd121906%_)))
                            (_%else121808121822%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121794%_
                     (gx#core-expand-block__1
                      _%stx121788%_
                      _%expand-special121790%_
                      '#f))
                    (_g122058_ (_%eval-body121791%_ _%rbody121794%_)))
               (begin
                 (let ((_g122059_
                        (if (##values? _g122058_)
                            (##vector-length _g122058_)
                            1)))
                   (if (not (##fx= _g122059_ 2))
                       (error "Context expects 2 values" _g122059_)))
                 (let ((_%expanded-body121796%_ (##vector-ref _g122058_ 0))
                       (_%value121797%_ (##vector-ref _g122058_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121796%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121797%_ '())))
                    (gx#stx-source _%stx121788%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121758%_)
        (let* ((_%e121759121766%_ _%stx121758%_)
               (_%E121761121770%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121759121766%_)))
               (_%E121760121784%_
                (lambda ()
                  (if (gx#stx-pair? _%e121759121766%_)
                      (let ((_%e121762121774%_
                             (gx#syntax-e _%e121759121766%_)))
                        (let ((_%hd121763121777%_ (##car _%e121762121774%_))
                              (_%tl121764121779%_ (##cdr _%e121762121774%_)))
                          (let ((_%body121782%_ _%tl121764121779%_))
                            (if (gx#stx-list? _%body121782%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121782%_)
                                 (gx#stx-source _%stx121758%_))
                                (_%E121761121770%_)))))
                      (_%E121761121770%_)))))
          (_%E121760121784%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121756%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121756%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121702%_)
        (let* ((_%e121703121716%_ _%stx121702%_)
               (_%E121705121720%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121703121716%_)))
               (_%E121704121752%_
                (lambda ()
                  (if (gx#stx-pair? _%e121703121716%_)
                      (let ((_%e121706121724%_
                             (gx#syntax-e _%e121703121716%_)))
                        (let ((_%hd121707121727%_ (##car _%e121706121724%_))
                              (_%tl121708121729%_ (##cdr _%e121706121724%_)))
                          (if (gx#stx-pair? _%tl121708121729%_)
                              (let ((_%e121709121732%_
                                     (gx#syntax-e _%tl121708121729%_)))
                                (let ((_%hd121710121735%_
                                       (##car _%e121709121732%_))
                                      (_%tl121711121737%_
                                       (##cdr _%e121709121732%_)))
                                  (let ((_%ann121740%_ _%hd121710121735%_))
                                    (if (gx#stx-pair? _%tl121711121737%_)
                                        (let ((_%e121712121742%_
                                               (gx#syntax-e
                                                _%tl121711121737%_)))
                                          (let ((_%hd121713121745%_
                                                 (##car _%e121712121742%_))
                                                (_%tl121714121747%_
                                                 (##cdr _%e121712121742%_)))
                                            (let ((_%expr121750%_
                                                   _%hd121713121745%_))
                                              (if (gx#stx-null?
                                                   _%tl121714121747%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121750%_)
                                 '())))
               (gx#stx-source _%stx121702%_))
              (_%E121705121720%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121705121720%_)))))
                                        (_%E121705121720%_)))))
                              (_%E121705121720%_))))
                      (_%E121705121720%_)))))
          (_%E121704121752%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx121426%_ _%body121427%_)
        (letrec ((_%expand-special121429%_
                  (lambda (_%hd121697%_ _%K121698%_ _%rest121699%_ _%r121700%_)
                    (_%K121698%_
                     '()
                     (cons (_%expand-internal121430%_
                            _%hd121697%_
                            _%rest121699%_)
                           _%r121700%_))))
                 (_%expand-internal121430%_
                  (lambda (_%hd121693%_ _%rest121694%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal121432%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121693%_ _%rest121694%_))
                          (gx#stx-source _%stx121426%_))
                         _%expand-internal-special121431%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj122052
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj122052)
                       __obj122052))))
                 (_%expand-internal-special121431%_
                  (lambda (_%hd121588%_ _%K121589%_ _%rest121590%_ _%r121591%_)
                    (let* ((_%e121592121617%_ _%hd121588%_)
                           (_%E121612121621%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121592121617%_)))
                           (_%E121608121633%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121592121617%_)
                                  (let ((_%e121613121625%_
                                         (gx#syntax-e _%e121592121617%_)))
                                    (let ((_%hd121614121628%_
                                           (##car _%e121613121625%_))
                                          (_%tl121615121630%_
                                           (##cdr _%e121613121625%_)))
                                      (if (and (gx#identifier?
                                                _%hd121614121628%_)
                                               (gx#core-identifier=?
                                                _%hd121614121628%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121589%_
                                               _%rest121590%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121588%_)
                                                     _%r121591%_))
                                              (_%E121612121621%_))
                                          (_%E121612121621%_))))
                                  (_%E121612121621%_))))
                           (_%E121604121645%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121592121617%_)
                                  (let ((_%e121609121637%_
                                         (gx#syntax-e _%e121592121617%_)))
                                    (let ((_%hd121610121640%_
                                           (##car _%e121609121637%_))
                                          (_%tl121611121642%_
                                           (##cdr _%e121609121637%_)))
                                      (if (and (gx#identifier?
                                                _%hd121610121640%_)
                                               (gx#core-identifier=?
                                                _%hd121610121640%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121588%_)
                                                (_%K121589%_
                                                 _%rest121590%_
                                                 _%r121591%_))
                                              (_%E121608121633%_))
                                          (_%E121608121633%_))))
                                  (_%E121608121633%_))))
                           (_%E121594121657%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121592121617%_)
                                  (let ((_%e121605121649%_
                                         (gx#syntax-e _%e121592121617%_)))
                                    (let ((_%hd121606121652%_
                                           (##car _%e121605121649%_))
                                          (_%tl121607121654%_
                                           (##cdr _%e121605121649%_)))
                                      (if (and (gx#identifier?
                                                _%hd121606121652%_)
                                               (gx#core-identifier=?
                                                _%hd121606121652%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121588%_)
                                                (_%K121589%_
                                                 _%rest121590%_
                                                 _%r121591%_))
                                              (_%E121604121645%_))
                                          (_%E121604121645%_))))
                                  (_%E121604121645%_))))
                           (_%E121593121689%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121592121617%_)
                                  (let ((_%e121595121661%_
                                         (gx#syntax-e _%e121592121617%_)))
                                    (let ((_%hd121596121664%_
                                           (##car _%e121595121661%_))
                                          (_%tl121597121666%_
                                           (##cdr _%e121595121661%_)))
                                      (if (and (gx#identifier?
                                                _%hd121596121664%_)
                                               (gx#core-identifier=?
                                                _%hd121596121664%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121597121666%_)
                                              (let ((_%e121598121669%_
                                                     (gx#syntax-e
                                                      _%tl121597121666%_)))
                                                (let ((_%hd121599121672%_
                                                       (##car _%e121598121669%_))
                                                      (_%tl121600121674%_
                                                       (##cdr _%e121598121669%_)))
                                                  (let ((_%hd-bind121677%_
                                                         _%hd121599121672%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121600121674%_)
                                                        (let ((_%e121601121679%_
                                                               (gx#syntax-e
                                                                _%tl121600121674%_)))
                                                          (let ((_%hd121602121682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121601121679%_))
                        (_%tl121603121684%_ (##cdr _%e121601121679%_)))
                    (let ((_%expr121687%_ _%hd121602121682%_))
                      (if (gx#stx-null? _%tl121603121684%_)
                          (if (gx#core-bind-values? _%hd-bind121677%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121677%_)
                                (_%K121589%_
                                 _%rest121590%_
                                 (cons _%hd121588%_ _%r121591%_)))
                              (_%E121594121657%_))
                          (_%E121594121657%_)))))
                (_%E121594121657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121594121657%_))
                                          (_%E121594121657%_))))
                                  (_%E121594121657%_)))))
                      (_%E121593121689%_))))
                 (_%wrap-internal121432%_
                  (lambda (_%rbody121434%_)
                    (let _%lp121436%_ ((_%rest121438%_ _%rbody121434%_)
                                       (_%decls121439%_ '())
                                       (_%bind121440%_ '())
                                       (_%body121441%_ '()))
                      (let* ((_%e121442121449%_ _%rest121438%_)
                             (_%E121444121498%_
                              (lambda ()
                                (let* ((_%body121493%_
                                        (let* ((_%body121452121462%_
                                                _%body121441%_)
                                               (_%else121455121470%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body121441%_)
                                                   (gx#stx-source
                                                    _%stx121426%_)))))
                                          (let ((_%K121460121490%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx121426%_)))
                                                (_%K121457121476%_
                                                 (lambda (_%expr121474%_)
                                                   _%expr121474%_)))
                                            (let ((_%try-match121454121486%_
                                                   (lambda ()
                                                     (if (##pair? _%body121452121462%_)
                                                         (let ((_%tl121459121481%_
                                                                (##cdr _%body121452121462%_))
                                                               (_%hd121458121479%_
                                                                (##car _%body121452121462%_)))
                                                           (if (##null? _%tl121459121481%_)
                                                               (let ((_%expr121484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121458121479%_))
                         (_%K121457121476%_ _%expr121484%_))
                       (_%else121455121470%_)))
                 (_%else121455121470%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body121452121462%_)
                                                  (_%K121460121490%_)
                                                  (_%try-match121454121486%_))))))
                                       (_%body121495%_
                                        (if (null? _%bind121440%_)
                                            _%body121493%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind121440%_
                                                         (cons _%body121493%_
                                                               '())))
                                             (gx#stx-source _%stx121426%_)))))
                                  (if (null? _%decls121439%_)
                                      _%body121495%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls121439%_
                                                   (cons _%body121495%_ '())))
                                       (gx#stx-source _%stx121426%_))))))
                             (_%E121443121584%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121442121449%_)
                                    (let ((_%e121445121502%_
                                           (gx#syntax-e _%e121442121449%_)))
                                      (let ((_%hd121446121505%_
                                             (##car _%e121445121502%_))
                                            (_%tl121447121507%_
                                             (##cdr _%e121445121502%_)))
                                        (let* ((_%hd121510%_
                                                _%hd121446121505%_)
                                               (_%rest121512%_
                                                _%tl121447121507%_))
                                          (if '#t
                                              (let* ((_%e121513121530%_
                                                      _%hd121510%_)
                                                     (_%E121525121534%_
                                                      (lambda ()
                                                        (if (null? _%bind121440%_)
                                                            (_%lp121436%_
                                                             _%rest121512%_
                                                             _%decls121439%_
                                                             _%bind121440%_
                                                             (cons _%hd121510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body121441%_))
                    (_%lp121436%_
                     _%rest121512%_
                     _%decls121439%_
                     (cons (cons '#f (cons _%hd121510%_ '())) _%bind121440%_)
                     _%body121441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121515121548%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121513121530%_)
                                                            (let ((_%e121526121538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121513121530%_)))
                      (let ((_%hd121527121541%_ (##car _%e121526121538%_))
                            (_%tl121528121543%_ (##cdr _%e121526121538%_)))
                        (if (and (gx#identifier? _%hd121527121541%_)
                                 (gx#core-identifier=?
                                  _%hd121527121541%_
                                  '%#declare))
                            (let ((_%xdecls121546%_ _%tl121528121543%_))
                              (if '#t
                                  (_%lp121436%_
                                   _%rest121512%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls121439%_
                                    _%xdecls121546%_)
                                   _%bind121440%_
                                   _%body121441%_)
                                  (_%E121525121534%_)))
                            (_%E121525121534%_))))
                    (_%E121525121534%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121514121580%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121513121530%_)
                                                            (let ((_%e121516121552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121513121530%_)))
                      (let ((_%hd121517121555%_ (##car _%e121516121552%_))
                            (_%tl121518121557%_ (##cdr _%e121516121552%_)))
                        (if (and (gx#identifier? _%hd121517121555%_)
                                 (gx#core-identifier=?
                                  _%hd121517121555%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121518121557%_)
                                (let ((_%e121519121560%_
                                       (gx#syntax-e _%tl121518121557%_)))
                                  (let ((_%hd121520121563%_
                                         (##car _%e121519121560%_))
                                        (_%tl121521121565%_
                                         (##cdr _%e121519121560%_)))
                                    (let ((_%hd-bind121568%_
                                           _%hd121520121563%_))
                                      (if (gx#stx-pair? _%tl121521121565%_)
                                          (let ((_%e121522121570%_
                                                 (gx#syntax-e
                                                  _%tl121521121565%_)))
                                            (let ((_%hd121523121573%_
                                                   (##car _%e121522121570%_))
                                                  (_%tl121524121575%_
                                                   (##cdr _%e121522121570%_)))
                                              (let ((_%expr121578%_
                                                     _%hd121523121573%_))
                                                (if (gx#stx-null?
                                                     _%tl121524121575%_)
                                                    (if '#t
                                                        (_%lp121436%_
                                                         _%rest121512%_
                                                         _%decls121439%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121568%_)
                             (cons (gx#core-expand-expression _%expr121578%_)
                                   '()))
                       _%bind121440%_)
                 _%body121441%_)
                (_%E121515121548%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121515121548%_)))))
                                          (_%E121515121548%_)))))
                                (_%E121515121548%_))
                            (_%E121515121548%_))))
                    (_%E121515121548%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121514121580%_))
                                              (_%E121444121498%_)))))
                                    (_%E121444121498%_)))))
                        (_%E121443121584%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body121427%_)
            (gx#stx-source _%stx121426%_))
           _%expand-special121429%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx121364%_)
        (let* ((_%e121365121372%_ _%stx121364%_)
               (_%E121367121376%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121365121372%_)))
               (_%E121366121422%_
                (lambda ()
                  (if (gx#stx-pair? _%e121365121372%_)
                      (let ((_%e121368121380%_
                             (gx#syntax-e _%e121365121372%_)))
                        (let ((_%hd121369121383%_ (##car _%e121368121380%_))
                              (_%tl121370121385%_ (##cdr _%e121368121380%_)))
                          (let ((_%body121388%_ _%tl121370121385%_))
                            (if (gx#stx-list? _%body121388%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl121390%_)
                                     (let* ((_%e121391121398%_ _%decl121390%_)
                                            (_%E121393121402%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e121391121398%_)))
                                            (_%E121392121418%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e121391121398%_)
                                                   (let ((_%e121394121406%_
                                                          (gx#syntax-e
                                                           _%e121391121398%_)))
                                                     (let ((_%hd121395121409%_
                                                            (##car _%e121394121406%_))
                                                           (_%tl121396121411%_
                                                            (##cdr _%e121394121406%_)))
                                                       (let* ((_%head121414%_
                                                               _%hd121395121409%_)
                                                              (_%args121416%_
                                                               _%tl121396121411%_))
                                                         (if (gx#stx-list?
                                                              _%args121416%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl121390%_)
                                                             (_%E121393121402%_)))))
                                                   (_%E121393121402%_)))))
                                       (_%E121392121418%_)))
                                   _%body121388%_))
                                 (gx#stx-source _%stx121364%_))
                                (_%E121367121376%_)))))
                      (_%E121367121376%_)))))
          (_%E121366121422%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx121268%_)
        (let* ((_%e121269121276%_ _%stx121268%_)
               (_%E121271121280%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121269121276%_)))
               (_%E121270121360%_
                (lambda ()
                  (if (gx#stx-pair? _%e121269121276%_)
                      (let ((_%e121272121284%_
                             (gx#syntax-e _%e121269121276%_)))
                        (let ((_%hd121273121287%_ (##car _%e121272121284%_))
                              (_%tl121274121289%_ (##cdr _%e121272121284%_)))
                          (let ((_%body121292%_ _%tl121274121289%_))
                            (if '#t
                                (let _%lp121294%_ ((_%rest121296%_
                                                    _%body121292%_)
                                                   (_%r121297%_ '()))
                                  (let* ((_%e121298121312%_ _%rest121296%_)
                                         (_%E121310121316%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx121268%_)))
                                         (_%E121300121320%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e121298121312%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r121297%_))
                                                     (gx#stx-source
                                                      _%stx121268%_))
                                                    (_%E121310121316%_))
                                                (_%E121310121316%_))))
                                         (_%E121299121356%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e121298121312%_)
                                                (let ((_%e121301121324%_
                                                       (gx#syntax-e
                                                        _%e121298121312%_)))
                                                  (let ((_%hd121302121327%_
                                                         (##car _%e121301121324%_))
                                                        (_%tl121303121329%_
                                                         (##cdr _%e121301121324%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd121302121327%_)
                                                        (let ((_%e121304121332%_
                                                               (gx#syntax-e
                                                                _%hd121302121327%_)))
                                                          (let ((_%hd121305121335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121304121332%_))
                        (_%tl121306121337%_ (##cdr _%e121304121332%_)))
                    (let ((_%id121340%_ _%hd121305121335%_))
                      (if (gx#stx-pair? _%tl121306121337%_)
                          (let ((_%e121307121342%_
                                 (gx#syntax-e _%tl121306121337%_)))
                            (let ((_%hd121308121345%_
                                   (##car _%e121307121342%_))
                                  (_%tl121309121347%_
                                   (##cdr _%e121307121342%_)))
                              (let ((_%eid121350%_ _%hd121308121345%_))
                                (if (gx#stx-null? _%tl121309121347%_)
                                    (let ((_%rest121352%_ _%tl121303121329%_))
                                      (if (and (gx#identifier? _%id121340%_)
                                               (gx#identifier? _%eid121350%_))
                                          (let ((_%eid121354%_
                                                 (gx#stx-e _%eid121350%_)))
                                            (gx#core-bind-extern!__0
                                             _%id121340%_
                                             _%eid121354%_)
                                            (_%lp121294%_
                                             _%rest121352%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id121340%_)
                                                         (cons _%eid121354%_
                                                               '()))
                                                   _%r121297%_)))
                                          (_%E121300121320%_)))
                                    (_%E121300121320%_)))))
                          (_%E121300121320%_)))))
                (_%E121300121320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121300121320%_)))))
                                    (_%E121299121356%_)))
                                (_%E121271121280%_)))))
                      (_%E121271121280%_)))))
          (_%E121270121360%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx121214%_)
        (let* ((_%e121215121228%_ _%stx121214%_)
               (_%E121217121232%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121215121228%_)))
               (_%E121216121264%_
                (lambda ()
                  (if (gx#stx-pair? _%e121215121228%_)
                      (let ((_%e121218121236%_
                             (gx#syntax-e _%e121215121228%_)))
                        (let ((_%hd121219121239%_ (##car _%e121218121236%_))
                              (_%tl121220121241%_ (##cdr _%e121218121236%_)))
                          (if (gx#stx-pair? _%tl121220121241%_)
                              (let ((_%e121221121244%_
                                     (gx#syntax-e _%tl121220121241%_)))
                                (let ((_%hd121222121247%_
                                       (##car _%e121221121244%_))
                                      (_%tl121223121249%_
                                       (##cdr _%e121221121244%_)))
                                  (let ((_%hd121252%_ _%hd121222121247%_))
                                    (if (gx#stx-pair? _%tl121223121249%_)
                                        (let ((_%e121224121254%_
                                               (gx#syntax-e
                                                _%tl121223121249%_)))
                                          (let ((_%hd121225121257%_
                                                 (##car _%e121224121254%_))
                                                (_%tl121226121259%_
                                                 (##cdr _%e121224121254%_)))
                                            (let ((_%expr121262%_
                                                   _%hd121225121257%_))
                                              (if (gx#stx-null?
                                                   _%tl121226121259%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd121252%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd121252%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121252%_)
                             (cons (gx#core-expand-expression _%expr121262%_)
                                   '())))
                 (gx#stx-source _%stx121214%_)))
              (_%E121217121232%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121217121232%_)))))
                                        (_%E121217121232%_)))))
                              (_%E121217121232%_))))
                      (_%E121217121232%_)))))
          (_%E121216121264%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx121158%_)
        (let* ((_%e121159121172%_ _%stx121158%_)
               (_%E121161121176%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121159121172%_)))
               (_%E121160121210%_
                (lambda ()
                  (if (gx#stx-pair? _%e121159121172%_)
                      (let ((_%e121162121180%_
                             (gx#syntax-e _%e121159121172%_)))
                        (let ((_%hd121163121183%_ (##car _%e121162121180%_))
                              (_%tl121164121185%_ (##cdr _%e121162121180%_)))
                          (if (gx#stx-pair? _%tl121164121185%_)
                              (let ((_%e121165121188%_
                                     (gx#syntax-e _%tl121164121185%_)))
                                (let ((_%hd121166121191%_
                                       (##car _%e121165121188%_))
                                      (_%tl121167121193%_
                                       (##cdr _%e121165121188%_)))
                                  (let ((_%id121196%_ _%hd121166121191%_))
                                    (if (gx#stx-pair? _%tl121167121193%_)
                                        (let ((_%e121168121198%_
                                               (gx#syntax-e
                                                _%tl121167121193%_)))
                                          (let ((_%hd121169121201%_
                                                 (##car _%e121168121198%_))
                                                (_%tl121170121203%_
                                                 (##cdr _%e121168121198%_)))
                                            (let ((_%binding-id121206%_
                                                   _%hd121169121201%_))
                                              (if (gx#stx-null?
                                                   _%tl121170121203%_)
                                                  (if (and (gx#identifier?
                                                            _%id121196%_)
                                                           (gx#identifier?
                                                            _%binding-id121206%_))
                                                      (let ((_%eid121208%_
                                                             (gx#stx-e
                                                              _%binding-id121206%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id121196%_
                                                         _%eid121208%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121196%_)
                             (cons _%eid121208%_ '())))))
              (_%E121161121176%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121161121176%_)))))
                                        (_%E121161121176%_)))))
                              (_%E121161121176%_))))
                      (_%E121161121176%_)))))
          (_%E121160121210%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx121101%_)
        (let* ((_%e121102121115%_ _%stx121101%_)
               (_%E121104121119%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121102121115%_)))
               (_%E121103121154%_
                (lambda ()
                  (if (gx#stx-pair? _%e121102121115%_)
                      (let ((_%e121105121123%_
                             (gx#syntax-e _%e121102121115%_)))
                        (let ((_%hd121106121126%_ (##car _%e121105121123%_))
                              (_%tl121107121128%_ (##cdr _%e121105121123%_)))
                          (if (gx#stx-pair? _%tl121107121128%_)
                              (let ((_%e121108121131%_
                                     (gx#syntax-e _%tl121107121128%_)))
                                (let ((_%hd121109121134%_
                                       (##car _%e121108121131%_))
                                      (_%tl121110121136%_
                                       (##cdr _%e121108121131%_)))
                                  (let ((_%id121139%_ _%hd121109121134%_))
                                    (if (gx#stx-pair? _%tl121110121136%_)
                                        (let ((_%e121111121141%_
                                               (gx#syntax-e
                                                _%tl121110121136%_)))
                                          (let ((_%hd121112121144%_
                                                 (##car _%e121111121141%_))
                                                (_%tl121113121146%_
                                                 (##cdr _%e121111121141%_)))
                                            (let ((_%expr121149%_
                                                   _%hd121112121144%_))
                                              (if (gx#stx-null?
                                                   _%tl121113121146%_)
                                                  (if (gx#identifier?
                                                       _%id121139%_)
                                                      (let ((_g122060_
                                                             (gx#core-expand-expression+1
                                                              _%expr121149%_)))
                                                        (begin
                                                          (let ((_g122061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g122060_)
                             (##vector-length _g122060_)
                             1)))
                    (if (not (##fx= _g122061_ 2))
                        (error "Context expects 2 values" _g122061_)))
                  (let ((_%e-stx121151%_ (##vector-ref _g122060_ 0))
                        (_%e121152%_ (##vector-ref _g122060_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id121139%_ _%e121152%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id121139%_)
                                   (cons _%e-stx121151%_ '())))
                       (gx#stx-source _%stx121101%_))))))
              (_%E121104121119%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121104121119%_)))))
                                        (_%E121104121119%_)))))
                              (_%E121104121119%_))))
                      (_%E121104121119%_)))))
          (_%E121103121154%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx121045%_)
        (let* ((_%e121046121059%_ _%stx121045%_)
               (_%E121048121063%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121046121059%_)))
               (_%E121047121097%_
                (lambda ()
                  (if (gx#stx-pair? _%e121046121059%_)
                      (let ((_%e121049121067%_
                             (gx#syntax-e _%e121046121059%_)))
                        (let ((_%hd121050121070%_ (##car _%e121049121067%_))
                              (_%tl121051121072%_ (##cdr _%e121049121067%_)))
                          (if (gx#stx-pair? _%tl121051121072%_)
                              (let ((_%e121052121075%_
                                     (gx#syntax-e _%tl121051121072%_)))
                                (let ((_%hd121053121078%_
                                       (##car _%e121052121075%_))
                                      (_%tl121054121080%_
                                       (##cdr _%e121052121075%_)))
                                  (let ((_%id121083%_ _%hd121053121078%_))
                                    (if (gx#stx-pair? _%tl121054121080%_)
                                        (let ((_%e121055121085%_
                                               (gx#syntax-e
                                                _%tl121054121080%_)))
                                          (let ((_%hd121056121088%_
                                                 (##car _%e121055121085%_))
                                                (_%tl121057121090%_
                                                 (##cdr _%e121055121085%_)))
                                            (let ((_%alias-id121093%_
                                                   _%hd121056121088%_))
                                              (if (gx#stx-null?
                                                   _%tl121057121090%_)
                                                  (if (and (gx#identifier?
                                                            _%id121083%_)
                                                           (gx#identifier?
                                                            _%alias-id121093%_))
                                                      (let ((_%alias-id121095%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id121093%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id121083%_
                                                         _%alias-id121095%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121083%_)
                             (cons _%alias-id121095%_ '())))))
              (_%E121048121063%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121048121063%_)))))
                                        (_%E121048121063%_)))))
                              (_%E121048121063%_))))
                      (_%E121048121063%_)))))
          (_%E121047121097%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120988%_ _%wrap?120989%_)
        (let* ((_%e120990121000%_ _%stx120988%_)
               (_%E120992121004%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120990121000%_)))
               (_%E120991121031%_
                (lambda ()
                  (if (gx#stx-pair? _%e120990121000%_)
                      (let ((_%e120993121008%_
                             (gx#syntax-e _%e120990121000%_)))
                        (let ((_%hd120994121011%_ (##car _%e120993121008%_))
                              (_%tl120995121013%_ (##cdr _%e120993121008%_)))
                          (if (gx#stx-pair? _%tl120995121013%_)
                              (let ((_%e120996121016%_
                                     (gx#syntax-e _%tl120995121013%_)))
                                (let ((_%hd120997121019%_
                                       (##car _%e120996121016%_))
                                      (_%tl120998121021%_
                                       (##cdr _%e120996121016%_)))
                                  (let* ((_%hd121024%_ _%hd120997121019%_)
                                         (_%body121026%_ _%tl120998121021%_))
                                    (if (gx#core-bind-values? _%hd121024%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd121024%_)
                                           (let ((_%body121029%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd121024%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120988%_
                                                               _%body121026%_)
                                                              '()))))
                                             (if _%wrap?120989%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body121029%_)
                                                  (gx#stx-source
                                                   _%stx120988%_))
                                                 _%body121029%_)))
                                         gx#current-expander-context
                                         (let ((__obj122053
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122053)
                                           __obj122053))
                                        (_%E120992121004%_)))))
                              (_%E120992121004%_))))
                      (_%E120992121004%_)))))
          (_%E120991121031%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx121038%_)
        (let ((_%wrap?121040%_ '#t))
          (gx#core-expand-lambda%__% _%stx121038%_ _%wrap?121040%_))))
    (define gx#core-expand-lambda%
      (lambda _g122063_
        (let ((_g122062_ (##length _g122063_)))
          (cond ((##fx= _g122062_ 1)
                 (apply (lambda (_%stx121038%_)
                          (gx#core-expand-lambda%__0 _%stx121038%_))
                        _g122063_))
                ((##fx= _g122062_ 2)
                 (apply (lambda (_%stx121042%_ _%wrap?121043%_)
                          (gx#core-expand-lambda%__%
                           _%stx121042%_
                           _%wrap?121043%_))
                        _g122063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g122063_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120952%_)
        (let* ((_%e120953120960%_ _%stx120952%_)
               (_%E120955120964%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120953120960%_)))
               (_%E120954120983%_
                (lambda ()
                  (if (gx#stx-pair? _%e120953120960%_)
                      (let ((_%e120956120968%_
                             (gx#syntax-e _%e120953120960%_)))
                        (let ((_%hd120957120971%_ (##car _%e120956120968%_))
                              (_%tl120958120973%_ (##cdr _%e120956120968%_)))
                          (let ((_%clauses120976%_ _%tl120958120973%_))
                            (if (gx#stx-list? _%clauses120976%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120978%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120978%_)
                                       (let ((_%$e120980%_
                                              (gx#stx-source
                                               _%clause120978%_)))
                                         (if _%$e120980%_
                                             _%$e120980%_
                                             (gx#stx-source _%stx120952%_))))
                                      '#f))
                                   _%clauses120976%_))
                                 (gx#stx-source _%stx120952%_))
                                (_%E120955120964%_)))))
                      (_%E120955120964%_)))))
          (_%E120954120983%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120906%_)
        (let* ((_%e120907120917%_ _%stx120906%_)
               (_%E120909120921%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120907120917%_)))
               (_%E120908120948%_
                (lambda ()
                  (if (gx#stx-pair? _%e120907120917%_)
                      (let ((_%e120910120925%_
                             (gx#syntax-e _%e120907120917%_)))
                        (let ((_%hd120911120928%_ (##car _%e120910120925%_))
                              (_%tl120912120930%_ (##cdr _%e120910120925%_)))
                          (if (gx#stx-pair? _%tl120912120930%_)
                              (let ((_%e120913120933%_
                                     (gx#syntax-e _%tl120912120930%_)))
                                (let ((_%hd120914120936%_
                                       (##car _%e120913120933%_))
                                      (_%tl120915120938%_
                                       (##cdr _%e120913120933%_)))
                                  (let* ((_%hd120941%_ _%hd120914120936%_)
                                         (_%body120943%_ _%tl120915120938%_))
                                    (if (gx#core-expand-let-bind? _%hd120941%_)
                                        (let ((_%expressions120945%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120941%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120941%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120941%_
                                                           _%expressions120945%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120906%_
                         _%body120943%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120906%_)))
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
                                             __obj122054)))
                                        (_%E120909120921%_)))))
                              (_%E120909120921%_))))
                      (_%E120909120921%_)))))
          (_%E120908120948%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120851%_ _%form120852%_)
        (let* ((_%e120853120863%_ _%stx120851%_)
               (_%E120855120867%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120853120863%_)))
               (_%E120854120892%_
                (lambda ()
                  (if (gx#stx-pair? _%e120853120863%_)
                      (let ((_%e120856120871%_
                             (gx#syntax-e _%e120853120863%_)))
                        (let ((_%hd120857120874%_ (##car _%e120856120871%_))
                              (_%tl120858120876%_ (##cdr _%e120856120871%_)))
                          (if (gx#stx-pair? _%tl120858120876%_)
                              (let ((_%e120859120879%_
                                     (gx#syntax-e _%tl120858120876%_)))
                                (let ((_%hd120860120882%_
                                       (##car _%e120859120879%_))
                                      (_%tl120861120884%_
                                       (##cdr _%e120859120879%_)))
                                  (let* ((_%hd120887%_ _%hd120860120882%_)
                                         (_%body120889%_ _%tl120861120884%_))
                                    (if (gx#core-expand-let-bind? _%hd120887%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120887%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120852%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120887%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120887%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120851%_
                                                               _%body120889%_)
                                                              '())))
                                            (gx#stx-source _%stx120851%_)))
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
                                           __obj122055))
                                        (_%E120855120867%_)))))
                              (_%E120855120867%_))))
                      (_%E120855120867%_)))))
          (_%E120854120892%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120899%_)
        (let ((_%form120901%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120899%_ _%form120901%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g122065_
        (let ((_g122064_ (##length _g122065_)))
          (cond ((##fx= _g122064_ 1)
                 (apply (lambda (_%stx120899%_)
                          (gx#core-expand-letrec-values%__0 _%stx120899%_))
                        _g122065_))
                ((##fx= _g122064_ 2)
                 (apply (lambda (_%stx120903%_ _%form120904%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120903%_
                           _%form120904%_))
                        _g122065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g122065_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120848%_)
        (gx#core-expand-letrec-values%__% _%stx120848%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120805%_)
        (if (gx#stx-list? _%stx120805%_)
            (gx#stx-andmap
             (lambda (_%bind120807%_)
               (let* ((_%e120808120818%_ _%bind120807%_)
                      (_%E120810120822%_ (lambda () '#f))
                      (_%E120809120844%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120808120818%_)
                             (let ((_%e120811120826%_
                                    (gx#syntax-e _%e120808120818%_)))
                               (let ((_%hd120812120829%_
                                      (##car _%e120811120826%_))
                                     (_%tl120813120831%_
                                      (##cdr _%e120811120826%_)))
                                 (let ((_%hd120834%_ _%hd120812120829%_))
                                   (if (gx#stx-pair? _%tl120813120831%_)
                                       (let ((_%e120814120836%_
                                              (gx#syntax-e
                                               _%tl120813120831%_)))
                                         (let ((_%hd120815120839%_
                                                (##car _%e120814120836%_))
                                               (_%tl120816120841%_
                                                (##cdr _%e120814120836%_)))
                                           (if (gx#stx-null?
                                                _%tl120816120841%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120834%_)
                                                   (_%E120810120822%_))
                                               (_%E120810120822%_))))
                                       (_%E120810120822%_)))))
                             (_%E120810120822%_)))))
                 (_%E120809120844%_)))
             _%stx120805%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120764%_)
        (let* ((_%e120765120775%_ _%bind120764%_)
               (_%E120767120779%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120765120775%_)))
               (_%E120766120801%_
                (lambda ()
                  (if (gx#stx-pair? _%e120765120775%_)
                      (let ((_%e120768120783%_
                             (gx#syntax-e _%e120765120775%_)))
                        (let ((_%hd120769120786%_ (##car _%e120768120783%_))
                              (_%tl120770120788%_ (##cdr _%e120768120783%_)))
                          (if (gx#stx-pair? _%tl120770120788%_)
                              (let ((_%e120771120791%_
                                     (gx#syntax-e _%tl120770120788%_)))
                                (let ((_%hd120772120794%_
                                       (##car _%e120771120791%_))
                                      (_%tl120773120796%_
                                       (##cdr _%e120771120791%_)))
                                  (let ((_%expr120799%_ _%hd120772120794%_))
                                    (if (gx#stx-null? _%tl120773120796%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120799%_)
                                            (_%E120767120779%_))
                                        (_%E120767120779%_)))))
                              (_%E120767120779%_))))
                      (_%E120767120779%_)))))
          (_%E120766120801%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120723%_)
        (let* ((_%e120724120734%_ _%bind120723%_)
               (_%E120726120738%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120724120734%_)))
               (_%E120725120760%_
                (lambda ()
                  (if (gx#stx-pair? _%e120724120734%_)
                      (let ((_%e120727120742%_
                             (gx#syntax-e _%e120724120734%_)))
                        (let ((_%hd120728120745%_ (##car _%e120727120742%_))
                              (_%tl120729120747%_ (##cdr _%e120727120742%_)))
                          (let ((_%hd120750%_ _%hd120728120745%_))
                            (if (gx#stx-pair? _%tl120729120747%_)
                                (let ((_%e120730120752%_
                                       (gx#syntax-e _%tl120729120747%_)))
                                  (let ((_%hd120731120755%_
                                         (##car _%e120730120752%_))
                                        (_%tl120732120757%_
                                         (##cdr _%e120730120752%_)))
                                    (if (gx#stx-null? _%tl120732120757%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120750%_)
                                            (_%E120726120738%_))
                                        (_%E120726120738%_))))
                                (_%E120726120738%_)))))
                      (_%E120726120738%_)))))
          (_%E120725120760%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120681%_ _%expr120682%_)
        (let* ((_%e120683120693%_ _%bind120681%_)
               (_%E120685120697%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120683120693%_)))
               (_%E120684120719%_
                (lambda ()
                  (if (gx#stx-pair? _%e120683120693%_)
                      (let ((_%e120686120701%_
                             (gx#syntax-e _%e120683120693%_)))
                        (let ((_%hd120687120704%_ (##car _%e120686120701%_))
                              (_%tl120688120706%_ (##cdr _%e120686120701%_)))
                          (let ((_%hd120709%_ _%hd120687120704%_))
                            (if (gx#stx-pair? _%tl120688120706%_)
                                (let ((_%e120689120711%_
                                       (gx#syntax-e _%tl120688120706%_)))
                                  (let ((_%hd120690120714%_
                                         (##car _%e120689120711%_))
                                        (_%tl120691120716%_
                                         (##cdr _%e120689120711%_)))
                                    (if (gx#stx-null? _%tl120691120716%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120709%_)
                                                  (cons _%expr120682%_ '()))
                                            (_%E120685120697%_))
                                        (_%E120685120697%_))))
                                (_%E120685120697%_)))))
                      (_%E120685120697%_)))))
          (_%E120684120719%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120635%_)
        (let* ((_%e120636120646%_ _%stx120635%_)
               (_%E120638120650%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120636120646%_)))
               (_%E120637120677%_
                (lambda ()
                  (if (gx#stx-pair? _%e120636120646%_)
                      (let ((_%e120639120654%_
                             (gx#syntax-e _%e120636120646%_)))
                        (let ((_%hd120640120657%_ (##car _%e120639120654%_))
                              (_%tl120641120659%_ (##cdr _%e120639120654%_)))
                          (if (gx#stx-pair? _%tl120641120659%_)
                              (let ((_%e120642120662%_
                                     (gx#syntax-e _%tl120641120659%_)))
                                (let ((_%hd120643120665%_
                                       (##car _%e120642120662%_))
                                      (_%tl120644120667%_
                                       (##cdr _%e120642120662%_)))
                                  (let* ((_%hd120670%_ _%hd120643120665%_)
                                         (_%body120672%_ _%tl120644120667%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120670%_)
                                        (let ((_%expanders120674%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120670%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120670%_
                                              _%expanders120674%_)
                                             (gx#core-expand-local-block
                                              _%stx120635%_
                                              _%body120672%_))
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
                                             __obj122056)))
                                        (_%E120638120650%_)))))
                              (_%E120638120650%_))))
                      (_%E120638120650%_)))))
          (_%E120637120677%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120584%_)
        (let* ((_%e120585120595%_ _%stx120584%_)
               (_%E120587120599%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120585120595%_)))
               (_%E120586120631%_
                (lambda ()
                  (if (gx#stx-pair? _%e120585120595%_)
                      (let ((_%e120588120603%_
                             (gx#syntax-e _%e120585120595%_)))
                        (let ((_%hd120589120606%_ (##car _%e120588120603%_))
                              (_%tl120590120608%_ (##cdr _%e120588120603%_)))
                          (if (gx#stx-pair? _%tl120590120608%_)
                              (let ((_%e120591120611%_
                                     (gx#syntax-e _%tl120590120608%_)))
                                (let ((_%hd120592120614%_
                                       (##car _%e120591120611%_))
                                      (_%tl120593120616%_
                                       (##cdr _%e120591120611%_)))
                                  (let* ((_%hd120619%_ _%hd120592120614%_)
                                         (_%body120621%_ _%tl120593120616%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120619%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120619%_
                                            (make-list
                                             (gx#stx-length _%hd120619%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120623120626%_
                                                     _%g120624120628%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120623120626%_
                                               _%g120624120628%_
                                               '#t))
                                            _%hd120619%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120619%_))
                                           (gx#core-expand-local-block
                                            _%stx120584%_
                                            _%body120621%_))
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
                                           __obj122057))
                                        (_%E120587120599%_)))))
                              (_%E120587120599%_))))
                      (_%E120587120599%_)))))
          (_%E120586120631%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120541%_)
        (if (gx#stx-list? _%stx120541%_)
            (gx#stx-andmap
             (lambda (_%bind120543%_)
               (let* ((_%e120544120554%_ _%bind120543%_)
                      (_%E120546120558%_ (lambda () '#f))
                      (_%E120545120580%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120544120554%_)
                             (let ((_%e120547120562%_
                                    (gx#syntax-e _%e120544120554%_)))
                               (let ((_%hd120548120565%_
                                      (##car _%e120547120562%_))
                                     (_%tl120549120567%_
                                      (##cdr _%e120547120562%_)))
                                 (let ((_%hd120570%_ _%hd120548120565%_))
                                   (if (gx#stx-pair? _%tl120549120567%_)
                                       (let ((_%e120550120572%_
                                              (gx#syntax-e
                                               _%tl120549120567%_)))
                                         (let ((_%hd120551120575%_
                                                (##car _%e120550120572%_))
                                               (_%tl120552120577%_
                                                (##cdr _%e120550120572%_)))
                                           (if (gx#stx-null?
                                                _%tl120552120577%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120570%_)
                                                   (_%E120546120558%_))
                                               (_%E120546120558%_))))
                                       (_%E120546120558%_)))))
                             (_%E120546120558%_)))))
                 (_%E120545120580%_)))
             _%stx120541%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind120497%_)
        (let* ((_%e120498120508%_ _%bind120497%_)
               (_%E120500120512%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120498120508%_)))
               (_%E120499120537%_
                (lambda ()
                  (if (gx#stx-pair? _%e120498120508%_)
                      (let ((_%e120501120516%_
                             (gx#syntax-e _%e120498120508%_)))
                        (let ((_%hd120502120519%_ (##car _%e120501120516%_))
                              (_%tl120503120521%_ (##cdr _%e120501120516%_)))
                          (if (gx#stx-pair? _%tl120503120521%_)
                              (let ((_%e120504120524%_
                                     (gx#syntax-e _%tl120503120521%_)))
                                (let ((_%hd120505120527%_
                                       (##car _%e120504120524%_))
                                      (_%tl120506120529%_
                                       (##cdr _%e120504120524%_)))
                                  (let ((_%expr120532%_ _%hd120505120527%_))
                                    (if (gx#stx-null? _%tl120506120529%_)
                                        (if '#t
                                            (let ((_g122066_
                                                   (gx#core-expand-expression+1
                                                    _%expr120532%_)))
                                              (begin
                                                (let ((_g122067_
                                                       (if (##values?
                                                            _g122066_)
                                                           (##vector-length
                                                            _g122066_)
                                                           1)))
                                                  (if (not (##fx= _g122067_ 2))
                                                      (error "Context expects 2 values"
                                                             _g122067_)))
                                                (let ((_%_120534%_
                                                       (##vector-ref
                                                        _g122066_
                                                        0))
                                                      (_%e120535%_
                                                       (##vector-ref
                                                        _g122066_
                                                        1)))
                                                  _%e120535%_)))
                                            (_%E120500120512%_))
                                        (_%E120500120512%_)))))
                              (_%E120500120512%_))))
                      (_%E120500120512%_)))))
          (_%E120499120537%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind120442%_ _%e120443%_ _%rebind?120444%_)
        (let* ((_%e120445120455%_ _%bind120442%_)
               (_%E120447120459%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120445120455%_)))
               (_%E120446120481%_
                (lambda ()
                  (if (gx#stx-pair? _%e120445120455%_)
                      (let ((_%e120448120463%_
                             (gx#syntax-e _%e120445120455%_)))
                        (let ((_%hd120449120466%_ (##car _%e120448120463%_))
                              (_%tl120450120468%_ (##cdr _%e120448120463%_)))
                          (let ((_%id120471%_ _%hd120449120466%_))
                            (if (gx#stx-pair? _%tl120450120468%_)
                                (let ((_%e120451120473%_
                                       (gx#syntax-e _%tl120450120468%_)))
                                  (let ((_%hd120452120476%_
                                         (##car _%e120451120473%_))
                                        (_%tl120453120478%_
                                         (##cdr _%e120451120473%_)))
                                    (if (gx#stx-null? _%tl120453120478%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id120471%_
                                             _%e120443%_
                                             _%rebind?120444%_)
                                            (_%E120447120459%_))
                                        (_%E120447120459%_))))
                                (_%E120447120459%_)))))
                      (_%E120447120459%_)))))
          (_%E120446120481%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind120488%_ _%e120489%_)
        (let ((_%rebind?120491%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind120488%_
           _%e120489%_
           _%rebind?120491%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g122069_
        (let ((_g122068_ (##length _g122069_)))
          (cond ((##fx= _g122068_ 2)
                 (apply (lambda (_%bind120488%_ _%e120489%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind120488%_
                           _%e120489%_))
                        _g122069_))
                ((##fx= _g122068_ 3)
                 (apply (lambda (_%bind120493%_ _%e120494%_ _%rebind?120495%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind120493%_
                           _%e120494%_
                           _%rebind?120495%_))
                        _g122069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g122069_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx120400%_)
        (let* ((_%e120401120411%_ _%stx120400%_)
               (_%E120403120415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120401120411%_)))
               (_%E120402120437%_
                (lambda ()
                  (if (gx#stx-pair? _%e120401120411%_)
                      (let ((_%e120404120419%_
                             (gx#syntax-e _%e120401120411%_)))
                        (let ((_%hd120405120422%_ (##car _%e120404120419%_))
                              (_%tl120406120424%_ (##cdr _%e120404120419%_)))
                          (if (gx#stx-pair? _%tl120406120424%_)
                              (let ((_%e120407120427%_
                                     (gx#syntax-e _%tl120406120424%_)))
                                (let ((_%hd120408120430%_
                                       (##car _%e120407120427%_))
                                      (_%tl120409120432%_
                                       (##cdr _%e120407120427%_)))
                                  (let ((_%expr120435%_ _%hd120408120430%_))
                                    (if (gx#stx-null? _%tl120409120432%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120435%_)
                                            (_%E120403120415%_))
                                        (_%E120403120415%_)))))
                              (_%E120403120415%_))))
                      (_%E120403120415%_)))))
          (_%E120402120437%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx120359%_)
        (let* ((_%e120360120370%_ _%stx120359%_)
               (_%E120362120374%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120360120370%_)))
               (_%E120361120396%_
                (lambda ()
                  (if (gx#stx-pair? _%e120360120370%_)
                      (let ((_%e120363120378%_
                             (gx#syntax-e _%e120360120370%_)))
                        (let ((_%hd120364120381%_ (##car _%e120363120378%_))
                              (_%tl120365120383%_ (##cdr _%e120363120378%_)))
                          (if (gx#stx-pair? _%tl120365120383%_)
                              (let ((_%e120366120386%_
                                     (gx#syntax-e _%tl120365120383%_)))
                                (let ((_%hd120367120389%_
                                       (##car _%e120366120386%_))
                                      (_%tl120368120391%_
                                       (##cdr _%e120366120386%_)))
                                  (let ((_%e120394%_ _%hd120367120389%_))
                                    (if (gx#stx-null? _%tl120368120391%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e120394%_)
                                                         '()))
                                             (gx#stx-source _%stx120359%_))
                                            (_%E120362120374%_))
                                        (_%E120362120374%_)))))
                              (_%E120362120374%_))))
                      (_%E120362120374%_)))))
          (_%E120361120396%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx120318%_)
        (let* ((_%e120319120329%_ _%stx120318%_)
               (_%E120321120333%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120319120329%_)))
               (_%E120320120355%_
                (lambda ()
                  (if (gx#stx-pair? _%e120319120329%_)
                      (let ((_%e120322120337%_
                             (gx#syntax-e _%e120319120329%_)))
                        (let ((_%hd120323120340%_ (##car _%e120322120337%_))
                              (_%tl120324120342%_ (##cdr _%e120322120337%_)))
                          (if (gx#stx-pair? _%tl120324120342%_)
                              (let ((_%e120325120345%_
                                     (gx#syntax-e _%tl120324120342%_)))
                                (let ((_%hd120326120348%_
                                       (##car _%e120325120345%_))
                                      (_%tl120327120350%_
                                       (##cdr _%e120325120345%_)))
                                  (let ((_%e120353%_ _%hd120326120348%_))
                                    (if (gx#stx-null? _%tl120327120350%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e120353%_)
                                                         '()))
                                             (gx#stx-source _%stx120318%_))
                                            (_%E120321120333%_))
                                        (_%E120321120333%_)))))
                              (_%E120321120333%_))))
                      (_%E120321120333%_)))))
          (_%E120320120355%_))))
    (define gx#core-expand-call%
      (lambda (_%stx120275%_)
        (let* ((_%e120276120286%_ _%stx120275%_)
               (_%E120278120290%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120276120286%_)))
               (_%E120277120314%_
                (lambda ()
                  (if (gx#stx-pair? _%e120276120286%_)
                      (let ((_%e120279120294%_
                             (gx#syntax-e _%e120276120286%_)))
                        (let ((_%hd120280120297%_ (##car _%e120279120294%_))
                              (_%tl120281120299%_ (##cdr _%e120279120294%_)))
                          (if (gx#stx-pair? _%tl120281120299%_)
                              (let ((_%e120282120302%_
                                     (gx#syntax-e _%tl120281120299%_)))
                                (let ((_%hd120283120305%_
                                       (##car _%e120282120302%_))
                                      (_%tl120284120307%_
                                       (##cdr _%e120282120302%_)))
                                  (let* ((_%rator120310%_ _%hd120283120305%_)
                                         (_%args120312%_ _%tl120284120307%_))
                                    (if (gx#stx-list? _%args120312%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator120310%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args120312%_))
                                         (gx#stx-source _%stx120275%_))
                                        (_%E120278120290%_)))))
                              (_%E120278120290%_))))
                      (_%E120278120290%_)))))
          (_%E120277120314%_))))
    (define gx#core-expand-if%
      (lambda (_%stx120208%_)
        (let* ((_%e120209120225%_ _%stx120208%_)
               (_%E120211120229%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120209120225%_)))
               (_%E120210120271%_
                (lambda ()
                  (if (gx#stx-pair? _%e120209120225%_)
                      (let ((_%e120212120233%_
                             (gx#syntax-e _%e120209120225%_)))
                        (let ((_%hd120213120236%_ (##car _%e120212120233%_))
                              (_%tl120214120238%_ (##cdr _%e120212120233%_)))
                          (if (gx#stx-pair? _%tl120214120238%_)
                              (let ((_%e120215120241%_
                                     (gx#syntax-e _%tl120214120238%_)))
                                (let ((_%hd120216120244%_
                                       (##car _%e120215120241%_))
                                      (_%tl120217120246%_
                                       (##cdr _%e120215120241%_)))
                                  (let ((_%test120249%_ _%hd120216120244%_))
                                    (if (gx#stx-pair? _%tl120217120246%_)
                                        (let ((_%e120218120251%_
                                               (gx#syntax-e
                                                _%tl120217120246%_)))
                                          (let ((_%hd120219120254%_
                                                 (##car _%e120218120251%_))
                                                (_%tl120220120256%_
                                                 (##cdr _%e120218120251%_)))
                                            (let ((_%K120259%_
                                                   _%hd120219120254%_))
                                              (if (gx#stx-pair?
                                                   _%tl120220120256%_)
                                                  (let ((_%e120221120261%_
                                                         (gx#syntax-e
                                                          _%tl120220120256%_)))
                                                    (let ((_%hd120222120264%_
                                                           (##car _%e120221120261%_))
                                                          (_%tl120223120266%_
                                                           (##cdr _%e120221120261%_)))
                                                      (let ((_%E120269%_
                                                             _%hd120222120264%_))
                                                        (if (gx#stx-null?
                                                             _%tl120223120266%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test120249%_)
                                     (cons (gx#core-expand-expression
                                            _%K120259%_)
                                           (cons (gx#core-expand-expression
                                                  _%E120269%_)
                                                 '()))))
                         (gx#stx-source _%stx120208%_))
                        (_%E120211120229%_))
                    (_%E120211120229%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120211120229%_)))))
                                        (_%E120211120229%_)))))
                              (_%E120211120229%_))))
                      (_%E120211120229%_)))))
          (_%E120210120271%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx120167%_)
        (let* ((_%e120168120178%_ _%stx120167%_)
               (_%E120170120182%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120168120178%_)))
               (_%E120169120204%_
                (lambda ()
                  (if (gx#stx-pair? _%e120168120178%_)
                      (let ((_%e120171120186%_
                             (gx#syntax-e _%e120168120178%_)))
                        (let ((_%hd120172120189%_ (##car _%e120171120186%_))
                              (_%tl120173120191%_ (##cdr _%e120171120186%_)))
                          (if (gx#stx-pair? _%tl120173120191%_)
                              (let ((_%e120174120194%_
                                     (gx#syntax-e _%tl120173120191%_)))
                                (let ((_%hd120175120197%_
                                       (##car _%e120174120194%_))
                                      (_%tl120176120199%_
                                       (##cdr _%e120174120194%_)))
                                  (let ((_%id120202%_ _%hd120175120197%_))
                                    (if (gx#stx-null? _%tl120176120199%_)
                                        (if (gx#identifier? _%id120202%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id120202%_
                                                          _%stx120167%_)
                                                         '()))
                                             (gx#stx-source _%stx120167%_))
                                            (_%E120170120182%_))
                                        (_%E120170120182%_)))))
                              (_%E120170120182%_))))
                      (_%E120170120182%_)))))
          (_%E120169120204%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx120113%_)
        (let* ((_%e120114120127%_ _%stx120113%_)
               (_%E120116120131%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120114120127%_)))
               (_%E120115120163%_
                (lambda ()
                  (if (gx#stx-pair? _%e120114120127%_)
                      (let ((_%e120117120135%_
                             (gx#syntax-e _%e120114120127%_)))
                        (let ((_%hd120118120138%_ (##car _%e120117120135%_))
                              (_%tl120119120140%_ (##cdr _%e120117120135%_)))
                          (if (gx#stx-pair? _%tl120119120140%_)
                              (let ((_%e120120120143%_
                                     (gx#syntax-e _%tl120119120140%_)))
                                (let ((_%hd120121120146%_
                                       (##car _%e120120120143%_))
                                      (_%tl120122120148%_
                                       (##cdr _%e120120120143%_)))
                                  (let ((_%id120151%_ _%hd120121120146%_))
                                    (if (gx#stx-pair? _%tl120122120148%_)
                                        (let ((_%e120123120153%_
                                               (gx#syntax-e
                                                _%tl120122120148%_)))
                                          (let ((_%hd120124120156%_
                                                 (##car _%e120123120153%_))
                                                (_%tl120125120158%_
                                                 (##cdr _%e120123120153%_)))
                                            (let ((_%expr120161%_
                                                   _%hd120124120156%_))
                                              (if (gx#stx-null?
                                                   _%tl120125120158%_)
                                                  (if (gx#identifier?
                                                       _%id120151%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id120151%_
                            _%stx120113%_)
                           (cons (gx#core-expand-expression _%expr120161%_)
                                 '())))
               (gx#stx-source _%stx120113%_))
              (_%E120116120131%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120116120131%_)))))
                                        (_%E120116120131%_)))))
                              (_%E120116120131%_))))
                      (_%E120116120131%_)))))
          (_%E120115120163%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119958%_)
        (letrec ((_%generate119960%_
                  (lambda (_%body119990%_)
                    (let _%lp119992%_ ((_%rest119994%_ _%body119990%_)
                                       (_%ns119995%_
                                        (gx#core-context-namespace__0))
                                       (_%r119996%_ '()))
                      (let* ((_%e119997120012%_ _%rest119994%_)
                             (_%E120010120016%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119997120012%_)))
                             (_%E120006120020%_
                              (lambda ()
                                (if (gx#stx-null? _%e119997120012%_)
                                    (if '#t
                                        (reverse _%r119996%_)
                                        (_%E120010120016%_))
                                    (_%E120010120016%_))))
                             (_%E119999120077%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119997120012%_)
                                    (let ((_%e120007120024%_
                                           (gx#syntax-e _%e119997120012%_)))
                                      (let ((_%hd120008120027%_
                                             (##car _%e120007120024%_))
                                            (_%tl120009120029%_
                                             (##cdr _%e120007120024%_)))
                                        (let* ((_%hd120032%_
                                                _%hd120008120027%_)
                                               (_%rest120034%_
                                                _%tl120009120029%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd120032%_)
                                                  (_%lp119992%_
                                                   _%rest120034%_
                                                   _%ns119995%_
                                                   (cons (cons _%hd120032%_
                                                               (cons (if _%ns119995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd120032%_
                                  _%ns119995%_
                                  '"#"
                                  _%hd120032%_)
                                 _%hd120032%_)
                             '()))
                 _%r119996%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e120035120045%_
                                                          _%hd120032%_)
                                                         (_%E120037120049%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e120035120045%_)))
                                                         (_%E120036120073%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e120035120045%_)
                        (let ((_%e120038120053%_
                               (gx#syntax-e _%e120035120045%_)))
                          (let ((_%hd120039120056%_ (##car _%e120038120053%_))
                                (_%tl120040120058%_ (##cdr _%e120038120053%_)))
                            (let ((_%id120061%_ _%hd120039120056%_))
                              (if (gx#stx-pair? _%tl120040120058%_)
                                  (let ((_%e120041120063%_
                                         (gx#syntax-e _%tl120040120058%_)))
                                    (let ((_%hd120042120066%_
                                           (##car _%e120041120063%_))
                                          (_%tl120043120068%_
                                           (##cdr _%e120041120063%_)))
                                      (let ((_%eid120071%_ _%hd120042120066%_))
                                        (if (gx#stx-null? _%tl120043120068%_)
                                            (if (and (gx#identifier?
                                                      _%id120061%_)
                                                     (gx#identifier?
                                                      _%eid120071%_))
                                                (_%lp119992%_
                                                 _%rest120034%_
                                                 _%ns119995%_
                                                 (cons (cons _%id120061%_
                                                             (cons _%eid120071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119996%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120037120049%_))
                                            (_%E120037120049%_)))))
                                  (_%E120037120049%_)))))
                        (_%E120037120049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120036120073%_)))
                                              (_%E120006120020%_)))))
                                    (_%E120006120020%_))))
                             (_%E119998120109%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119997120012%_)
                                    (let ((_%e120000120081%_
                                           (gx#syntax-e _%e119997120012%_)))
                                      (let ((_%hd120001120084%_
                                             (##car _%e120000120081%_))
                                            (_%tl120002120086%_
                                             (##cdr _%e120000120081%_)))
                                        (if (eq? (gx#stx-e _%hd120001120084%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl120002120086%_)
                                                (let ((_%e120003120089%_
                                                       (gx#syntax-e
                                                        _%tl120002120086%_)))
                                                  (let ((_%hd120004120092%_
                                                         (##car _%e120003120089%_))
                                                        (_%tl120005120094%_
                                                         (##cdr _%e120003120089%_)))
                                                    (let* ((_%ns120097%_
                                                            _%hd120004120092%_)
                                                           (_%rest120099%_
                                                            _%tl120005120094%_))
                                                      (if '#t
                                                          (let ((_%ns120107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns120097%_)
                             (let () (symbol->string (gx#stx-e _%ns120097%_)))
                             (if (or (gx#stx-string? _%ns120097%_)
                                     (gx#stx-false? _%ns120097%_))
                                 (let () (gx#stx-e _%ns120097%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx119958%_
                                    _%ns120097%_))))))
                    (_%lp119992%_ _%rest120099%_ _%ns120107%_ _%r119996%_))
                  (_%E119999120077%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119999120077%_))
                                            (_%E119999120077%_))))
                                    (_%E119999120077%_)))))
                        (_%E119998120109%_))))))
          (let* ((_%e119961119968%_ _%stx119958%_)
                 (_%E119963119972%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119961119968%_)))
                 (_%E119962119986%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119961119968%_)
                        (let ((_%e119964119976%_
                               (gx#syntax-e _%e119961119968%_)))
                          (let ((_%hd119965119979%_ (##car _%e119964119976%_))
                                (_%tl119966119981%_ (##cdr _%e119964119976%_)))
                            (let ((_%body119984%_ _%tl119966119981%_))
                              (if (gx#stx-list? _%body119984%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119960%_ _%body119984%_))
                                  (_%E119963119972%_)))))
                        (_%E119963119972%_)))))
            (_%E119962119986%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119904%_)
        (let* ((_%e119905119918%_ _%stx119904%_)
               (_%E119907119922%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119905119918%_)))
               (_%E119906119954%_
                (lambda ()
                  (if (gx#stx-pair? _%e119905119918%_)
                      (let ((_%e119908119926%_
                             (gx#syntax-e _%e119905119918%_)))
                        (let ((_%hd119909119929%_ (##car _%e119908119926%_))
                              (_%tl119910119931%_ (##cdr _%e119908119926%_)))
                          (if (gx#stx-pair? _%tl119910119931%_)
                              (let ((_%e119911119934%_
                                     (gx#syntax-e _%tl119910119931%_)))
                                (let ((_%hd119912119937%_
                                       (##car _%e119911119934%_))
                                      (_%tl119913119939%_
                                       (##cdr _%e119911119934%_)))
                                  (let ((_%hd119942%_ _%hd119912119937%_))
                                    (if (gx#stx-pair? _%tl119913119939%_)
                                        (let ((_%e119914119944%_
                                               (gx#syntax-e
                                                _%tl119913119939%_)))
                                          (let ((_%hd119915119947%_
                                                 (##car _%e119914119944%_))
                                                (_%tl119916119949%_
                                                 (##cdr _%e119914119944%_)))
                                            (let ((_%expr119952%_
                                                   _%hd119915119947%_))
                                              (if (gx#stx-null?
                                                   _%tl119916119949%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119942%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119942%_)
                          (cons _%expr119952%_ '())))
              (_%E119907119922%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119907119922%_)))))
                                        (_%E119907119922%_)))))
                              (_%E119907119922%_))))
                      (_%E119907119922%_)))))
          (_%E119906119954%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119850%_)
        (let* ((_%e119851119864%_ _%stx119850%_)
               (_%E119853119868%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119851119864%_)))
               (_%E119852119900%_
                (lambda ()
                  (if (gx#stx-pair? _%e119851119864%_)
                      (let ((_%e119854119872%_
                             (gx#syntax-e _%e119851119864%_)))
                        (let ((_%hd119855119875%_ (##car _%e119854119872%_))
                              (_%tl119856119877%_ (##cdr _%e119854119872%_)))
                          (if (gx#stx-pair? _%tl119856119877%_)
                              (let ((_%e119857119880%_
                                     (gx#syntax-e _%tl119856119877%_)))
                                (let ((_%hd119858119883%_
                                       (##car _%e119857119880%_))
                                      (_%tl119859119885%_
                                       (##cdr _%e119857119880%_)))
                                  (let ((_%hd119888%_ _%hd119858119883%_))
                                    (if (gx#stx-pair? _%tl119859119885%_)
                                        (let ((_%e119860119890%_
                                               (gx#syntax-e
                                                _%tl119859119885%_)))
                                          (let ((_%hd119861119893%_
                                                 (##car _%e119860119890%_))
                                                (_%tl119862119895%_
                                                 (##cdr _%e119860119890%_)))
                                            (let ((_%expr119898%_
                                                   _%hd119861119893%_))
                                              (if (gx#stx-null?
                                                   _%tl119862119895%_)
                                                  (if (gx#identifier?
                                                       _%hd119888%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119898%_ '())))
              (_%E119853119868%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119853119868%_)))))
                                        (_%E119853119868%_)))))
                              (_%E119853119868%_))))
                      (_%E119853119868%_)))))
          (_%E119852119900%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119796%_)
        (let* ((_%e119797119810%_ _%stx119796%_)
               (_%E119799119814%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119797119810%_)))
               (_%E119798119846%_
                (lambda ()
                  (if (gx#stx-pair? _%e119797119810%_)
                      (let ((_%e119800119818%_
                             (gx#syntax-e _%e119797119810%_)))
                        (let ((_%hd119801119821%_ (##car _%e119800119818%_))
                              (_%tl119802119823%_ (##cdr _%e119800119818%_)))
                          (if (gx#stx-pair? _%tl119802119823%_)
                              (let ((_%e119803119826%_
                                     (gx#syntax-e _%tl119802119823%_)))
                                (let ((_%hd119804119829%_
                                       (##car _%e119803119826%_))
                                      (_%tl119805119831%_
                                       (##cdr _%e119803119826%_)))
                                  (let ((_%id119834%_ _%hd119804119829%_))
                                    (if (gx#stx-pair? _%tl119805119831%_)
                                        (let ((_%e119806119836%_
                                               (gx#syntax-e
                                                _%tl119805119831%_)))
                                          (let ((_%hd119807119839%_
                                                 (##car _%e119806119836%_))
                                                (_%tl119808119841%_
                                                 (##cdr _%e119806119836%_)))
                                            (let ((_%alias-id119844%_
                                                   _%hd119807119839%_))
                                              (if (gx#stx-null?
                                                   _%tl119808119841%_)
                                                  (if (and (gx#identifier?
                                                            _%id119834%_)
                                                           (gx#identifier?
                                                            _%alias-id119844%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119844%_ '())))
              (_%E119799119814%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119799119814%_)))))
                                        (_%E119799119814%_)))))
                              (_%E119799119814%_))))
                      (_%E119799119814%_)))))
          (_%E119798119846%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119753%_)
        (let* ((_%e119754119764%_ _%stx119753%_)
               (_%E119756119768%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119754119764%_)))
               (_%E119755119792%_
                (lambda ()
                  (if (gx#stx-pair? _%e119754119764%_)
                      (let ((_%e119757119772%_
                             (gx#syntax-e _%e119754119764%_)))
                        (let ((_%hd119758119775%_ (##car _%e119757119772%_))
                              (_%tl119759119777%_ (##cdr _%e119757119772%_)))
                          (if (gx#stx-pair? _%tl119759119777%_)
                              (let ((_%e119760119780%_
                                     (gx#syntax-e _%tl119759119777%_)))
                                (let ((_%hd119761119783%_
                                       (##car _%e119760119780%_))
                                      (_%tl119762119785%_
                                       (##cdr _%e119760119780%_)))
                                  (let* ((_%hd119788%_ _%hd119761119783%_)
                                         (_%body119790%_ _%tl119762119785%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119788%_)
                                             (gx#stx-list? _%body119790%_)
                                             (not (gx#stx-null?
                                                   _%body119790%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119788%_)
                                         _%body119790%_)
                                        (_%E119756119768%_)))))
                              (_%E119756119768%_))))
                      (_%E119756119768%_)))))
          (_%E119755119792%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119689%_)
        (letrec ((_%generate119691%_
                  (lambda (_%clause119721%_)
                    (let* ((_%e119722119729%_ _%clause119721%_)
                           (_%E119724119733%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119689%_
                               _%clause119721%_)))
                           (_%E119723119749%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119722119729%_)
                                  (let ((_%e119725119737%_
                                         (gx#syntax-e _%e119722119729%_)))
                                    (let ((_%hd119726119740%_
                                           (##car _%e119725119737%_))
                                          (_%tl119727119742%_
                                           (##cdr _%e119725119737%_)))
                                      (let* ((_%hd119745%_ _%hd119726119740%_)
                                             (_%body119747%_
                                              _%tl119727119742%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119745%_)
                                                 (gx#stx-list? _%body119747%_)
                                                 (not (gx#stx-null?
                                                       _%body119747%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119745%_)
                                                   _%body119747%_)
                                             (gx#stx-source _%clause119721%_))
                                            (_%E119724119733%_)))))
                                  (_%E119724119733%_)))))
                      (_%E119723119749%_)))))
          (let* ((_%e119692119699%_ _%stx119689%_)
                 (_%E119694119703%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119692119699%_)))
                 (_%E119693119717%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119692119699%_)
                        (let ((_%e119695119707%_
                               (gx#syntax-e _%e119692119699%_)))
                          (let ((_%hd119696119710%_ (##car _%e119695119707%_))
                                (_%tl119697119712%_ (##cdr _%e119695119707%_)))
                            (let ((_%clauses119715%_ _%tl119697119712%_))
                              (if (gx#stx-list? _%clauses119715%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119691%_
                                    _%clauses119715%_))
                                  (_%E119694119703%_)))))
                        (_%E119694119703%_)))))
            (_%E119693119717%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119590%_ _%form119591%_)
        (letrec ((_%generate119593%_
                  (lambda (_%bind119636%_)
                    (let* ((_%e119637119647%_ _%bind119636%_)
                           (_%E119639119651%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119590%_
                               _%bind119636%_)))
                           (_%E119638119675%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119637119647%_)
                                  (let ((_%e119640119655%_
                                         (gx#syntax-e _%e119637119647%_)))
                                    (let ((_%hd119641119658%_
                                           (##car _%e119640119655%_))
                                          (_%tl119642119660%_
                                           (##cdr _%e119640119655%_)))
                                      (let ((_%ids119663%_ _%hd119641119658%_))
                                        (if (gx#stx-pair? _%tl119642119660%_)
                                            (let ((_%e119643119665%_
                                                   (gx#syntax-e
                                                    _%tl119642119660%_)))
                                              (let ((_%hd119644119668%_
                                                     (##car _%e119643119665%_))
                                                    (_%tl119645119670%_
                                                     (##cdr _%e119643119665%_)))
                                                (let ((_%expr119673%_
                                                       _%hd119644119668%_))
                                                  (if (gx#stx-null?
                                                       _%tl119645119670%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119663%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119663%_)
                        (cons _%expr119673%_ '()))
                  (_%E119639119651%_))
              (_%E119639119651%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119639119651%_)))))
                                  (_%E119639119651%_)))))
                      (_%E119638119675%_)))))
          (let* ((_%e119594119604%_ _%stx119590%_)
                 (_%E119596119608%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119594119604%_)))
                 (_%E119595119632%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119594119604%_)
                        (let ((_%e119597119612%_
                               (gx#syntax-e _%e119594119604%_)))
                          (let ((_%hd119598119615%_ (##car _%e119597119612%_))
                                (_%tl119599119617%_ (##cdr _%e119597119612%_)))
                            (if (gx#stx-pair? _%tl119599119617%_)
                                (let ((_%e119600119620%_
                                       (gx#syntax-e _%tl119599119617%_)))
                                  (let ((_%hd119601119623%_
                                         (##car _%e119600119620%_))
                                        (_%tl119602119625%_
                                         (##cdr _%e119600119620%_)))
                                    (let* ((_%hd119628%_ _%hd119601119623%_)
                                           (_%body119630%_ _%tl119602119625%_))
                                      (if (and (gx#stx-list? _%hd119628%_)
                                               (gx#stx-list? _%body119630%_)
                                               (not (gx#stx-null?
                                                     _%body119630%_)))
                                          (gx#core-cons*
                                           _%form119591%_
                                           (gx#stx-map1
                                            _%generate119593%_
                                            _%hd119628%_)
                                           _%body119630%_)
                                          (_%E119596119608%_)))))
                                (_%E119596119608%_))))
                        (_%E119596119608%_)))))
            (_%E119595119632%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119682%_)
        (let ((_%form119684%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119682%_ _%form119684%_))))
    (define gx#macro-expand-let-values
      (lambda _g122071_
        (let ((_g122070_ (##length _g122071_)))
          (cond ((##fx= _g122070_ 1)
                 (apply (lambda (_%stx119682%_)
                          (gx#macro-expand-let-values__0 _%stx119682%_))
                        _g122071_))
                ((##fx= _g122070_ 2)
                 (apply (lambda (_%stx119686%_ _%form119687%_)
                          (gx#macro-expand-let-values__%
                           _%stx119686%_
                           _%form119687%_))
                        _g122071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g122071_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119587%_)
        (gx#macro-expand-let-values__% _%stx119587%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119585%_)
        (gx#macro-expand-let-values__% _%stx119585%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx119476%_)
        (let* ((_%e119477119503%_ _%stx119476%_)
               (_%E119489119507%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119477119503%_)))
               (_%E119479119549%_
                (lambda ()
                  (if (gx#stx-pair? _%e119477119503%_)
                      (let ((_%e119490119511%_
                             (gx#syntax-e _%e119477119503%_)))
                        (let ((_%hd119491119514%_ (##car _%e119490119511%_))
                              (_%tl119492119516%_ (##cdr _%e119490119511%_)))
                          (if (gx#stx-pair? _%tl119492119516%_)
                              (let ((_%e119493119519%_
                                     (gx#syntax-e _%tl119492119516%_)))
                                (let ((_%hd119494119522%_
                                       (##car _%e119493119519%_))
                                      (_%tl119495119524%_
                                       (##cdr _%e119493119519%_)))
                                  (let ((_%test119527%_ _%hd119494119522%_))
                                    (if (gx#stx-pair? _%tl119495119524%_)
                                        (let ((_%e119496119529%_
                                               (gx#syntax-e
                                                _%tl119495119524%_)))
                                          (let ((_%hd119497119532%_
                                                 (##car _%e119496119529%_))
                                                (_%tl119498119534%_
                                                 (##cdr _%e119496119529%_)))
                                            (let ((_%K119537%_
                                                   _%hd119497119532%_))
                                              (if (gx#stx-pair?
                                                   _%tl119498119534%_)
                                                  (let ((_%e119499119539%_
                                                         (gx#syntax-e
                                                          _%tl119498119534%_)))
                                                    (let ((_%hd119500119542%_
                                                           (##car _%e119499119539%_))
                                                          (_%tl119501119544%_
                                                           (##cdr _%e119499119539%_)))
                                                      (let ((_%E119547%_
                                                             _%hd119500119542%_))
                                                        (if (gx#stx-null?
                                                             _%tl119501119544%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119527%_
                         _%K119537%_
                         _%E119547%_)
                        (_%E119489119507%_))
                    (_%E119489119507%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119489119507%_)))))
                                        (_%E119489119507%_)))))
                              (_%E119489119507%_))))
                      (_%E119489119507%_))))
               (_%E119478119581%_
                (lambda ()
                  (if (gx#stx-pair? _%e119477119503%_)
                      (let ((_%e119480119553%_
                             (gx#syntax-e _%e119477119503%_)))
                        (let ((_%hd119481119556%_ (##car _%e119480119553%_))
                              (_%tl119482119558%_ (##cdr _%e119480119553%_)))
                          (if (gx#stx-pair? _%tl119482119558%_)
                              (let ((_%e119483119561%_
                                     (gx#syntax-e _%tl119482119558%_)))
                                (let ((_%hd119484119564%_
                                       (##car _%e119483119561%_))
                                      (_%tl119485119566%_
                                       (##cdr _%e119483119561%_)))
                                  (let ((_%test119569%_ _%hd119484119564%_))
                                    (if (gx#stx-pair? _%tl119485119566%_)
                                        (let ((_%e119486119571%_
                                               (gx#syntax-e
                                                _%tl119485119566%_)))
                                          (let ((_%hd119487119574%_
                                                 (##car _%e119486119571%_))
                                                (_%tl119488119576%_
                                                 (##cdr _%e119486119571%_)))
                                            (let ((_%K119579%_
                                                   _%hd119487119574%_))
                                              (if (gx#stx-null?
                                                   _%tl119488119576%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119569%_
                                                       _%K119579%_
                                                       '#!void)
                                                      (_%E119479119549%_))
                                                  (_%E119479119549%_)))))
                                        (_%E119479119549%_)))))
                              (_%E119479119549%_))))
                      (_%E119479119549%_)))))
          (_%E119478119581%_))))
    (define gx#free-identifier=?
      (lambda (_%xid119461%_ _%yid119462%_)
        (let ((_%xe119464%_ (gx#resolve-identifier__0 _%xid119461%_))
              (_%ye119465%_ (gx#resolve-identifier__0 _%yid119462%_)))
          (if (and _%xe119464%_ _%ye119465%_)
              (let ((_%$e119468%_ (eq? _%xe119464%_ _%ye119465%_)))
                (if _%$e119468%_
                    _%$e119468%_
                    (if (##structure-instance-of? _%xe119464%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye119465%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe119464%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye119465%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe119464%_ _%ye119465%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid119461%_ _%yid119462%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid119442%_ _%yid119443%_)
        (letrec ((_%context119445%_
                  (lambda (_%e119459%_)
                    (if (##structure-direct-instance-of?
                         _%e119459%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e119459%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks119446%_
                  (lambda (_%e119454%_)
                    (if (symbol? _%e119454%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e119454%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e119454%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e119454%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap119447%_
                  (lambda (_%e119452%_)
                    (if (symbol? _%e119452%_)
                        _%e119452%_
                        (gx#syntax-local-unwrap _%e119452%_)))))
          (let ((_%x119449%_ (_%unwrap119447%_ _%xid119442%_))
                (_%y119450%_ (_%unwrap119447%_ _%yid119443%_)))
            (if (gx#stx-eq? _%x119449%_ _%y119450%_)
                (if (eq? (_%context119445%_ _%x119449%_)
                         (_%context119445%_ _%y119450%_))
                    (equal? (_%marks119446%_ _%x119449%_)
                            (_%marks119446%_ _%y119450%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx119440%_)
        (if (gx#identifier? _%stx119440%_)
            (gx#core-identifier=? _%stx119440%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx119438%_)
        (if (gx#identifier? _%stx119438%_)
            (gx#core-identifier=? _%stx119438%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx119381%_ _%where119382%_)
        (let _%lp119384%_ ((_%rest119386%_ (gx#syntax->list _%stx119381%_)))
          (let* ((_%rest119387119395%_ _%rest119386%_)
                 (_%else119389119403%_ (lambda () '#t))
                 (_%K119391119416%_
                  (lambda (_%rest119406%_ _%hd119407%_)
                    (if (not (gx#identifier? _%hd119407%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where119382%_
                           _%hd119407%_))
                        (if (__find (lambda (_%g119409119411%_)
                                      (gx#bound-identifier=?
                                       _%g119409119411%_
                                       _%hd119407%_))
                                    _%rest119406%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where119382%_
                               _%hd119407%_))
                            (let () (_%lp119384%_ _%rest119406%_)))))))
            (if (##pair? _%rest119387119395%_)
                (let ((_%hd119392119419%_ (##car _%rest119387119395%_))
                      (_%tl119393119421%_ (##cdr _%rest119387119395%_)))
                  (let* ((_%hd119424%_ _%hd119392119419%_)
                         (_%rest119426%_ _%tl119393119421%_))
                    (_%K119391119416%_ _%rest119426%_ _%hd119424%_)))
                (_%else119389119403%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx119431%_)
        (let ((_%where119433%_ _%stx119431%_))
          (gx#check-duplicate-identifiers__% _%stx119431%_ _%where119433%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g122073_
        (let ((_g122072_ (##length _g122073_)))
          (cond ((##fx= _g122072_ 1)
                 (apply (lambda (_%stx119431%_)
                          (gx#check-duplicate-identifiers__0 _%stx119431%_))
                        _g122073_))
                ((##fx= _g122072_ 2)
                 (apply (lambda (_%stx119435%_ _%where119436%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx119435%_
                           _%where119436%_))
                        _g122073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g122073_))))))
    (define gx#core-bind-values?
      (lambda (_%stx119373%_)
        (gx#stx-andmap
         (lambda (_%x119375%_)
           (let ((_%$e119377%_ (gx#identifier? _%x119375%_)))
             (if _%$e119377%_ _%$e119377%_ (gx#stx-false? _%x119375%_))))
         _%stx119373%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx119337%_ _%rebind?119338%_ _%phi119339%_ _%ctx119340%_)
        (gx#stx-for-each1
         (lambda (_%id119342%_)
           (if (gx#identifier? _%id119342%_)
               (gx#core-bind-runtime!__%
                _%id119342%_
                _%rebind?119338%_
                _%phi119339%_
                _%ctx119340%_)
               '#!void))
         _%stx119337%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx119347%_)
        (let* ((_%rebind?119349%_ '#f)
               (_%phi119351%_ (gx#current-expander-phi))
               (_%ctx119353%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119347%_
           _%rebind?119349%_
           _%phi119351%_
           _%ctx119353%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx119355%_ _%rebind?119356%_)
        (let* ((_%phi119358%_ (gx#current-expander-phi))
               (_%ctx119360%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119355%_
           _%rebind?119356%_
           _%phi119358%_
           _%ctx119360%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx119362%_ _%rebind?119363%_ _%phi119364%_)
        (let ((_%ctx119366%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119362%_
           _%rebind?119363%_
           _%phi119364%_
           _%ctx119366%_))))
    (define gx#core-bind-values!
      (lambda _g122075_
        (let ((_g122074_ (##length _g122075_)))
          (cond ((##fx= _g122074_ 1)
                 (apply (lambda (_%stx119347%_)
                          (gx#core-bind-values!__0 _%stx119347%_))
                        _g122075_))
                ((##fx= _g122074_ 2)
                 (apply (lambda (_%stx119355%_ _%rebind?119356%_)
                          (gx#core-bind-values!__1
                           _%stx119355%_
                           _%rebind?119356%_))
                        _g122075_))
                ((##fx= _g122074_ 3)
                 (apply (lambda (_%stx119362%_ _%rebind?119363%_ _%phi119364%_)
                          (gx#core-bind-values!__2
                           _%stx119362%_
                           _%rebind?119363%_
                           _%phi119364%_))
                        _g122075_))
                ((##fx= _g122074_ 4)
                 (apply (lambda (_%stx119368%_
                                 _%rebind?119369%_
                                 _%phi119370%_
                                 _%ctx119371%_)
                          (gx#core-bind-values!__%
                           _%stx119368%_
                           _%rebind?119369%_
                           _%phi119370%_
                           _%ctx119371%_))
                        _g122075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g122075_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx119332%_)
        (gx#stx-map1
         (lambda (_%x119334%_)
           (if (gx#identifier? _%x119334%_)
               (gx#core-quote-syntax__0 _%x119334%_)
               '#f))
         _%stx119332%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx119325%_)
        (if (gx#identifier? _%stx119325%_)
            (let* ((_%bind119327%_ (gx#resolve-identifier__0 _%stx119325%_))
                   (_%$e119329%_ (not _%bind119327%_)))
              (if _%$e119329%_
                  _%$e119329%_
                  (##structure-instance-of?
                   _%bind119327%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id119314%_ _%form119315%_)
        (let ((_%bind119317%_ (gx#resolve-identifier__0 _%id119314%_)))
          (if (##structure-instance-of? _%bind119317%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id119314%_))
              (if (not _%bind119317%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id119314%_)))
                        (gx#core-quote-syntax__0 _%id119314%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form119315%_
                         _%id119314%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form119315%_
                     _%id119314%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id119269%_ _%rebind?119270%_ _%phi119271%_ _%ctx119272%_)
        (let* ((_%key119274%_ (gx#core-identifier-key _%id119269%_))
               (_%eid119276%_
                (gx#make-binding-id__%
                 _%key119274%_
                 '#f
                 _%phi119271%_
                 _%ctx119272%_))
               (_%bind119282%_
                (if (##structure-instance-of?
                     _%ctx119272%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119276%_
                       _%key119274%_
                       _%phi119271%_
                       _%ctx119272%_))
                    (if (##structure-instance-of?
                         _%ctx119272%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119276%_
                           _%key119274%_
                           _%phi119271%_))
                        (if (##structure-instance-of?
                             _%ctx119272%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid119276%_
                               _%key119274%_
                               _%phi119271%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid119276%_
                               _%key119274%_
                               _%phi119271%_)))))))
          (gx#bind-identifier!__%
           _%id119269%_
           _%bind119282%_
           _%rebind?119270%_
           _%phi119271%_
           _%ctx119272%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id119288%_)
        (let* ((_%rebind?119290%_ '#f)
               (_%phi119292%_ (gx#current-expander-phi))
               (_%ctx119294%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119288%_
           _%rebind?119290%_
           _%phi119292%_
           _%ctx119294%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id119296%_ _%rebind?119297%_)
        (let* ((_%phi119299%_ (gx#current-expander-phi))
               (_%ctx119301%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119296%_
           _%rebind?119297%_
           _%phi119299%_
           _%ctx119301%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id119303%_ _%rebind?119304%_ _%phi119305%_)
        (let ((_%ctx119307%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119303%_
           _%rebind?119304%_
           _%phi119305%_
           _%ctx119307%_))))
    (define gx#core-bind-runtime!
      (lambda _g122077_
        (let ((_g122076_ (##length _g122077_)))
          (cond ((##fx= _g122076_ 1)
                 (apply (lambda (_%id119288%_)
                          (gx#core-bind-runtime!__0 _%id119288%_))
                        _g122077_))
                ((##fx= _g122076_ 2)
                 (apply (lambda (_%id119296%_ _%rebind?119297%_)
                          (gx#core-bind-runtime!__1
                           _%id119296%_
                           _%rebind?119297%_))
                        _g122077_))
                ((##fx= _g122076_ 3)
                 (apply (lambda (_%id119303%_ _%rebind?119304%_ _%phi119305%_)
                          (gx#core-bind-runtime!__2
                           _%id119303%_
                           _%rebind?119304%_
                           _%phi119305%_))
                        _g122077_))
                ((##fx= _g122076_ 4)
                 (apply (lambda (_%id119309%_
                                 _%rebind?119310%_
                                 _%phi119311%_
                                 _%ctx119312%_)
                          (gx#core-bind-runtime!__%
                           _%id119309%_
                           _%rebind?119310%_
                           _%phi119311%_
                           _%ctx119312%_))
                        _g122077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g122077_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id119221%_
               _%eid119222%_
               _%rebind?119223%_
               _%phi119224%_
               _%ctx119225%_)
        (let* ((_%key119227%_ (gx#core-identifier-key _%id119221%_))
               (_%bind119232%_
                (if (##structure-instance-of?
                     _%ctx119225%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119222%_
                       _%key119227%_
                       _%phi119224%_
                       _%ctx119225%_))
                    (if (##structure-instance-of?
                         _%ctx119225%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119222%_
                           _%key119227%_
                           _%phi119224%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid119222%_
                           _%key119227%_
                           _%phi119224%_))))))
          (gx#bind-identifier!__%
           _%id119221%_
           _%bind119232%_
           _%rebind?119223%_
           _%phi119224%_
           _%ctx119225%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id119238%_ _%eid119239%_)
        (let* ((_%rebind?119241%_ '#f)
               (_%phi119243%_ (gx#current-expander-phi))
               (_%ctx119245%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119238%_
           _%eid119239%_
           _%rebind?119241%_
           _%phi119243%_
           _%ctx119245%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id119247%_ _%eid119248%_ _%rebind?119249%_)
        (let* ((_%phi119251%_ (gx#current-expander-phi))
               (_%ctx119253%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119247%_
           _%eid119248%_
           _%rebind?119249%_
           _%phi119251%_
           _%ctx119253%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id119255%_ _%eid119256%_ _%rebind?119257%_ _%phi119258%_)
        (let ((_%ctx119260%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119255%_
           _%eid119256%_
           _%rebind?119257%_
           _%phi119258%_
           _%ctx119260%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g122079_
        (let ((_g122078_ (##length _g122079_)))
          (cond ((##fx= _g122078_ 2)
                 (apply (lambda (_%id119238%_ _%eid119239%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id119238%_
                           _%eid119239%_))
                        _g122079_))
                ((##fx= _g122078_ 3)
                 (apply (lambda (_%id119247%_ _%eid119248%_ _%rebind?119249%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id119247%_
                           _%eid119248%_
                           _%rebind?119249%_))
                        _g122079_))
                ((##fx= _g122078_ 4)
                 (apply (lambda (_%id119255%_
                                 _%eid119256%_
                                 _%rebind?119257%_
                                 _%phi119258%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id119255%_
                           _%eid119256%_
                           _%rebind?119257%_
                           _%phi119258%_))
                        _g122079_))
                ((##fx= _g122078_ 5)
                 (apply (lambda (_%id119262%_
                                 _%eid119263%_
                                 _%rebind?119264%_
                                 _%phi119265%_
                                 _%ctx119266%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id119262%_
                           _%eid119263%_
                           _%rebind?119264%_
                           _%phi119265%_
                           _%ctx119266%_))
                        _g122079_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g122079_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id119181%_
               _%eid119182%_
               _%rebind?119183%_
               _%phi119184%_
               _%ctx119185%_)
        (gx#bind-identifier!__%
         _%id119181%_
         (##structure
          gx#extern-binding::t
          _%eid119182%_
          (gx#core-identifier-key _%id119181%_)
          _%phi119184%_)
         _%rebind?119183%_
         _%phi119184%_
         _%ctx119185%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id119190%_ _%eid119191%_)
        (let* ((_%rebind?119193%_ '#f)
               (_%phi119195%_ (gx#current-expander-phi))
               (_%ctx119197%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119190%_
           _%eid119191%_
           _%rebind?119193%_
           _%phi119195%_
           _%ctx119197%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id119199%_ _%eid119200%_ _%rebind?119201%_)
        (let* ((_%phi119203%_ (gx#current-expander-phi))
               (_%ctx119205%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119199%_
           _%eid119200%_
           _%rebind?119201%_
           _%phi119203%_
           _%ctx119205%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id119207%_ _%eid119208%_ _%rebind?119209%_ _%phi119210%_)
        (let ((_%ctx119212%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119207%_
           _%eid119208%_
           _%rebind?119209%_
           _%phi119210%_
           _%ctx119212%_))))
    (define gx#core-bind-extern!
      (lambda _g122081_
        (let ((_g122080_ (##length _g122081_)))
          (cond ((##fx= _g122080_ 2)
                 (apply (lambda (_%id119190%_ _%eid119191%_)
                          (gx#core-bind-extern!__0 _%id119190%_ _%eid119191%_))
                        _g122081_))
                ((##fx= _g122080_ 3)
                 (apply (lambda (_%id119199%_ _%eid119200%_ _%rebind?119201%_)
                          (gx#core-bind-extern!__1
                           _%id119199%_
                           _%eid119200%_
                           _%rebind?119201%_))
                        _g122081_))
                ((##fx= _g122080_ 4)
                 (apply (lambda (_%id119207%_
                                 _%eid119208%_
                                 _%rebind?119209%_
                                 _%phi119210%_)
                          (gx#core-bind-extern!__2
                           _%id119207%_
                           _%eid119208%_
                           _%rebind?119209%_
                           _%phi119210%_))
                        _g122081_))
                ((##fx= _g122080_ 5)
                 (apply (lambda (_%id119214%_
                                 _%eid119215%_
                                 _%rebind?119216%_
                                 _%phi119217%_
                                 _%ctx119218%_)
                          (gx#core-bind-extern!__%
                           _%id119214%_
                           _%eid119215%_
                           _%rebind?119216%_
                           _%phi119217%_
                           _%ctx119218%_))
                        _g122081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g122081_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id119135%_
               _%e119136%_
               _%rebind?119137%_
               _%phi119138%_
               _%ctx119139%_)
        (gx#bind-identifier!__%
         _%id119135%_
         (let ((_%key119144%_ (gx#core-identifier-key _%id119135%_))
               (_%e119145%_
                (if (or (##structure-instance-of? _%e119136%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e119136%_
                         'gx#expander-context::t))
                    _%e119136%_
                    (##structure
                     gx#user-expander::t
                     _%e119136%_
                     _%ctx119139%_
                     _%phi119138%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key119144%_
             '#t
             _%phi119138%_
             _%ctx119139%_)
            _%key119144%_
            _%phi119138%_
            _%e119145%_))
         _%rebind?119137%_
         _%phi119138%_
         _%ctx119139%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id119150%_ _%e119151%_)
        (let* ((_%rebind?119153%_ '#f)
               (_%phi119155%_ (gx#current-expander-phi))
               (_%ctx119157%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119150%_
           _%e119151%_
           _%rebind?119153%_
           _%phi119155%_
           _%ctx119157%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id119159%_ _%e119160%_ _%rebind?119161%_)
        (let* ((_%phi119163%_ (gx#current-expander-phi))
               (_%ctx119165%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119159%_
           _%e119160%_
           _%rebind?119161%_
           _%phi119163%_
           _%ctx119165%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id119167%_ _%e119168%_ _%rebind?119169%_ _%phi119170%_)
        (let ((_%ctx119172%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119167%_
           _%e119168%_
           _%rebind?119169%_
           _%phi119170%_
           _%ctx119172%_))))
    (define gx#core-bind-syntax!
      (lambda _g122083_
        (let ((_g122082_ (##length _g122083_)))
          (cond ((##fx= _g122082_ 2)
                 (apply (lambda (_%id119150%_ _%e119151%_)
                          (gx#core-bind-syntax!__0 _%id119150%_ _%e119151%_))
                        _g122083_))
                ((##fx= _g122082_ 3)
                 (apply (lambda (_%id119159%_ _%e119160%_ _%rebind?119161%_)
                          (gx#core-bind-syntax!__1
                           _%id119159%_
                           _%e119160%_
                           _%rebind?119161%_))
                        _g122083_))
                ((##fx= _g122082_ 4)
                 (apply (lambda (_%id119167%_
                                 _%e119168%_
                                 _%rebind?119169%_
                                 _%phi119170%_)
                          (gx#core-bind-syntax!__2
                           _%id119167%_
                           _%e119168%_
                           _%rebind?119169%_
                           _%phi119170%_))
                        _g122083_))
                ((##fx= _g122082_ 5)
                 (apply (lambda (_%id119174%_
                                 _%e119175%_
                                 _%rebind?119176%_
                                 _%phi119177%_
                                 _%ctx119178%_)
                          (gx#core-bind-syntax!__%
                           _%id119174%_
                           _%e119175%_
                           _%rebind?119176%_
                           _%phi119177%_
                           _%ctx119178%_))
                        _g122083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g122083_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id119118%_ _%e119119%_ _%rebind?119120%_)
        (gx#core-bind-syntax!__%
         _%id119118%_
         _%e119119%_
         _%rebind?119120%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id119125%_ _%e119126%_)
        (let ((_%rebind?119128%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id119125%_
           _%e119126%_
           _%rebind?119128%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g122085_
        (let ((_g122084_ (##length _g122085_)))
          (cond ((##fx= _g122084_ 2)
                 (apply (lambda (_%id119125%_ _%e119126%_)
                          (gx#core-bind-root-syntax!__0
                           _%id119125%_
                           _%e119126%_))
                        _g122085_))
                ((##fx= _g122084_ 3)
                 (apply (lambda (_%id119130%_ _%e119131%_ _%rebind?119132%_)
                          (gx#core-bind-root-syntax!__%
                           _%id119130%_
                           _%e119131%_
                           _%rebind?119132%_))
                        _g122085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g122085_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id119076%_
               _%alias-id119077%_
               _%rebind?119078%_
               _%phi119079%_
               _%ctx119080%_)
        (gx#bind-identifier!__%
         _%id119076%_
         (let ((_%key119082%_ (gx#core-identifier-key _%id119076%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key119082%_
             '#t
             _%phi119079%_
             _%ctx119080%_)
            _%key119082%_
            _%phi119079%_
            _%alias-id119077%_))
         _%rebind?119078%_
         _%phi119079%_
         _%ctx119080%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id119087%_ _%alias-id119088%_)
        (let* ((_%rebind?119090%_ '#f)
               (_%phi119092%_ (gx#current-expander-phi))
               (_%ctx119094%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119087%_
           _%alias-id119088%_
           _%rebind?119090%_
           _%phi119092%_
           _%ctx119094%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id119096%_ _%alias-id119097%_ _%rebind?119098%_)
        (let* ((_%phi119100%_ (gx#current-expander-phi))
               (_%ctx119102%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119096%_
           _%alias-id119097%_
           _%rebind?119098%_
           _%phi119100%_
           _%ctx119102%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id119104%_ _%alias-id119105%_ _%rebind?119106%_ _%phi119107%_)
        (let ((_%ctx119109%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119104%_
           _%alias-id119105%_
           _%rebind?119106%_
           _%phi119107%_
           _%ctx119109%_))))
    (define gx#core-bind-alias!
      (lambda _g122087_
        (let ((_g122086_ (##length _g122087_)))
          (cond ((##fx= _g122086_ 2)
                 (apply (lambda (_%id119087%_ _%alias-id119088%_)
                          (gx#core-bind-alias!__0
                           _%id119087%_
                           _%alias-id119088%_))
                        _g122087_))
                ((##fx= _g122086_ 3)
                 (apply (lambda (_%id119096%_
                                 _%alias-id119097%_
                                 _%rebind?119098%_)
                          (gx#core-bind-alias!__1
                           _%id119096%_
                           _%alias-id119097%_
                           _%rebind?119098%_))
                        _g122087_))
                ((##fx= _g122086_ 4)
                 (apply (lambda (_%id119104%_
                                 _%alias-id119105%_
                                 _%rebind?119106%_
                                 _%phi119107%_)
                          (gx#core-bind-alias!__2
                           _%id119104%_
                           _%alias-id119105%_
                           _%rebind?119106%_
                           _%phi119107%_))
                        _g122087_))
                ((##fx= _g122086_ 5)
                 (apply (lambda (_%id119111%_
                                 _%alias-id119112%_
                                 _%rebind?119113%_
                                 _%phi119114%_
                                 _%ctx119115%_)
                          (gx#core-bind-alias!__%
                           _%id119111%_
                           _%alias-id119112%_
                           _%rebind?119113%_
                           _%phi119114%_
                           _%ctx119115%_))
                        _g122087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g122087_))))))
    (define gx#make-binding-id__%
      (lambda (_%key119026%_ _%syntax?119027%_ _%phi119028%_ _%ctx119029%_)
        (if (uninterned-symbol? _%key119026%_)
            (let () (##gensym 'L))
            (if (pair? _%key119026%_)
                (let () (gensym (car _%key119026%_)))
                (if (##structure-instance-of? _%ctx119029%_ 'gx#top-context::t)
                    (let ((_%ns119034%_
                           (gx#core-context-namespace__% _%ctx119029%_)))
                      (if (and (fxzero? _%phi119028%_) (not _%syntax?119027%_))
                          (let ()
                            (if _%ns119034%_
                                (make-symbol__1
                                 _%ns119034%_
                                 '"#"
                                 _%key119026%_)
                                _%key119026%_))
                          (if _%syntax?119027%_
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119038%_ _%ns119034%_))
                                   (if _%$e119038%_ _%$e119038%_ '""))
                                 '"[:"
                                 (number->string _%phi119028%_)
                                 '":]#"
                                 _%key119026%_))
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119042%_ _%ns119034%_))
                                   (if _%$e119042%_ _%$e119042%_ '""))
                                 '"["
                                 (number->string _%phi119028%_)
                                 '"]#"
                                 _%key119026%_)))))
                    (let () (gensym _%key119026%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key119049%_)
        (let* ((_%syntax?119051%_ '#f)
               (_%phi119053%_ (gx#current-expander-phi))
               (_%ctx119055%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119049%_
           _%syntax?119051%_
           _%phi119053%_
           _%ctx119055%_))))
    (define gx#make-binding-id__1
      (lambda (_%key119057%_ _%syntax?119058%_)
        (let* ((_%phi119060%_ (gx#current-expander-phi))
               (_%ctx119062%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119057%_
           _%syntax?119058%_
           _%phi119060%_
           _%ctx119062%_))))
    (define gx#make-binding-id__2
      (lambda (_%key119064%_ _%syntax?119065%_ _%phi119066%_)
        (let ((_%ctx119068%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119064%_
           _%syntax?119065%_
           _%phi119066%_
           _%ctx119068%_))))
    (define gx#make-binding-id
      (lambda _g122089_
        (let ((_g122088_ (##length _g122089_)))
          (cond ((##fx= _g122088_ 1)
                 (apply (lambda (_%key119049%_)
                          (gx#make-binding-id__0 _%key119049%_))
                        _g122089_))
                ((##fx= _g122088_ 2)
                 (apply (lambda (_%key119057%_ _%syntax?119058%_)
                          (gx#make-binding-id__1
                           _%key119057%_
                           _%syntax?119058%_))
                        _g122089_))
                ((##fx= _g122088_ 3)
                 (apply (lambda (_%key119064%_ _%syntax?119065%_ _%phi119066%_)
                          (gx#make-binding-id__2
                           _%key119064%_
                           _%syntax?119065%_
                           _%phi119066%_))
                        _g122089_))
                ((##fx= _g122088_ 4)
                 (apply (lambda (_%key119070%_
                                 _%syntax?119071%_
                                 _%phi119072%_
                                 _%ctx119073%_)
                          (gx#make-binding-id__%
                           _%key119070%_
                           _%syntax?119071%_
                           _%phi119072%_
                           _%ctx119073%_))
                        _g122089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g122089_))))))))
