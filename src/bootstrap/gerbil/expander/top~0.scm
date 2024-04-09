(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712696213)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx122061%_)
        (letrec ((_%expand-special122063%_
                  (lambda (_%hd122065%_ _%K122066%_ _%rest122067%_ _%r122068%_)
                    (_%K122066%_
                     _%rest122067%_
                     (cons (gx#core-expand-top _%hd122065%_) _%r122068%_)))))
          (gx#core-expand-block__0 _%stx122061%_ _%expand-special122063%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121814%_)
        (letrec ((_%expand-special121816%_
                  (lambda (_%hd121936%_ _%K121937%_ _%rest121938%_ _%r121939%_)
                    (let* ((_%K121943%_
                            (lambda (_%e121941%_)
                              (_%K121937%_
                               _%rest121938%_
                               (cons _%e121941%_ _%r121939%_))))
                           (_%e121944121973%_ _%hd121936%_)
                           (_%E121968121977%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121944121973%_)))
                           (_%E121964121989%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121944121973%_)
                                  (let ((_%e121969121981%_
                                         (gx#syntax-e _%e121944121973%_)))
                                    (let ((_%hd121970121984%_
                                           (##car _%e121969121981%_))
                                          (_%tl121971121986%_
                                           (##cdr _%e121969121981%_)))
                                      (if (and (gx#identifier?
                                                _%hd121970121984%_)
                                               (gx#core-identifier=?
                                                _%hd121970121984%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121943%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121936%_))
                                              (_%E121968121977%_))
                                          (_%E121968121977%_))))
                                  (_%E121968121977%_))))
                           (_%E121960122001%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121944121973%_)
                                  (let ((_%e121965121993%_
                                         (gx#syntax-e _%e121944121973%_)))
                                    (let ((_%hd121966121996%_
                                           (##car _%e121965121993%_))
                                          (_%tl121967121998%_
                                           (##cdr _%e121965121993%_)))
                                      (if (and (gx#identifier?
                                                _%hd121966121996%_)
                                               (gx#core-identifier=?
                                                _%hd121966121996%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121943%_
                                               (gx#core-expand-define-alias%
                                                _%hd121936%_))
                                              (_%E121964121989%_))
                                          (_%E121964121989%_))))
                                  (_%E121964121989%_))))
                           (_%E121950122013%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121944121973%_)
                                  (let ((_%e121961122005%_
                                         (gx#syntax-e _%e121944121973%_)))
                                    (let ((_%hd121962122008%_
                                           (##car _%e121961122005%_))
                                          (_%tl121963122010%_
                                           (##cdr _%e121961122005%_)))
                                      (if (and (gx#identifier?
                                                _%hd121962122008%_)
                                               (gx#core-identifier=?
                                                _%hd121962122008%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121943%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121936%_))
                                              (_%E121960122001%_))
                                          (_%E121960122001%_))))
                                  (_%E121960122001%_))))
                           (_%E121946122045%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121944121973%_)
                                  (let ((_%e121951122017%_
                                         (gx#syntax-e _%e121944121973%_)))
                                    (let ((_%hd121952122020%_
                                           (##car _%e121951122017%_))
                                          (_%tl121953122022%_
                                           (##cdr _%e121951122017%_)))
                                      (if (and (gx#identifier?
                                                _%hd121952122020%_)
                                               (gx#core-identifier=?
                                                _%hd121952122020%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121953122022%_)
                                              (let ((_%e121954122025%_
                                                     (gx#syntax-e
                                                      _%tl121953122022%_)))
                                                (let ((_%hd121955122028%_
                                                       (##car _%e121954122025%_))
                                                      (_%tl121956122030%_
                                                       (##cdr _%e121954122025%_)))
                                                  (let ((_%hd-bind122033%_
                                                         _%hd121955122028%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121956122030%_)
                                                        (let ((_%e121957122035%_
                                                               (gx#syntax-e
                                                                _%tl121956122030%_)))
                                                          (let ((_%hd121958122038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121957122035%_))
                        (_%tl121959122040%_ (##cdr _%e121957122035%_)))
                    (let ((_%expr122043%_ _%hd121958122038%_))
                      (if (gx#stx-null? _%tl121959122040%_)
                          (if (gx#core-bind-values? _%hd-bind122033%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122033%_)
                                (_%K121943%_ _%hd121936%_))
                              (_%E121950122013%_))
                          (_%E121950122013%_)))))
                (_%E121950122013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121950122013%_))
                                          (_%E121950122013%_))))
                                  (_%E121950122013%_))))
                           (_%E121945122057%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121944121973%_)
                                  (let ((_%e121947122049%_
                                         (gx#syntax-e _%e121944121973%_)))
                                    (let ((_%hd121948122052%_
                                           (##car _%e121947122049%_))
                                          (_%tl121949122054%_
                                           (##cdr _%e121947122049%_)))
                                      (if (and (gx#identifier?
                                                _%hd121948122052%_)
                                               (gx#core-identifier=?
                                                _%hd121948122052%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121943%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121936%_))
                                              (_%E121946122045%_))
                                          (_%E121946122045%_))))
                                  (_%E121946122045%_)))))
                      (_%E121945122057%_))))
                 (_%eval-body121817%_
                  (lambda (_%rbody121825%_)
                    (let _%lp121827%_ ((_%rest121829%_ _%rbody121825%_)
                                       (_%body121830%_ '())
                                       (_%ebody121831%_ '()))
                      (let* ((_%rest121832121840%_ _%rest121829%_)
                             (_%else121834121848%_
                              (lambda ()
                                (values _%body121830%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121831%_)
                                          (gx#stx-source _%stx121814%_))))))
                             (_%K121836121924%_
                              (lambda (_%rest121851%_ _%hd121852%_)
                                (let* ((_%e121853121870%_ _%hd121852%_)
                                       (_%E121865121874%_
                                        (lambda ()
                                          (_%lp121827%_
                                           _%rest121851%_
                                           (cons _%hd121852%_ _%body121830%_)
                                           (cons _%hd121852%_
                                                 _%ebody121831%_))))
                                       (_%E121855121886%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121853121870%_)
                                              (let ((_%e121866121878%_
                                                     (gx#syntax-e
                                                      _%e121853121870%_)))
                                                (let ((_%hd121867121881%_
                                                       (##car _%e121866121878%_))
                                                      (_%tl121868121883%_
                                                       (##cdr _%e121866121878%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121867121881%_)
                                                           (gx#core-identifier=?
                                                            _%hd121867121881%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121827%_
                                                           _%rest121851%_
                                                           (cons _%hd121852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121830%_)
                   _%ebody121831%_)
                  (_%E121865121874%_))
              (_%E121865121874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121865121874%_))))
                                       (_%E121854121920%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121853121870%_)
                                              (let ((_%e121856121890%_
                                                     (gx#syntax-e
                                                      _%e121853121870%_)))
                                                (let ((_%hd121857121893%_
                                                       (##car _%e121856121890%_))
                                                      (_%tl121858121895%_
                                                       (##cdr _%e121856121890%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121857121893%_)
                                                           (gx#core-identifier=?
                                                            _%hd121857121893%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121858121895%_)
                                                          (let ((_%e121859121898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121858121895%_)))
                    (let ((_%hd121860121901%_ (##car _%e121859121898%_))
                          (_%tl121861121903%_ (##cdr _%e121859121898%_)))
                      (let ((_%hd-bind121906%_ _%hd121860121901%_))
                        (if (gx#stx-pair? _%tl121861121903%_)
                            (let ((_%e121862121908%_
                                   (gx#syntax-e _%tl121861121903%_)))
                              (let ((_%hd121863121911%_
                                     (##car _%e121862121908%_))
                                    (_%tl121864121913%_
                                     (##cdr _%e121862121908%_)))
                                (let ((_%expr121916%_ _%hd121863121911%_))
                                  (if (gx#stx-null? _%tl121864121913%_)
                                      (if '#t
                                          (let ((_%ehd121918%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121906%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121916%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121852%_))))
                                            (_%lp121827%_
                                             _%rest121851%_
                                             (cons _%ehd121918%_
                                                   _%body121830%_)
                                             (cons _%ehd121918%_
                                                   _%ebody121831%_)))
                                          (_%E121855121886%_))
                                      (_%E121855121886%_)))))
                            (_%E121855121886%_)))))
                  (_%E121855121886%_))
              (_%E121855121886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121855121886%_)))))
                                  (_%E121854121920%_)))))
                        (if (##pair? _%rest121832121840%_)
                            (let ((_%hd121837121927%_
                                   (##car _%rest121832121840%_))
                                  (_%tl121838121929%_
                                   (##cdr _%rest121832121840%_)))
                              (let* ((_%hd121932%_ _%hd121837121927%_)
                                     (_%rest121934%_ _%tl121838121929%_))
                                (_%K121836121924%_
                                 _%rest121934%_
                                 _%hd121932%_)))
                            (_%else121834121848%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121820%_
                     (gx#core-expand-block__1
                      _%stx121814%_
                      _%expand-special121816%_
                      '#f))
                    (_g122084_ (_%eval-body121817%_ _%rbody121820%_)))
               (begin
                 (let ((_g122085_
                        (if (##values? _g122084_)
                            (##vector-length _g122084_)
                            1)))
                   (if (not (##fx= _g122085_ 2))
                       (error "Context expects 2 values" _g122085_)))
                 (let ((_%expanded-body121822%_ (##vector-ref _g122084_ 0))
                       (_%value121823%_ (##vector-ref _g122084_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121822%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121823%_ '())))
                    (gx#stx-source _%stx121814%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121784%_)
        (let* ((_%e121785121792%_ _%stx121784%_)
               (_%E121787121796%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121785121792%_)))
               (_%E121786121810%_
                (lambda ()
                  (if (gx#stx-pair? _%e121785121792%_)
                      (let ((_%e121788121800%_
                             (gx#syntax-e _%e121785121792%_)))
                        (let ((_%hd121789121803%_ (##car _%e121788121800%_))
                              (_%tl121790121805%_ (##cdr _%e121788121800%_)))
                          (let ((_%body121808%_ _%tl121790121805%_))
                            (if (gx#stx-list? _%body121808%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121808%_)
                                 (gx#stx-source _%stx121784%_))
                                (_%E121787121796%_)))))
                      (_%E121787121796%_)))))
          (_%E121786121810%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121782%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121782%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121728%_)
        (let* ((_%e121729121742%_ _%stx121728%_)
               (_%E121731121746%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121729121742%_)))
               (_%E121730121778%_
                (lambda ()
                  (if (gx#stx-pair? _%e121729121742%_)
                      (let ((_%e121732121750%_
                             (gx#syntax-e _%e121729121742%_)))
                        (let ((_%hd121733121753%_ (##car _%e121732121750%_))
                              (_%tl121734121755%_ (##cdr _%e121732121750%_)))
                          (if (gx#stx-pair? _%tl121734121755%_)
                              (let ((_%e121735121758%_
                                     (gx#syntax-e _%tl121734121755%_)))
                                (let ((_%hd121736121761%_
                                       (##car _%e121735121758%_))
                                      (_%tl121737121763%_
                                       (##cdr _%e121735121758%_)))
                                  (let ((_%ann121766%_ _%hd121736121761%_))
                                    (if (gx#stx-pair? _%tl121737121763%_)
                                        (let ((_%e121738121768%_
                                               (gx#syntax-e
                                                _%tl121737121763%_)))
                                          (let ((_%hd121739121771%_
                                                 (##car _%e121738121768%_))
                                                (_%tl121740121773%_
                                                 (##cdr _%e121738121768%_)))
                                            (let ((_%expr121776%_
                                                   _%hd121739121771%_))
                                              (if (gx#stx-null?
                                                   _%tl121740121773%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121776%_)
                                 '())))
               (gx#stx-source _%stx121728%_))
              (_%E121731121746%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121731121746%_)))))
                                        (_%E121731121746%_)))))
                              (_%E121731121746%_))))
                      (_%E121731121746%_)))))
          (_%E121730121778%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx121452%_ _%body121453%_)
        (letrec ((_%expand-special121455%_
                  (lambda (_%hd121723%_ _%K121724%_ _%rest121725%_ _%r121726%_)
                    (_%K121724%_
                     '()
                     (cons (_%expand-internal121456%_
                            _%hd121723%_
                            _%rest121725%_)
                           _%r121726%_))))
                 (_%expand-internal121456%_
                  (lambda (_%hd121719%_ _%rest121720%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal121458%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121719%_ _%rest121720%_))
                          (gx#stx-source _%stx121452%_))
                         _%expand-internal-special121457%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj122078
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj122078)
                       __obj122078))))
                 (_%expand-internal-special121457%_
                  (lambda (_%hd121614%_ _%K121615%_ _%rest121616%_ _%r121617%_)
                    (let* ((_%e121618121643%_ _%hd121614%_)
                           (_%E121638121647%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121618121643%_)))
                           (_%E121634121659%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121618121643%_)
                                  (let ((_%e121639121651%_
                                         (gx#syntax-e _%e121618121643%_)))
                                    (let ((_%hd121640121654%_
                                           (##car _%e121639121651%_))
                                          (_%tl121641121656%_
                                           (##cdr _%e121639121651%_)))
                                      (if (and (gx#identifier?
                                                _%hd121640121654%_)
                                               (gx#core-identifier=?
                                                _%hd121640121654%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121615%_
                                               _%rest121616%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121614%_)
                                                     _%r121617%_))
                                              (_%E121638121647%_))
                                          (_%E121638121647%_))))
                                  (_%E121638121647%_))))
                           (_%E121630121671%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121618121643%_)
                                  (let ((_%e121635121663%_
                                         (gx#syntax-e _%e121618121643%_)))
                                    (let ((_%hd121636121666%_
                                           (##car _%e121635121663%_))
                                          (_%tl121637121668%_
                                           (##cdr _%e121635121663%_)))
                                      (if (and (gx#identifier?
                                                _%hd121636121666%_)
                                               (gx#core-identifier=?
                                                _%hd121636121666%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121614%_)
                                                (_%K121615%_
                                                 _%rest121616%_
                                                 _%r121617%_))
                                              (_%E121634121659%_))
                                          (_%E121634121659%_))))
                                  (_%E121634121659%_))))
                           (_%E121620121683%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121618121643%_)
                                  (let ((_%e121631121675%_
                                         (gx#syntax-e _%e121618121643%_)))
                                    (let ((_%hd121632121678%_
                                           (##car _%e121631121675%_))
                                          (_%tl121633121680%_
                                           (##cdr _%e121631121675%_)))
                                      (if (and (gx#identifier?
                                                _%hd121632121678%_)
                                               (gx#core-identifier=?
                                                _%hd121632121678%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121614%_)
                                                (_%K121615%_
                                                 _%rest121616%_
                                                 _%r121617%_))
                                              (_%E121630121671%_))
                                          (_%E121630121671%_))))
                                  (_%E121630121671%_))))
                           (_%E121619121715%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121618121643%_)
                                  (let ((_%e121621121687%_
                                         (gx#syntax-e _%e121618121643%_)))
                                    (let ((_%hd121622121690%_
                                           (##car _%e121621121687%_))
                                          (_%tl121623121692%_
                                           (##cdr _%e121621121687%_)))
                                      (if (and (gx#identifier?
                                                _%hd121622121690%_)
                                               (gx#core-identifier=?
                                                _%hd121622121690%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121623121692%_)
                                              (let ((_%e121624121695%_
                                                     (gx#syntax-e
                                                      _%tl121623121692%_)))
                                                (let ((_%hd121625121698%_
                                                       (##car _%e121624121695%_))
                                                      (_%tl121626121700%_
                                                       (##cdr _%e121624121695%_)))
                                                  (let ((_%hd-bind121703%_
                                                         _%hd121625121698%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121626121700%_)
                                                        (let ((_%e121627121705%_
                                                               (gx#syntax-e
                                                                _%tl121626121700%_)))
                                                          (let ((_%hd121628121708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121627121705%_))
                        (_%tl121629121710%_ (##cdr _%e121627121705%_)))
                    (let ((_%expr121713%_ _%hd121628121708%_))
                      (if (gx#stx-null? _%tl121629121710%_)
                          (if (gx#core-bind-values? _%hd-bind121703%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121703%_)
                                (_%K121615%_
                                 _%rest121616%_
                                 (cons _%hd121614%_ _%r121617%_)))
                              (_%E121620121683%_))
                          (_%E121620121683%_)))))
                (_%E121620121683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121620121683%_))
                                          (_%E121620121683%_))))
                                  (_%E121620121683%_)))))
                      (_%E121619121715%_))))
                 (_%wrap-internal121458%_
                  (lambda (_%rbody121460%_)
                    (let _%lp121462%_ ((_%rest121464%_ _%rbody121460%_)
                                       (_%decls121465%_ '())
                                       (_%bind121466%_ '())
                                       (_%body121467%_ '()))
                      (let* ((_%e121468121475%_ _%rest121464%_)
                             (_%E121470121524%_
                              (lambda ()
                                (let* ((_%body121519%_
                                        (let* ((_%body121478121488%_
                                                _%body121467%_)
                                               (_%else121481121496%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body121467%_)
                                                   (gx#stx-source
                                                    _%stx121452%_)))))
                                          (let ((_%K121486121516%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx121452%_)))
                                                (_%K121483121502%_
                                                 (lambda (_%expr121500%_)
                                                   _%expr121500%_)))
                                            (let ((_%try-match121480121512%_
                                                   (lambda ()
                                                     (if (##pair? _%body121478121488%_)
                                                         (let ((_%tl121485121507%_
                                                                (##cdr _%body121478121488%_))
                                                               (_%hd121484121505%_
                                                                (##car _%body121478121488%_)))
                                                           (if (##null? _%tl121485121507%_)
                                                               (let ((_%expr121510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121484121505%_))
                         (_%K121483121502%_ _%expr121510%_))
                       (_%else121481121496%_)))
                 (_%else121481121496%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body121478121488%_)
                                                  (_%K121486121516%_)
                                                  (_%try-match121480121512%_))))))
                                       (_%body121521%_
                                        (if (null? _%bind121466%_)
                                            _%body121519%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind121466%_
                                                         (cons _%body121519%_
                                                               '())))
                                             (gx#stx-source _%stx121452%_)))))
                                  (if (null? _%decls121465%_)
                                      _%body121521%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls121465%_
                                                   (cons _%body121521%_ '())))
                                       (gx#stx-source _%stx121452%_))))))
                             (_%E121469121610%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121468121475%_)
                                    (let ((_%e121471121528%_
                                           (gx#syntax-e _%e121468121475%_)))
                                      (let ((_%hd121472121531%_
                                             (##car _%e121471121528%_))
                                            (_%tl121473121533%_
                                             (##cdr _%e121471121528%_)))
                                        (let* ((_%hd121536%_
                                                _%hd121472121531%_)
                                               (_%rest121538%_
                                                _%tl121473121533%_))
                                          (if '#t
                                              (let* ((_%e121539121556%_
                                                      _%hd121536%_)
                                                     (_%E121551121560%_
                                                      (lambda ()
                                                        (if (null? _%bind121466%_)
                                                            (_%lp121462%_
                                                             _%rest121538%_
                                                             _%decls121465%_
                                                             _%bind121466%_
                                                             (cons _%hd121536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body121467%_))
                    (_%lp121462%_
                     _%rest121538%_
                     _%decls121465%_
                     (cons (cons '#f (cons _%hd121536%_ '())) _%bind121466%_)
                     _%body121467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121541121574%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121539121556%_)
                                                            (let ((_%e121552121564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121539121556%_)))
                      (let ((_%hd121553121567%_ (##car _%e121552121564%_))
                            (_%tl121554121569%_ (##cdr _%e121552121564%_)))
                        (if (and (gx#identifier? _%hd121553121567%_)
                                 (gx#core-identifier=?
                                  _%hd121553121567%_
                                  '%#declare))
                            (let ((_%xdecls121572%_ _%tl121554121569%_))
                              (if '#t
                                  (_%lp121462%_
                                   _%rest121538%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls121465%_
                                    _%xdecls121572%_)
                                   _%bind121466%_
                                   _%body121467%_)
                                  (_%E121551121560%_)))
                            (_%E121551121560%_))))
                    (_%E121551121560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121540121606%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121539121556%_)
                                                            (let ((_%e121542121578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121539121556%_)))
                      (let ((_%hd121543121581%_ (##car _%e121542121578%_))
                            (_%tl121544121583%_ (##cdr _%e121542121578%_)))
                        (if (and (gx#identifier? _%hd121543121581%_)
                                 (gx#core-identifier=?
                                  _%hd121543121581%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121544121583%_)
                                (let ((_%e121545121586%_
                                       (gx#syntax-e _%tl121544121583%_)))
                                  (let ((_%hd121546121589%_
                                         (##car _%e121545121586%_))
                                        (_%tl121547121591%_
                                         (##cdr _%e121545121586%_)))
                                    (let ((_%hd-bind121594%_
                                           _%hd121546121589%_))
                                      (if (gx#stx-pair? _%tl121547121591%_)
                                          (let ((_%e121548121596%_
                                                 (gx#syntax-e
                                                  _%tl121547121591%_)))
                                            (let ((_%hd121549121599%_
                                                   (##car _%e121548121596%_))
                                                  (_%tl121550121601%_
                                                   (##cdr _%e121548121596%_)))
                                              (let ((_%expr121604%_
                                                     _%hd121549121599%_))
                                                (if (gx#stx-null?
                                                     _%tl121550121601%_)
                                                    (if '#t
                                                        (_%lp121462%_
                                                         _%rest121538%_
                                                         _%decls121465%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121594%_)
                             (cons (gx#core-expand-expression _%expr121604%_)
                                   '()))
                       _%bind121466%_)
                 _%body121467%_)
                (_%E121541121574%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121541121574%_)))))
                                          (_%E121541121574%_)))))
                                (_%E121541121574%_))
                            (_%E121541121574%_))))
                    (_%E121541121574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121540121606%_))
                                              (_%E121470121524%_)))))
                                    (_%E121470121524%_)))))
                        (_%E121469121610%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body121453%_)
            (gx#stx-source _%stx121452%_))
           _%expand-special121455%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx121390%_)
        (let* ((_%e121391121398%_ _%stx121390%_)
               (_%E121393121402%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121391121398%_)))
               (_%E121392121448%_
                (lambda ()
                  (if (gx#stx-pair? _%e121391121398%_)
                      (let ((_%e121394121406%_
                             (gx#syntax-e _%e121391121398%_)))
                        (let ((_%hd121395121409%_ (##car _%e121394121406%_))
                              (_%tl121396121411%_ (##cdr _%e121394121406%_)))
                          (let ((_%body121414%_ _%tl121396121411%_))
                            (if (gx#stx-list? _%body121414%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl121416%_)
                                     (let* ((_%e121417121424%_ _%decl121416%_)
                                            (_%E121419121428%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e121417121424%_)))
                                            (_%E121418121444%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e121417121424%_)
                                                   (let ((_%e121420121432%_
                                                          (gx#syntax-e
                                                           _%e121417121424%_)))
                                                     (let ((_%hd121421121435%_
                                                            (##car _%e121420121432%_))
                                                           (_%tl121422121437%_
                                                            (##cdr _%e121420121432%_)))
                                                       (let* ((_%head121440%_
                                                               _%hd121421121435%_)
                                                              (_%args121442%_
                                                               _%tl121422121437%_))
                                                         (if (gx#stx-list?
                                                              _%args121442%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl121416%_)
                                                             (_%E121419121428%_)))))
                                                   (_%E121419121428%_)))))
                                       (_%E121418121444%_)))
                                   _%body121414%_))
                                 (gx#stx-source _%stx121390%_))
                                (_%E121393121402%_)))))
                      (_%E121393121402%_)))))
          (_%E121392121448%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx121294%_)
        (let* ((_%e121295121302%_ _%stx121294%_)
               (_%E121297121306%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121295121302%_)))
               (_%E121296121386%_
                (lambda ()
                  (if (gx#stx-pair? _%e121295121302%_)
                      (let ((_%e121298121310%_
                             (gx#syntax-e _%e121295121302%_)))
                        (let ((_%hd121299121313%_ (##car _%e121298121310%_))
                              (_%tl121300121315%_ (##cdr _%e121298121310%_)))
                          (let ((_%body121318%_ _%tl121300121315%_))
                            (if '#t
                                (let _%lp121320%_ ((_%rest121322%_
                                                    _%body121318%_)
                                                   (_%r121323%_ '()))
                                  (let* ((_%e121324121338%_ _%rest121322%_)
                                         (_%E121336121342%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx121294%_)))
                                         (_%E121326121346%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e121324121338%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r121323%_))
                                                     (gx#stx-source
                                                      _%stx121294%_))
                                                    (_%E121336121342%_))
                                                (_%E121336121342%_))))
                                         (_%E121325121382%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e121324121338%_)
                                                (let ((_%e121327121350%_
                                                       (gx#syntax-e
                                                        _%e121324121338%_)))
                                                  (let ((_%hd121328121353%_
                                                         (##car _%e121327121350%_))
                                                        (_%tl121329121355%_
                                                         (##cdr _%e121327121350%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd121328121353%_)
                                                        (let ((_%e121330121358%_
                                                               (gx#syntax-e
                                                                _%hd121328121353%_)))
                                                          (let ((_%hd121331121361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121330121358%_))
                        (_%tl121332121363%_ (##cdr _%e121330121358%_)))
                    (let ((_%id121366%_ _%hd121331121361%_))
                      (if (gx#stx-pair? _%tl121332121363%_)
                          (let ((_%e121333121368%_
                                 (gx#syntax-e _%tl121332121363%_)))
                            (let ((_%hd121334121371%_
                                   (##car _%e121333121368%_))
                                  (_%tl121335121373%_
                                   (##cdr _%e121333121368%_)))
                              (let ((_%eid121376%_ _%hd121334121371%_))
                                (if (gx#stx-null? _%tl121335121373%_)
                                    (let ((_%rest121378%_ _%tl121329121355%_))
                                      (if (and (gx#identifier? _%id121366%_)
                                               (gx#identifier? _%eid121376%_))
                                          (let ((_%eid121380%_
                                                 (gx#stx-e _%eid121376%_)))
                                            (gx#core-bind-extern!__0
                                             _%id121366%_
                                             _%eid121380%_)
                                            (_%lp121320%_
                                             _%rest121378%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id121366%_)
                                                         (cons _%eid121380%_
                                                               '()))
                                                   _%r121323%_)))
                                          (_%E121326121346%_)))
                                    (_%E121326121346%_)))))
                          (_%E121326121346%_)))))
                (_%E121326121346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121326121346%_)))))
                                    (_%E121325121382%_)))
                                (_%E121297121306%_)))))
                      (_%E121297121306%_)))))
          (_%E121296121386%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx121240%_)
        (let* ((_%e121241121254%_ _%stx121240%_)
               (_%E121243121258%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121241121254%_)))
               (_%E121242121290%_
                (lambda ()
                  (if (gx#stx-pair? _%e121241121254%_)
                      (let ((_%e121244121262%_
                             (gx#syntax-e _%e121241121254%_)))
                        (let ((_%hd121245121265%_ (##car _%e121244121262%_))
                              (_%tl121246121267%_ (##cdr _%e121244121262%_)))
                          (if (gx#stx-pair? _%tl121246121267%_)
                              (let ((_%e121247121270%_
                                     (gx#syntax-e _%tl121246121267%_)))
                                (let ((_%hd121248121273%_
                                       (##car _%e121247121270%_))
                                      (_%tl121249121275%_
                                       (##cdr _%e121247121270%_)))
                                  (let ((_%hd121278%_ _%hd121248121273%_))
                                    (if (gx#stx-pair? _%tl121249121275%_)
                                        (let ((_%e121250121280%_
                                               (gx#syntax-e
                                                _%tl121249121275%_)))
                                          (let ((_%hd121251121283%_
                                                 (##car _%e121250121280%_))
                                                (_%tl121252121285%_
                                                 (##cdr _%e121250121280%_)))
                                            (let ((_%expr121288%_
                                                   _%hd121251121283%_))
                                              (if (gx#stx-null?
                                                   _%tl121252121285%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd121278%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd121278%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121278%_)
                             (cons (gx#core-expand-expression _%expr121288%_)
                                   '())))
                 (gx#stx-source _%stx121240%_)))
              (_%E121243121258%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121243121258%_)))))
                                        (_%E121243121258%_)))))
                              (_%E121243121258%_))))
                      (_%E121243121258%_)))))
          (_%E121242121290%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx121184%_)
        (let* ((_%e121185121198%_ _%stx121184%_)
               (_%E121187121202%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121185121198%_)))
               (_%E121186121236%_
                (lambda ()
                  (if (gx#stx-pair? _%e121185121198%_)
                      (let ((_%e121188121206%_
                             (gx#syntax-e _%e121185121198%_)))
                        (let ((_%hd121189121209%_ (##car _%e121188121206%_))
                              (_%tl121190121211%_ (##cdr _%e121188121206%_)))
                          (if (gx#stx-pair? _%tl121190121211%_)
                              (let ((_%e121191121214%_
                                     (gx#syntax-e _%tl121190121211%_)))
                                (let ((_%hd121192121217%_
                                       (##car _%e121191121214%_))
                                      (_%tl121193121219%_
                                       (##cdr _%e121191121214%_)))
                                  (let ((_%id121222%_ _%hd121192121217%_))
                                    (if (gx#stx-pair? _%tl121193121219%_)
                                        (let ((_%e121194121224%_
                                               (gx#syntax-e
                                                _%tl121193121219%_)))
                                          (let ((_%hd121195121227%_
                                                 (##car _%e121194121224%_))
                                                (_%tl121196121229%_
                                                 (##cdr _%e121194121224%_)))
                                            (let ((_%binding-id121232%_
                                                   _%hd121195121227%_))
                                              (if (gx#stx-null?
                                                   _%tl121196121229%_)
                                                  (if (and (gx#identifier?
                                                            _%id121222%_)
                                                           (gx#identifier?
                                                            _%binding-id121232%_))
                                                      (let ((_%eid121234%_
                                                             (gx#stx-e
                                                              _%binding-id121232%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id121222%_
                                                         _%eid121234%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121222%_)
                             (cons _%eid121234%_ '())))))
              (_%E121187121202%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121187121202%_)))))
                                        (_%E121187121202%_)))))
                              (_%E121187121202%_))))
                      (_%E121187121202%_)))))
          (_%E121186121236%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx121127%_)
        (let* ((_%e121128121141%_ _%stx121127%_)
               (_%E121130121145%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121128121141%_)))
               (_%E121129121180%_
                (lambda ()
                  (if (gx#stx-pair? _%e121128121141%_)
                      (let ((_%e121131121149%_
                             (gx#syntax-e _%e121128121141%_)))
                        (let ((_%hd121132121152%_ (##car _%e121131121149%_))
                              (_%tl121133121154%_ (##cdr _%e121131121149%_)))
                          (if (gx#stx-pair? _%tl121133121154%_)
                              (let ((_%e121134121157%_
                                     (gx#syntax-e _%tl121133121154%_)))
                                (let ((_%hd121135121160%_
                                       (##car _%e121134121157%_))
                                      (_%tl121136121162%_
                                       (##cdr _%e121134121157%_)))
                                  (let ((_%id121165%_ _%hd121135121160%_))
                                    (if (gx#stx-pair? _%tl121136121162%_)
                                        (let ((_%e121137121167%_
                                               (gx#syntax-e
                                                _%tl121136121162%_)))
                                          (let ((_%hd121138121170%_
                                                 (##car _%e121137121167%_))
                                                (_%tl121139121172%_
                                                 (##cdr _%e121137121167%_)))
                                            (let ((_%expr121175%_
                                                   _%hd121138121170%_))
                                              (if (gx#stx-null?
                                                   _%tl121139121172%_)
                                                  (if (gx#identifier?
                                                       _%id121165%_)
                                                      (let ((_g122086_
                                                             (gx#core-expand-expression+1
                                                              _%expr121175%_)))
                                                        (begin
                                                          (let ((_g122087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g122086_)
                             (##vector-length _g122086_)
                             1)))
                    (if (not (##fx= _g122087_ 2))
                        (error "Context expects 2 values" _g122087_)))
                  (let ((_%e-stx121177%_ (##vector-ref _g122086_ 0))
                        (_%e121178%_ (##vector-ref _g122086_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id121165%_ _%e121178%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id121165%_)
                                   (cons _%e-stx121177%_ '())))
                       (gx#stx-source _%stx121127%_))))))
              (_%E121130121145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121130121145%_)))))
                                        (_%E121130121145%_)))))
                              (_%E121130121145%_))))
                      (_%E121130121145%_)))))
          (_%E121129121180%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx121071%_)
        (let* ((_%e121072121085%_ _%stx121071%_)
               (_%E121074121089%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121072121085%_)))
               (_%E121073121123%_
                (lambda ()
                  (if (gx#stx-pair? _%e121072121085%_)
                      (let ((_%e121075121093%_
                             (gx#syntax-e _%e121072121085%_)))
                        (let ((_%hd121076121096%_ (##car _%e121075121093%_))
                              (_%tl121077121098%_ (##cdr _%e121075121093%_)))
                          (if (gx#stx-pair? _%tl121077121098%_)
                              (let ((_%e121078121101%_
                                     (gx#syntax-e _%tl121077121098%_)))
                                (let ((_%hd121079121104%_
                                       (##car _%e121078121101%_))
                                      (_%tl121080121106%_
                                       (##cdr _%e121078121101%_)))
                                  (let ((_%id121109%_ _%hd121079121104%_))
                                    (if (gx#stx-pair? _%tl121080121106%_)
                                        (let ((_%e121081121111%_
                                               (gx#syntax-e
                                                _%tl121080121106%_)))
                                          (let ((_%hd121082121114%_
                                                 (##car _%e121081121111%_))
                                                (_%tl121083121116%_
                                                 (##cdr _%e121081121111%_)))
                                            (let ((_%alias-id121119%_
                                                   _%hd121082121114%_))
                                              (if (gx#stx-null?
                                                   _%tl121083121116%_)
                                                  (if (and (gx#identifier?
                                                            _%id121109%_)
                                                           (gx#identifier?
                                                            _%alias-id121119%_))
                                                      (let ((_%alias-id121121%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id121119%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id121109%_
                                                         _%alias-id121121%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121109%_)
                             (cons _%alias-id121121%_ '())))))
              (_%E121074121089%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121074121089%_)))))
                                        (_%E121074121089%_)))))
                              (_%E121074121089%_))))
                      (_%E121074121089%_)))))
          (_%E121073121123%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx121014%_ _%wrap?121015%_)
        (let* ((_%e121016121026%_ _%stx121014%_)
               (_%E121018121030%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121016121026%_)))
               (_%E121017121057%_
                (lambda ()
                  (if (gx#stx-pair? _%e121016121026%_)
                      (let ((_%e121019121034%_
                             (gx#syntax-e _%e121016121026%_)))
                        (let ((_%hd121020121037%_ (##car _%e121019121034%_))
                              (_%tl121021121039%_ (##cdr _%e121019121034%_)))
                          (if (gx#stx-pair? _%tl121021121039%_)
                              (let ((_%e121022121042%_
                                     (gx#syntax-e _%tl121021121039%_)))
                                (let ((_%hd121023121045%_
                                       (##car _%e121022121042%_))
                                      (_%tl121024121047%_
                                       (##cdr _%e121022121042%_)))
                                  (let* ((_%hd121050%_ _%hd121023121045%_)
                                         (_%body121052%_ _%tl121024121047%_))
                                    (if (gx#core-bind-values? _%hd121050%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd121050%_)
                                           (let ((_%body121055%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd121050%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx121014%_
                                                               _%body121052%_)
                                                              '()))))
                                             (if _%wrap?121015%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body121055%_)
                                                  (gx#stx-source
                                                   _%stx121014%_))
                                                 _%body121055%_)))
                                         gx#current-expander-context
                                         (let ((__obj122079
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122079)
                                           __obj122079))
                                        (_%E121018121030%_)))))
                              (_%E121018121030%_))))
                      (_%E121018121030%_)))))
          (_%E121017121057%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx121064%_)
        (let ((_%wrap?121066%_ '#t))
          (gx#core-expand-lambda%__% _%stx121064%_ _%wrap?121066%_))))
    (define gx#core-expand-lambda%
      (lambda _g122089_
        (let ((_g122088_ (##length _g122089_)))
          (cond ((##fx= _g122088_ 1)
                 (apply (lambda (_%stx121064%_)
                          (gx#core-expand-lambda%__0 _%stx121064%_))
                        _g122089_))
                ((##fx= _g122088_ 2)
                 (apply (lambda (_%stx121068%_ _%wrap?121069%_)
                          (gx#core-expand-lambda%__%
                           _%stx121068%_
                           _%wrap?121069%_))
                        _g122089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g122089_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120978%_)
        (let* ((_%e120979120986%_ _%stx120978%_)
               (_%E120981120990%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120979120986%_)))
               (_%E120980121009%_
                (lambda ()
                  (if (gx#stx-pair? _%e120979120986%_)
                      (let ((_%e120982120994%_
                             (gx#syntax-e _%e120979120986%_)))
                        (let ((_%hd120983120997%_ (##car _%e120982120994%_))
                              (_%tl120984120999%_ (##cdr _%e120982120994%_)))
                          (let ((_%clauses121002%_ _%tl120984120999%_))
                            (if (gx#stx-list? _%clauses121002%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause121004%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause121004%_)
                                       (let ((_%$e121006%_
                                              (gx#stx-source
                                               _%clause121004%_)))
                                         (if _%$e121006%_
                                             _%$e121006%_
                                             (gx#stx-source _%stx120978%_))))
                                      '#f))
                                   _%clauses121002%_))
                                 (gx#stx-source _%stx120978%_))
                                (_%E120981120990%_)))))
                      (_%E120981120990%_)))))
          (_%E120980121009%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120932%_)
        (let* ((_%e120933120943%_ _%stx120932%_)
               (_%E120935120947%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120933120943%_)))
               (_%E120934120974%_
                (lambda ()
                  (if (gx#stx-pair? _%e120933120943%_)
                      (let ((_%e120936120951%_
                             (gx#syntax-e _%e120933120943%_)))
                        (let ((_%hd120937120954%_ (##car _%e120936120951%_))
                              (_%tl120938120956%_ (##cdr _%e120936120951%_)))
                          (if (gx#stx-pair? _%tl120938120956%_)
                              (let ((_%e120939120959%_
                                     (gx#syntax-e _%tl120938120956%_)))
                                (let ((_%hd120940120962%_
                                       (##car _%e120939120959%_))
                                      (_%tl120941120964%_
                                       (##cdr _%e120939120959%_)))
                                  (let* ((_%hd120967%_ _%hd120940120962%_)
                                         (_%body120969%_ _%tl120941120964%_))
                                    (if (gx#core-expand-let-bind? _%hd120967%_)
                                        (let ((_%expressions120971%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120967%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120967%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120967%_
                                                           _%expressions120971%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120932%_
                         _%body120969%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120932%_)))
                                           gx#current-expander-context
                                           (let ((__obj122080
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122080)
                                             __obj122080)))
                                        (_%E120935120947%_)))))
                              (_%E120935120947%_))))
                      (_%E120935120947%_)))))
          (_%E120934120974%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120877%_ _%form120878%_)
        (let* ((_%e120879120889%_ _%stx120877%_)
               (_%E120881120893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120879120889%_)))
               (_%E120880120918%_
                (lambda ()
                  (if (gx#stx-pair? _%e120879120889%_)
                      (let ((_%e120882120897%_
                             (gx#syntax-e _%e120879120889%_)))
                        (let ((_%hd120883120900%_ (##car _%e120882120897%_))
                              (_%tl120884120902%_ (##cdr _%e120882120897%_)))
                          (if (gx#stx-pair? _%tl120884120902%_)
                              (let ((_%e120885120905%_
                                     (gx#syntax-e _%tl120884120902%_)))
                                (let ((_%hd120886120908%_
                                       (##car _%e120885120905%_))
                                      (_%tl120887120910%_
                                       (##cdr _%e120885120905%_)))
                                  (let* ((_%hd120913%_ _%hd120886120908%_)
                                         (_%body120915%_ _%tl120887120910%_))
                                    (if (gx#core-expand-let-bind? _%hd120913%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120913%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120878%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120913%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120913%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120877%_
                                                               _%body120915%_)
                                                              '())))
                                            (gx#stx-source _%stx120877%_)))
                                         gx#current-expander-context
                                         (let ((__obj122081
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122081)
                                           __obj122081))
                                        (_%E120881120893%_)))))
                              (_%E120881120893%_))))
                      (_%E120881120893%_)))))
          (_%E120880120918%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120925%_)
        (let ((_%form120927%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120925%_ _%form120927%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g122091_
        (let ((_g122090_ (##length _g122091_)))
          (cond ((##fx= _g122090_ 1)
                 (apply (lambda (_%stx120925%_)
                          (gx#core-expand-letrec-values%__0 _%stx120925%_))
                        _g122091_))
                ((##fx= _g122090_ 2)
                 (apply (lambda (_%stx120929%_ _%form120930%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120929%_
                           _%form120930%_))
                        _g122091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g122091_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120874%_)
        (gx#core-expand-letrec-values%__% _%stx120874%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120831%_)
        (if (gx#stx-list? _%stx120831%_)
            (gx#stx-andmap
             (lambda (_%bind120833%_)
               (let* ((_%e120834120844%_ _%bind120833%_)
                      (_%E120836120848%_ (lambda () '#f))
                      (_%E120835120870%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120834120844%_)
                             (let ((_%e120837120852%_
                                    (gx#syntax-e _%e120834120844%_)))
                               (let ((_%hd120838120855%_
                                      (##car _%e120837120852%_))
                                     (_%tl120839120857%_
                                      (##cdr _%e120837120852%_)))
                                 (let ((_%hd120860%_ _%hd120838120855%_))
                                   (if (gx#stx-pair? _%tl120839120857%_)
                                       (let ((_%e120840120862%_
                                              (gx#syntax-e
                                               _%tl120839120857%_)))
                                         (let ((_%hd120841120865%_
                                                (##car _%e120840120862%_))
                                               (_%tl120842120867%_
                                                (##cdr _%e120840120862%_)))
                                           (if (gx#stx-null?
                                                _%tl120842120867%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120860%_)
                                                   (_%E120836120848%_))
                                               (_%E120836120848%_))))
                                       (_%E120836120848%_)))))
                             (_%E120836120848%_)))))
                 (_%E120835120870%_)))
             _%stx120831%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120790%_)
        (let* ((_%e120791120801%_ _%bind120790%_)
               (_%E120793120805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120791120801%_)))
               (_%E120792120827%_
                (lambda ()
                  (if (gx#stx-pair? _%e120791120801%_)
                      (let ((_%e120794120809%_
                             (gx#syntax-e _%e120791120801%_)))
                        (let ((_%hd120795120812%_ (##car _%e120794120809%_))
                              (_%tl120796120814%_ (##cdr _%e120794120809%_)))
                          (if (gx#stx-pair? _%tl120796120814%_)
                              (let ((_%e120797120817%_
                                     (gx#syntax-e _%tl120796120814%_)))
                                (let ((_%hd120798120820%_
                                       (##car _%e120797120817%_))
                                      (_%tl120799120822%_
                                       (##cdr _%e120797120817%_)))
                                  (let ((_%expr120825%_ _%hd120798120820%_))
                                    (if (gx#stx-null? _%tl120799120822%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120825%_)
                                            (_%E120793120805%_))
                                        (_%E120793120805%_)))))
                              (_%E120793120805%_))))
                      (_%E120793120805%_)))))
          (_%E120792120827%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120749%_)
        (let* ((_%e120750120760%_ _%bind120749%_)
               (_%E120752120764%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120750120760%_)))
               (_%E120751120786%_
                (lambda ()
                  (if (gx#stx-pair? _%e120750120760%_)
                      (let ((_%e120753120768%_
                             (gx#syntax-e _%e120750120760%_)))
                        (let ((_%hd120754120771%_ (##car _%e120753120768%_))
                              (_%tl120755120773%_ (##cdr _%e120753120768%_)))
                          (let ((_%hd120776%_ _%hd120754120771%_))
                            (if (gx#stx-pair? _%tl120755120773%_)
                                (let ((_%e120756120778%_
                                       (gx#syntax-e _%tl120755120773%_)))
                                  (let ((_%hd120757120781%_
                                         (##car _%e120756120778%_))
                                        (_%tl120758120783%_
                                         (##cdr _%e120756120778%_)))
                                    (if (gx#stx-null? _%tl120758120783%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120776%_)
                                            (_%E120752120764%_))
                                        (_%E120752120764%_))))
                                (_%E120752120764%_)))))
                      (_%E120752120764%_)))))
          (_%E120751120786%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120707%_ _%expr120708%_)
        (let* ((_%e120709120719%_ _%bind120707%_)
               (_%E120711120723%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120709120719%_)))
               (_%E120710120745%_
                (lambda ()
                  (if (gx#stx-pair? _%e120709120719%_)
                      (let ((_%e120712120727%_
                             (gx#syntax-e _%e120709120719%_)))
                        (let ((_%hd120713120730%_ (##car _%e120712120727%_))
                              (_%tl120714120732%_ (##cdr _%e120712120727%_)))
                          (let ((_%hd120735%_ _%hd120713120730%_))
                            (if (gx#stx-pair? _%tl120714120732%_)
                                (let ((_%e120715120737%_
                                       (gx#syntax-e _%tl120714120732%_)))
                                  (let ((_%hd120716120740%_
                                         (##car _%e120715120737%_))
                                        (_%tl120717120742%_
                                         (##cdr _%e120715120737%_)))
                                    (if (gx#stx-null? _%tl120717120742%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120735%_)
                                                  (cons _%expr120708%_ '()))
                                            (_%E120711120723%_))
                                        (_%E120711120723%_))))
                                (_%E120711120723%_)))))
                      (_%E120711120723%_)))))
          (_%E120710120745%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120661%_)
        (let* ((_%e120662120672%_ _%stx120661%_)
               (_%E120664120676%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120662120672%_)))
               (_%E120663120703%_
                (lambda ()
                  (if (gx#stx-pair? _%e120662120672%_)
                      (let ((_%e120665120680%_
                             (gx#syntax-e _%e120662120672%_)))
                        (let ((_%hd120666120683%_ (##car _%e120665120680%_))
                              (_%tl120667120685%_ (##cdr _%e120665120680%_)))
                          (if (gx#stx-pair? _%tl120667120685%_)
                              (let ((_%e120668120688%_
                                     (gx#syntax-e _%tl120667120685%_)))
                                (let ((_%hd120669120691%_
                                       (##car _%e120668120688%_))
                                      (_%tl120670120693%_
                                       (##cdr _%e120668120688%_)))
                                  (let* ((_%hd120696%_ _%hd120669120691%_)
                                         (_%body120698%_ _%tl120670120693%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120696%_)
                                        (let ((_%expanders120700%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120696%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120696%_
                                              _%expanders120700%_)
                                             (gx#core-expand-local-block
                                              _%stx120661%_
                                              _%body120698%_))
                                           gx#current-expander-context
                                           (let ((__obj122082
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122082)
                                             __obj122082)))
                                        (_%E120664120676%_)))))
                              (_%E120664120676%_))))
                      (_%E120664120676%_)))))
          (_%E120663120703%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120610%_)
        (let* ((_%e120611120621%_ _%stx120610%_)
               (_%E120613120625%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120611120621%_)))
               (_%E120612120657%_
                (lambda ()
                  (if (gx#stx-pair? _%e120611120621%_)
                      (let ((_%e120614120629%_
                             (gx#syntax-e _%e120611120621%_)))
                        (let ((_%hd120615120632%_ (##car _%e120614120629%_))
                              (_%tl120616120634%_ (##cdr _%e120614120629%_)))
                          (if (gx#stx-pair? _%tl120616120634%_)
                              (let ((_%e120617120637%_
                                     (gx#syntax-e _%tl120616120634%_)))
                                (let ((_%hd120618120640%_
                                       (##car _%e120617120637%_))
                                      (_%tl120619120642%_
                                       (##cdr _%e120617120637%_)))
                                  (let* ((_%hd120645%_ _%hd120618120640%_)
                                         (_%body120647%_ _%tl120619120642%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120645%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120645%_
                                            (make-list
                                             (gx#stx-length _%hd120645%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120649120652%_
                                                     _%g120650120654%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120649120652%_
                                               _%g120650120654%_
                                               '#t))
                                            _%hd120645%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120645%_))
                                           (gx#core-expand-local-block
                                            _%stx120610%_
                                            _%body120647%_))
                                         gx#current-expander-context
                                         (let ((__obj122083
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122083)
                                           __obj122083))
                                        (_%E120613120625%_)))))
                              (_%E120613120625%_))))
                      (_%E120613120625%_)))))
          (_%E120612120657%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120567%_)
        (if (gx#stx-list? _%stx120567%_)
            (gx#stx-andmap
             (lambda (_%bind120569%_)
               (let* ((_%e120570120580%_ _%bind120569%_)
                      (_%E120572120584%_ (lambda () '#f))
                      (_%E120571120606%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120570120580%_)
                             (let ((_%e120573120588%_
                                    (gx#syntax-e _%e120570120580%_)))
                               (let ((_%hd120574120591%_
                                      (##car _%e120573120588%_))
                                     (_%tl120575120593%_
                                      (##cdr _%e120573120588%_)))
                                 (let ((_%hd120596%_ _%hd120574120591%_))
                                   (if (gx#stx-pair? _%tl120575120593%_)
                                       (let ((_%e120576120598%_
                                              (gx#syntax-e
                                               _%tl120575120593%_)))
                                         (let ((_%hd120577120601%_
                                                (##car _%e120576120598%_))
                                               (_%tl120578120603%_
                                                (##cdr _%e120576120598%_)))
                                           (if (gx#stx-null?
                                                _%tl120578120603%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120596%_)
                                                   (_%E120572120584%_))
                                               (_%E120572120584%_))))
                                       (_%E120572120584%_)))))
                             (_%E120572120584%_)))))
                 (_%E120571120606%_)))
             _%stx120567%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind120523%_)
        (let* ((_%e120524120534%_ _%bind120523%_)
               (_%E120526120538%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120524120534%_)))
               (_%E120525120563%_
                (lambda ()
                  (if (gx#stx-pair? _%e120524120534%_)
                      (let ((_%e120527120542%_
                             (gx#syntax-e _%e120524120534%_)))
                        (let ((_%hd120528120545%_ (##car _%e120527120542%_))
                              (_%tl120529120547%_ (##cdr _%e120527120542%_)))
                          (if (gx#stx-pair? _%tl120529120547%_)
                              (let ((_%e120530120550%_
                                     (gx#syntax-e _%tl120529120547%_)))
                                (let ((_%hd120531120553%_
                                       (##car _%e120530120550%_))
                                      (_%tl120532120555%_
                                       (##cdr _%e120530120550%_)))
                                  (let ((_%expr120558%_ _%hd120531120553%_))
                                    (if (gx#stx-null? _%tl120532120555%_)
                                        (if '#t
                                            (let ((_g122092_
                                                   (gx#core-expand-expression+1
                                                    _%expr120558%_)))
                                              (begin
                                                (let ((_g122093_
                                                       (if (##values?
                                                            _g122092_)
                                                           (##vector-length
                                                            _g122092_)
                                                           1)))
                                                  (if (not (##fx= _g122093_ 2))
                                                      (error "Context expects 2 values"
                                                             _g122093_)))
                                                (let ((_%_120560%_
                                                       (##vector-ref
                                                        _g122092_
                                                        0))
                                                      (_%e120561%_
                                                       (##vector-ref
                                                        _g122092_
                                                        1)))
                                                  _%e120561%_)))
                                            (_%E120526120538%_))
                                        (_%E120526120538%_)))))
                              (_%E120526120538%_))))
                      (_%E120526120538%_)))))
          (_%E120525120563%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind120468%_ _%e120469%_ _%rebind?120470%_)
        (let* ((_%e120471120481%_ _%bind120468%_)
               (_%E120473120485%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120471120481%_)))
               (_%E120472120507%_
                (lambda ()
                  (if (gx#stx-pair? _%e120471120481%_)
                      (let ((_%e120474120489%_
                             (gx#syntax-e _%e120471120481%_)))
                        (let ((_%hd120475120492%_ (##car _%e120474120489%_))
                              (_%tl120476120494%_ (##cdr _%e120474120489%_)))
                          (let ((_%id120497%_ _%hd120475120492%_))
                            (if (gx#stx-pair? _%tl120476120494%_)
                                (let ((_%e120477120499%_
                                       (gx#syntax-e _%tl120476120494%_)))
                                  (let ((_%hd120478120502%_
                                         (##car _%e120477120499%_))
                                        (_%tl120479120504%_
                                         (##cdr _%e120477120499%_)))
                                    (if (gx#stx-null? _%tl120479120504%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id120497%_
                                             _%e120469%_
                                             _%rebind?120470%_)
                                            (_%E120473120485%_))
                                        (_%E120473120485%_))))
                                (_%E120473120485%_)))))
                      (_%E120473120485%_)))))
          (_%E120472120507%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind120514%_ _%e120515%_)
        (let ((_%rebind?120517%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind120514%_
           _%e120515%_
           _%rebind?120517%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g122095_
        (let ((_g122094_ (##length _g122095_)))
          (cond ((##fx= _g122094_ 2)
                 (apply (lambda (_%bind120514%_ _%e120515%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind120514%_
                           _%e120515%_))
                        _g122095_))
                ((##fx= _g122094_ 3)
                 (apply (lambda (_%bind120519%_ _%e120520%_ _%rebind?120521%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind120519%_
                           _%e120520%_
                           _%rebind?120521%_))
                        _g122095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g122095_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx120426%_)
        (let* ((_%e120427120437%_ _%stx120426%_)
               (_%E120429120441%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120427120437%_)))
               (_%E120428120463%_
                (lambda ()
                  (if (gx#stx-pair? _%e120427120437%_)
                      (let ((_%e120430120445%_
                             (gx#syntax-e _%e120427120437%_)))
                        (let ((_%hd120431120448%_ (##car _%e120430120445%_))
                              (_%tl120432120450%_ (##cdr _%e120430120445%_)))
                          (if (gx#stx-pair? _%tl120432120450%_)
                              (let ((_%e120433120453%_
                                     (gx#syntax-e _%tl120432120450%_)))
                                (let ((_%hd120434120456%_
                                       (##car _%e120433120453%_))
                                      (_%tl120435120458%_
                                       (##cdr _%e120433120453%_)))
                                  (let ((_%expr120461%_ _%hd120434120456%_))
                                    (if (gx#stx-null? _%tl120435120458%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120461%_)
                                            (_%E120429120441%_))
                                        (_%E120429120441%_)))))
                              (_%E120429120441%_))))
                      (_%E120429120441%_)))))
          (_%E120428120463%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx120385%_)
        (let* ((_%e120386120396%_ _%stx120385%_)
               (_%E120388120400%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120386120396%_)))
               (_%E120387120422%_
                (lambda ()
                  (if (gx#stx-pair? _%e120386120396%_)
                      (let ((_%e120389120404%_
                             (gx#syntax-e _%e120386120396%_)))
                        (let ((_%hd120390120407%_ (##car _%e120389120404%_))
                              (_%tl120391120409%_ (##cdr _%e120389120404%_)))
                          (if (gx#stx-pair? _%tl120391120409%_)
                              (let ((_%e120392120412%_
                                     (gx#syntax-e _%tl120391120409%_)))
                                (let ((_%hd120393120415%_
                                       (##car _%e120392120412%_))
                                      (_%tl120394120417%_
                                       (##cdr _%e120392120412%_)))
                                  (let ((_%e120420%_ _%hd120393120415%_))
                                    (if (gx#stx-null? _%tl120394120417%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e120420%_)
                                                         '()))
                                             (gx#stx-source _%stx120385%_))
                                            (_%E120388120400%_))
                                        (_%E120388120400%_)))))
                              (_%E120388120400%_))))
                      (_%E120388120400%_)))))
          (_%E120387120422%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx120344%_)
        (let* ((_%e120345120355%_ _%stx120344%_)
               (_%E120347120359%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120345120355%_)))
               (_%E120346120381%_
                (lambda ()
                  (if (gx#stx-pair? _%e120345120355%_)
                      (let ((_%e120348120363%_
                             (gx#syntax-e _%e120345120355%_)))
                        (let ((_%hd120349120366%_ (##car _%e120348120363%_))
                              (_%tl120350120368%_ (##cdr _%e120348120363%_)))
                          (if (gx#stx-pair? _%tl120350120368%_)
                              (let ((_%e120351120371%_
                                     (gx#syntax-e _%tl120350120368%_)))
                                (let ((_%hd120352120374%_
                                       (##car _%e120351120371%_))
                                      (_%tl120353120376%_
                                       (##cdr _%e120351120371%_)))
                                  (let ((_%e120379%_ _%hd120352120374%_))
                                    (if (gx#stx-null? _%tl120353120376%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e120379%_)
                                                         '()))
                                             (gx#stx-source _%stx120344%_))
                                            (_%E120347120359%_))
                                        (_%E120347120359%_)))))
                              (_%E120347120359%_))))
                      (_%E120347120359%_)))))
          (_%E120346120381%_))))
    (define gx#core-expand-call%
      (lambda (_%stx120301%_)
        (let* ((_%e120302120312%_ _%stx120301%_)
               (_%E120304120316%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120302120312%_)))
               (_%E120303120340%_
                (lambda ()
                  (if (gx#stx-pair? _%e120302120312%_)
                      (let ((_%e120305120320%_
                             (gx#syntax-e _%e120302120312%_)))
                        (let ((_%hd120306120323%_ (##car _%e120305120320%_))
                              (_%tl120307120325%_ (##cdr _%e120305120320%_)))
                          (if (gx#stx-pair? _%tl120307120325%_)
                              (let ((_%e120308120328%_
                                     (gx#syntax-e _%tl120307120325%_)))
                                (let ((_%hd120309120331%_
                                       (##car _%e120308120328%_))
                                      (_%tl120310120333%_
                                       (##cdr _%e120308120328%_)))
                                  (let* ((_%rator120336%_ _%hd120309120331%_)
                                         (_%args120338%_ _%tl120310120333%_))
                                    (if (gx#stx-list? _%args120338%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator120336%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args120338%_))
                                         (gx#stx-source _%stx120301%_))
                                        (_%E120304120316%_)))))
                              (_%E120304120316%_))))
                      (_%E120304120316%_)))))
          (_%E120303120340%_))))
    (define gx#core-expand-if%
      (lambda (_%stx120234%_)
        (let* ((_%e120235120251%_ _%stx120234%_)
               (_%E120237120255%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120235120251%_)))
               (_%E120236120297%_
                (lambda ()
                  (if (gx#stx-pair? _%e120235120251%_)
                      (let ((_%e120238120259%_
                             (gx#syntax-e _%e120235120251%_)))
                        (let ((_%hd120239120262%_ (##car _%e120238120259%_))
                              (_%tl120240120264%_ (##cdr _%e120238120259%_)))
                          (if (gx#stx-pair? _%tl120240120264%_)
                              (let ((_%e120241120267%_
                                     (gx#syntax-e _%tl120240120264%_)))
                                (let ((_%hd120242120270%_
                                       (##car _%e120241120267%_))
                                      (_%tl120243120272%_
                                       (##cdr _%e120241120267%_)))
                                  (let ((_%test120275%_ _%hd120242120270%_))
                                    (if (gx#stx-pair? _%tl120243120272%_)
                                        (let ((_%e120244120277%_
                                               (gx#syntax-e
                                                _%tl120243120272%_)))
                                          (let ((_%hd120245120280%_
                                                 (##car _%e120244120277%_))
                                                (_%tl120246120282%_
                                                 (##cdr _%e120244120277%_)))
                                            (let ((_%K120285%_
                                                   _%hd120245120280%_))
                                              (if (gx#stx-pair?
                                                   _%tl120246120282%_)
                                                  (let ((_%e120247120287%_
                                                         (gx#syntax-e
                                                          _%tl120246120282%_)))
                                                    (let ((_%hd120248120290%_
                                                           (##car _%e120247120287%_))
                                                          (_%tl120249120292%_
                                                           (##cdr _%e120247120287%_)))
                                                      (let ((_%E120295%_
                                                             _%hd120248120290%_))
                                                        (if (gx#stx-null?
                                                             _%tl120249120292%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test120275%_)
                                     (cons (gx#core-expand-expression
                                            _%K120285%_)
                                           (cons (gx#core-expand-expression
                                                  _%E120295%_)
                                                 '()))))
                         (gx#stx-source _%stx120234%_))
                        (_%E120237120255%_))
                    (_%E120237120255%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120237120255%_)))))
                                        (_%E120237120255%_)))))
                              (_%E120237120255%_))))
                      (_%E120237120255%_)))))
          (_%E120236120297%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx120193%_)
        (let* ((_%e120194120204%_ _%stx120193%_)
               (_%E120196120208%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120194120204%_)))
               (_%E120195120230%_
                (lambda ()
                  (if (gx#stx-pair? _%e120194120204%_)
                      (let ((_%e120197120212%_
                             (gx#syntax-e _%e120194120204%_)))
                        (let ((_%hd120198120215%_ (##car _%e120197120212%_))
                              (_%tl120199120217%_ (##cdr _%e120197120212%_)))
                          (if (gx#stx-pair? _%tl120199120217%_)
                              (let ((_%e120200120220%_
                                     (gx#syntax-e _%tl120199120217%_)))
                                (let ((_%hd120201120223%_
                                       (##car _%e120200120220%_))
                                      (_%tl120202120225%_
                                       (##cdr _%e120200120220%_)))
                                  (let ((_%id120228%_ _%hd120201120223%_))
                                    (if (gx#stx-null? _%tl120202120225%_)
                                        (if (gx#identifier? _%id120228%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id120228%_
                                                          _%stx120193%_)
                                                         '()))
                                             (gx#stx-source _%stx120193%_))
                                            (_%E120196120208%_))
                                        (_%E120196120208%_)))))
                              (_%E120196120208%_))))
                      (_%E120196120208%_)))))
          (_%E120195120230%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx120139%_)
        (let* ((_%e120140120153%_ _%stx120139%_)
               (_%E120142120157%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120140120153%_)))
               (_%E120141120189%_
                (lambda ()
                  (if (gx#stx-pair? _%e120140120153%_)
                      (let ((_%e120143120161%_
                             (gx#syntax-e _%e120140120153%_)))
                        (let ((_%hd120144120164%_ (##car _%e120143120161%_))
                              (_%tl120145120166%_ (##cdr _%e120143120161%_)))
                          (if (gx#stx-pair? _%tl120145120166%_)
                              (let ((_%e120146120169%_
                                     (gx#syntax-e _%tl120145120166%_)))
                                (let ((_%hd120147120172%_
                                       (##car _%e120146120169%_))
                                      (_%tl120148120174%_
                                       (##cdr _%e120146120169%_)))
                                  (let ((_%id120177%_ _%hd120147120172%_))
                                    (if (gx#stx-pair? _%tl120148120174%_)
                                        (let ((_%e120149120179%_
                                               (gx#syntax-e
                                                _%tl120148120174%_)))
                                          (let ((_%hd120150120182%_
                                                 (##car _%e120149120179%_))
                                                (_%tl120151120184%_
                                                 (##cdr _%e120149120179%_)))
                                            (let ((_%expr120187%_
                                                   _%hd120150120182%_))
                                              (if (gx#stx-null?
                                                   _%tl120151120184%_)
                                                  (if (gx#identifier?
                                                       _%id120177%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id120177%_
                            _%stx120139%_)
                           (cons (gx#core-expand-expression _%expr120187%_)
                                 '())))
               (gx#stx-source _%stx120139%_))
              (_%E120142120157%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120142120157%_)))))
                                        (_%E120142120157%_)))))
                              (_%E120142120157%_))))
                      (_%E120142120157%_)))))
          (_%E120141120189%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119984%_)
        (letrec ((_%generate119986%_
                  (lambda (_%body120016%_)
                    (let _%lp120018%_ ((_%rest120020%_ _%body120016%_)
                                       (_%ns120021%_
                                        (gx#core-context-namespace__0))
                                       (_%r120022%_ '()))
                      (let* ((_%e120023120038%_ _%rest120020%_)
                             (_%E120036120042%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e120023120038%_)))
                             (_%E120032120046%_
                              (lambda ()
                                (if (gx#stx-null? _%e120023120038%_)
                                    (if '#t
                                        (reverse _%r120022%_)
                                        (_%E120036120042%_))
                                    (_%E120036120042%_))))
                             (_%E120025120103%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120023120038%_)
                                    (let ((_%e120033120050%_
                                           (gx#syntax-e _%e120023120038%_)))
                                      (let ((_%hd120034120053%_
                                             (##car _%e120033120050%_))
                                            (_%tl120035120055%_
                                             (##cdr _%e120033120050%_)))
                                        (let* ((_%hd120058%_
                                                _%hd120034120053%_)
                                               (_%rest120060%_
                                                _%tl120035120055%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd120058%_)
                                                  (_%lp120018%_
                                                   _%rest120060%_
                                                   _%ns120021%_
                                                   (cons (cons _%hd120058%_
                                                               (cons (if _%ns120021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd120058%_
                                  _%ns120021%_
                                  '"#"
                                  _%hd120058%_)
                                 _%hd120058%_)
                             '()))
                 _%r120022%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e120061120071%_
                                                          _%hd120058%_)
                                                         (_%E120063120075%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e120061120071%_)))
                                                         (_%E120062120099%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e120061120071%_)
                        (let ((_%e120064120079%_
                               (gx#syntax-e _%e120061120071%_)))
                          (let ((_%hd120065120082%_ (##car _%e120064120079%_))
                                (_%tl120066120084%_ (##cdr _%e120064120079%_)))
                            (let ((_%id120087%_ _%hd120065120082%_))
                              (if (gx#stx-pair? _%tl120066120084%_)
                                  (let ((_%e120067120089%_
                                         (gx#syntax-e _%tl120066120084%_)))
                                    (let ((_%hd120068120092%_
                                           (##car _%e120067120089%_))
                                          (_%tl120069120094%_
                                           (##cdr _%e120067120089%_)))
                                      (let ((_%eid120097%_ _%hd120068120092%_))
                                        (if (gx#stx-null? _%tl120069120094%_)
                                            (if (and (gx#identifier?
                                                      _%id120087%_)
                                                     (gx#identifier?
                                                      _%eid120097%_))
                                                (_%lp120018%_
                                                 _%rest120060%_
                                                 _%ns120021%_
                                                 (cons (cons _%id120087%_
                                                             (cons _%eid120097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r120022%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120063120075%_))
                                            (_%E120063120075%_)))))
                                  (_%E120063120075%_)))))
                        (_%E120063120075%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120062120099%_)))
                                              (_%E120032120046%_)))))
                                    (_%E120032120046%_))))
                             (_%E120024120135%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120023120038%_)
                                    (let ((_%e120026120107%_
                                           (gx#syntax-e _%e120023120038%_)))
                                      (let ((_%hd120027120110%_
                                             (##car _%e120026120107%_))
                                            (_%tl120028120112%_
                                             (##cdr _%e120026120107%_)))
                                        (if (eq? (gx#stx-e _%hd120027120110%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl120028120112%_)
                                                (let ((_%e120029120115%_
                                                       (gx#syntax-e
                                                        _%tl120028120112%_)))
                                                  (let ((_%hd120030120118%_
                                                         (##car _%e120029120115%_))
                                                        (_%tl120031120120%_
                                                         (##cdr _%e120029120115%_)))
                                                    (let* ((_%ns120123%_
                                                            _%hd120030120118%_)
                                                           (_%rest120125%_
                                                            _%tl120031120120%_))
                                                      (if '#t
                                                          (let ((_%ns120133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns120123%_)
                             (let () (symbol->string (gx#stx-e _%ns120123%_)))
                             (if (or (gx#stx-string? _%ns120123%_)
                                     (gx#stx-false? _%ns120123%_))
                                 (let () (gx#stx-e _%ns120123%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx119984%_
                                    _%ns120123%_))))))
                    (_%lp120018%_ _%rest120125%_ _%ns120133%_ _%r120022%_))
                  (_%E120025120103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120025120103%_))
                                            (_%E120025120103%_))))
                                    (_%E120025120103%_)))))
                        (_%E120024120135%_))))))
          (let* ((_%e119987119994%_ _%stx119984%_)
                 (_%E119989119998%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119987119994%_)))
                 (_%E119988120012%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119987119994%_)
                        (let ((_%e119990120002%_
                               (gx#syntax-e _%e119987119994%_)))
                          (let ((_%hd119991120005%_ (##car _%e119990120002%_))
                                (_%tl119992120007%_ (##cdr _%e119990120002%_)))
                            (let ((_%body120010%_ _%tl119992120007%_))
                              (if (gx#stx-list? _%body120010%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119986%_ _%body120010%_))
                                  (_%E119989119998%_)))))
                        (_%E119989119998%_)))))
            (_%E119988120012%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119930%_)
        (let* ((_%e119931119944%_ _%stx119930%_)
               (_%E119933119948%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119931119944%_)))
               (_%E119932119980%_
                (lambda ()
                  (if (gx#stx-pair? _%e119931119944%_)
                      (let ((_%e119934119952%_
                             (gx#syntax-e _%e119931119944%_)))
                        (let ((_%hd119935119955%_ (##car _%e119934119952%_))
                              (_%tl119936119957%_ (##cdr _%e119934119952%_)))
                          (if (gx#stx-pair? _%tl119936119957%_)
                              (let ((_%e119937119960%_
                                     (gx#syntax-e _%tl119936119957%_)))
                                (let ((_%hd119938119963%_
                                       (##car _%e119937119960%_))
                                      (_%tl119939119965%_
                                       (##cdr _%e119937119960%_)))
                                  (let ((_%hd119968%_ _%hd119938119963%_))
                                    (if (gx#stx-pair? _%tl119939119965%_)
                                        (let ((_%e119940119970%_
                                               (gx#syntax-e
                                                _%tl119939119965%_)))
                                          (let ((_%hd119941119973%_
                                                 (##car _%e119940119970%_))
                                                (_%tl119942119975%_
                                                 (##cdr _%e119940119970%_)))
                                            (let ((_%expr119978%_
                                                   _%hd119941119973%_))
                                              (if (gx#stx-null?
                                                   _%tl119942119975%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119968%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119968%_)
                          (cons _%expr119978%_ '())))
              (_%E119933119948%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119933119948%_)))))
                                        (_%E119933119948%_)))))
                              (_%E119933119948%_))))
                      (_%E119933119948%_)))))
          (_%E119932119980%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119876%_)
        (let* ((_%e119877119890%_ _%stx119876%_)
               (_%E119879119894%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119877119890%_)))
               (_%E119878119926%_
                (lambda ()
                  (if (gx#stx-pair? _%e119877119890%_)
                      (let ((_%e119880119898%_
                             (gx#syntax-e _%e119877119890%_)))
                        (let ((_%hd119881119901%_ (##car _%e119880119898%_))
                              (_%tl119882119903%_ (##cdr _%e119880119898%_)))
                          (if (gx#stx-pair? _%tl119882119903%_)
                              (let ((_%e119883119906%_
                                     (gx#syntax-e _%tl119882119903%_)))
                                (let ((_%hd119884119909%_
                                       (##car _%e119883119906%_))
                                      (_%tl119885119911%_
                                       (##cdr _%e119883119906%_)))
                                  (let ((_%hd119914%_ _%hd119884119909%_))
                                    (if (gx#stx-pair? _%tl119885119911%_)
                                        (let ((_%e119886119916%_
                                               (gx#syntax-e
                                                _%tl119885119911%_)))
                                          (let ((_%hd119887119919%_
                                                 (##car _%e119886119916%_))
                                                (_%tl119888119921%_
                                                 (##cdr _%e119886119916%_)))
                                            (let ((_%expr119924%_
                                                   _%hd119887119919%_))
                                              (if (gx#stx-null?
                                                   _%tl119888119921%_)
                                                  (if (gx#identifier?
                                                       _%hd119914%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119924%_ '())))
              (_%E119879119894%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119879119894%_)))))
                                        (_%E119879119894%_)))))
                              (_%E119879119894%_))))
                      (_%E119879119894%_)))))
          (_%E119878119926%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119822%_)
        (let* ((_%e119823119836%_ _%stx119822%_)
               (_%E119825119840%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119823119836%_)))
               (_%E119824119872%_
                (lambda ()
                  (if (gx#stx-pair? _%e119823119836%_)
                      (let ((_%e119826119844%_
                             (gx#syntax-e _%e119823119836%_)))
                        (let ((_%hd119827119847%_ (##car _%e119826119844%_))
                              (_%tl119828119849%_ (##cdr _%e119826119844%_)))
                          (if (gx#stx-pair? _%tl119828119849%_)
                              (let ((_%e119829119852%_
                                     (gx#syntax-e _%tl119828119849%_)))
                                (let ((_%hd119830119855%_
                                       (##car _%e119829119852%_))
                                      (_%tl119831119857%_
                                       (##cdr _%e119829119852%_)))
                                  (let ((_%id119860%_ _%hd119830119855%_))
                                    (if (gx#stx-pair? _%tl119831119857%_)
                                        (let ((_%e119832119862%_
                                               (gx#syntax-e
                                                _%tl119831119857%_)))
                                          (let ((_%hd119833119865%_
                                                 (##car _%e119832119862%_))
                                                (_%tl119834119867%_
                                                 (##cdr _%e119832119862%_)))
                                            (let ((_%alias-id119870%_
                                                   _%hd119833119865%_))
                                              (if (gx#stx-null?
                                                   _%tl119834119867%_)
                                                  (if (and (gx#identifier?
                                                            _%id119860%_)
                                                           (gx#identifier?
                                                            _%alias-id119870%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119870%_ '())))
              (_%E119825119840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119825119840%_)))))
                                        (_%E119825119840%_)))))
                              (_%E119825119840%_))))
                      (_%E119825119840%_)))))
          (_%E119824119872%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119779%_)
        (let* ((_%e119780119790%_ _%stx119779%_)
               (_%E119782119794%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119780119790%_)))
               (_%E119781119818%_
                (lambda ()
                  (if (gx#stx-pair? _%e119780119790%_)
                      (let ((_%e119783119798%_
                             (gx#syntax-e _%e119780119790%_)))
                        (let ((_%hd119784119801%_ (##car _%e119783119798%_))
                              (_%tl119785119803%_ (##cdr _%e119783119798%_)))
                          (if (gx#stx-pair? _%tl119785119803%_)
                              (let ((_%e119786119806%_
                                     (gx#syntax-e _%tl119785119803%_)))
                                (let ((_%hd119787119809%_
                                       (##car _%e119786119806%_))
                                      (_%tl119788119811%_
                                       (##cdr _%e119786119806%_)))
                                  (let* ((_%hd119814%_ _%hd119787119809%_)
                                         (_%body119816%_ _%tl119788119811%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119814%_)
                                             (gx#stx-list? _%body119816%_)
                                             (not (gx#stx-null?
                                                   _%body119816%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119814%_)
                                         _%body119816%_)
                                        (_%E119782119794%_)))))
                              (_%E119782119794%_))))
                      (_%E119782119794%_)))))
          (_%E119781119818%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119715%_)
        (letrec ((_%generate119717%_
                  (lambda (_%clause119747%_)
                    (let* ((_%e119748119755%_ _%clause119747%_)
                           (_%E119750119759%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119715%_
                               _%clause119747%_)))
                           (_%E119749119775%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119748119755%_)
                                  (let ((_%e119751119763%_
                                         (gx#syntax-e _%e119748119755%_)))
                                    (let ((_%hd119752119766%_
                                           (##car _%e119751119763%_))
                                          (_%tl119753119768%_
                                           (##cdr _%e119751119763%_)))
                                      (let* ((_%hd119771%_ _%hd119752119766%_)
                                             (_%body119773%_
                                              _%tl119753119768%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119771%_)
                                                 (gx#stx-list? _%body119773%_)
                                                 (not (gx#stx-null?
                                                       _%body119773%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119771%_)
                                                   _%body119773%_)
                                             (gx#stx-source _%clause119747%_))
                                            (_%E119750119759%_)))))
                                  (_%E119750119759%_)))))
                      (_%E119749119775%_)))))
          (let* ((_%e119718119725%_ _%stx119715%_)
                 (_%E119720119729%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119718119725%_)))
                 (_%E119719119743%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119718119725%_)
                        (let ((_%e119721119733%_
                               (gx#syntax-e _%e119718119725%_)))
                          (let ((_%hd119722119736%_ (##car _%e119721119733%_))
                                (_%tl119723119738%_ (##cdr _%e119721119733%_)))
                            (let ((_%clauses119741%_ _%tl119723119738%_))
                              (if (gx#stx-list? _%clauses119741%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119717%_
                                    _%clauses119741%_))
                                  (_%E119720119729%_)))))
                        (_%E119720119729%_)))))
            (_%E119719119743%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119616%_ _%form119617%_)
        (letrec ((_%generate119619%_
                  (lambda (_%bind119662%_)
                    (let* ((_%e119663119673%_ _%bind119662%_)
                           (_%E119665119677%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119616%_
                               _%bind119662%_)))
                           (_%E119664119701%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119663119673%_)
                                  (let ((_%e119666119681%_
                                         (gx#syntax-e _%e119663119673%_)))
                                    (let ((_%hd119667119684%_
                                           (##car _%e119666119681%_))
                                          (_%tl119668119686%_
                                           (##cdr _%e119666119681%_)))
                                      (let ((_%ids119689%_ _%hd119667119684%_))
                                        (if (gx#stx-pair? _%tl119668119686%_)
                                            (let ((_%e119669119691%_
                                                   (gx#syntax-e
                                                    _%tl119668119686%_)))
                                              (let ((_%hd119670119694%_
                                                     (##car _%e119669119691%_))
                                                    (_%tl119671119696%_
                                                     (##cdr _%e119669119691%_)))
                                                (let ((_%expr119699%_
                                                       _%hd119670119694%_))
                                                  (if (gx#stx-null?
                                                       _%tl119671119696%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119689%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119689%_)
                        (cons _%expr119699%_ '()))
                  (_%E119665119677%_))
              (_%E119665119677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119665119677%_)))))
                                  (_%E119665119677%_)))))
                      (_%E119664119701%_)))))
          (let* ((_%e119620119630%_ _%stx119616%_)
                 (_%E119622119634%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119620119630%_)))
                 (_%E119621119658%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119620119630%_)
                        (let ((_%e119623119638%_
                               (gx#syntax-e _%e119620119630%_)))
                          (let ((_%hd119624119641%_ (##car _%e119623119638%_))
                                (_%tl119625119643%_ (##cdr _%e119623119638%_)))
                            (if (gx#stx-pair? _%tl119625119643%_)
                                (let ((_%e119626119646%_
                                       (gx#syntax-e _%tl119625119643%_)))
                                  (let ((_%hd119627119649%_
                                         (##car _%e119626119646%_))
                                        (_%tl119628119651%_
                                         (##cdr _%e119626119646%_)))
                                    (let* ((_%hd119654%_ _%hd119627119649%_)
                                           (_%body119656%_ _%tl119628119651%_))
                                      (if (and (gx#stx-list? _%hd119654%_)
                                               (gx#stx-list? _%body119656%_)
                                               (not (gx#stx-null?
                                                     _%body119656%_)))
                                          (gx#core-cons*
                                           _%form119617%_
                                           (gx#stx-map1
                                            _%generate119619%_
                                            _%hd119654%_)
                                           _%body119656%_)
                                          (_%E119622119634%_)))))
                                (_%E119622119634%_))))
                        (_%E119622119634%_)))))
            (_%E119621119658%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119708%_)
        (let ((_%form119710%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119708%_ _%form119710%_))))
    (define gx#macro-expand-let-values
      (lambda _g122097_
        (let ((_g122096_ (##length _g122097_)))
          (cond ((##fx= _g122096_ 1)
                 (apply (lambda (_%stx119708%_)
                          (gx#macro-expand-let-values__0 _%stx119708%_))
                        _g122097_))
                ((##fx= _g122096_ 2)
                 (apply (lambda (_%stx119712%_ _%form119713%_)
                          (gx#macro-expand-let-values__%
                           _%stx119712%_
                           _%form119713%_))
                        _g122097_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g122097_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119613%_)
        (gx#macro-expand-let-values__% _%stx119613%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119611%_)
        (gx#macro-expand-let-values__% _%stx119611%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx119502%_)
        (let* ((_%e119503119529%_ _%stx119502%_)
               (_%E119515119533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119503119529%_)))
               (_%E119505119575%_
                (lambda ()
                  (if (gx#stx-pair? _%e119503119529%_)
                      (let ((_%e119516119537%_
                             (gx#syntax-e _%e119503119529%_)))
                        (let ((_%hd119517119540%_ (##car _%e119516119537%_))
                              (_%tl119518119542%_ (##cdr _%e119516119537%_)))
                          (if (gx#stx-pair? _%tl119518119542%_)
                              (let ((_%e119519119545%_
                                     (gx#syntax-e _%tl119518119542%_)))
                                (let ((_%hd119520119548%_
                                       (##car _%e119519119545%_))
                                      (_%tl119521119550%_
                                       (##cdr _%e119519119545%_)))
                                  (let ((_%test119553%_ _%hd119520119548%_))
                                    (if (gx#stx-pair? _%tl119521119550%_)
                                        (let ((_%e119522119555%_
                                               (gx#syntax-e
                                                _%tl119521119550%_)))
                                          (let ((_%hd119523119558%_
                                                 (##car _%e119522119555%_))
                                                (_%tl119524119560%_
                                                 (##cdr _%e119522119555%_)))
                                            (let ((_%K119563%_
                                                   _%hd119523119558%_))
                                              (if (gx#stx-pair?
                                                   _%tl119524119560%_)
                                                  (let ((_%e119525119565%_
                                                         (gx#syntax-e
                                                          _%tl119524119560%_)))
                                                    (let ((_%hd119526119568%_
                                                           (##car _%e119525119565%_))
                                                          (_%tl119527119570%_
                                                           (##cdr _%e119525119565%_)))
                                                      (let ((_%E119573%_
                                                             _%hd119526119568%_))
                                                        (if (gx#stx-null?
                                                             _%tl119527119570%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119553%_
                         _%K119563%_
                         _%E119573%_)
                        (_%E119515119533%_))
                    (_%E119515119533%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119515119533%_)))))
                                        (_%E119515119533%_)))))
                              (_%E119515119533%_))))
                      (_%E119515119533%_))))
               (_%E119504119607%_
                (lambda ()
                  (if (gx#stx-pair? _%e119503119529%_)
                      (let ((_%e119506119579%_
                             (gx#syntax-e _%e119503119529%_)))
                        (let ((_%hd119507119582%_ (##car _%e119506119579%_))
                              (_%tl119508119584%_ (##cdr _%e119506119579%_)))
                          (if (gx#stx-pair? _%tl119508119584%_)
                              (let ((_%e119509119587%_
                                     (gx#syntax-e _%tl119508119584%_)))
                                (let ((_%hd119510119590%_
                                       (##car _%e119509119587%_))
                                      (_%tl119511119592%_
                                       (##cdr _%e119509119587%_)))
                                  (let ((_%test119595%_ _%hd119510119590%_))
                                    (if (gx#stx-pair? _%tl119511119592%_)
                                        (let ((_%e119512119597%_
                                               (gx#syntax-e
                                                _%tl119511119592%_)))
                                          (let ((_%hd119513119600%_
                                                 (##car _%e119512119597%_))
                                                (_%tl119514119602%_
                                                 (##cdr _%e119512119597%_)))
                                            (let ((_%K119605%_
                                                   _%hd119513119600%_))
                                              (if (gx#stx-null?
                                                   _%tl119514119602%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119595%_
                                                       _%K119605%_
                                                       '#!void)
                                                      (_%E119505119575%_))
                                                  (_%E119505119575%_)))))
                                        (_%E119505119575%_)))))
                              (_%E119505119575%_))))
                      (_%E119505119575%_)))))
          (_%E119504119607%_))))
    (define gx#free-identifier=?
      (lambda (_%xid119487%_ _%yid119488%_)
        (let ((_%xe119490%_ (gx#resolve-identifier__0 _%xid119487%_))
              (_%ye119491%_ (gx#resolve-identifier__0 _%yid119488%_)))
          (if (and _%xe119490%_ _%ye119491%_)
              (let ((_%$e119494%_ (eq? _%xe119490%_ _%ye119491%_)))
                (if _%$e119494%_
                    _%$e119494%_
                    (if (##structure-instance-of? _%xe119490%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye119491%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe119490%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye119491%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe119490%_ _%ye119491%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid119487%_ _%yid119488%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid119468%_ _%yid119469%_)
        (letrec ((_%context119471%_
                  (lambda (_%e119485%_)
                    (if (##structure-direct-instance-of?
                         _%e119485%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e119485%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks119472%_
                  (lambda (_%e119480%_)
                    (if (symbol? _%e119480%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e119480%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e119480%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e119480%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap119473%_
                  (lambda (_%e119478%_)
                    (if (symbol? _%e119478%_)
                        _%e119478%_
                        (gx#syntax-local-unwrap _%e119478%_)))))
          (let ((_%x119475%_ (_%unwrap119473%_ _%xid119468%_))
                (_%y119476%_ (_%unwrap119473%_ _%yid119469%_)))
            (if (gx#stx-eq? _%x119475%_ _%y119476%_)
                (if (eq? (_%context119471%_ _%x119475%_)
                         (_%context119471%_ _%y119476%_))
                    (equal? (_%marks119472%_ _%x119475%_)
                            (_%marks119472%_ _%y119476%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx119466%_)
        (if (gx#identifier? _%stx119466%_)
            (gx#core-identifier=? _%stx119466%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx119464%_)
        (if (gx#identifier? _%stx119464%_)
            (gx#core-identifier=? _%stx119464%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx119407%_ _%where119408%_)
        (let _%lp119410%_ ((_%rest119412%_ (gx#syntax->list _%stx119407%_)))
          (let* ((_%rest119413119421%_ _%rest119412%_)
                 (_%else119415119429%_ (lambda () '#t))
                 (_%K119417119442%_
                  (lambda (_%rest119432%_ _%hd119433%_)
                    (if (not (gx#identifier? _%hd119433%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where119408%_
                           _%hd119433%_))
                        (if (__find (lambda (_%g119435119437%_)
                                      (gx#bound-identifier=?
                                       _%g119435119437%_
                                       _%hd119433%_))
                                    _%rest119432%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where119408%_
                               _%hd119433%_))
                            (let () (_%lp119410%_ _%rest119432%_)))))))
            (if (##pair? _%rest119413119421%_)
                (let ((_%hd119418119445%_ (##car _%rest119413119421%_))
                      (_%tl119419119447%_ (##cdr _%rest119413119421%_)))
                  (let* ((_%hd119450%_ _%hd119418119445%_)
                         (_%rest119452%_ _%tl119419119447%_))
                    (_%K119417119442%_ _%rest119452%_ _%hd119450%_)))
                (_%else119415119429%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx119457%_)
        (let ((_%where119459%_ _%stx119457%_))
          (gx#check-duplicate-identifiers__% _%stx119457%_ _%where119459%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g122099_
        (let ((_g122098_ (##length _g122099_)))
          (cond ((##fx= _g122098_ 1)
                 (apply (lambda (_%stx119457%_)
                          (gx#check-duplicate-identifiers__0 _%stx119457%_))
                        _g122099_))
                ((##fx= _g122098_ 2)
                 (apply (lambda (_%stx119461%_ _%where119462%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx119461%_
                           _%where119462%_))
                        _g122099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g122099_))))))
    (define gx#core-bind-values?
      (lambda (_%stx119399%_)
        (gx#stx-andmap
         (lambda (_%x119401%_)
           (let ((_%$e119403%_ (gx#identifier? _%x119401%_)))
             (if _%$e119403%_ _%$e119403%_ (gx#stx-false? _%x119401%_))))
         _%stx119399%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx119363%_ _%rebind?119364%_ _%phi119365%_ _%ctx119366%_)
        (gx#stx-for-each1
         (lambda (_%id119368%_)
           (if (gx#identifier? _%id119368%_)
               (gx#core-bind-runtime!__%
                _%id119368%_
                _%rebind?119364%_
                _%phi119365%_
                _%ctx119366%_)
               '#!void))
         _%stx119363%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx119373%_)
        (let* ((_%rebind?119375%_ '#f)
               (_%phi119377%_ (gx#current-expander-phi))
               (_%ctx119379%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119373%_
           _%rebind?119375%_
           _%phi119377%_
           _%ctx119379%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx119381%_ _%rebind?119382%_)
        (let* ((_%phi119384%_ (gx#current-expander-phi))
               (_%ctx119386%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119381%_
           _%rebind?119382%_
           _%phi119384%_
           _%ctx119386%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx119388%_ _%rebind?119389%_ _%phi119390%_)
        (let ((_%ctx119392%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119388%_
           _%rebind?119389%_
           _%phi119390%_
           _%ctx119392%_))))
    (define gx#core-bind-values!
      (lambda _g122101_
        (let ((_g122100_ (##length _g122101_)))
          (cond ((##fx= _g122100_ 1)
                 (apply (lambda (_%stx119373%_)
                          (gx#core-bind-values!__0 _%stx119373%_))
                        _g122101_))
                ((##fx= _g122100_ 2)
                 (apply (lambda (_%stx119381%_ _%rebind?119382%_)
                          (gx#core-bind-values!__1
                           _%stx119381%_
                           _%rebind?119382%_))
                        _g122101_))
                ((##fx= _g122100_ 3)
                 (apply (lambda (_%stx119388%_ _%rebind?119389%_ _%phi119390%_)
                          (gx#core-bind-values!__2
                           _%stx119388%_
                           _%rebind?119389%_
                           _%phi119390%_))
                        _g122101_))
                ((##fx= _g122100_ 4)
                 (apply (lambda (_%stx119394%_
                                 _%rebind?119395%_
                                 _%phi119396%_
                                 _%ctx119397%_)
                          (gx#core-bind-values!__%
                           _%stx119394%_
                           _%rebind?119395%_
                           _%phi119396%_
                           _%ctx119397%_))
                        _g122101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g122101_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx119358%_)
        (gx#stx-map1
         (lambda (_%x119360%_)
           (if (gx#identifier? _%x119360%_)
               (gx#core-quote-syntax__0 _%x119360%_)
               '#f))
         _%stx119358%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx119351%_)
        (if (gx#identifier? _%stx119351%_)
            (let* ((_%bind119353%_ (gx#resolve-identifier__0 _%stx119351%_))
                   (_%$e119355%_ (not _%bind119353%_)))
              (if _%$e119355%_
                  _%$e119355%_
                  (##structure-instance-of?
                   _%bind119353%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id119340%_ _%form119341%_)
        (let ((_%bind119343%_ (gx#resolve-identifier__0 _%id119340%_)))
          (if (##structure-instance-of? _%bind119343%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id119340%_))
              (if (not _%bind119343%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id119340%_)))
                        (gx#core-quote-syntax__0 _%id119340%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form119341%_
                         _%id119340%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form119341%_
                     _%id119340%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id119295%_ _%rebind?119296%_ _%phi119297%_ _%ctx119298%_)
        (let* ((_%key119300%_ (gx#core-identifier-key _%id119295%_))
               (_%eid119302%_
                (gx#make-binding-id__%
                 _%key119300%_
                 '#f
                 _%phi119297%_
                 _%ctx119298%_))
               (_%bind119308%_
                (if (##structure-instance-of?
                     _%ctx119298%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119302%_
                       _%key119300%_
                       _%phi119297%_
                       _%ctx119298%_))
                    (if (##structure-instance-of?
                         _%ctx119298%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119302%_
                           _%key119300%_
                           _%phi119297%_))
                        (if (##structure-instance-of?
                             _%ctx119298%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid119302%_
                               _%key119300%_
                               _%phi119297%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid119302%_
                               _%key119300%_
                               _%phi119297%_)))))))
          (gx#bind-identifier!__%
           _%id119295%_
           _%bind119308%_
           _%rebind?119296%_
           _%phi119297%_
           _%ctx119298%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id119314%_)
        (let* ((_%rebind?119316%_ '#f)
               (_%phi119318%_ (gx#current-expander-phi))
               (_%ctx119320%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119314%_
           _%rebind?119316%_
           _%phi119318%_
           _%ctx119320%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id119322%_ _%rebind?119323%_)
        (let* ((_%phi119325%_ (gx#current-expander-phi))
               (_%ctx119327%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119322%_
           _%rebind?119323%_
           _%phi119325%_
           _%ctx119327%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id119329%_ _%rebind?119330%_ _%phi119331%_)
        (let ((_%ctx119333%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119329%_
           _%rebind?119330%_
           _%phi119331%_
           _%ctx119333%_))))
    (define gx#core-bind-runtime!
      (lambda _g122103_
        (let ((_g122102_ (##length _g122103_)))
          (cond ((##fx= _g122102_ 1)
                 (apply (lambda (_%id119314%_)
                          (gx#core-bind-runtime!__0 _%id119314%_))
                        _g122103_))
                ((##fx= _g122102_ 2)
                 (apply (lambda (_%id119322%_ _%rebind?119323%_)
                          (gx#core-bind-runtime!__1
                           _%id119322%_
                           _%rebind?119323%_))
                        _g122103_))
                ((##fx= _g122102_ 3)
                 (apply (lambda (_%id119329%_ _%rebind?119330%_ _%phi119331%_)
                          (gx#core-bind-runtime!__2
                           _%id119329%_
                           _%rebind?119330%_
                           _%phi119331%_))
                        _g122103_))
                ((##fx= _g122102_ 4)
                 (apply (lambda (_%id119335%_
                                 _%rebind?119336%_
                                 _%phi119337%_
                                 _%ctx119338%_)
                          (gx#core-bind-runtime!__%
                           _%id119335%_
                           _%rebind?119336%_
                           _%phi119337%_
                           _%ctx119338%_))
                        _g122103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g122103_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id119247%_
               _%eid119248%_
               _%rebind?119249%_
               _%phi119250%_
               _%ctx119251%_)
        (let* ((_%key119253%_ (gx#core-identifier-key _%id119247%_))
               (_%bind119258%_
                (if (##structure-instance-of?
                     _%ctx119251%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119248%_
                       _%key119253%_
                       _%phi119250%_
                       _%ctx119251%_))
                    (if (##structure-instance-of?
                         _%ctx119251%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119248%_
                           _%key119253%_
                           _%phi119250%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid119248%_
                           _%key119253%_
                           _%phi119250%_))))))
          (gx#bind-identifier!__%
           _%id119247%_
           _%bind119258%_
           _%rebind?119249%_
           _%phi119250%_
           _%ctx119251%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id119264%_ _%eid119265%_)
        (let* ((_%rebind?119267%_ '#f)
               (_%phi119269%_ (gx#current-expander-phi))
               (_%ctx119271%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119264%_
           _%eid119265%_
           _%rebind?119267%_
           _%phi119269%_
           _%ctx119271%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id119273%_ _%eid119274%_ _%rebind?119275%_)
        (let* ((_%phi119277%_ (gx#current-expander-phi))
               (_%ctx119279%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119273%_
           _%eid119274%_
           _%rebind?119275%_
           _%phi119277%_
           _%ctx119279%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id119281%_ _%eid119282%_ _%rebind?119283%_ _%phi119284%_)
        (let ((_%ctx119286%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119281%_
           _%eid119282%_
           _%rebind?119283%_
           _%phi119284%_
           _%ctx119286%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g122105_
        (let ((_g122104_ (##length _g122105_)))
          (cond ((##fx= _g122104_ 2)
                 (apply (lambda (_%id119264%_ _%eid119265%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id119264%_
                           _%eid119265%_))
                        _g122105_))
                ((##fx= _g122104_ 3)
                 (apply (lambda (_%id119273%_ _%eid119274%_ _%rebind?119275%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id119273%_
                           _%eid119274%_
                           _%rebind?119275%_))
                        _g122105_))
                ((##fx= _g122104_ 4)
                 (apply (lambda (_%id119281%_
                                 _%eid119282%_
                                 _%rebind?119283%_
                                 _%phi119284%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id119281%_
                           _%eid119282%_
                           _%rebind?119283%_
                           _%phi119284%_))
                        _g122105_))
                ((##fx= _g122104_ 5)
                 (apply (lambda (_%id119288%_
                                 _%eid119289%_
                                 _%rebind?119290%_
                                 _%phi119291%_
                                 _%ctx119292%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id119288%_
                           _%eid119289%_
                           _%rebind?119290%_
                           _%phi119291%_
                           _%ctx119292%_))
                        _g122105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g122105_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id119207%_
               _%eid119208%_
               _%rebind?119209%_
               _%phi119210%_
               _%ctx119211%_)
        (gx#bind-identifier!__%
         _%id119207%_
         (##structure
          gx#extern-binding::t
          _%eid119208%_
          (gx#core-identifier-key _%id119207%_)
          _%phi119210%_)
         _%rebind?119209%_
         _%phi119210%_
         _%ctx119211%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id119216%_ _%eid119217%_)
        (let* ((_%rebind?119219%_ '#f)
               (_%phi119221%_ (gx#current-expander-phi))
               (_%ctx119223%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119216%_
           _%eid119217%_
           _%rebind?119219%_
           _%phi119221%_
           _%ctx119223%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id119225%_ _%eid119226%_ _%rebind?119227%_)
        (let* ((_%phi119229%_ (gx#current-expander-phi))
               (_%ctx119231%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119225%_
           _%eid119226%_
           _%rebind?119227%_
           _%phi119229%_
           _%ctx119231%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id119233%_ _%eid119234%_ _%rebind?119235%_ _%phi119236%_)
        (let ((_%ctx119238%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119233%_
           _%eid119234%_
           _%rebind?119235%_
           _%phi119236%_
           _%ctx119238%_))))
    (define gx#core-bind-extern!
      (lambda _g122107_
        (let ((_g122106_ (##length _g122107_)))
          (cond ((##fx= _g122106_ 2)
                 (apply (lambda (_%id119216%_ _%eid119217%_)
                          (gx#core-bind-extern!__0 _%id119216%_ _%eid119217%_))
                        _g122107_))
                ((##fx= _g122106_ 3)
                 (apply (lambda (_%id119225%_ _%eid119226%_ _%rebind?119227%_)
                          (gx#core-bind-extern!__1
                           _%id119225%_
                           _%eid119226%_
                           _%rebind?119227%_))
                        _g122107_))
                ((##fx= _g122106_ 4)
                 (apply (lambda (_%id119233%_
                                 _%eid119234%_
                                 _%rebind?119235%_
                                 _%phi119236%_)
                          (gx#core-bind-extern!__2
                           _%id119233%_
                           _%eid119234%_
                           _%rebind?119235%_
                           _%phi119236%_))
                        _g122107_))
                ((##fx= _g122106_ 5)
                 (apply (lambda (_%id119240%_
                                 _%eid119241%_
                                 _%rebind?119242%_
                                 _%phi119243%_
                                 _%ctx119244%_)
                          (gx#core-bind-extern!__%
                           _%id119240%_
                           _%eid119241%_
                           _%rebind?119242%_
                           _%phi119243%_
                           _%ctx119244%_))
                        _g122107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g122107_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id119161%_
               _%e119162%_
               _%rebind?119163%_
               _%phi119164%_
               _%ctx119165%_)
        (gx#bind-identifier!__%
         _%id119161%_
         (let ((_%key119170%_ (gx#core-identifier-key _%id119161%_))
               (_%e119171%_
                (if (or (##structure-instance-of? _%e119162%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e119162%_
                         'gx#expander-context::t))
                    _%e119162%_
                    (##structure
                     gx#user-expander::t
                     _%e119162%_
                     _%ctx119165%_
                     _%phi119164%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key119170%_
             '#t
             _%phi119164%_
             _%ctx119165%_)
            _%key119170%_
            _%phi119164%_
            _%e119171%_))
         _%rebind?119163%_
         _%phi119164%_
         _%ctx119165%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id119176%_ _%e119177%_)
        (let* ((_%rebind?119179%_ '#f)
               (_%phi119181%_ (gx#current-expander-phi))
               (_%ctx119183%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119176%_
           _%e119177%_
           _%rebind?119179%_
           _%phi119181%_
           _%ctx119183%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id119185%_ _%e119186%_ _%rebind?119187%_)
        (let* ((_%phi119189%_ (gx#current-expander-phi))
               (_%ctx119191%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119185%_
           _%e119186%_
           _%rebind?119187%_
           _%phi119189%_
           _%ctx119191%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id119193%_ _%e119194%_ _%rebind?119195%_ _%phi119196%_)
        (let ((_%ctx119198%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119193%_
           _%e119194%_
           _%rebind?119195%_
           _%phi119196%_
           _%ctx119198%_))))
    (define gx#core-bind-syntax!
      (lambda _g122109_
        (let ((_g122108_ (##length _g122109_)))
          (cond ((##fx= _g122108_ 2)
                 (apply (lambda (_%id119176%_ _%e119177%_)
                          (gx#core-bind-syntax!__0 _%id119176%_ _%e119177%_))
                        _g122109_))
                ((##fx= _g122108_ 3)
                 (apply (lambda (_%id119185%_ _%e119186%_ _%rebind?119187%_)
                          (gx#core-bind-syntax!__1
                           _%id119185%_
                           _%e119186%_
                           _%rebind?119187%_))
                        _g122109_))
                ((##fx= _g122108_ 4)
                 (apply (lambda (_%id119193%_
                                 _%e119194%_
                                 _%rebind?119195%_
                                 _%phi119196%_)
                          (gx#core-bind-syntax!__2
                           _%id119193%_
                           _%e119194%_
                           _%rebind?119195%_
                           _%phi119196%_))
                        _g122109_))
                ((##fx= _g122108_ 5)
                 (apply (lambda (_%id119200%_
                                 _%e119201%_
                                 _%rebind?119202%_
                                 _%phi119203%_
                                 _%ctx119204%_)
                          (gx#core-bind-syntax!__%
                           _%id119200%_
                           _%e119201%_
                           _%rebind?119202%_
                           _%phi119203%_
                           _%ctx119204%_))
                        _g122109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g122109_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id119144%_ _%e119145%_ _%rebind?119146%_)
        (gx#core-bind-syntax!__%
         _%id119144%_
         _%e119145%_
         _%rebind?119146%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id119151%_ _%e119152%_)
        (let ((_%rebind?119154%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id119151%_
           _%e119152%_
           _%rebind?119154%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g122111_
        (let ((_g122110_ (##length _g122111_)))
          (cond ((##fx= _g122110_ 2)
                 (apply (lambda (_%id119151%_ _%e119152%_)
                          (gx#core-bind-root-syntax!__0
                           _%id119151%_
                           _%e119152%_))
                        _g122111_))
                ((##fx= _g122110_ 3)
                 (apply (lambda (_%id119156%_ _%e119157%_ _%rebind?119158%_)
                          (gx#core-bind-root-syntax!__%
                           _%id119156%_
                           _%e119157%_
                           _%rebind?119158%_))
                        _g122111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g122111_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id119102%_
               _%alias-id119103%_
               _%rebind?119104%_
               _%phi119105%_
               _%ctx119106%_)
        (gx#bind-identifier!__%
         _%id119102%_
         (let ((_%key119108%_ (gx#core-identifier-key _%id119102%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key119108%_
             '#t
             _%phi119105%_
             _%ctx119106%_)
            _%key119108%_
            _%phi119105%_
            _%alias-id119103%_))
         _%rebind?119104%_
         _%phi119105%_
         _%ctx119106%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id119113%_ _%alias-id119114%_)
        (let* ((_%rebind?119116%_ '#f)
               (_%phi119118%_ (gx#current-expander-phi))
               (_%ctx119120%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119113%_
           _%alias-id119114%_
           _%rebind?119116%_
           _%phi119118%_
           _%ctx119120%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id119122%_ _%alias-id119123%_ _%rebind?119124%_)
        (let* ((_%phi119126%_ (gx#current-expander-phi))
               (_%ctx119128%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119122%_
           _%alias-id119123%_
           _%rebind?119124%_
           _%phi119126%_
           _%ctx119128%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id119130%_ _%alias-id119131%_ _%rebind?119132%_ _%phi119133%_)
        (let ((_%ctx119135%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119130%_
           _%alias-id119131%_
           _%rebind?119132%_
           _%phi119133%_
           _%ctx119135%_))))
    (define gx#core-bind-alias!
      (lambda _g122113_
        (let ((_g122112_ (##length _g122113_)))
          (cond ((##fx= _g122112_ 2)
                 (apply (lambda (_%id119113%_ _%alias-id119114%_)
                          (gx#core-bind-alias!__0
                           _%id119113%_
                           _%alias-id119114%_))
                        _g122113_))
                ((##fx= _g122112_ 3)
                 (apply (lambda (_%id119122%_
                                 _%alias-id119123%_
                                 _%rebind?119124%_)
                          (gx#core-bind-alias!__1
                           _%id119122%_
                           _%alias-id119123%_
                           _%rebind?119124%_))
                        _g122113_))
                ((##fx= _g122112_ 4)
                 (apply (lambda (_%id119130%_
                                 _%alias-id119131%_
                                 _%rebind?119132%_
                                 _%phi119133%_)
                          (gx#core-bind-alias!__2
                           _%id119130%_
                           _%alias-id119131%_
                           _%rebind?119132%_
                           _%phi119133%_))
                        _g122113_))
                ((##fx= _g122112_ 5)
                 (apply (lambda (_%id119137%_
                                 _%alias-id119138%_
                                 _%rebind?119139%_
                                 _%phi119140%_
                                 _%ctx119141%_)
                          (gx#core-bind-alias!__%
                           _%id119137%_
                           _%alias-id119138%_
                           _%rebind?119139%_
                           _%phi119140%_
                           _%ctx119141%_))
                        _g122113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g122113_))))))
    (define gx#make-binding-id__%
      (lambda (_%key119052%_ _%syntax?119053%_ _%phi119054%_ _%ctx119055%_)
        (if (uninterned-symbol? _%key119052%_)
            (let () (##gensym 'L))
            (if (pair? _%key119052%_)
                (let () (gensym (car _%key119052%_)))
                (if (##structure-instance-of? _%ctx119055%_ 'gx#top-context::t)
                    (let ((_%ns119060%_
                           (gx#core-context-namespace__% _%ctx119055%_)))
                      (if (and (fxzero? _%phi119054%_) (not _%syntax?119053%_))
                          (let ()
                            (if _%ns119060%_
                                (make-symbol__1
                                 _%ns119060%_
                                 '"#"
                                 _%key119052%_)
                                _%key119052%_))
                          (if _%syntax?119053%_
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119064%_ _%ns119060%_))
                                   (if _%$e119064%_ _%$e119064%_ '""))
                                 '"[:"
                                 (number->string _%phi119054%_)
                                 '":]#"
                                 _%key119052%_))
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119068%_ _%ns119060%_))
                                   (if _%$e119068%_ _%$e119068%_ '""))
                                 '"["
                                 (number->string _%phi119054%_)
                                 '"]#"
                                 _%key119052%_)))))
                    (let () (gensym _%key119052%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key119075%_)
        (let* ((_%syntax?119077%_ '#f)
               (_%phi119079%_ (gx#current-expander-phi))
               (_%ctx119081%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119075%_
           _%syntax?119077%_
           _%phi119079%_
           _%ctx119081%_))))
    (define gx#make-binding-id__1
      (lambda (_%key119083%_ _%syntax?119084%_)
        (let* ((_%phi119086%_ (gx#current-expander-phi))
               (_%ctx119088%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119083%_
           _%syntax?119084%_
           _%phi119086%_
           _%ctx119088%_))))
    (define gx#make-binding-id__2
      (lambda (_%key119090%_ _%syntax?119091%_ _%phi119092%_)
        (let ((_%ctx119094%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119090%_
           _%syntax?119091%_
           _%phi119092%_
           _%ctx119094%_))))
    (define gx#make-binding-id
      (lambda _g122115_
        (let ((_g122114_ (##length _g122115_)))
          (cond ((##fx= _g122114_ 1)
                 (apply (lambda (_%key119075%_)
                          (gx#make-binding-id__0 _%key119075%_))
                        _g122115_))
                ((##fx= _g122114_ 2)
                 (apply (lambda (_%key119083%_ _%syntax?119084%_)
                          (gx#make-binding-id__1
                           _%key119083%_
                           _%syntax?119084%_))
                        _g122115_))
                ((##fx= _g122114_ 3)
                 (apply (lambda (_%key119090%_ _%syntax?119091%_ _%phi119092%_)
                          (gx#make-binding-id__2
                           _%key119090%_
                           _%syntax?119091%_
                           _%phi119092%_))
                        _g122115_))
                ((##fx= _g122114_ 4)
                 (apply (lambda (_%key119096%_
                                 _%syntax?119097%_
                                 _%phi119098%_
                                 _%ctx119099%_)
                          (gx#make-binding-id__%
                           _%key119096%_
                           _%syntax?119097%_
                           _%phi119098%_
                           _%ctx119099%_))
                        _g122115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g122115_))))))))
