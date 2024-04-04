(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712246555)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx122126%_)
        (letrec ((_%expand-special122128%_
                  (lambda (_%hd122130%_ _%K122131%_ _%rest122132%_ _%r122133%_)
                    (_%K122131%_
                     _%rest122132%_
                     (cons (gx#core-expand-top _%hd122130%_) _%r122133%_)))))
          (gx#core-expand-block__0 _%stx122126%_ _%expand-special122128%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121879%_)
        (letrec ((_%expand-special121881%_
                  (lambda (_%hd122001%_ _%K122002%_ _%rest122003%_ _%r122004%_)
                    (let* ((_%K122008%_
                            (lambda (_%e122006%_)
                              (_%K122002%_
                               _%rest122003%_
                               (cons _%e122006%_ _%r122004%_))))
                           (_%e122009122038%_ _%hd122001%_)
                           (_%E122033122042%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e122009122038%_)))
                           (_%E122029122054%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122009122038%_)
                                  (let ((_%e122034122046%_
                                         (gx#syntax-e _%e122009122038%_)))
                                    (let ((_%hd122035122049%_
                                           (##car _%e122034122046%_))
                                          (_%tl122036122051%_
                                           (##cdr _%e122034122046%_)))
                                      (if (and (gx#identifier?
                                                _%hd122035122049%_)
                                               (gx#core-identifier=?
                                                _%hd122035122049%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K122008%_
                                               (gx#core-expand-define-runtime%
                                                _%hd122001%_))
                                              (_%E122033122042%_))
                                          (_%E122033122042%_))))
                                  (_%E122033122042%_))))
                           (_%E122025122066%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122009122038%_)
                                  (let ((_%e122030122058%_
                                         (gx#syntax-e _%e122009122038%_)))
                                    (let ((_%hd122031122061%_
                                           (##car _%e122030122058%_))
                                          (_%tl122032122063%_
                                           (##cdr _%e122030122058%_)))
                                      (if (and (gx#identifier?
                                                _%hd122031122061%_)
                                               (gx#core-identifier=?
                                                _%hd122031122061%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K122008%_
                                               (gx#core-expand-define-alias%
                                                _%hd122001%_))
                                              (_%E122029122054%_))
                                          (_%E122029122054%_))))
                                  (_%E122029122054%_))))
                           (_%E122015122078%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122009122038%_)
                                  (let ((_%e122026122070%_
                                         (gx#syntax-e _%e122009122038%_)))
                                    (let ((_%hd122027122073%_
                                           (##car _%e122026122070%_))
                                          (_%tl122028122075%_
                                           (##cdr _%e122026122070%_)))
                                      (if (and (gx#identifier?
                                                _%hd122027122073%_)
                                               (gx#core-identifier=?
                                                _%hd122027122073%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K122008%_
                                               (gx#core-expand-define-syntax%
                                                _%hd122001%_))
                                              (_%E122025122066%_))
                                          (_%E122025122066%_))))
                                  (_%E122025122066%_))))
                           (_%E122011122110%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122009122038%_)
                                  (let ((_%e122016122082%_
                                         (gx#syntax-e _%e122009122038%_)))
                                    (let ((_%hd122017122085%_
                                           (##car _%e122016122082%_))
                                          (_%tl122018122087%_
                                           (##cdr _%e122016122082%_)))
                                      (if (and (gx#identifier?
                                                _%hd122017122085%_)
                                               (gx#core-identifier=?
                                                _%hd122017122085%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122018122087%_)
                                              (let ((_%e122019122090%_
                                                     (gx#syntax-e
                                                      _%tl122018122087%_)))
                                                (let ((_%hd122020122093%_
                                                       (##car _%e122019122090%_))
                                                      (_%tl122021122095%_
                                                       (##cdr _%e122019122090%_)))
                                                  (let ((_%hd-bind122098%_
                                                         _%hd122020122093%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122021122095%_)
                                                        (let ((_%e122022122100%_
                                                               (gx#syntax-e
                                                                _%tl122021122095%_)))
                                                          (let ((_%hd122023122103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122022122100%_))
                        (_%tl122024122105%_ (##cdr _%e122022122100%_)))
                    (let ((_%expr122108%_ _%hd122023122103%_))
                      (if (gx#stx-null? _%tl122024122105%_)
                          (if (gx#core-bind-values? _%hd-bind122098%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122098%_)
                                (_%K122008%_ _%hd122001%_))
                              (_%E122015122078%_))
                          (_%E122015122078%_)))))
                (_%E122015122078%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E122015122078%_))
                                          (_%E122015122078%_))))
                                  (_%E122015122078%_))))
                           (_%E122010122122%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122009122038%_)
                                  (let ((_%e122012122114%_
                                         (gx#syntax-e _%e122009122038%_)))
                                    (let ((_%hd122013122117%_
                                           (##car _%e122012122114%_))
                                          (_%tl122014122119%_
                                           (##cdr _%e122012122114%_)))
                                      (if (and (gx#identifier?
                                                _%hd122013122117%_)
                                               (gx#core-identifier=?
                                                _%hd122013122117%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K122008%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd122001%_))
                                              (_%E122011122110%_))
                                          (_%E122011122110%_))))
                                  (_%E122011122110%_)))))
                      (_%E122010122122%_))))
                 (_%eval-body121882%_
                  (lambda (_%rbody121890%_)
                    (let _%lp121892%_ ((_%rest121894%_ _%rbody121890%_)
                                       (_%body121895%_ '())
                                       (_%ebody121896%_ '()))
                      (let* ((_%rest121897121905%_ _%rest121894%_)
                             (_%else121899121913%_
                              (lambda ()
                                (values _%body121895%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121896%_)
                                          (gx#stx-source _%stx121879%_))))))
                             (_%K121901121989%_
                              (lambda (_%rest121916%_ _%hd121917%_)
                                (let* ((_%e121918121935%_ _%hd121917%_)
                                       (_%E121930121939%_
                                        (lambda ()
                                          (_%lp121892%_
                                           _%rest121916%_
                                           (cons _%hd121917%_ _%body121895%_)
                                           (cons _%hd121917%_
                                                 _%ebody121896%_))))
                                       (_%E121920121951%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121918121935%_)
                                              (let ((_%e121931121943%_
                                                     (gx#syntax-e
                                                      _%e121918121935%_)))
                                                (let ((_%hd121932121946%_
                                                       (##car _%e121931121943%_))
                                                      (_%tl121933121948%_
                                                       (##cdr _%e121931121943%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121932121946%_)
                                                           (gx#core-identifier=?
                                                            _%hd121932121946%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121892%_
                                                           _%rest121916%_
                                                           (cons _%hd121917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121895%_)
                   _%ebody121896%_)
                  (_%E121930121939%_))
              (_%E121930121939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121930121939%_))))
                                       (_%E121919121985%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121918121935%_)
                                              (let ((_%e121921121955%_
                                                     (gx#syntax-e
                                                      _%e121918121935%_)))
                                                (let ((_%hd121922121958%_
                                                       (##car _%e121921121955%_))
                                                      (_%tl121923121960%_
                                                       (##cdr _%e121921121955%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121922121958%_)
                                                           (gx#core-identifier=?
                                                            _%hd121922121958%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121923121960%_)
                                                          (let ((_%e121924121963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121923121960%_)))
                    (let ((_%hd121925121966%_ (##car _%e121924121963%_))
                          (_%tl121926121968%_ (##cdr _%e121924121963%_)))
                      (let ((_%hd-bind121971%_ _%hd121925121966%_))
                        (if (gx#stx-pair? _%tl121926121968%_)
                            (let ((_%e121927121973%_
                                   (gx#syntax-e _%tl121926121968%_)))
                              (let ((_%hd121928121976%_
                                     (##car _%e121927121973%_))
                                    (_%tl121929121978%_
                                     (##cdr _%e121927121973%_)))
                                (let ((_%expr121981%_ _%hd121928121976%_))
                                  (if (gx#stx-null? _%tl121929121978%_)
                                      (if '#t
                                          (let ((_%ehd121983%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121971%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121981%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121917%_))))
                                            (_%lp121892%_
                                             _%rest121916%_
                                             (cons _%ehd121983%_
                                                   _%body121895%_)
                                             (cons _%ehd121983%_
                                                   _%ebody121896%_)))
                                          (_%E121920121951%_))
                                      (_%E121920121951%_)))))
                            (_%E121920121951%_)))))
                  (_%E121920121951%_))
              (_%E121920121951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121920121951%_)))))
                                  (_%E121919121985%_)))))
                        (if (##pair? _%rest121897121905%_)
                            (let ((_%hd121902121992%_
                                   (##car _%rest121897121905%_))
                                  (_%tl121903121994%_
                                   (##cdr _%rest121897121905%_)))
                              (let* ((_%hd121997%_ _%hd121902121992%_)
                                     (_%rest121999%_ _%tl121903121994%_))
                                (_%K121901121989%_
                                 _%rest121999%_
                                 _%hd121997%_)))
                            (_%else121899121913%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121885%_
                     (gx#core-expand-block__1
                      _%stx121879%_
                      _%expand-special121881%_
                      '#f))
                    (_g122149_ (_%eval-body121882%_ _%rbody121885%_)))
               (begin
                 (let ((_g122150_
                        (if (##values? _g122149_)
                            (##vector-length _g122149_)
                            1)))
                   (if (not (##fx= _g122150_ 2))
                       (error "Context expects 2 values" _g122150_)))
                 (let ((_%expanded-body121887%_ (##vector-ref _g122149_ 0))
                       (_%value121888%_ (##vector-ref _g122149_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121887%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121888%_ '())))
                    (gx#stx-source _%stx121879%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121849%_)
        (let* ((_%e121850121857%_ _%stx121849%_)
               (_%E121852121861%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121850121857%_)))
               (_%E121851121875%_
                (lambda ()
                  (if (gx#stx-pair? _%e121850121857%_)
                      (let ((_%e121853121865%_
                             (gx#syntax-e _%e121850121857%_)))
                        (let ((_%hd121854121868%_ (##car _%e121853121865%_))
                              (_%tl121855121870%_ (##cdr _%e121853121865%_)))
                          (let ((_%body121873%_ _%tl121855121870%_))
                            (if (gx#stx-list? _%body121873%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121873%_)
                                 (gx#stx-source _%stx121849%_))
                                (_%E121852121861%_)))))
                      (_%E121852121861%_)))))
          (_%E121851121875%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121847%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121847%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121793%_)
        (let* ((_%e121794121807%_ _%stx121793%_)
               (_%E121796121811%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121794121807%_)))
               (_%E121795121843%_
                (lambda ()
                  (if (gx#stx-pair? _%e121794121807%_)
                      (let ((_%e121797121815%_
                             (gx#syntax-e _%e121794121807%_)))
                        (let ((_%hd121798121818%_ (##car _%e121797121815%_))
                              (_%tl121799121820%_ (##cdr _%e121797121815%_)))
                          (if (gx#stx-pair? _%tl121799121820%_)
                              (let ((_%e121800121823%_
                                     (gx#syntax-e _%tl121799121820%_)))
                                (let ((_%hd121801121826%_
                                       (##car _%e121800121823%_))
                                      (_%tl121802121828%_
                                       (##cdr _%e121800121823%_)))
                                  (let ((_%ann121831%_ _%hd121801121826%_))
                                    (if (gx#stx-pair? _%tl121802121828%_)
                                        (let ((_%e121803121833%_
                                               (gx#syntax-e
                                                _%tl121802121828%_)))
                                          (let ((_%hd121804121836%_
                                                 (##car _%e121803121833%_))
                                                (_%tl121805121838%_
                                                 (##cdr _%e121803121833%_)))
                                            (let ((_%expr121841%_
                                                   _%hd121804121836%_))
                                              (if (gx#stx-null?
                                                   _%tl121805121838%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121841%_)
                                 '())))
               (gx#stx-source _%stx121793%_))
              (_%E121796121811%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121796121811%_)))))
                                        (_%E121796121811%_)))))
                              (_%E121796121811%_))))
                      (_%E121796121811%_)))))
          (_%E121795121843%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx121517%_ _%body121518%_)
        (letrec ((_%expand-special121520%_
                  (lambda (_%hd121788%_ _%K121789%_ _%rest121790%_ _%r121791%_)
                    (_%K121789%_
                     '()
                     (cons (_%expand-internal121521%_
                            _%hd121788%_
                            _%rest121790%_)
                           _%r121791%_))))
                 (_%expand-internal121521%_
                  (lambda (_%hd121784%_ _%rest121785%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal121523%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121784%_ _%rest121785%_))
                          (gx#stx-source _%stx121517%_))
                         _%expand-internal-special121522%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj122143
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj122143)
                       __obj122143))))
                 (_%expand-internal-special121522%_
                  (lambda (_%hd121679%_ _%K121680%_ _%rest121681%_ _%r121682%_)
                    (let* ((_%e121683121708%_ _%hd121679%_)
                           (_%E121703121712%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121683121708%_)))
                           (_%E121699121724%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121683121708%_)
                                  (let ((_%e121704121716%_
                                         (gx#syntax-e _%e121683121708%_)))
                                    (let ((_%hd121705121719%_
                                           (##car _%e121704121716%_))
                                          (_%tl121706121721%_
                                           (##cdr _%e121704121716%_)))
                                      (if (and (gx#identifier?
                                                _%hd121705121719%_)
                                               (gx#core-identifier=?
                                                _%hd121705121719%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121680%_
                                               _%rest121681%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121679%_)
                                                     _%r121682%_))
                                              (_%E121703121712%_))
                                          (_%E121703121712%_))))
                                  (_%E121703121712%_))))
                           (_%E121695121736%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121683121708%_)
                                  (let ((_%e121700121728%_
                                         (gx#syntax-e _%e121683121708%_)))
                                    (let ((_%hd121701121731%_
                                           (##car _%e121700121728%_))
                                          (_%tl121702121733%_
                                           (##cdr _%e121700121728%_)))
                                      (if (and (gx#identifier?
                                                _%hd121701121731%_)
                                               (gx#core-identifier=?
                                                _%hd121701121731%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121679%_)
                                                (_%K121680%_
                                                 _%rest121681%_
                                                 _%r121682%_))
                                              (_%E121699121724%_))
                                          (_%E121699121724%_))))
                                  (_%E121699121724%_))))
                           (_%E121685121748%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121683121708%_)
                                  (let ((_%e121696121740%_
                                         (gx#syntax-e _%e121683121708%_)))
                                    (let ((_%hd121697121743%_
                                           (##car _%e121696121740%_))
                                          (_%tl121698121745%_
                                           (##cdr _%e121696121740%_)))
                                      (if (and (gx#identifier?
                                                _%hd121697121743%_)
                                               (gx#core-identifier=?
                                                _%hd121697121743%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121679%_)
                                                (_%K121680%_
                                                 _%rest121681%_
                                                 _%r121682%_))
                                              (_%E121695121736%_))
                                          (_%E121695121736%_))))
                                  (_%E121695121736%_))))
                           (_%E121684121780%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121683121708%_)
                                  (let ((_%e121686121752%_
                                         (gx#syntax-e _%e121683121708%_)))
                                    (let ((_%hd121687121755%_
                                           (##car _%e121686121752%_))
                                          (_%tl121688121757%_
                                           (##cdr _%e121686121752%_)))
                                      (if (and (gx#identifier?
                                                _%hd121687121755%_)
                                               (gx#core-identifier=?
                                                _%hd121687121755%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121688121757%_)
                                              (let ((_%e121689121760%_
                                                     (gx#syntax-e
                                                      _%tl121688121757%_)))
                                                (let ((_%hd121690121763%_
                                                       (##car _%e121689121760%_))
                                                      (_%tl121691121765%_
                                                       (##cdr _%e121689121760%_)))
                                                  (let ((_%hd-bind121768%_
                                                         _%hd121690121763%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121691121765%_)
                                                        (let ((_%e121692121770%_
                                                               (gx#syntax-e
                                                                _%tl121691121765%_)))
                                                          (let ((_%hd121693121773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121692121770%_))
                        (_%tl121694121775%_ (##cdr _%e121692121770%_)))
                    (let ((_%expr121778%_ _%hd121693121773%_))
                      (if (gx#stx-null? _%tl121694121775%_)
                          (if (gx#core-bind-values? _%hd-bind121768%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121768%_)
                                (_%K121680%_
                                 _%rest121681%_
                                 (cons _%hd121679%_ _%r121682%_)))
                              (_%E121685121748%_))
                          (_%E121685121748%_)))))
                (_%E121685121748%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121685121748%_))
                                          (_%E121685121748%_))))
                                  (_%E121685121748%_)))))
                      (_%E121684121780%_))))
                 (_%wrap-internal121523%_
                  (lambda (_%rbody121525%_)
                    (let _%lp121527%_ ((_%rest121529%_ _%rbody121525%_)
                                       (_%decls121530%_ '())
                                       (_%bind121531%_ '())
                                       (_%body121532%_ '()))
                      (let* ((_%e121533121540%_ _%rest121529%_)
                             (_%E121535121589%_
                              (lambda ()
                                (let* ((_%body121584%_
                                        (let* ((_%body121543121553%_
                                                _%body121532%_)
                                               (_%else121546121561%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body121532%_)
                                                   (gx#stx-source
                                                    _%stx121517%_)))))
                                          (let ((_%K121551121581%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx121517%_)))
                                                (_%K121548121567%_
                                                 (lambda (_%expr121565%_)
                                                   _%expr121565%_)))
                                            (let ((_%try-match121545121577%_
                                                   (lambda ()
                                                     (if (##pair? _%body121543121553%_)
                                                         (let ((_%tl121550121572%_
                                                                (##cdr _%body121543121553%_))
                                                               (_%hd121549121570%_
                                                                (##car _%body121543121553%_)))
                                                           (if (##null? _%tl121550121572%_)
                                                               (let ((_%expr121575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121549121570%_))
                         (_%K121548121567%_ _%expr121575%_))
                       (_%else121546121561%_)))
                 (_%else121546121561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body121543121553%_)
                                                  (_%K121551121581%_)
                                                  (_%try-match121545121577%_))))))
                                       (_%body121586%_
                                        (if (null? _%bind121531%_)
                                            _%body121584%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind121531%_
                                                         (cons _%body121584%_
                                                               '())))
                                             (gx#stx-source _%stx121517%_)))))
                                  (if (null? _%decls121530%_)
                                      _%body121586%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls121530%_
                                                   (cons _%body121586%_ '())))
                                       (gx#stx-source _%stx121517%_))))))
                             (_%E121534121675%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121533121540%_)
                                    (let ((_%e121536121593%_
                                           (gx#syntax-e _%e121533121540%_)))
                                      (let ((_%hd121537121596%_
                                             (##car _%e121536121593%_))
                                            (_%tl121538121598%_
                                             (##cdr _%e121536121593%_)))
                                        (let* ((_%hd121601%_
                                                _%hd121537121596%_)
                                               (_%rest121603%_
                                                _%tl121538121598%_))
                                          (if '#t
                                              (let* ((_%e121604121621%_
                                                      _%hd121601%_)
                                                     (_%E121616121625%_
                                                      (lambda ()
                                                        (if (null? _%bind121531%_)
                                                            (_%lp121527%_
                                                             _%rest121603%_
                                                             _%decls121530%_
                                                             _%bind121531%_
                                                             (cons _%hd121601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body121532%_))
                    (_%lp121527%_
                     _%rest121603%_
                     _%decls121530%_
                     (cons (cons '#f (cons _%hd121601%_ '())) _%bind121531%_)
                     _%body121532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121606121639%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121604121621%_)
                                                            (let ((_%e121617121629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121604121621%_)))
                      (let ((_%hd121618121632%_ (##car _%e121617121629%_))
                            (_%tl121619121634%_ (##cdr _%e121617121629%_)))
                        (if (and (gx#identifier? _%hd121618121632%_)
                                 (gx#core-identifier=?
                                  _%hd121618121632%_
                                  '%#declare))
                            (let ((_%xdecls121637%_ _%tl121619121634%_))
                              (if '#t
                                  (_%lp121527%_
                                   _%rest121603%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls121530%_
                                    _%xdecls121637%_)
                                   _%bind121531%_
                                   _%body121532%_)
                                  (_%E121616121625%_)))
                            (_%E121616121625%_))))
                    (_%E121616121625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121605121671%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121604121621%_)
                                                            (let ((_%e121607121643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121604121621%_)))
                      (let ((_%hd121608121646%_ (##car _%e121607121643%_))
                            (_%tl121609121648%_ (##cdr _%e121607121643%_)))
                        (if (and (gx#identifier? _%hd121608121646%_)
                                 (gx#core-identifier=?
                                  _%hd121608121646%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121609121648%_)
                                (let ((_%e121610121651%_
                                       (gx#syntax-e _%tl121609121648%_)))
                                  (let ((_%hd121611121654%_
                                         (##car _%e121610121651%_))
                                        (_%tl121612121656%_
                                         (##cdr _%e121610121651%_)))
                                    (let ((_%hd-bind121659%_
                                           _%hd121611121654%_))
                                      (if (gx#stx-pair? _%tl121612121656%_)
                                          (let ((_%e121613121661%_
                                                 (gx#syntax-e
                                                  _%tl121612121656%_)))
                                            (let ((_%hd121614121664%_
                                                   (##car _%e121613121661%_))
                                                  (_%tl121615121666%_
                                                   (##cdr _%e121613121661%_)))
                                              (let ((_%expr121669%_
                                                     _%hd121614121664%_))
                                                (if (gx#stx-null?
                                                     _%tl121615121666%_)
                                                    (if '#t
                                                        (_%lp121527%_
                                                         _%rest121603%_
                                                         _%decls121530%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121659%_)
                             (cons (gx#core-expand-expression _%expr121669%_)
                                   '()))
                       _%bind121531%_)
                 _%body121532%_)
                (_%E121606121639%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121606121639%_)))))
                                          (_%E121606121639%_)))))
                                (_%E121606121639%_))
                            (_%E121606121639%_))))
                    (_%E121606121639%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121605121671%_))
                                              (_%E121535121589%_)))))
                                    (_%E121535121589%_)))))
                        (_%E121534121675%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body121518%_)
            (gx#stx-source _%stx121517%_))
           _%expand-special121520%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx121455%_)
        (let* ((_%e121456121463%_ _%stx121455%_)
               (_%E121458121467%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121456121463%_)))
               (_%E121457121513%_
                (lambda ()
                  (if (gx#stx-pair? _%e121456121463%_)
                      (let ((_%e121459121471%_
                             (gx#syntax-e _%e121456121463%_)))
                        (let ((_%hd121460121474%_ (##car _%e121459121471%_))
                              (_%tl121461121476%_ (##cdr _%e121459121471%_)))
                          (let ((_%body121479%_ _%tl121461121476%_))
                            (if (gx#stx-list? _%body121479%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl121481%_)
                                     (let* ((_%e121482121489%_ _%decl121481%_)
                                            (_%E121484121493%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e121482121489%_)))
                                            (_%E121483121509%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e121482121489%_)
                                                   (let ((_%e121485121497%_
                                                          (gx#syntax-e
                                                           _%e121482121489%_)))
                                                     (let ((_%hd121486121500%_
                                                            (##car _%e121485121497%_))
                                                           (_%tl121487121502%_
                                                            (##cdr _%e121485121497%_)))
                                                       (let* ((_%head121505%_
                                                               _%hd121486121500%_)
                                                              (_%args121507%_
                                                               _%tl121487121502%_))
                                                         (if (gx#stx-list?
                                                              _%args121507%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl121481%_)
                                                             (_%E121484121493%_)))))
                                                   (_%E121484121493%_)))))
                                       (_%E121483121509%_)))
                                   _%body121479%_))
                                 (gx#stx-source _%stx121455%_))
                                (_%E121458121467%_)))))
                      (_%E121458121467%_)))))
          (_%E121457121513%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx121359%_)
        (let* ((_%e121360121367%_ _%stx121359%_)
               (_%E121362121371%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121360121367%_)))
               (_%E121361121451%_
                (lambda ()
                  (if (gx#stx-pair? _%e121360121367%_)
                      (let ((_%e121363121375%_
                             (gx#syntax-e _%e121360121367%_)))
                        (let ((_%hd121364121378%_ (##car _%e121363121375%_))
                              (_%tl121365121380%_ (##cdr _%e121363121375%_)))
                          (let ((_%body121383%_ _%tl121365121380%_))
                            (if '#t
                                (let _%lp121385%_ ((_%rest121387%_
                                                    _%body121383%_)
                                                   (_%r121388%_ '()))
                                  (let* ((_%e121389121403%_ _%rest121387%_)
                                         (_%E121401121407%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx121359%_)))
                                         (_%E121391121411%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e121389121403%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r121388%_))
                                                     (gx#stx-source
                                                      _%stx121359%_))
                                                    (_%E121401121407%_))
                                                (_%E121401121407%_))))
                                         (_%E121390121447%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e121389121403%_)
                                                (let ((_%e121392121415%_
                                                       (gx#syntax-e
                                                        _%e121389121403%_)))
                                                  (let ((_%hd121393121418%_
                                                         (##car _%e121392121415%_))
                                                        (_%tl121394121420%_
                                                         (##cdr _%e121392121415%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd121393121418%_)
                                                        (let ((_%e121395121423%_
                                                               (gx#syntax-e
                                                                _%hd121393121418%_)))
                                                          (let ((_%hd121396121426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121395121423%_))
                        (_%tl121397121428%_ (##cdr _%e121395121423%_)))
                    (let ((_%id121431%_ _%hd121396121426%_))
                      (if (gx#stx-pair? _%tl121397121428%_)
                          (let ((_%e121398121433%_
                                 (gx#syntax-e _%tl121397121428%_)))
                            (let ((_%hd121399121436%_
                                   (##car _%e121398121433%_))
                                  (_%tl121400121438%_
                                   (##cdr _%e121398121433%_)))
                              (let ((_%eid121441%_ _%hd121399121436%_))
                                (if (gx#stx-null? _%tl121400121438%_)
                                    (let ((_%rest121443%_ _%tl121394121420%_))
                                      (if (and (gx#identifier? _%id121431%_)
                                               (gx#identifier? _%eid121441%_))
                                          (let ((_%eid121445%_
                                                 (gx#stx-e _%eid121441%_)))
                                            (gx#core-bind-extern!__0
                                             _%id121431%_
                                             _%eid121445%_)
                                            (_%lp121385%_
                                             _%rest121443%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id121431%_)
                                                         (cons _%eid121445%_
                                                               '()))
                                                   _%r121388%_)))
                                          (_%E121391121411%_)))
                                    (_%E121391121411%_)))))
                          (_%E121391121411%_)))))
                (_%E121391121411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121391121411%_)))))
                                    (_%E121390121447%_)))
                                (_%E121362121371%_)))))
                      (_%E121362121371%_)))))
          (_%E121361121451%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx121305%_)
        (let* ((_%e121306121319%_ _%stx121305%_)
               (_%E121308121323%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121306121319%_)))
               (_%E121307121355%_
                (lambda ()
                  (if (gx#stx-pair? _%e121306121319%_)
                      (let ((_%e121309121327%_
                             (gx#syntax-e _%e121306121319%_)))
                        (let ((_%hd121310121330%_ (##car _%e121309121327%_))
                              (_%tl121311121332%_ (##cdr _%e121309121327%_)))
                          (if (gx#stx-pair? _%tl121311121332%_)
                              (let ((_%e121312121335%_
                                     (gx#syntax-e _%tl121311121332%_)))
                                (let ((_%hd121313121338%_
                                       (##car _%e121312121335%_))
                                      (_%tl121314121340%_
                                       (##cdr _%e121312121335%_)))
                                  (let ((_%hd121343%_ _%hd121313121338%_))
                                    (if (gx#stx-pair? _%tl121314121340%_)
                                        (let ((_%e121315121345%_
                                               (gx#syntax-e
                                                _%tl121314121340%_)))
                                          (let ((_%hd121316121348%_
                                                 (##car _%e121315121345%_))
                                                (_%tl121317121350%_
                                                 (##cdr _%e121315121345%_)))
                                            (let ((_%expr121353%_
                                                   _%hd121316121348%_))
                                              (if (gx#stx-null?
                                                   _%tl121317121350%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd121343%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd121343%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121343%_)
                             (cons (gx#core-expand-expression _%expr121353%_)
                                   '())))
                 (gx#stx-source _%stx121305%_)))
              (_%E121308121323%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121308121323%_)))))
                                        (_%E121308121323%_)))))
                              (_%E121308121323%_))))
                      (_%E121308121323%_)))))
          (_%E121307121355%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx121249%_)
        (let* ((_%e121250121263%_ _%stx121249%_)
               (_%E121252121267%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121250121263%_)))
               (_%E121251121301%_
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
                                  (let ((_%id121287%_ _%hd121257121282%_))
                                    (if (gx#stx-pair? _%tl121258121284%_)
                                        (let ((_%e121259121289%_
                                               (gx#syntax-e
                                                _%tl121258121284%_)))
                                          (let ((_%hd121260121292%_
                                                 (##car _%e121259121289%_))
                                                (_%tl121261121294%_
                                                 (##cdr _%e121259121289%_)))
                                            (let ((_%binding-id121297%_
                                                   _%hd121260121292%_))
                                              (if (gx#stx-null?
                                                   _%tl121261121294%_)
                                                  (if (and (gx#identifier?
                                                            _%id121287%_)
                                                           (gx#identifier?
                                                            _%binding-id121297%_))
                                                      (let ((_%eid121299%_
                                                             (gx#stx-e
                                                              _%binding-id121297%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id121287%_
                                                         _%eid121299%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121287%_)
                             (cons _%eid121299%_ '())))))
              (_%E121252121267%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121252121267%_)))))
                                        (_%E121252121267%_)))))
                              (_%E121252121267%_))))
                      (_%E121252121267%_)))))
          (_%E121251121301%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx121192%_)
        (let* ((_%e121193121206%_ _%stx121192%_)
               (_%E121195121210%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121193121206%_)))
               (_%E121194121245%_
                (lambda ()
                  (if (gx#stx-pair? _%e121193121206%_)
                      (let ((_%e121196121214%_
                             (gx#syntax-e _%e121193121206%_)))
                        (let ((_%hd121197121217%_ (##car _%e121196121214%_))
                              (_%tl121198121219%_ (##cdr _%e121196121214%_)))
                          (if (gx#stx-pair? _%tl121198121219%_)
                              (let ((_%e121199121222%_
                                     (gx#syntax-e _%tl121198121219%_)))
                                (let ((_%hd121200121225%_
                                       (##car _%e121199121222%_))
                                      (_%tl121201121227%_
                                       (##cdr _%e121199121222%_)))
                                  (let ((_%id121230%_ _%hd121200121225%_))
                                    (if (gx#stx-pair? _%tl121201121227%_)
                                        (let ((_%e121202121232%_
                                               (gx#syntax-e
                                                _%tl121201121227%_)))
                                          (let ((_%hd121203121235%_
                                                 (##car _%e121202121232%_))
                                                (_%tl121204121237%_
                                                 (##cdr _%e121202121232%_)))
                                            (let ((_%expr121240%_
                                                   _%hd121203121235%_))
                                              (if (gx#stx-null?
                                                   _%tl121204121237%_)
                                                  (if (gx#identifier?
                                                       _%id121230%_)
                                                      (let ((_g122151_
                                                             (gx#core-expand-expression+1
                                                              _%expr121240%_)))
                                                        (begin
                                                          (let ((_g122152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g122151_)
                             (##vector-length _g122151_)
                             1)))
                    (if (not (##fx= _g122152_ 2))
                        (error "Context expects 2 values" _g122152_)))
                  (let ((_%e-stx121242%_ (##vector-ref _g122151_ 0))
                        (_%e121243%_ (##vector-ref _g122151_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id121230%_ _%e121243%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id121230%_)
                                   (cons _%e-stx121242%_ '())))
                       (gx#stx-source _%stx121192%_))))))
              (_%E121195121210%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121195121210%_)))))
                                        (_%E121195121210%_)))))
                              (_%E121195121210%_))))
                      (_%E121195121210%_)))))
          (_%E121194121245%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx121136%_)
        (let* ((_%e121137121150%_ _%stx121136%_)
               (_%E121139121154%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121137121150%_)))
               (_%E121138121188%_
                (lambda ()
                  (if (gx#stx-pair? _%e121137121150%_)
                      (let ((_%e121140121158%_
                             (gx#syntax-e _%e121137121150%_)))
                        (let ((_%hd121141121161%_ (##car _%e121140121158%_))
                              (_%tl121142121163%_ (##cdr _%e121140121158%_)))
                          (if (gx#stx-pair? _%tl121142121163%_)
                              (let ((_%e121143121166%_
                                     (gx#syntax-e _%tl121142121163%_)))
                                (let ((_%hd121144121169%_
                                       (##car _%e121143121166%_))
                                      (_%tl121145121171%_
                                       (##cdr _%e121143121166%_)))
                                  (let ((_%id121174%_ _%hd121144121169%_))
                                    (if (gx#stx-pair? _%tl121145121171%_)
                                        (let ((_%e121146121176%_
                                               (gx#syntax-e
                                                _%tl121145121171%_)))
                                          (let ((_%hd121147121179%_
                                                 (##car _%e121146121176%_))
                                                (_%tl121148121181%_
                                                 (##cdr _%e121146121176%_)))
                                            (let ((_%alias-id121184%_
                                                   _%hd121147121179%_))
                                              (if (gx#stx-null?
                                                   _%tl121148121181%_)
                                                  (if (and (gx#identifier?
                                                            _%id121174%_)
                                                           (gx#identifier?
                                                            _%alias-id121184%_))
                                                      (let ((_%alias-id121186%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id121184%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id121174%_
                                                         _%alias-id121186%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121174%_)
                             (cons _%alias-id121186%_ '())))))
              (_%E121139121154%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121139121154%_)))))
                                        (_%E121139121154%_)))))
                              (_%E121139121154%_))))
                      (_%E121139121154%_)))))
          (_%E121138121188%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx121079%_ _%wrap?121080%_)
        (let* ((_%e121081121091%_ _%stx121079%_)
               (_%E121083121095%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121081121091%_)))
               (_%E121082121122%_
                (lambda ()
                  (if (gx#stx-pair? _%e121081121091%_)
                      (let ((_%e121084121099%_
                             (gx#syntax-e _%e121081121091%_)))
                        (let ((_%hd121085121102%_ (##car _%e121084121099%_))
                              (_%tl121086121104%_ (##cdr _%e121084121099%_)))
                          (if (gx#stx-pair? _%tl121086121104%_)
                              (let ((_%e121087121107%_
                                     (gx#syntax-e _%tl121086121104%_)))
                                (let ((_%hd121088121110%_
                                       (##car _%e121087121107%_))
                                      (_%tl121089121112%_
                                       (##cdr _%e121087121107%_)))
                                  (let* ((_%hd121115%_ _%hd121088121110%_)
                                         (_%body121117%_ _%tl121089121112%_))
                                    (if (gx#core-bind-values? _%hd121115%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd121115%_)
                                           (let ((_%body121120%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd121115%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx121079%_
                                                               _%body121117%_)
                                                              '()))))
                                             (if _%wrap?121080%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body121120%_)
                                                  (gx#stx-source
                                                   _%stx121079%_))
                                                 _%body121120%_)))
                                         gx#current-expander-context
                                         (let ((__obj122144
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122144)
                                           __obj122144))
                                        (_%E121083121095%_)))))
                              (_%E121083121095%_))))
                      (_%E121083121095%_)))))
          (_%E121082121122%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx121129%_)
        (let ((_%wrap?121131%_ '#t))
          (gx#core-expand-lambda%__% _%stx121129%_ _%wrap?121131%_))))
    (define gx#core-expand-lambda%
      (lambda _g122154_
        (let ((_g122153_ (##length _g122154_)))
          (cond ((##fx= _g122153_ 1)
                 (apply (lambda (_%stx121129%_)
                          (gx#core-expand-lambda%__0 _%stx121129%_))
                        _g122154_))
                ((##fx= _g122153_ 2)
                 (apply (lambda (_%stx121133%_ _%wrap?121134%_)
                          (gx#core-expand-lambda%__%
                           _%stx121133%_
                           _%wrap?121134%_))
                        _g122154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g122154_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx121043%_)
        (let* ((_%e121044121051%_ _%stx121043%_)
               (_%E121046121055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121044121051%_)))
               (_%E121045121074%_
                (lambda ()
                  (if (gx#stx-pair? _%e121044121051%_)
                      (let ((_%e121047121059%_
                             (gx#syntax-e _%e121044121051%_)))
                        (let ((_%hd121048121062%_ (##car _%e121047121059%_))
                              (_%tl121049121064%_ (##cdr _%e121047121059%_)))
                          (let ((_%clauses121067%_ _%tl121049121064%_))
                            (if (gx#stx-list? _%clauses121067%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause121069%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause121069%_)
                                       (let ((_%$e121071%_
                                              (gx#stx-source
                                               _%clause121069%_)))
                                         (if _%$e121071%_
                                             _%$e121071%_
                                             (gx#stx-source _%stx121043%_))))
                                      '#f))
                                   _%clauses121067%_))
                                 (gx#stx-source _%stx121043%_))
                                (_%E121046121055%_)))))
                      (_%E121046121055%_)))))
          (_%E121045121074%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120997%_)
        (let* ((_%e120998121008%_ _%stx120997%_)
               (_%E121000121012%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120998121008%_)))
               (_%E120999121039%_
                (lambda ()
                  (if (gx#stx-pair? _%e120998121008%_)
                      (let ((_%e121001121016%_
                             (gx#syntax-e _%e120998121008%_)))
                        (let ((_%hd121002121019%_ (##car _%e121001121016%_))
                              (_%tl121003121021%_ (##cdr _%e121001121016%_)))
                          (if (gx#stx-pair? _%tl121003121021%_)
                              (let ((_%e121004121024%_
                                     (gx#syntax-e _%tl121003121021%_)))
                                (let ((_%hd121005121027%_
                                       (##car _%e121004121024%_))
                                      (_%tl121006121029%_
                                       (##cdr _%e121004121024%_)))
                                  (let* ((_%hd121032%_ _%hd121005121027%_)
                                         (_%body121034%_ _%tl121006121029%_))
                                    (if (gx#core-expand-let-bind? _%hd121032%_)
                                        (let ((_%expressions121036%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd121032%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd121032%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd121032%_
                                                           _%expressions121036%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120997%_
                         _%body121034%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120997%_)))
                                           gx#current-expander-context
                                           (let ((__obj122145
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122145)
                                             __obj122145)))
                                        (_%E121000121012%_)))))
                              (_%E121000121012%_))))
                      (_%E121000121012%_)))))
          (_%E120999121039%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120942%_ _%form120943%_)
        (let* ((_%e120944120954%_ _%stx120942%_)
               (_%E120946120958%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120944120954%_)))
               (_%E120945120983%_
                (lambda ()
                  (if (gx#stx-pair? _%e120944120954%_)
                      (let ((_%e120947120962%_
                             (gx#syntax-e _%e120944120954%_)))
                        (let ((_%hd120948120965%_ (##car _%e120947120962%_))
                              (_%tl120949120967%_ (##cdr _%e120947120962%_)))
                          (if (gx#stx-pair? _%tl120949120967%_)
                              (let ((_%e120950120970%_
                                     (gx#syntax-e _%tl120949120967%_)))
                                (let ((_%hd120951120973%_
                                       (##car _%e120950120970%_))
                                      (_%tl120952120975%_
                                       (##cdr _%e120950120970%_)))
                                  (let* ((_%hd120978%_ _%hd120951120973%_)
                                         (_%body120980%_ _%tl120952120975%_))
                                    (if (gx#core-expand-let-bind? _%hd120978%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120978%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120943%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120978%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120978%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120942%_
                                                               _%body120980%_)
                                                              '())))
                                            (gx#stx-source _%stx120942%_)))
                                         gx#current-expander-context
                                         (let ((__obj122146
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122146)
                                           __obj122146))
                                        (_%E120946120958%_)))))
                              (_%E120946120958%_))))
                      (_%E120946120958%_)))))
          (_%E120945120983%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120990%_)
        (let ((_%form120992%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120990%_ _%form120992%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g122156_
        (let ((_g122155_ (##length _g122156_)))
          (cond ((##fx= _g122155_ 1)
                 (apply (lambda (_%stx120990%_)
                          (gx#core-expand-letrec-values%__0 _%stx120990%_))
                        _g122156_))
                ((##fx= _g122155_ 2)
                 (apply (lambda (_%stx120994%_ _%form120995%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120994%_
                           _%form120995%_))
                        _g122156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g122156_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120939%_)
        (gx#core-expand-letrec-values%__% _%stx120939%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120896%_)
        (if (gx#stx-list? _%stx120896%_)
            (gx#stx-andmap
             (lambda (_%bind120898%_)
               (let* ((_%e120899120909%_ _%bind120898%_)
                      (_%E120901120913%_ (lambda () '#f))
                      (_%E120900120935%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120899120909%_)
                             (let ((_%e120902120917%_
                                    (gx#syntax-e _%e120899120909%_)))
                               (let ((_%hd120903120920%_
                                      (##car _%e120902120917%_))
                                     (_%tl120904120922%_
                                      (##cdr _%e120902120917%_)))
                                 (let ((_%hd120925%_ _%hd120903120920%_))
                                   (if (gx#stx-pair? _%tl120904120922%_)
                                       (let ((_%e120905120927%_
                                              (gx#syntax-e
                                               _%tl120904120922%_)))
                                         (let ((_%hd120906120930%_
                                                (##car _%e120905120927%_))
                                               (_%tl120907120932%_
                                                (##cdr _%e120905120927%_)))
                                           (if (gx#stx-null?
                                                _%tl120907120932%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120925%_)
                                                   (_%E120901120913%_))
                                               (_%E120901120913%_))))
                                       (_%E120901120913%_)))))
                             (_%E120901120913%_)))))
                 (_%E120900120935%_)))
             _%stx120896%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120855%_)
        (let* ((_%e120856120866%_ _%bind120855%_)
               (_%E120858120870%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120856120866%_)))
               (_%E120857120892%_
                (lambda ()
                  (if (gx#stx-pair? _%e120856120866%_)
                      (let ((_%e120859120874%_
                             (gx#syntax-e _%e120856120866%_)))
                        (let ((_%hd120860120877%_ (##car _%e120859120874%_))
                              (_%tl120861120879%_ (##cdr _%e120859120874%_)))
                          (if (gx#stx-pair? _%tl120861120879%_)
                              (let ((_%e120862120882%_
                                     (gx#syntax-e _%tl120861120879%_)))
                                (let ((_%hd120863120885%_
                                       (##car _%e120862120882%_))
                                      (_%tl120864120887%_
                                       (##cdr _%e120862120882%_)))
                                  (let ((_%expr120890%_ _%hd120863120885%_))
                                    (if (gx#stx-null? _%tl120864120887%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120890%_)
                                            (_%E120858120870%_))
                                        (_%E120858120870%_)))))
                              (_%E120858120870%_))))
                      (_%E120858120870%_)))))
          (_%E120857120892%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120814%_)
        (let* ((_%e120815120825%_ _%bind120814%_)
               (_%E120817120829%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120815120825%_)))
               (_%E120816120851%_
                (lambda ()
                  (if (gx#stx-pair? _%e120815120825%_)
                      (let ((_%e120818120833%_
                             (gx#syntax-e _%e120815120825%_)))
                        (let ((_%hd120819120836%_ (##car _%e120818120833%_))
                              (_%tl120820120838%_ (##cdr _%e120818120833%_)))
                          (let ((_%hd120841%_ _%hd120819120836%_))
                            (if (gx#stx-pair? _%tl120820120838%_)
                                (let ((_%e120821120843%_
                                       (gx#syntax-e _%tl120820120838%_)))
                                  (let ((_%hd120822120846%_
                                         (##car _%e120821120843%_))
                                        (_%tl120823120848%_
                                         (##cdr _%e120821120843%_)))
                                    (if (gx#stx-null? _%tl120823120848%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120841%_)
                                            (_%E120817120829%_))
                                        (_%E120817120829%_))))
                                (_%E120817120829%_)))))
                      (_%E120817120829%_)))))
          (_%E120816120851%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120772%_ _%expr120773%_)
        (let* ((_%e120774120784%_ _%bind120772%_)
               (_%E120776120788%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120774120784%_)))
               (_%E120775120810%_
                (lambda ()
                  (if (gx#stx-pair? _%e120774120784%_)
                      (let ((_%e120777120792%_
                             (gx#syntax-e _%e120774120784%_)))
                        (let ((_%hd120778120795%_ (##car _%e120777120792%_))
                              (_%tl120779120797%_ (##cdr _%e120777120792%_)))
                          (let ((_%hd120800%_ _%hd120778120795%_))
                            (if (gx#stx-pair? _%tl120779120797%_)
                                (let ((_%e120780120802%_
                                       (gx#syntax-e _%tl120779120797%_)))
                                  (let ((_%hd120781120805%_
                                         (##car _%e120780120802%_))
                                        (_%tl120782120807%_
                                         (##cdr _%e120780120802%_)))
                                    (if (gx#stx-null? _%tl120782120807%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120800%_)
                                                  (cons _%expr120773%_ '()))
                                            (_%E120776120788%_))
                                        (_%E120776120788%_))))
                                (_%E120776120788%_)))))
                      (_%E120776120788%_)))))
          (_%E120775120810%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120726%_)
        (let* ((_%e120727120737%_ _%stx120726%_)
               (_%E120729120741%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120727120737%_)))
               (_%E120728120768%_
                (lambda ()
                  (if (gx#stx-pair? _%e120727120737%_)
                      (let ((_%e120730120745%_
                             (gx#syntax-e _%e120727120737%_)))
                        (let ((_%hd120731120748%_ (##car _%e120730120745%_))
                              (_%tl120732120750%_ (##cdr _%e120730120745%_)))
                          (if (gx#stx-pair? _%tl120732120750%_)
                              (let ((_%e120733120753%_
                                     (gx#syntax-e _%tl120732120750%_)))
                                (let ((_%hd120734120756%_
                                       (##car _%e120733120753%_))
                                      (_%tl120735120758%_
                                       (##cdr _%e120733120753%_)))
                                  (let* ((_%hd120761%_ _%hd120734120756%_)
                                         (_%body120763%_ _%tl120735120758%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120761%_)
                                        (let ((_%expanders120765%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120761%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120761%_
                                              _%expanders120765%_)
                                             (gx#core-expand-local-block
                                              _%stx120726%_
                                              _%body120763%_))
                                           gx#current-expander-context
                                           (let ((__obj122147
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122147)
                                             __obj122147)))
                                        (_%E120729120741%_)))))
                              (_%E120729120741%_))))
                      (_%E120729120741%_)))))
          (_%E120728120768%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120675%_)
        (let* ((_%e120676120686%_ _%stx120675%_)
               (_%E120678120690%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120676120686%_)))
               (_%E120677120722%_
                (lambda ()
                  (if (gx#stx-pair? _%e120676120686%_)
                      (let ((_%e120679120694%_
                             (gx#syntax-e _%e120676120686%_)))
                        (let ((_%hd120680120697%_ (##car _%e120679120694%_))
                              (_%tl120681120699%_ (##cdr _%e120679120694%_)))
                          (if (gx#stx-pair? _%tl120681120699%_)
                              (let ((_%e120682120702%_
                                     (gx#syntax-e _%tl120681120699%_)))
                                (let ((_%hd120683120705%_
                                       (##car _%e120682120702%_))
                                      (_%tl120684120707%_
                                       (##cdr _%e120682120702%_)))
                                  (let* ((_%hd120710%_ _%hd120683120705%_)
                                         (_%body120712%_ _%tl120684120707%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120710%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120710%_
                                            (make-list
                                             (gx#stx-length _%hd120710%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120714120717%_
                                                     _%g120715120719%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120714120717%_
                                               _%g120715120719%_
                                               '#t))
                                            _%hd120710%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120710%_))
                                           (gx#core-expand-local-block
                                            _%stx120675%_
                                            _%body120712%_))
                                         gx#current-expander-context
                                         (let ((__obj122148
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122148)
                                           __obj122148))
                                        (_%E120678120690%_)))))
                              (_%E120678120690%_))))
                      (_%E120678120690%_)))))
          (_%E120677120722%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120632%_)
        (if (gx#stx-list? _%stx120632%_)
            (gx#stx-andmap
             (lambda (_%bind120634%_)
               (let* ((_%e120635120645%_ _%bind120634%_)
                      (_%E120637120649%_ (lambda () '#f))
                      (_%E120636120671%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120635120645%_)
                             (let ((_%e120638120653%_
                                    (gx#syntax-e _%e120635120645%_)))
                               (let ((_%hd120639120656%_
                                      (##car _%e120638120653%_))
                                     (_%tl120640120658%_
                                      (##cdr _%e120638120653%_)))
                                 (let ((_%hd120661%_ _%hd120639120656%_))
                                   (if (gx#stx-pair? _%tl120640120658%_)
                                       (let ((_%e120641120663%_
                                              (gx#syntax-e
                                               _%tl120640120658%_)))
                                         (let ((_%hd120642120666%_
                                                (##car _%e120641120663%_))
                                               (_%tl120643120668%_
                                                (##cdr _%e120641120663%_)))
                                           (if (gx#stx-null?
                                                _%tl120643120668%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120661%_)
                                                   (_%E120637120649%_))
                                               (_%E120637120649%_))))
                                       (_%E120637120649%_)))))
                             (_%E120637120649%_)))))
                 (_%E120636120671%_)))
             _%stx120632%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind120588%_)
        (let* ((_%e120589120599%_ _%bind120588%_)
               (_%E120591120603%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120589120599%_)))
               (_%E120590120628%_
                (lambda ()
                  (if (gx#stx-pair? _%e120589120599%_)
                      (let ((_%e120592120607%_
                             (gx#syntax-e _%e120589120599%_)))
                        (let ((_%hd120593120610%_ (##car _%e120592120607%_))
                              (_%tl120594120612%_ (##cdr _%e120592120607%_)))
                          (if (gx#stx-pair? _%tl120594120612%_)
                              (let ((_%e120595120615%_
                                     (gx#syntax-e _%tl120594120612%_)))
                                (let ((_%hd120596120618%_
                                       (##car _%e120595120615%_))
                                      (_%tl120597120620%_
                                       (##cdr _%e120595120615%_)))
                                  (let ((_%expr120623%_ _%hd120596120618%_))
                                    (if (gx#stx-null? _%tl120597120620%_)
                                        (if '#t
                                            (let ((_g122157_
                                                   (gx#core-expand-expression+1
                                                    _%expr120623%_)))
                                              (begin
                                                (let ((_g122158_
                                                       (if (##values?
                                                            _g122157_)
                                                           (##vector-length
                                                            _g122157_)
                                                           1)))
                                                  (if (not (##fx= _g122158_ 2))
                                                      (error "Context expects 2 values"
                                                             _g122158_)))
                                                (let ((_%_120625%_
                                                       (##vector-ref
                                                        _g122157_
                                                        0))
                                                      (_%e120626%_
                                                       (##vector-ref
                                                        _g122157_
                                                        1)))
                                                  _%e120626%_)))
                                            (_%E120591120603%_))
                                        (_%E120591120603%_)))))
                              (_%E120591120603%_))))
                      (_%E120591120603%_)))))
          (_%E120590120628%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind120533%_ _%e120534%_ _%rebind?120535%_)
        (let* ((_%e120536120546%_ _%bind120533%_)
               (_%E120538120550%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120536120546%_)))
               (_%E120537120572%_
                (lambda ()
                  (if (gx#stx-pair? _%e120536120546%_)
                      (let ((_%e120539120554%_
                             (gx#syntax-e _%e120536120546%_)))
                        (let ((_%hd120540120557%_ (##car _%e120539120554%_))
                              (_%tl120541120559%_ (##cdr _%e120539120554%_)))
                          (let ((_%id120562%_ _%hd120540120557%_))
                            (if (gx#stx-pair? _%tl120541120559%_)
                                (let ((_%e120542120564%_
                                       (gx#syntax-e _%tl120541120559%_)))
                                  (let ((_%hd120543120567%_
                                         (##car _%e120542120564%_))
                                        (_%tl120544120569%_
                                         (##cdr _%e120542120564%_)))
                                    (if (gx#stx-null? _%tl120544120569%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id120562%_
                                             _%e120534%_
                                             _%rebind?120535%_)
                                            (_%E120538120550%_))
                                        (_%E120538120550%_))))
                                (_%E120538120550%_)))))
                      (_%E120538120550%_)))))
          (_%E120537120572%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind120579%_ _%e120580%_)
        (let ((_%rebind?120582%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind120579%_
           _%e120580%_
           _%rebind?120582%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g122160_
        (let ((_g122159_ (##length _g122160_)))
          (cond ((##fx= _g122159_ 2)
                 (apply (lambda (_%bind120579%_ _%e120580%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind120579%_
                           _%e120580%_))
                        _g122160_))
                ((##fx= _g122159_ 3)
                 (apply (lambda (_%bind120584%_ _%e120585%_ _%rebind?120586%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind120584%_
                           _%e120585%_
                           _%rebind?120586%_))
                        _g122160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g122160_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx120491%_)
        (let* ((_%e120492120502%_ _%stx120491%_)
               (_%E120494120506%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120492120502%_)))
               (_%E120493120528%_
                (lambda ()
                  (if (gx#stx-pair? _%e120492120502%_)
                      (let ((_%e120495120510%_
                             (gx#syntax-e _%e120492120502%_)))
                        (let ((_%hd120496120513%_ (##car _%e120495120510%_))
                              (_%tl120497120515%_ (##cdr _%e120495120510%_)))
                          (if (gx#stx-pair? _%tl120497120515%_)
                              (let ((_%e120498120518%_
                                     (gx#syntax-e _%tl120497120515%_)))
                                (let ((_%hd120499120521%_
                                       (##car _%e120498120518%_))
                                      (_%tl120500120523%_
                                       (##cdr _%e120498120518%_)))
                                  (let ((_%expr120526%_ _%hd120499120521%_))
                                    (if (gx#stx-null? _%tl120500120523%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120526%_)
                                            (_%E120494120506%_))
                                        (_%E120494120506%_)))))
                              (_%E120494120506%_))))
                      (_%E120494120506%_)))))
          (_%E120493120528%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx120450%_)
        (let* ((_%e120451120461%_ _%stx120450%_)
               (_%E120453120465%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120451120461%_)))
               (_%E120452120487%_
                (lambda ()
                  (if (gx#stx-pair? _%e120451120461%_)
                      (let ((_%e120454120469%_
                             (gx#syntax-e _%e120451120461%_)))
                        (let ((_%hd120455120472%_ (##car _%e120454120469%_))
                              (_%tl120456120474%_ (##cdr _%e120454120469%_)))
                          (if (gx#stx-pair? _%tl120456120474%_)
                              (let ((_%e120457120477%_
                                     (gx#syntax-e _%tl120456120474%_)))
                                (let ((_%hd120458120480%_
                                       (##car _%e120457120477%_))
                                      (_%tl120459120482%_
                                       (##cdr _%e120457120477%_)))
                                  (let ((_%e120485%_ _%hd120458120480%_))
                                    (if (gx#stx-null? _%tl120459120482%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e120485%_)
                                                         '()))
                                             (gx#stx-source _%stx120450%_))
                                            (_%E120453120465%_))
                                        (_%E120453120465%_)))))
                              (_%E120453120465%_))))
                      (_%E120453120465%_)))))
          (_%E120452120487%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx120409%_)
        (let* ((_%e120410120420%_ _%stx120409%_)
               (_%E120412120424%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120410120420%_)))
               (_%E120411120446%_
                (lambda ()
                  (if (gx#stx-pair? _%e120410120420%_)
                      (let ((_%e120413120428%_
                             (gx#syntax-e _%e120410120420%_)))
                        (let ((_%hd120414120431%_ (##car _%e120413120428%_))
                              (_%tl120415120433%_ (##cdr _%e120413120428%_)))
                          (if (gx#stx-pair? _%tl120415120433%_)
                              (let ((_%e120416120436%_
                                     (gx#syntax-e _%tl120415120433%_)))
                                (let ((_%hd120417120439%_
                                       (##car _%e120416120436%_))
                                      (_%tl120418120441%_
                                       (##cdr _%e120416120436%_)))
                                  (let ((_%e120444%_ _%hd120417120439%_))
                                    (if (gx#stx-null? _%tl120418120441%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e120444%_)
                                                         '()))
                                             (gx#stx-source _%stx120409%_))
                                            (_%E120412120424%_))
                                        (_%E120412120424%_)))))
                              (_%E120412120424%_))))
                      (_%E120412120424%_)))))
          (_%E120411120446%_))))
    (define gx#core-expand-call%
      (lambda (_%stx120366%_)
        (let* ((_%e120367120377%_ _%stx120366%_)
               (_%E120369120381%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120367120377%_)))
               (_%E120368120405%_
                (lambda ()
                  (if (gx#stx-pair? _%e120367120377%_)
                      (let ((_%e120370120385%_
                             (gx#syntax-e _%e120367120377%_)))
                        (let ((_%hd120371120388%_ (##car _%e120370120385%_))
                              (_%tl120372120390%_ (##cdr _%e120370120385%_)))
                          (if (gx#stx-pair? _%tl120372120390%_)
                              (let ((_%e120373120393%_
                                     (gx#syntax-e _%tl120372120390%_)))
                                (let ((_%hd120374120396%_
                                       (##car _%e120373120393%_))
                                      (_%tl120375120398%_
                                       (##cdr _%e120373120393%_)))
                                  (let* ((_%rator120401%_ _%hd120374120396%_)
                                         (_%args120403%_ _%tl120375120398%_))
                                    (if (gx#stx-list? _%args120403%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator120401%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args120403%_))
                                         (gx#stx-source _%stx120366%_))
                                        (_%E120369120381%_)))))
                              (_%E120369120381%_))))
                      (_%E120369120381%_)))))
          (_%E120368120405%_))))
    (define gx#core-expand-if%
      (lambda (_%stx120299%_)
        (let* ((_%e120300120316%_ _%stx120299%_)
               (_%E120302120320%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120300120316%_)))
               (_%E120301120362%_
                (lambda ()
                  (if (gx#stx-pair? _%e120300120316%_)
                      (let ((_%e120303120324%_
                             (gx#syntax-e _%e120300120316%_)))
                        (let ((_%hd120304120327%_ (##car _%e120303120324%_))
                              (_%tl120305120329%_ (##cdr _%e120303120324%_)))
                          (if (gx#stx-pair? _%tl120305120329%_)
                              (let ((_%e120306120332%_
                                     (gx#syntax-e _%tl120305120329%_)))
                                (let ((_%hd120307120335%_
                                       (##car _%e120306120332%_))
                                      (_%tl120308120337%_
                                       (##cdr _%e120306120332%_)))
                                  (let ((_%test120340%_ _%hd120307120335%_))
                                    (if (gx#stx-pair? _%tl120308120337%_)
                                        (let ((_%e120309120342%_
                                               (gx#syntax-e
                                                _%tl120308120337%_)))
                                          (let ((_%hd120310120345%_
                                                 (##car _%e120309120342%_))
                                                (_%tl120311120347%_
                                                 (##cdr _%e120309120342%_)))
                                            (let ((_%K120350%_
                                                   _%hd120310120345%_))
                                              (if (gx#stx-pair?
                                                   _%tl120311120347%_)
                                                  (let ((_%e120312120352%_
                                                         (gx#syntax-e
                                                          _%tl120311120347%_)))
                                                    (let ((_%hd120313120355%_
                                                           (##car _%e120312120352%_))
                                                          (_%tl120314120357%_
                                                           (##cdr _%e120312120352%_)))
                                                      (let ((_%E120360%_
                                                             _%hd120313120355%_))
                                                        (if (gx#stx-null?
                                                             _%tl120314120357%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test120340%_)
                                     (cons (gx#core-expand-expression
                                            _%K120350%_)
                                           (cons (gx#core-expand-expression
                                                  _%E120360%_)
                                                 '()))))
                         (gx#stx-source _%stx120299%_))
                        (_%E120302120320%_))
                    (_%E120302120320%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120302120320%_)))))
                                        (_%E120302120320%_)))))
                              (_%E120302120320%_))))
                      (_%E120302120320%_)))))
          (_%E120301120362%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx120258%_)
        (let* ((_%e120259120269%_ _%stx120258%_)
               (_%E120261120273%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120259120269%_)))
               (_%E120260120295%_
                (lambda ()
                  (if (gx#stx-pair? _%e120259120269%_)
                      (let ((_%e120262120277%_
                             (gx#syntax-e _%e120259120269%_)))
                        (let ((_%hd120263120280%_ (##car _%e120262120277%_))
                              (_%tl120264120282%_ (##cdr _%e120262120277%_)))
                          (if (gx#stx-pair? _%tl120264120282%_)
                              (let ((_%e120265120285%_
                                     (gx#syntax-e _%tl120264120282%_)))
                                (let ((_%hd120266120288%_
                                       (##car _%e120265120285%_))
                                      (_%tl120267120290%_
                                       (##cdr _%e120265120285%_)))
                                  (let ((_%id120293%_ _%hd120266120288%_))
                                    (if (gx#stx-null? _%tl120267120290%_)
                                        (if (gx#identifier? _%id120293%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id120293%_
                                                          _%stx120258%_)
                                                         '()))
                                             (gx#stx-source _%stx120258%_))
                                            (_%E120261120273%_))
                                        (_%E120261120273%_)))))
                              (_%E120261120273%_))))
                      (_%E120261120273%_)))))
          (_%E120260120295%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx120204%_)
        (let* ((_%e120205120218%_ _%stx120204%_)
               (_%E120207120222%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120205120218%_)))
               (_%E120206120254%_
                (lambda ()
                  (if (gx#stx-pair? _%e120205120218%_)
                      (let ((_%e120208120226%_
                             (gx#syntax-e _%e120205120218%_)))
                        (let ((_%hd120209120229%_ (##car _%e120208120226%_))
                              (_%tl120210120231%_ (##cdr _%e120208120226%_)))
                          (if (gx#stx-pair? _%tl120210120231%_)
                              (let ((_%e120211120234%_
                                     (gx#syntax-e _%tl120210120231%_)))
                                (let ((_%hd120212120237%_
                                       (##car _%e120211120234%_))
                                      (_%tl120213120239%_
                                       (##cdr _%e120211120234%_)))
                                  (let ((_%id120242%_ _%hd120212120237%_))
                                    (if (gx#stx-pair? _%tl120213120239%_)
                                        (let ((_%e120214120244%_
                                               (gx#syntax-e
                                                _%tl120213120239%_)))
                                          (let ((_%hd120215120247%_
                                                 (##car _%e120214120244%_))
                                                (_%tl120216120249%_
                                                 (##cdr _%e120214120244%_)))
                                            (let ((_%expr120252%_
                                                   _%hd120215120247%_))
                                              (if (gx#stx-null?
                                                   _%tl120216120249%_)
                                                  (if (gx#identifier?
                                                       _%id120242%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id120242%_
                            _%stx120204%_)
                           (cons (gx#core-expand-expression _%expr120252%_)
                                 '())))
               (gx#stx-source _%stx120204%_))
              (_%E120207120222%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120207120222%_)))))
                                        (_%E120207120222%_)))))
                              (_%E120207120222%_))))
                      (_%E120207120222%_)))))
          (_%E120206120254%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx120049%_)
        (letrec ((_%generate120051%_
                  (lambda (_%body120081%_)
                    (let _%lp120083%_ ((_%rest120085%_ _%body120081%_)
                                       (_%ns120086%_
                                        (gx#core-context-namespace__0))
                                       (_%r120087%_ '()))
                      (let* ((_%e120088120103%_ _%rest120085%_)
                             (_%E120101120107%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e120088120103%_)))
                             (_%E120097120111%_
                              (lambda ()
                                (if (gx#stx-null? _%e120088120103%_)
                                    (if '#t
                                        (reverse _%r120087%_)
                                        (_%E120101120107%_))
                                    (_%E120101120107%_))))
                             (_%E120090120168%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120088120103%_)
                                    (let ((_%e120098120115%_
                                           (gx#syntax-e _%e120088120103%_)))
                                      (let ((_%hd120099120118%_
                                             (##car _%e120098120115%_))
                                            (_%tl120100120120%_
                                             (##cdr _%e120098120115%_)))
                                        (let* ((_%hd120123%_
                                                _%hd120099120118%_)
                                               (_%rest120125%_
                                                _%tl120100120120%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd120123%_)
                                                  (_%lp120083%_
                                                   _%rest120125%_
                                                   _%ns120086%_
                                                   (cons (cons _%hd120123%_
                                                               (cons (if _%ns120086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd120123%_
                                  _%ns120086%_
                                  '"#"
                                  _%hd120123%_)
                                 _%hd120123%_)
                             '()))
                 _%r120087%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e120126120136%_
                                                          _%hd120123%_)
                                                         (_%E120128120140%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e120126120136%_)))
                                                         (_%E120127120164%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e120126120136%_)
                        (let ((_%e120129120144%_
                               (gx#syntax-e _%e120126120136%_)))
                          (let ((_%hd120130120147%_ (##car _%e120129120144%_))
                                (_%tl120131120149%_ (##cdr _%e120129120144%_)))
                            (let ((_%id120152%_ _%hd120130120147%_))
                              (if (gx#stx-pair? _%tl120131120149%_)
                                  (let ((_%e120132120154%_
                                         (gx#syntax-e _%tl120131120149%_)))
                                    (let ((_%hd120133120157%_
                                           (##car _%e120132120154%_))
                                          (_%tl120134120159%_
                                           (##cdr _%e120132120154%_)))
                                      (let ((_%eid120162%_ _%hd120133120157%_))
                                        (if (gx#stx-null? _%tl120134120159%_)
                                            (if (and (gx#identifier?
                                                      _%id120152%_)
                                                     (gx#identifier?
                                                      _%eid120162%_))
                                                (_%lp120083%_
                                                 _%rest120125%_
                                                 _%ns120086%_
                                                 (cons (cons _%id120152%_
                                                             (cons _%eid120162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r120087%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120128120140%_))
                                            (_%E120128120140%_)))))
                                  (_%E120128120140%_)))))
                        (_%E120128120140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120127120164%_)))
                                              (_%E120097120111%_)))))
                                    (_%E120097120111%_))))
                             (_%E120089120200%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120088120103%_)
                                    (let ((_%e120091120172%_
                                           (gx#syntax-e _%e120088120103%_)))
                                      (let ((_%hd120092120175%_
                                             (##car _%e120091120172%_))
                                            (_%tl120093120177%_
                                             (##cdr _%e120091120172%_)))
                                        (if (eq? (gx#stx-e _%hd120092120175%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl120093120177%_)
                                                (let ((_%e120094120180%_
                                                       (gx#syntax-e
                                                        _%tl120093120177%_)))
                                                  (let ((_%hd120095120183%_
                                                         (##car _%e120094120180%_))
                                                        (_%tl120096120185%_
                                                         (##cdr _%e120094120180%_)))
                                                    (let* ((_%ns120188%_
                                                            _%hd120095120183%_)
                                                           (_%rest120190%_
                                                            _%tl120096120185%_))
                                                      (if '#t
                                                          (let ((_%ns120198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns120188%_)
                             (let () (symbol->string (gx#stx-e _%ns120188%_)))
                             (if (or (gx#stx-string? _%ns120188%_)
                                     (gx#stx-false? _%ns120188%_))
                                 (let () (gx#stx-e _%ns120188%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx120049%_
                                    _%ns120188%_))))))
                    (_%lp120083%_ _%rest120190%_ _%ns120198%_ _%r120087%_))
                  (_%E120090120168%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120090120168%_))
                                            (_%E120090120168%_))))
                                    (_%E120090120168%_)))))
                        (_%E120089120200%_))))))
          (let* ((_%e120052120059%_ _%stx120049%_)
                 (_%E120054120063%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120052120059%_)))
                 (_%E120053120077%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120052120059%_)
                        (let ((_%e120055120067%_
                               (gx#syntax-e _%e120052120059%_)))
                          (let ((_%hd120056120070%_ (##car _%e120055120067%_))
                                (_%tl120057120072%_ (##cdr _%e120055120067%_)))
                            (let ((_%body120075%_ _%tl120057120072%_))
                              (if (gx#stx-list? _%body120075%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate120051%_ _%body120075%_))
                                  (_%E120054120063%_)))))
                        (_%E120054120063%_)))))
            (_%E120053120077%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119995%_)
        (let* ((_%e119996120009%_ _%stx119995%_)
               (_%E119998120013%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119996120009%_)))
               (_%E119997120045%_
                (lambda ()
                  (if (gx#stx-pair? _%e119996120009%_)
                      (let ((_%e119999120017%_
                             (gx#syntax-e _%e119996120009%_)))
                        (let ((_%hd120000120020%_ (##car _%e119999120017%_))
                              (_%tl120001120022%_ (##cdr _%e119999120017%_)))
                          (if (gx#stx-pair? _%tl120001120022%_)
                              (let ((_%e120002120025%_
                                     (gx#syntax-e _%tl120001120022%_)))
                                (let ((_%hd120003120028%_
                                       (##car _%e120002120025%_))
                                      (_%tl120004120030%_
                                       (##cdr _%e120002120025%_)))
                                  (let ((_%hd120033%_ _%hd120003120028%_))
                                    (if (gx#stx-pair? _%tl120004120030%_)
                                        (let ((_%e120005120035%_
                                               (gx#syntax-e
                                                _%tl120004120030%_)))
                                          (let ((_%hd120006120038%_
                                                 (##car _%e120005120035%_))
                                                (_%tl120007120040%_
                                                 (##cdr _%e120005120035%_)))
                                            (let ((_%expr120043%_
                                                   _%hd120006120038%_))
                                              (if (gx#stx-null?
                                                   _%tl120007120040%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd120033%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd120033%_)
                          (cons _%expr120043%_ '())))
              (_%E119998120013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119998120013%_)))))
                                        (_%E119998120013%_)))))
                              (_%E119998120013%_))))
                      (_%E119998120013%_)))))
          (_%E119997120045%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119941%_)
        (let* ((_%e119942119955%_ _%stx119941%_)
               (_%E119944119959%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119942119955%_)))
               (_%E119943119991%_
                (lambda ()
                  (if (gx#stx-pair? _%e119942119955%_)
                      (let ((_%e119945119963%_
                             (gx#syntax-e _%e119942119955%_)))
                        (let ((_%hd119946119966%_ (##car _%e119945119963%_))
                              (_%tl119947119968%_ (##cdr _%e119945119963%_)))
                          (if (gx#stx-pair? _%tl119947119968%_)
                              (let ((_%e119948119971%_
                                     (gx#syntax-e _%tl119947119968%_)))
                                (let ((_%hd119949119974%_
                                       (##car _%e119948119971%_))
                                      (_%tl119950119976%_
                                       (##cdr _%e119948119971%_)))
                                  (let ((_%hd119979%_ _%hd119949119974%_))
                                    (if (gx#stx-pair? _%tl119950119976%_)
                                        (let ((_%e119951119981%_
                                               (gx#syntax-e
                                                _%tl119950119976%_)))
                                          (let ((_%hd119952119984%_
                                                 (##car _%e119951119981%_))
                                                (_%tl119953119986%_
                                                 (##cdr _%e119951119981%_)))
                                            (let ((_%expr119989%_
                                                   _%hd119952119984%_))
                                              (if (gx#stx-null?
                                                   _%tl119953119986%_)
                                                  (if (gx#identifier?
                                                       _%hd119979%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119989%_ '())))
              (_%E119944119959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119944119959%_)))))
                                        (_%E119944119959%_)))))
                              (_%E119944119959%_))))
                      (_%E119944119959%_)))))
          (_%E119943119991%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119887%_)
        (let* ((_%e119888119901%_ _%stx119887%_)
               (_%E119890119905%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119888119901%_)))
               (_%E119889119937%_
                (lambda ()
                  (if (gx#stx-pair? _%e119888119901%_)
                      (let ((_%e119891119909%_
                             (gx#syntax-e _%e119888119901%_)))
                        (let ((_%hd119892119912%_ (##car _%e119891119909%_))
                              (_%tl119893119914%_ (##cdr _%e119891119909%_)))
                          (if (gx#stx-pair? _%tl119893119914%_)
                              (let ((_%e119894119917%_
                                     (gx#syntax-e _%tl119893119914%_)))
                                (let ((_%hd119895119920%_
                                       (##car _%e119894119917%_))
                                      (_%tl119896119922%_
                                       (##cdr _%e119894119917%_)))
                                  (let ((_%id119925%_ _%hd119895119920%_))
                                    (if (gx#stx-pair? _%tl119896119922%_)
                                        (let ((_%e119897119927%_
                                               (gx#syntax-e
                                                _%tl119896119922%_)))
                                          (let ((_%hd119898119930%_
                                                 (##car _%e119897119927%_))
                                                (_%tl119899119932%_
                                                 (##cdr _%e119897119927%_)))
                                            (let ((_%alias-id119935%_
                                                   _%hd119898119930%_))
                                              (if (gx#stx-null?
                                                   _%tl119899119932%_)
                                                  (if (and (gx#identifier?
                                                            _%id119925%_)
                                                           (gx#identifier?
                                                            _%alias-id119935%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119935%_ '())))
              (_%E119890119905%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119890119905%_)))))
                                        (_%E119890119905%_)))))
                              (_%E119890119905%_))))
                      (_%E119890119905%_)))))
          (_%E119889119937%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119844%_)
        (let* ((_%e119845119855%_ _%stx119844%_)
               (_%E119847119859%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119845119855%_)))
               (_%E119846119883%_
                (lambda ()
                  (if (gx#stx-pair? _%e119845119855%_)
                      (let ((_%e119848119863%_
                             (gx#syntax-e _%e119845119855%_)))
                        (let ((_%hd119849119866%_ (##car _%e119848119863%_))
                              (_%tl119850119868%_ (##cdr _%e119848119863%_)))
                          (if (gx#stx-pair? _%tl119850119868%_)
                              (let ((_%e119851119871%_
                                     (gx#syntax-e _%tl119850119868%_)))
                                (let ((_%hd119852119874%_
                                       (##car _%e119851119871%_))
                                      (_%tl119853119876%_
                                       (##cdr _%e119851119871%_)))
                                  (let* ((_%hd119879%_ _%hd119852119874%_)
                                         (_%body119881%_ _%tl119853119876%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119879%_)
                                             (gx#stx-list? _%body119881%_)
                                             (not (gx#stx-null?
                                                   _%body119881%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119879%_)
                                         _%body119881%_)
                                        (_%E119847119859%_)))))
                              (_%E119847119859%_))))
                      (_%E119847119859%_)))))
          (_%E119846119883%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119780%_)
        (letrec ((_%generate119782%_
                  (lambda (_%clause119812%_)
                    (let* ((_%e119813119820%_ _%clause119812%_)
                           (_%E119815119824%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119780%_
                               _%clause119812%_)))
                           (_%E119814119840%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119813119820%_)
                                  (let ((_%e119816119828%_
                                         (gx#syntax-e _%e119813119820%_)))
                                    (let ((_%hd119817119831%_
                                           (##car _%e119816119828%_))
                                          (_%tl119818119833%_
                                           (##cdr _%e119816119828%_)))
                                      (let* ((_%hd119836%_ _%hd119817119831%_)
                                             (_%body119838%_
                                              _%tl119818119833%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119836%_)
                                                 (gx#stx-list? _%body119838%_)
                                                 (not (gx#stx-null?
                                                       _%body119838%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119836%_)
                                                   _%body119838%_)
                                             (gx#stx-source _%clause119812%_))
                                            (_%E119815119824%_)))))
                                  (_%E119815119824%_)))))
                      (_%E119814119840%_)))))
          (let* ((_%e119783119790%_ _%stx119780%_)
                 (_%E119785119794%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119783119790%_)))
                 (_%E119784119808%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119783119790%_)
                        (let ((_%e119786119798%_
                               (gx#syntax-e _%e119783119790%_)))
                          (let ((_%hd119787119801%_ (##car _%e119786119798%_))
                                (_%tl119788119803%_ (##cdr _%e119786119798%_)))
                            (let ((_%clauses119806%_ _%tl119788119803%_))
                              (if (gx#stx-list? _%clauses119806%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119782%_
                                    _%clauses119806%_))
                                  (_%E119785119794%_)))))
                        (_%E119785119794%_)))))
            (_%E119784119808%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119681%_ _%form119682%_)
        (letrec ((_%generate119684%_
                  (lambda (_%bind119727%_)
                    (let* ((_%e119728119738%_ _%bind119727%_)
                           (_%E119730119742%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119681%_
                               _%bind119727%_)))
                           (_%E119729119766%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119728119738%_)
                                  (let ((_%e119731119746%_
                                         (gx#syntax-e _%e119728119738%_)))
                                    (let ((_%hd119732119749%_
                                           (##car _%e119731119746%_))
                                          (_%tl119733119751%_
                                           (##cdr _%e119731119746%_)))
                                      (let ((_%ids119754%_ _%hd119732119749%_))
                                        (if (gx#stx-pair? _%tl119733119751%_)
                                            (let ((_%e119734119756%_
                                                   (gx#syntax-e
                                                    _%tl119733119751%_)))
                                              (let ((_%hd119735119759%_
                                                     (##car _%e119734119756%_))
                                                    (_%tl119736119761%_
                                                     (##cdr _%e119734119756%_)))
                                                (let ((_%expr119764%_
                                                       _%hd119735119759%_))
                                                  (if (gx#stx-null?
                                                       _%tl119736119761%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119754%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119754%_)
                        (cons _%expr119764%_ '()))
                  (_%E119730119742%_))
              (_%E119730119742%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119730119742%_)))))
                                  (_%E119730119742%_)))))
                      (_%E119729119766%_)))))
          (let* ((_%e119685119695%_ _%stx119681%_)
                 (_%E119687119699%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119685119695%_)))
                 (_%E119686119723%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119685119695%_)
                        (let ((_%e119688119703%_
                               (gx#syntax-e _%e119685119695%_)))
                          (let ((_%hd119689119706%_ (##car _%e119688119703%_))
                                (_%tl119690119708%_ (##cdr _%e119688119703%_)))
                            (if (gx#stx-pair? _%tl119690119708%_)
                                (let ((_%e119691119711%_
                                       (gx#syntax-e _%tl119690119708%_)))
                                  (let ((_%hd119692119714%_
                                         (##car _%e119691119711%_))
                                        (_%tl119693119716%_
                                         (##cdr _%e119691119711%_)))
                                    (let* ((_%hd119719%_ _%hd119692119714%_)
                                           (_%body119721%_ _%tl119693119716%_))
                                      (if (and (gx#stx-list? _%hd119719%_)
                                               (gx#stx-list? _%body119721%_)
                                               (not (gx#stx-null?
                                                     _%body119721%_)))
                                          (gx#core-cons*
                                           _%form119682%_
                                           (gx#stx-map1
                                            _%generate119684%_
                                            _%hd119719%_)
                                           _%body119721%_)
                                          (_%E119687119699%_)))))
                                (_%E119687119699%_))))
                        (_%E119687119699%_)))))
            (_%E119686119723%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119773%_)
        (let ((_%form119775%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119773%_ _%form119775%_))))
    (define gx#macro-expand-let-values
      (lambda _g122162_
        (let ((_g122161_ (##length _g122162_)))
          (cond ((##fx= _g122161_ 1)
                 (apply (lambda (_%stx119773%_)
                          (gx#macro-expand-let-values__0 _%stx119773%_))
                        _g122162_))
                ((##fx= _g122161_ 2)
                 (apply (lambda (_%stx119777%_ _%form119778%_)
                          (gx#macro-expand-let-values__%
                           _%stx119777%_
                           _%form119778%_))
                        _g122162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g122162_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119678%_)
        (gx#macro-expand-let-values__% _%stx119678%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119676%_)
        (gx#macro-expand-let-values__% _%stx119676%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx119567%_)
        (let* ((_%e119568119594%_ _%stx119567%_)
               (_%E119580119598%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119568119594%_)))
               (_%E119570119640%_
                (lambda ()
                  (if (gx#stx-pair? _%e119568119594%_)
                      (let ((_%e119581119602%_
                             (gx#syntax-e _%e119568119594%_)))
                        (let ((_%hd119582119605%_ (##car _%e119581119602%_))
                              (_%tl119583119607%_ (##cdr _%e119581119602%_)))
                          (if (gx#stx-pair? _%tl119583119607%_)
                              (let ((_%e119584119610%_
                                     (gx#syntax-e _%tl119583119607%_)))
                                (let ((_%hd119585119613%_
                                       (##car _%e119584119610%_))
                                      (_%tl119586119615%_
                                       (##cdr _%e119584119610%_)))
                                  (let ((_%test119618%_ _%hd119585119613%_))
                                    (if (gx#stx-pair? _%tl119586119615%_)
                                        (let ((_%e119587119620%_
                                               (gx#syntax-e
                                                _%tl119586119615%_)))
                                          (let ((_%hd119588119623%_
                                                 (##car _%e119587119620%_))
                                                (_%tl119589119625%_
                                                 (##cdr _%e119587119620%_)))
                                            (let ((_%K119628%_
                                                   _%hd119588119623%_))
                                              (if (gx#stx-pair?
                                                   _%tl119589119625%_)
                                                  (let ((_%e119590119630%_
                                                         (gx#syntax-e
                                                          _%tl119589119625%_)))
                                                    (let ((_%hd119591119633%_
                                                           (##car _%e119590119630%_))
                                                          (_%tl119592119635%_
                                                           (##cdr _%e119590119630%_)))
                                                      (let ((_%E119638%_
                                                             _%hd119591119633%_))
                                                        (if (gx#stx-null?
                                                             _%tl119592119635%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119618%_
                         _%K119628%_
                         _%E119638%_)
                        (_%E119580119598%_))
                    (_%E119580119598%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119580119598%_)))))
                                        (_%E119580119598%_)))))
                              (_%E119580119598%_))))
                      (_%E119580119598%_))))
               (_%E119569119672%_
                (lambda ()
                  (if (gx#stx-pair? _%e119568119594%_)
                      (let ((_%e119571119644%_
                             (gx#syntax-e _%e119568119594%_)))
                        (let ((_%hd119572119647%_ (##car _%e119571119644%_))
                              (_%tl119573119649%_ (##cdr _%e119571119644%_)))
                          (if (gx#stx-pair? _%tl119573119649%_)
                              (let ((_%e119574119652%_
                                     (gx#syntax-e _%tl119573119649%_)))
                                (let ((_%hd119575119655%_
                                       (##car _%e119574119652%_))
                                      (_%tl119576119657%_
                                       (##cdr _%e119574119652%_)))
                                  (let ((_%test119660%_ _%hd119575119655%_))
                                    (if (gx#stx-pair? _%tl119576119657%_)
                                        (let ((_%e119577119662%_
                                               (gx#syntax-e
                                                _%tl119576119657%_)))
                                          (let ((_%hd119578119665%_
                                                 (##car _%e119577119662%_))
                                                (_%tl119579119667%_
                                                 (##cdr _%e119577119662%_)))
                                            (let ((_%K119670%_
                                                   _%hd119578119665%_))
                                              (if (gx#stx-null?
                                                   _%tl119579119667%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119660%_
                                                       _%K119670%_
                                                       '#!void)
                                                      (_%E119570119640%_))
                                                  (_%E119570119640%_)))))
                                        (_%E119570119640%_)))))
                              (_%E119570119640%_))))
                      (_%E119570119640%_)))))
          (_%E119569119672%_))))
    (define gx#free-identifier=?
      (lambda (_%xid119552%_ _%yid119553%_)
        (let ((_%xe119555%_ (gx#resolve-identifier__0 _%xid119552%_))
              (_%ye119556%_ (gx#resolve-identifier__0 _%yid119553%_)))
          (if (and _%xe119555%_ _%ye119556%_)
              (let ((_%$e119559%_ (eq? _%xe119555%_ _%ye119556%_)))
                (if _%$e119559%_
                    _%$e119559%_
                    (if (##structure-instance-of? _%xe119555%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye119556%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe119555%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye119556%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe119555%_ _%ye119556%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid119552%_ _%yid119553%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid119533%_ _%yid119534%_)
        (letrec ((_%context119536%_
                  (lambda (_%e119550%_)
                    (if (##structure-direct-instance-of?
                         _%e119550%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e119550%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks119537%_
                  (lambda (_%e119545%_)
                    (if (symbol? _%e119545%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e119545%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e119545%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e119545%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap119538%_
                  (lambda (_%e119543%_)
                    (if (symbol? _%e119543%_)
                        _%e119543%_
                        (gx#syntax-local-unwrap _%e119543%_)))))
          (let ((_%x119540%_ (_%unwrap119538%_ _%xid119533%_))
                (_%y119541%_ (_%unwrap119538%_ _%yid119534%_)))
            (if (gx#stx-eq? _%x119540%_ _%y119541%_)
                (if (eq? (_%context119536%_ _%x119540%_)
                         (_%context119536%_ _%y119541%_))
                    (equal? (_%marks119537%_ _%x119540%_)
                            (_%marks119537%_ _%y119541%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx119531%_)
        (if (gx#identifier? _%stx119531%_)
            (gx#core-identifier=? _%stx119531%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx119529%_)
        (if (gx#identifier? _%stx119529%_)
            (gx#core-identifier=? _%stx119529%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx119472%_ _%where119473%_)
        (let _%lp119475%_ ((_%rest119477%_ (gx#syntax->list _%stx119472%_)))
          (let* ((_%rest119478119486%_ _%rest119477%_)
                 (_%else119480119494%_ (lambda () '#t))
                 (_%K119482119507%_
                  (lambda (_%rest119497%_ _%hd119498%_)
                    (if (not (gx#identifier? _%hd119498%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where119473%_
                           _%hd119498%_))
                        (if (__find (lambda (_%g119500119502%_)
                                      (gx#bound-identifier=?
                                       _%g119500119502%_
                                       _%hd119498%_))
                                    _%rest119497%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where119473%_
                               _%hd119498%_))
                            (let () (_%lp119475%_ _%rest119497%_)))))))
            (if (##pair? _%rest119478119486%_)
                (let ((_%hd119483119510%_ (##car _%rest119478119486%_))
                      (_%tl119484119512%_ (##cdr _%rest119478119486%_)))
                  (let* ((_%hd119515%_ _%hd119483119510%_)
                         (_%rest119517%_ _%tl119484119512%_))
                    (_%K119482119507%_ _%rest119517%_ _%hd119515%_)))
                (_%else119480119494%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx119522%_)
        (let ((_%where119524%_ _%stx119522%_))
          (gx#check-duplicate-identifiers__% _%stx119522%_ _%where119524%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g122164_
        (let ((_g122163_ (##length _g122164_)))
          (cond ((##fx= _g122163_ 1)
                 (apply (lambda (_%stx119522%_)
                          (gx#check-duplicate-identifiers__0 _%stx119522%_))
                        _g122164_))
                ((##fx= _g122163_ 2)
                 (apply (lambda (_%stx119526%_ _%where119527%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx119526%_
                           _%where119527%_))
                        _g122164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g122164_))))))
    (define gx#core-bind-values?
      (lambda (_%stx119464%_)
        (gx#stx-andmap
         (lambda (_%x119466%_)
           (let ((_%$e119468%_ (gx#identifier? _%x119466%_)))
             (if _%$e119468%_ _%$e119468%_ (gx#stx-false? _%x119466%_))))
         _%stx119464%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx119428%_ _%rebind?119429%_ _%phi119430%_ _%ctx119431%_)
        (gx#stx-for-each1
         (lambda (_%id119433%_)
           (if (gx#identifier? _%id119433%_)
               (gx#core-bind-runtime!__%
                _%id119433%_
                _%rebind?119429%_
                _%phi119430%_
                _%ctx119431%_)
               '#!void))
         _%stx119428%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx119438%_)
        (let* ((_%rebind?119440%_ '#f)
               (_%phi119442%_ (gx#current-expander-phi))
               (_%ctx119444%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119438%_
           _%rebind?119440%_
           _%phi119442%_
           _%ctx119444%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx119446%_ _%rebind?119447%_)
        (let* ((_%phi119449%_ (gx#current-expander-phi))
               (_%ctx119451%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119446%_
           _%rebind?119447%_
           _%phi119449%_
           _%ctx119451%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx119453%_ _%rebind?119454%_ _%phi119455%_)
        (let ((_%ctx119457%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119453%_
           _%rebind?119454%_
           _%phi119455%_
           _%ctx119457%_))))
    (define gx#core-bind-values!
      (lambda _g122166_
        (let ((_g122165_ (##length _g122166_)))
          (cond ((##fx= _g122165_ 1)
                 (apply (lambda (_%stx119438%_)
                          (gx#core-bind-values!__0 _%stx119438%_))
                        _g122166_))
                ((##fx= _g122165_ 2)
                 (apply (lambda (_%stx119446%_ _%rebind?119447%_)
                          (gx#core-bind-values!__1
                           _%stx119446%_
                           _%rebind?119447%_))
                        _g122166_))
                ((##fx= _g122165_ 3)
                 (apply (lambda (_%stx119453%_ _%rebind?119454%_ _%phi119455%_)
                          (gx#core-bind-values!__2
                           _%stx119453%_
                           _%rebind?119454%_
                           _%phi119455%_))
                        _g122166_))
                ((##fx= _g122165_ 4)
                 (apply (lambda (_%stx119459%_
                                 _%rebind?119460%_
                                 _%phi119461%_
                                 _%ctx119462%_)
                          (gx#core-bind-values!__%
                           _%stx119459%_
                           _%rebind?119460%_
                           _%phi119461%_
                           _%ctx119462%_))
                        _g122166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g122166_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx119423%_)
        (gx#stx-map1
         (lambda (_%x119425%_)
           (if (gx#identifier? _%x119425%_)
               (gx#core-quote-syntax__0 _%x119425%_)
               '#f))
         _%stx119423%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx119416%_)
        (if (gx#identifier? _%stx119416%_)
            (let* ((_%bind119418%_ (gx#resolve-identifier__0 _%stx119416%_))
                   (_%$e119420%_ (not _%bind119418%_)))
              (if _%$e119420%_
                  _%$e119420%_
                  (##structure-instance-of?
                   _%bind119418%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id119405%_ _%form119406%_)
        (let ((_%bind119408%_ (gx#resolve-identifier__0 _%id119405%_)))
          (if (##structure-instance-of? _%bind119408%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id119405%_))
              (if (not _%bind119408%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id119405%_)))
                        (gx#core-quote-syntax__0 _%id119405%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form119406%_
                         _%id119405%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form119406%_
                     _%id119405%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id119360%_ _%rebind?119361%_ _%phi119362%_ _%ctx119363%_)
        (let* ((_%key119365%_ (gx#core-identifier-key _%id119360%_))
               (_%eid119367%_
                (gx#make-binding-id__%
                 _%key119365%_
                 '#f
                 _%phi119362%_
                 _%ctx119363%_))
               (_%bind119373%_
                (if (##structure-instance-of?
                     _%ctx119363%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119367%_
                       _%key119365%_
                       _%phi119362%_
                       _%ctx119363%_))
                    (if (##structure-instance-of?
                         _%ctx119363%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119367%_
                           _%key119365%_
                           _%phi119362%_))
                        (if (##structure-instance-of?
                             _%ctx119363%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid119367%_
                               _%key119365%_
                               _%phi119362%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid119367%_
                               _%key119365%_
                               _%phi119362%_)))))))
          (gx#bind-identifier!__%
           _%id119360%_
           _%bind119373%_
           _%rebind?119361%_
           _%phi119362%_
           _%ctx119363%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id119379%_)
        (let* ((_%rebind?119381%_ '#f)
               (_%phi119383%_ (gx#current-expander-phi))
               (_%ctx119385%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119379%_
           _%rebind?119381%_
           _%phi119383%_
           _%ctx119385%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id119387%_ _%rebind?119388%_)
        (let* ((_%phi119390%_ (gx#current-expander-phi))
               (_%ctx119392%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119387%_
           _%rebind?119388%_
           _%phi119390%_
           _%ctx119392%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id119394%_ _%rebind?119395%_ _%phi119396%_)
        (let ((_%ctx119398%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119394%_
           _%rebind?119395%_
           _%phi119396%_
           _%ctx119398%_))))
    (define gx#core-bind-runtime!
      (lambda _g122168_
        (let ((_g122167_ (##length _g122168_)))
          (cond ((##fx= _g122167_ 1)
                 (apply (lambda (_%id119379%_)
                          (gx#core-bind-runtime!__0 _%id119379%_))
                        _g122168_))
                ((##fx= _g122167_ 2)
                 (apply (lambda (_%id119387%_ _%rebind?119388%_)
                          (gx#core-bind-runtime!__1
                           _%id119387%_
                           _%rebind?119388%_))
                        _g122168_))
                ((##fx= _g122167_ 3)
                 (apply (lambda (_%id119394%_ _%rebind?119395%_ _%phi119396%_)
                          (gx#core-bind-runtime!__2
                           _%id119394%_
                           _%rebind?119395%_
                           _%phi119396%_))
                        _g122168_))
                ((##fx= _g122167_ 4)
                 (apply (lambda (_%id119400%_
                                 _%rebind?119401%_
                                 _%phi119402%_
                                 _%ctx119403%_)
                          (gx#core-bind-runtime!__%
                           _%id119400%_
                           _%rebind?119401%_
                           _%phi119402%_
                           _%ctx119403%_))
                        _g122168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g122168_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id119312%_
               _%eid119313%_
               _%rebind?119314%_
               _%phi119315%_
               _%ctx119316%_)
        (let* ((_%key119318%_ (gx#core-identifier-key _%id119312%_))
               (_%bind119323%_
                (if (##structure-instance-of?
                     _%ctx119316%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119313%_
                       _%key119318%_
                       _%phi119315%_
                       _%ctx119316%_))
                    (if (##structure-instance-of?
                         _%ctx119316%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119313%_
                           _%key119318%_
                           _%phi119315%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid119313%_
                           _%key119318%_
                           _%phi119315%_))))))
          (gx#bind-identifier!__%
           _%id119312%_
           _%bind119323%_
           _%rebind?119314%_
           _%phi119315%_
           _%ctx119316%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id119329%_ _%eid119330%_)
        (let* ((_%rebind?119332%_ '#f)
               (_%phi119334%_ (gx#current-expander-phi))
               (_%ctx119336%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119329%_
           _%eid119330%_
           _%rebind?119332%_
           _%phi119334%_
           _%ctx119336%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id119338%_ _%eid119339%_ _%rebind?119340%_)
        (let* ((_%phi119342%_ (gx#current-expander-phi))
               (_%ctx119344%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119338%_
           _%eid119339%_
           _%rebind?119340%_
           _%phi119342%_
           _%ctx119344%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id119346%_ _%eid119347%_ _%rebind?119348%_ _%phi119349%_)
        (let ((_%ctx119351%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119346%_
           _%eid119347%_
           _%rebind?119348%_
           _%phi119349%_
           _%ctx119351%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g122170_
        (let ((_g122169_ (##length _g122170_)))
          (cond ((##fx= _g122169_ 2)
                 (apply (lambda (_%id119329%_ _%eid119330%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id119329%_
                           _%eid119330%_))
                        _g122170_))
                ((##fx= _g122169_ 3)
                 (apply (lambda (_%id119338%_ _%eid119339%_ _%rebind?119340%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id119338%_
                           _%eid119339%_
                           _%rebind?119340%_))
                        _g122170_))
                ((##fx= _g122169_ 4)
                 (apply (lambda (_%id119346%_
                                 _%eid119347%_
                                 _%rebind?119348%_
                                 _%phi119349%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id119346%_
                           _%eid119347%_
                           _%rebind?119348%_
                           _%phi119349%_))
                        _g122170_))
                ((##fx= _g122169_ 5)
                 (apply (lambda (_%id119353%_
                                 _%eid119354%_
                                 _%rebind?119355%_
                                 _%phi119356%_
                                 _%ctx119357%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id119353%_
                           _%eid119354%_
                           _%rebind?119355%_
                           _%phi119356%_
                           _%ctx119357%_))
                        _g122170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g122170_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id119272%_
               _%eid119273%_
               _%rebind?119274%_
               _%phi119275%_
               _%ctx119276%_)
        (gx#bind-identifier!__%
         _%id119272%_
         (##structure
          gx#extern-binding::t
          _%eid119273%_
          (gx#core-identifier-key _%id119272%_)
          _%phi119275%_)
         _%rebind?119274%_
         _%phi119275%_
         _%ctx119276%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id119281%_ _%eid119282%_)
        (let* ((_%rebind?119284%_ '#f)
               (_%phi119286%_ (gx#current-expander-phi))
               (_%ctx119288%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119281%_
           _%eid119282%_
           _%rebind?119284%_
           _%phi119286%_
           _%ctx119288%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id119290%_ _%eid119291%_ _%rebind?119292%_)
        (let* ((_%phi119294%_ (gx#current-expander-phi))
               (_%ctx119296%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119290%_
           _%eid119291%_
           _%rebind?119292%_
           _%phi119294%_
           _%ctx119296%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id119298%_ _%eid119299%_ _%rebind?119300%_ _%phi119301%_)
        (let ((_%ctx119303%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119298%_
           _%eid119299%_
           _%rebind?119300%_
           _%phi119301%_
           _%ctx119303%_))))
    (define gx#core-bind-extern!
      (lambda _g122172_
        (let ((_g122171_ (##length _g122172_)))
          (cond ((##fx= _g122171_ 2)
                 (apply (lambda (_%id119281%_ _%eid119282%_)
                          (gx#core-bind-extern!__0 _%id119281%_ _%eid119282%_))
                        _g122172_))
                ((##fx= _g122171_ 3)
                 (apply (lambda (_%id119290%_ _%eid119291%_ _%rebind?119292%_)
                          (gx#core-bind-extern!__1
                           _%id119290%_
                           _%eid119291%_
                           _%rebind?119292%_))
                        _g122172_))
                ((##fx= _g122171_ 4)
                 (apply (lambda (_%id119298%_
                                 _%eid119299%_
                                 _%rebind?119300%_
                                 _%phi119301%_)
                          (gx#core-bind-extern!__2
                           _%id119298%_
                           _%eid119299%_
                           _%rebind?119300%_
                           _%phi119301%_))
                        _g122172_))
                ((##fx= _g122171_ 5)
                 (apply (lambda (_%id119305%_
                                 _%eid119306%_
                                 _%rebind?119307%_
                                 _%phi119308%_
                                 _%ctx119309%_)
                          (gx#core-bind-extern!__%
                           _%id119305%_
                           _%eid119306%_
                           _%rebind?119307%_
                           _%phi119308%_
                           _%ctx119309%_))
                        _g122172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g122172_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id119226%_
               _%e119227%_
               _%rebind?119228%_
               _%phi119229%_
               _%ctx119230%_)
        (gx#bind-identifier!__%
         _%id119226%_
         (let ((_%key119235%_ (gx#core-identifier-key _%id119226%_))
               (_%e119236%_
                (if (or (##structure-instance-of? _%e119227%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e119227%_
                         'gx#expander-context::t))
                    _%e119227%_
                    (##structure
                     gx#user-expander::t
                     _%e119227%_
                     _%ctx119230%_
                     _%phi119229%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key119235%_
             '#t
             _%phi119229%_
             _%ctx119230%_)
            _%key119235%_
            _%phi119229%_
            _%e119236%_))
         _%rebind?119228%_
         _%phi119229%_
         _%ctx119230%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id119241%_ _%e119242%_)
        (let* ((_%rebind?119244%_ '#f)
               (_%phi119246%_ (gx#current-expander-phi))
               (_%ctx119248%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119241%_
           _%e119242%_
           _%rebind?119244%_
           _%phi119246%_
           _%ctx119248%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id119250%_ _%e119251%_ _%rebind?119252%_)
        (let* ((_%phi119254%_ (gx#current-expander-phi))
               (_%ctx119256%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119250%_
           _%e119251%_
           _%rebind?119252%_
           _%phi119254%_
           _%ctx119256%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id119258%_ _%e119259%_ _%rebind?119260%_ _%phi119261%_)
        (let ((_%ctx119263%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119258%_
           _%e119259%_
           _%rebind?119260%_
           _%phi119261%_
           _%ctx119263%_))))
    (define gx#core-bind-syntax!
      (lambda _g122174_
        (let ((_g122173_ (##length _g122174_)))
          (cond ((##fx= _g122173_ 2)
                 (apply (lambda (_%id119241%_ _%e119242%_)
                          (gx#core-bind-syntax!__0 _%id119241%_ _%e119242%_))
                        _g122174_))
                ((##fx= _g122173_ 3)
                 (apply (lambda (_%id119250%_ _%e119251%_ _%rebind?119252%_)
                          (gx#core-bind-syntax!__1
                           _%id119250%_
                           _%e119251%_
                           _%rebind?119252%_))
                        _g122174_))
                ((##fx= _g122173_ 4)
                 (apply (lambda (_%id119258%_
                                 _%e119259%_
                                 _%rebind?119260%_
                                 _%phi119261%_)
                          (gx#core-bind-syntax!__2
                           _%id119258%_
                           _%e119259%_
                           _%rebind?119260%_
                           _%phi119261%_))
                        _g122174_))
                ((##fx= _g122173_ 5)
                 (apply (lambda (_%id119265%_
                                 _%e119266%_
                                 _%rebind?119267%_
                                 _%phi119268%_
                                 _%ctx119269%_)
                          (gx#core-bind-syntax!__%
                           _%id119265%_
                           _%e119266%_
                           _%rebind?119267%_
                           _%phi119268%_
                           _%ctx119269%_))
                        _g122174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g122174_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id119209%_ _%e119210%_ _%rebind?119211%_)
        (gx#core-bind-syntax!__%
         _%id119209%_
         _%e119210%_
         _%rebind?119211%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id119216%_ _%e119217%_)
        (let ((_%rebind?119219%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id119216%_
           _%e119217%_
           _%rebind?119219%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g122176_
        (let ((_g122175_ (##length _g122176_)))
          (cond ((##fx= _g122175_ 2)
                 (apply (lambda (_%id119216%_ _%e119217%_)
                          (gx#core-bind-root-syntax!__0
                           _%id119216%_
                           _%e119217%_))
                        _g122176_))
                ((##fx= _g122175_ 3)
                 (apply (lambda (_%id119221%_ _%e119222%_ _%rebind?119223%_)
                          (gx#core-bind-root-syntax!__%
                           _%id119221%_
                           _%e119222%_
                           _%rebind?119223%_))
                        _g122176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g122176_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id119167%_
               _%alias-id119168%_
               _%rebind?119169%_
               _%phi119170%_
               _%ctx119171%_)
        (gx#bind-identifier!__%
         _%id119167%_
         (let ((_%key119173%_ (gx#core-identifier-key _%id119167%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key119173%_
             '#t
             _%phi119170%_
             _%ctx119171%_)
            _%key119173%_
            _%phi119170%_
            _%alias-id119168%_))
         _%rebind?119169%_
         _%phi119170%_
         _%ctx119171%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id119178%_ _%alias-id119179%_)
        (let* ((_%rebind?119181%_ '#f)
               (_%phi119183%_ (gx#current-expander-phi))
               (_%ctx119185%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119178%_
           _%alias-id119179%_
           _%rebind?119181%_
           _%phi119183%_
           _%ctx119185%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id119187%_ _%alias-id119188%_ _%rebind?119189%_)
        (let* ((_%phi119191%_ (gx#current-expander-phi))
               (_%ctx119193%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119187%_
           _%alias-id119188%_
           _%rebind?119189%_
           _%phi119191%_
           _%ctx119193%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id119195%_ _%alias-id119196%_ _%rebind?119197%_ _%phi119198%_)
        (let ((_%ctx119200%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119195%_
           _%alias-id119196%_
           _%rebind?119197%_
           _%phi119198%_
           _%ctx119200%_))))
    (define gx#core-bind-alias!
      (lambda _g122178_
        (let ((_g122177_ (##length _g122178_)))
          (cond ((##fx= _g122177_ 2)
                 (apply (lambda (_%id119178%_ _%alias-id119179%_)
                          (gx#core-bind-alias!__0
                           _%id119178%_
                           _%alias-id119179%_))
                        _g122178_))
                ((##fx= _g122177_ 3)
                 (apply (lambda (_%id119187%_
                                 _%alias-id119188%_
                                 _%rebind?119189%_)
                          (gx#core-bind-alias!__1
                           _%id119187%_
                           _%alias-id119188%_
                           _%rebind?119189%_))
                        _g122178_))
                ((##fx= _g122177_ 4)
                 (apply (lambda (_%id119195%_
                                 _%alias-id119196%_
                                 _%rebind?119197%_
                                 _%phi119198%_)
                          (gx#core-bind-alias!__2
                           _%id119195%_
                           _%alias-id119196%_
                           _%rebind?119197%_
                           _%phi119198%_))
                        _g122178_))
                ((##fx= _g122177_ 5)
                 (apply (lambda (_%id119202%_
                                 _%alias-id119203%_
                                 _%rebind?119204%_
                                 _%phi119205%_
                                 _%ctx119206%_)
                          (gx#core-bind-alias!__%
                           _%id119202%_
                           _%alias-id119203%_
                           _%rebind?119204%_
                           _%phi119205%_
                           _%ctx119206%_))
                        _g122178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g122178_))))))
    (define gx#make-binding-id__%
      (lambda (_%key119117%_ _%syntax?119118%_ _%phi119119%_ _%ctx119120%_)
        (if (uninterned-symbol? _%key119117%_)
            (let () (##gensym 'L))
            (if (pair? _%key119117%_)
                (let () (gensym (car _%key119117%_)))
                (if (##structure-instance-of? _%ctx119120%_ 'gx#top-context::t)
                    (let ((_%ns119125%_
                           (gx#core-context-namespace__% _%ctx119120%_)))
                      (if (and (fxzero? _%phi119119%_) (not _%syntax?119118%_))
                          (let ()
                            (if _%ns119125%_
                                (make-symbol__1
                                 _%ns119125%_
                                 '"#"
                                 _%key119117%_)
                                _%key119117%_))
                          (if _%syntax?119118%_
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119129%_ _%ns119125%_))
                                   (if _%$e119129%_ _%$e119129%_ '""))
                                 '"[:"
                                 (number->string _%phi119119%_)
                                 '":]#"
                                 _%key119117%_))
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119133%_ _%ns119125%_))
                                   (if _%$e119133%_ _%$e119133%_ '""))
                                 '"["
                                 (number->string _%phi119119%_)
                                 '"]#"
                                 _%key119117%_)))))
                    (let () (gensym _%key119117%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key119140%_)
        (let* ((_%syntax?119142%_ '#f)
               (_%phi119144%_ (gx#current-expander-phi))
               (_%ctx119146%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119140%_
           _%syntax?119142%_
           _%phi119144%_
           _%ctx119146%_))))
    (define gx#make-binding-id__1
      (lambda (_%key119148%_ _%syntax?119149%_)
        (let* ((_%phi119151%_ (gx#current-expander-phi))
               (_%ctx119153%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119148%_
           _%syntax?119149%_
           _%phi119151%_
           _%ctx119153%_))))
    (define gx#make-binding-id__2
      (lambda (_%key119155%_ _%syntax?119156%_ _%phi119157%_)
        (let ((_%ctx119159%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119155%_
           _%syntax?119156%_
           _%phi119157%_
           _%ctx119159%_))))
    (define gx#make-binding-id
      (lambda _g122180_
        (let ((_g122179_ (##length _g122180_)))
          (cond ((##fx= _g122179_ 1)
                 (apply (lambda (_%key119140%_)
                          (gx#make-binding-id__0 _%key119140%_))
                        _g122180_))
                ((##fx= _g122179_ 2)
                 (apply (lambda (_%key119148%_ _%syntax?119149%_)
                          (gx#make-binding-id__1
                           _%key119148%_
                           _%syntax?119149%_))
                        _g122180_))
                ((##fx= _g122179_ 3)
                 (apply (lambda (_%key119155%_ _%syntax?119156%_ _%phi119157%_)
                          (gx#make-binding-id__2
                           _%key119155%_
                           _%syntax?119156%_
                           _%phi119157%_))
                        _g122180_))
                ((##fx= _g122179_ 4)
                 (apply (lambda (_%key119161%_
                                 _%syntax?119162%_
                                 _%phi119163%_
                                 _%ctx119164%_)
                          (gx#make-binding-id__%
                           _%key119161%_
                           _%syntax?119162%_
                           _%phi119163%_
                           _%ctx119164%_))
                        _g122180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g122180_))))))))
