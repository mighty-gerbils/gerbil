(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712256087)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx122109%_)
        (letrec ((_%expand-special122111%_
                  (lambda (_%hd122113%_ _%K122114%_ _%rest122115%_ _%r122116%_)
                    (_%K122114%_
                     _%rest122115%_
                     (cons (gx#core-expand-top _%hd122113%_) _%r122116%_)))))
          (gx#core-expand-block__0 _%stx122109%_ _%expand-special122111%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121862%_)
        (letrec ((_%expand-special121864%_
                  (lambda (_%hd121984%_ _%K121985%_ _%rest121986%_ _%r121987%_)
                    (let* ((_%K121991%_
                            (lambda (_%e121989%_)
                              (_%K121985%_
                               _%rest121986%_
                               (cons _%e121989%_ _%r121987%_))))
                           (_%e121992122021%_ _%hd121984%_)
                           (_%E122016122025%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121992122021%_)))
                           (_%E122012122037%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121992122021%_)
                                  (let ((_%e122017122029%_
                                         (gx#syntax-e _%e121992122021%_)))
                                    (let ((_%hd122018122032%_
                                           (##car _%e122017122029%_))
                                          (_%tl122019122034%_
                                           (##cdr _%e122017122029%_)))
                                      (if (and (gx#identifier?
                                                _%hd122018122032%_)
                                               (gx#core-identifier=?
                                                _%hd122018122032%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121991%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121984%_))
                                              (_%E122016122025%_))
                                          (_%E122016122025%_))))
                                  (_%E122016122025%_))))
                           (_%E122008122049%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121992122021%_)
                                  (let ((_%e122013122041%_
                                         (gx#syntax-e _%e121992122021%_)))
                                    (let ((_%hd122014122044%_
                                           (##car _%e122013122041%_))
                                          (_%tl122015122046%_
                                           (##cdr _%e122013122041%_)))
                                      (if (and (gx#identifier?
                                                _%hd122014122044%_)
                                               (gx#core-identifier=?
                                                _%hd122014122044%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121991%_
                                               (gx#core-expand-define-alias%
                                                _%hd121984%_))
                                              (_%E122012122037%_))
                                          (_%E122012122037%_))))
                                  (_%E122012122037%_))))
                           (_%E121998122061%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121992122021%_)
                                  (let ((_%e122009122053%_
                                         (gx#syntax-e _%e121992122021%_)))
                                    (let ((_%hd122010122056%_
                                           (##car _%e122009122053%_))
                                          (_%tl122011122058%_
                                           (##cdr _%e122009122053%_)))
                                      (if (and (gx#identifier?
                                                _%hd122010122056%_)
                                               (gx#core-identifier=?
                                                _%hd122010122056%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121991%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121984%_))
                                              (_%E122008122049%_))
                                          (_%E122008122049%_))))
                                  (_%E122008122049%_))))
                           (_%E121994122093%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121992122021%_)
                                  (let ((_%e121999122065%_
                                         (gx#syntax-e _%e121992122021%_)))
                                    (let ((_%hd122000122068%_
                                           (##car _%e121999122065%_))
                                          (_%tl122001122070%_
                                           (##cdr _%e121999122065%_)))
                                      (if (and (gx#identifier?
                                                _%hd122000122068%_)
                                               (gx#core-identifier=?
                                                _%hd122000122068%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl122001122070%_)
                                              (let ((_%e122002122073%_
                                                     (gx#syntax-e
                                                      _%tl122001122070%_)))
                                                (let ((_%hd122003122076%_
                                                       (##car _%e122002122073%_))
                                                      (_%tl122004122078%_
                                                       (##cdr _%e122002122073%_)))
                                                  (let ((_%hd-bind122081%_
                                                         _%hd122003122076%_))
                                                    (if (gx#stx-pair?
                                                         _%tl122004122078%_)
                                                        (let ((_%e122005122083%_
                                                               (gx#syntax-e
                                                                _%tl122004122078%_)))
                                                          (let ((_%hd122006122086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e122005122083%_))
                        (_%tl122007122088%_ (##cdr _%e122005122083%_)))
                    (let ((_%expr122091%_ _%hd122006122086%_))
                      (if (gx#stx-null? _%tl122007122088%_)
                          (if (gx#core-bind-values? _%hd-bind122081%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind122081%_)
                                (_%K121991%_ _%hd121984%_))
                              (_%E121998122061%_))
                          (_%E121998122061%_)))))
                (_%E121998122061%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121998122061%_))
                                          (_%E121998122061%_))))
                                  (_%E121998122061%_))))
                           (_%E121993122105%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121992122021%_)
                                  (let ((_%e121995122097%_
                                         (gx#syntax-e _%e121992122021%_)))
                                    (let ((_%hd121996122100%_
                                           (##car _%e121995122097%_))
                                          (_%tl121997122102%_
                                           (##cdr _%e121995122097%_)))
                                      (if (and (gx#identifier?
                                                _%hd121996122100%_)
                                               (gx#core-identifier=?
                                                _%hd121996122100%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121991%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121984%_))
                                              (_%E121994122093%_))
                                          (_%E121994122093%_))))
                                  (_%E121994122093%_)))))
                      (_%E121993122105%_))))
                 (_%eval-body121865%_
                  (lambda (_%rbody121873%_)
                    (let _%lp121875%_ ((_%rest121877%_ _%rbody121873%_)
                                       (_%body121878%_ '())
                                       (_%ebody121879%_ '()))
                      (let* ((_%rest121880121888%_ _%rest121877%_)
                             (_%else121882121896%_
                              (lambda ()
                                (values _%body121878%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121879%_)
                                          (gx#stx-source _%stx121862%_))))))
                             (_%K121884121972%_
                              (lambda (_%rest121899%_ _%hd121900%_)
                                (let* ((_%e121901121918%_ _%hd121900%_)
                                       (_%E121913121922%_
                                        (lambda ()
                                          (_%lp121875%_
                                           _%rest121899%_
                                           (cons _%hd121900%_ _%body121878%_)
                                           (cons _%hd121900%_
                                                 _%ebody121879%_))))
                                       (_%E121903121934%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121901121918%_)
                                              (let ((_%e121914121926%_
                                                     (gx#syntax-e
                                                      _%e121901121918%_)))
                                                (let ((_%hd121915121929%_
                                                       (##car _%e121914121926%_))
                                                      (_%tl121916121931%_
                                                       (##cdr _%e121914121926%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121915121929%_)
                                                           (gx#core-identifier=?
                                                            _%hd121915121929%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121875%_
                                                           _%rest121899%_
                                                           (cons _%hd121900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121878%_)
                   _%ebody121879%_)
                  (_%E121913121922%_))
              (_%E121913121922%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121913121922%_))))
                                       (_%E121902121968%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121901121918%_)
                                              (let ((_%e121904121938%_
                                                     (gx#syntax-e
                                                      _%e121901121918%_)))
                                                (let ((_%hd121905121941%_
                                                       (##car _%e121904121938%_))
                                                      (_%tl121906121943%_
                                                       (##cdr _%e121904121938%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121905121941%_)
                                                           (gx#core-identifier=?
                                                            _%hd121905121941%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121906121943%_)
                                                          (let ((_%e121907121946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121906121943%_)))
                    (let ((_%hd121908121949%_ (##car _%e121907121946%_))
                          (_%tl121909121951%_ (##cdr _%e121907121946%_)))
                      (let ((_%hd-bind121954%_ _%hd121908121949%_))
                        (if (gx#stx-pair? _%tl121909121951%_)
                            (let ((_%e121910121956%_
                                   (gx#syntax-e _%tl121909121951%_)))
                              (let ((_%hd121911121959%_
                                     (##car _%e121910121956%_))
                                    (_%tl121912121961%_
                                     (##cdr _%e121910121956%_)))
                                (let ((_%expr121964%_ _%hd121911121959%_))
                                  (if (gx#stx-null? _%tl121912121961%_)
                                      (if '#t
                                          (let ((_%ehd121966%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121954%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121964%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121900%_))))
                                            (_%lp121875%_
                                             _%rest121899%_
                                             (cons _%ehd121966%_
                                                   _%body121878%_)
                                             (cons _%ehd121966%_
                                                   _%ebody121879%_)))
                                          (_%E121903121934%_))
                                      (_%E121903121934%_)))))
                            (_%E121903121934%_)))))
                  (_%E121903121934%_))
              (_%E121903121934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121903121934%_)))))
                                  (_%E121902121968%_)))))
                        (if (##pair? _%rest121880121888%_)
                            (let ((_%hd121885121975%_
                                   (##car _%rest121880121888%_))
                                  (_%tl121886121977%_
                                   (##cdr _%rest121880121888%_)))
                              (let* ((_%hd121980%_ _%hd121885121975%_)
                                     (_%rest121982%_ _%tl121886121977%_))
                                (_%K121884121972%_
                                 _%rest121982%_
                                 _%hd121980%_)))
                            (_%else121882121896%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121868%_
                     (gx#core-expand-block__1
                      _%stx121862%_
                      _%expand-special121864%_
                      '#f))
                    (_g122132_ (_%eval-body121865%_ _%rbody121868%_)))
               (begin
                 (let ((_g122133_
                        (if (##values? _g122132_)
                            (##vector-length _g122132_)
                            1)))
                   (if (not (##fx= _g122133_ 2))
                       (error "Context expects 2 values" _g122133_)))
                 (let ((_%expanded-body121870%_ (##vector-ref _g122132_ 0))
                       (_%value121871%_ (##vector-ref _g122132_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121870%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121871%_ '())))
                    (gx#stx-source _%stx121862%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121832%_)
        (let* ((_%e121833121840%_ _%stx121832%_)
               (_%E121835121844%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121833121840%_)))
               (_%E121834121858%_
                (lambda ()
                  (if (gx#stx-pair? _%e121833121840%_)
                      (let ((_%e121836121848%_
                             (gx#syntax-e _%e121833121840%_)))
                        (let ((_%hd121837121851%_ (##car _%e121836121848%_))
                              (_%tl121838121853%_ (##cdr _%e121836121848%_)))
                          (let ((_%body121856%_ _%tl121838121853%_))
                            (if (gx#stx-list? _%body121856%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121856%_)
                                 (gx#stx-source _%stx121832%_))
                                (_%E121835121844%_)))))
                      (_%E121835121844%_)))))
          (_%E121834121858%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121830%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121830%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121776%_)
        (let* ((_%e121777121790%_ _%stx121776%_)
               (_%E121779121794%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121777121790%_)))
               (_%E121778121826%_
                (lambda ()
                  (if (gx#stx-pair? _%e121777121790%_)
                      (let ((_%e121780121798%_
                             (gx#syntax-e _%e121777121790%_)))
                        (let ((_%hd121781121801%_ (##car _%e121780121798%_))
                              (_%tl121782121803%_ (##cdr _%e121780121798%_)))
                          (if (gx#stx-pair? _%tl121782121803%_)
                              (let ((_%e121783121806%_
                                     (gx#syntax-e _%tl121782121803%_)))
                                (let ((_%hd121784121809%_
                                       (##car _%e121783121806%_))
                                      (_%tl121785121811%_
                                       (##cdr _%e121783121806%_)))
                                  (let ((_%ann121814%_ _%hd121784121809%_))
                                    (if (gx#stx-pair? _%tl121785121811%_)
                                        (let ((_%e121786121816%_
                                               (gx#syntax-e
                                                _%tl121785121811%_)))
                                          (let ((_%hd121787121819%_
                                                 (##car _%e121786121816%_))
                                                (_%tl121788121821%_
                                                 (##cdr _%e121786121816%_)))
                                            (let ((_%expr121824%_
                                                   _%hd121787121819%_))
                                              (if (gx#stx-null?
                                                   _%tl121788121821%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121824%_)
                                 '())))
               (gx#stx-source _%stx121776%_))
              (_%E121779121794%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121779121794%_)))))
                                        (_%E121779121794%_)))))
                              (_%E121779121794%_))))
                      (_%E121779121794%_)))))
          (_%E121778121826%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx121500%_ _%body121501%_)
        (letrec ((_%expand-special121503%_
                  (lambda (_%hd121771%_ _%K121772%_ _%rest121773%_ _%r121774%_)
                    (_%K121772%_
                     '()
                     (cons (_%expand-internal121504%_
                            _%hd121771%_
                            _%rest121773%_)
                           _%r121774%_))))
                 (_%expand-internal121504%_
                  (lambda (_%hd121767%_ _%rest121768%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal121506%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd121767%_ _%rest121768%_))
                          (gx#stx-source _%stx121500%_))
                         _%expand-internal-special121505%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj122126
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj122126)
                       __obj122126))))
                 (_%expand-internal-special121505%_
                  (lambda (_%hd121662%_ _%K121663%_ _%rest121664%_ _%r121665%_)
                    (let* ((_%e121666121691%_ _%hd121662%_)
                           (_%E121686121695%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121666121691%_)))
                           (_%E121682121707%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121666121691%_)
                                  (let ((_%e121687121699%_
                                         (gx#syntax-e _%e121666121691%_)))
                                    (let ((_%hd121688121702%_
                                           (##car _%e121687121699%_))
                                          (_%tl121689121704%_
                                           (##cdr _%e121687121699%_)))
                                      (if (and (gx#identifier?
                                                _%hd121688121702%_)
                                               (gx#core-identifier=?
                                                _%hd121688121702%_
                                                '%#declare))
                                          (if '#t
                                              (_%K121663%_
                                               _%rest121664%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd121662%_)
                                                     _%r121665%_))
                                              (_%E121686121695%_))
                                          (_%E121686121695%_))))
                                  (_%E121686121695%_))))
                           (_%E121678121719%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121666121691%_)
                                  (let ((_%e121683121711%_
                                         (gx#syntax-e _%e121666121691%_)))
                                    (let ((_%hd121684121714%_
                                           (##car _%e121683121711%_))
                                          (_%tl121685121716%_
                                           (##cdr _%e121683121711%_)))
                                      (if (and (gx#identifier?
                                                _%hd121684121714%_)
                                               (gx#core-identifier=?
                                                _%hd121684121714%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd121662%_)
                                                (_%K121663%_
                                                 _%rest121664%_
                                                 _%r121665%_))
                                              (_%E121682121707%_))
                                          (_%E121682121707%_))))
                                  (_%E121682121707%_))))
                           (_%E121668121731%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121666121691%_)
                                  (let ((_%e121679121723%_
                                         (gx#syntax-e _%e121666121691%_)))
                                    (let ((_%hd121680121726%_
                                           (##car _%e121679121723%_))
                                          (_%tl121681121728%_
                                           (##cdr _%e121679121723%_)))
                                      (if (and (gx#identifier?
                                                _%hd121680121726%_)
                                               (gx#core-identifier=?
                                                _%hd121680121726%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd121662%_)
                                                (_%K121663%_
                                                 _%rest121664%_
                                                 _%r121665%_))
                                              (_%E121678121719%_))
                                          (_%E121678121719%_))))
                                  (_%E121678121719%_))))
                           (_%E121667121763%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121666121691%_)
                                  (let ((_%e121669121735%_
                                         (gx#syntax-e _%e121666121691%_)))
                                    (let ((_%hd121670121738%_
                                           (##car _%e121669121735%_))
                                          (_%tl121671121740%_
                                           (##cdr _%e121669121735%_)))
                                      (if (and (gx#identifier?
                                                _%hd121670121738%_)
                                               (gx#core-identifier=?
                                                _%hd121670121738%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121671121740%_)
                                              (let ((_%e121672121743%_
                                                     (gx#syntax-e
                                                      _%tl121671121740%_)))
                                                (let ((_%hd121673121746%_
                                                       (##car _%e121672121743%_))
                                                      (_%tl121674121748%_
                                                       (##cdr _%e121672121743%_)))
                                                  (let ((_%hd-bind121751%_
                                                         _%hd121673121746%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121674121748%_)
                                                        (let ((_%e121675121753%_
                                                               (gx#syntax-e
                                                                _%tl121674121748%_)))
                                                          (let ((_%hd121676121756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121675121753%_))
                        (_%tl121677121758%_ (##cdr _%e121675121753%_)))
                    (let ((_%expr121761%_ _%hd121676121756%_))
                      (if (gx#stx-null? _%tl121677121758%_)
                          (if (gx#core-bind-values? _%hd-bind121751%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121751%_)
                                (_%K121663%_
                                 _%rest121664%_
                                 (cons _%hd121662%_ _%r121665%_)))
                              (_%E121668121731%_))
                          (_%E121668121731%_)))))
                (_%E121668121731%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121668121731%_))
                                          (_%E121668121731%_))))
                                  (_%E121668121731%_)))))
                      (_%E121667121763%_))))
                 (_%wrap-internal121506%_
                  (lambda (_%rbody121508%_)
                    (let _%lp121510%_ ((_%rest121512%_ _%rbody121508%_)
                                       (_%decls121513%_ '())
                                       (_%bind121514%_ '())
                                       (_%body121515%_ '()))
                      (let* ((_%e121516121523%_ _%rest121512%_)
                             (_%E121518121572%_
                              (lambda ()
                                (let* ((_%body121567%_
                                        (let* ((_%body121526121536%_
                                                _%body121515%_)
                                               (_%else121529121544%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body121515%_)
                                                   (gx#stx-source
                                                    _%stx121500%_)))))
                                          (let ((_%K121534121564%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx121500%_)))
                                                (_%K121531121550%_
                                                 (lambda (_%expr121548%_)
                                                   _%expr121548%_)))
                                            (let ((_%try-match121528121560%_
                                                   (lambda ()
                                                     (if (##pair? _%body121526121536%_)
                                                         (let ((_%tl121533121555%_
                                                                (##cdr _%body121526121536%_))
                                                               (_%hd121532121553%_
                                                                (##car _%body121526121536%_)))
                                                           (if (##null? _%tl121533121555%_)
                                                               (let ((_%expr121558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121532121553%_))
                         (_%K121531121550%_ _%expr121558%_))
                       (_%else121529121544%_)))
                 (_%else121529121544%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body121526121536%_)
                                                  (_%K121534121564%_)
                                                  (_%try-match121528121560%_))))))
                                       (_%body121569%_
                                        (if (null? _%bind121514%_)
                                            _%body121567%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind121514%_
                                                         (cons _%body121567%_
                                                               '())))
                                             (gx#stx-source _%stx121500%_)))))
                                  (if (null? _%decls121513%_)
                                      _%body121569%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls121513%_
                                                   (cons _%body121569%_ '())))
                                       (gx#stx-source _%stx121500%_))))))
                             (_%E121517121658%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121516121523%_)
                                    (let ((_%e121519121576%_
                                           (gx#syntax-e _%e121516121523%_)))
                                      (let ((_%hd121520121579%_
                                             (##car _%e121519121576%_))
                                            (_%tl121521121581%_
                                             (##cdr _%e121519121576%_)))
                                        (let* ((_%hd121584%_
                                                _%hd121520121579%_)
                                               (_%rest121586%_
                                                _%tl121521121581%_))
                                          (if '#t
                                              (let* ((_%e121587121604%_
                                                      _%hd121584%_)
                                                     (_%E121599121608%_
                                                      (lambda ()
                                                        (if (null? _%bind121514%_)
                                                            (_%lp121510%_
                                                             _%rest121586%_
                                                             _%decls121513%_
                                                             _%bind121514%_
                                                             (cons _%hd121584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body121515%_))
                    (_%lp121510%_
                     _%rest121586%_
                     _%decls121513%_
                     (cons (cons '#f (cons _%hd121584%_ '())) _%bind121514%_)
                     _%body121515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121589121622%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121587121604%_)
                                                            (let ((_%e121600121612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121587121604%_)))
                      (let ((_%hd121601121615%_ (##car _%e121600121612%_))
                            (_%tl121602121617%_ (##cdr _%e121600121612%_)))
                        (if (and (gx#identifier? _%hd121601121615%_)
                                 (gx#core-identifier=?
                                  _%hd121601121615%_
                                  '%#declare))
                            (let ((_%xdecls121620%_ _%tl121602121617%_))
                              (if '#t
                                  (_%lp121510%_
                                   _%rest121586%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls121513%_
                                    _%xdecls121620%_)
                                   _%bind121514%_
                                   _%body121515%_)
                                  (_%E121599121608%_)))
                            (_%E121599121608%_))))
                    (_%E121599121608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121588121654%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121587121604%_)
                                                            (let ((_%e121590121626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121587121604%_)))
                      (let ((_%hd121591121629%_ (##car _%e121590121626%_))
                            (_%tl121592121631%_ (##cdr _%e121590121626%_)))
                        (if (and (gx#identifier? _%hd121591121629%_)
                                 (gx#core-identifier=?
                                  _%hd121591121629%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl121592121631%_)
                                (let ((_%e121593121634%_
                                       (gx#syntax-e _%tl121592121631%_)))
                                  (let ((_%hd121594121637%_
                                         (##car _%e121593121634%_))
                                        (_%tl121595121639%_
                                         (##cdr _%e121593121634%_)))
                                    (let ((_%hd-bind121642%_
                                           _%hd121594121637%_))
                                      (if (gx#stx-pair? _%tl121595121639%_)
                                          (let ((_%e121596121644%_
                                                 (gx#syntax-e
                                                  _%tl121595121639%_)))
                                            (let ((_%hd121597121647%_
                                                   (##car _%e121596121644%_))
                                                  (_%tl121598121649%_
                                                   (##cdr _%e121596121644%_)))
                                              (let ((_%expr121652%_
                                                     _%hd121597121647%_))
                                                (if (gx#stx-null?
                                                     _%tl121598121649%_)
                                                    (if '#t
                                                        (_%lp121510%_
                                                         _%rest121586%_
                                                         _%decls121513%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind121642%_)
                             (cons (gx#core-expand-expression _%expr121652%_)
                                   '()))
                       _%bind121514%_)
                 _%body121515%_)
                (_%E121589121622%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E121589121622%_)))))
                                          (_%E121589121622%_)))))
                                (_%E121589121622%_))
                            (_%E121589121622%_))))
                    (_%E121589121622%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121588121654%_))
                                              (_%E121518121572%_)))))
                                    (_%E121518121572%_)))))
                        (_%E121517121658%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body121501%_)
            (gx#stx-source _%stx121500%_))
           _%expand-special121503%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx121438%_)
        (let* ((_%e121439121446%_ _%stx121438%_)
               (_%E121441121450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121439121446%_)))
               (_%E121440121496%_
                (lambda ()
                  (if (gx#stx-pair? _%e121439121446%_)
                      (let ((_%e121442121454%_
                             (gx#syntax-e _%e121439121446%_)))
                        (let ((_%hd121443121457%_ (##car _%e121442121454%_))
                              (_%tl121444121459%_ (##cdr _%e121442121454%_)))
                          (let ((_%body121462%_ _%tl121444121459%_))
                            (if (gx#stx-list? _%body121462%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl121464%_)
                                     (let* ((_%e121465121472%_ _%decl121464%_)
                                            (_%E121467121476%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e121465121472%_)))
                                            (_%E121466121492%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e121465121472%_)
                                                   (let ((_%e121468121480%_
                                                          (gx#syntax-e
                                                           _%e121465121472%_)))
                                                     (let ((_%hd121469121483%_
                                                            (##car _%e121468121480%_))
                                                           (_%tl121470121485%_
                                                            (##cdr _%e121468121480%_)))
                                                       (let* ((_%head121488%_
                                                               _%hd121469121483%_)
                                                              (_%args121490%_
                                                               _%tl121470121485%_))
                                                         (if (gx#stx-list?
                                                              _%args121490%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl121464%_)
                                                             (_%E121467121476%_)))))
                                                   (_%E121467121476%_)))))
                                       (_%E121466121492%_)))
                                   _%body121462%_))
                                 (gx#stx-source _%stx121438%_))
                                (_%E121441121450%_)))))
                      (_%E121441121450%_)))))
          (_%E121440121496%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx121342%_)
        (let* ((_%e121343121350%_ _%stx121342%_)
               (_%E121345121354%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121343121350%_)))
               (_%E121344121434%_
                (lambda ()
                  (if (gx#stx-pair? _%e121343121350%_)
                      (let ((_%e121346121358%_
                             (gx#syntax-e _%e121343121350%_)))
                        (let ((_%hd121347121361%_ (##car _%e121346121358%_))
                              (_%tl121348121363%_ (##cdr _%e121346121358%_)))
                          (let ((_%body121366%_ _%tl121348121363%_))
                            (if '#t
                                (let _%lp121368%_ ((_%rest121370%_
                                                    _%body121366%_)
                                                   (_%r121371%_ '()))
                                  (let* ((_%e121372121386%_ _%rest121370%_)
                                         (_%E121384121390%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx121342%_)))
                                         (_%E121374121394%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e121372121386%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r121371%_))
                                                     (gx#stx-source
                                                      _%stx121342%_))
                                                    (_%E121384121390%_))
                                                (_%E121384121390%_))))
                                         (_%E121373121430%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e121372121386%_)
                                                (let ((_%e121375121398%_
                                                       (gx#syntax-e
                                                        _%e121372121386%_)))
                                                  (let ((_%hd121376121401%_
                                                         (##car _%e121375121398%_))
                                                        (_%tl121377121403%_
                                                         (##cdr _%e121375121398%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd121376121401%_)
                                                        (let ((_%e121378121406%_
                                                               (gx#syntax-e
                                                                _%hd121376121401%_)))
                                                          (let ((_%hd121379121409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121378121406%_))
                        (_%tl121380121411%_ (##cdr _%e121378121406%_)))
                    (let ((_%id121414%_ _%hd121379121409%_))
                      (if (gx#stx-pair? _%tl121380121411%_)
                          (let ((_%e121381121416%_
                                 (gx#syntax-e _%tl121380121411%_)))
                            (let ((_%hd121382121419%_
                                   (##car _%e121381121416%_))
                                  (_%tl121383121421%_
                                   (##cdr _%e121381121416%_)))
                              (let ((_%eid121424%_ _%hd121382121419%_))
                                (if (gx#stx-null? _%tl121383121421%_)
                                    (let ((_%rest121426%_ _%tl121377121403%_))
                                      (if (and (gx#identifier? _%id121414%_)
                                               (gx#identifier? _%eid121424%_))
                                          (let ((_%eid121428%_
                                                 (gx#stx-e _%eid121424%_)))
                                            (gx#core-bind-extern!__0
                                             _%id121414%_
                                             _%eid121428%_)
                                            (_%lp121368%_
                                             _%rest121426%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id121414%_)
                                                         (cons _%eid121428%_
                                                               '()))
                                                   _%r121371%_)))
                                          (_%E121374121394%_)))
                                    (_%E121374121394%_)))))
                          (_%E121374121394%_)))))
                (_%E121374121394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121374121394%_)))))
                                    (_%E121373121430%_)))
                                (_%E121345121354%_)))))
                      (_%E121345121354%_)))))
          (_%E121344121434%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx121288%_)
        (let* ((_%e121289121302%_ _%stx121288%_)
               (_%E121291121306%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121289121302%_)))
               (_%E121290121338%_
                (lambda ()
                  (if (gx#stx-pair? _%e121289121302%_)
                      (let ((_%e121292121310%_
                             (gx#syntax-e _%e121289121302%_)))
                        (let ((_%hd121293121313%_ (##car _%e121292121310%_))
                              (_%tl121294121315%_ (##cdr _%e121292121310%_)))
                          (if (gx#stx-pair? _%tl121294121315%_)
                              (let ((_%e121295121318%_
                                     (gx#syntax-e _%tl121294121315%_)))
                                (let ((_%hd121296121321%_
                                       (##car _%e121295121318%_))
                                      (_%tl121297121323%_
                                       (##cdr _%e121295121318%_)))
                                  (let ((_%hd121326%_ _%hd121296121321%_))
                                    (if (gx#stx-pair? _%tl121297121323%_)
                                        (let ((_%e121298121328%_
                                               (gx#syntax-e
                                                _%tl121297121323%_)))
                                          (let ((_%hd121299121331%_
                                                 (##car _%e121298121328%_))
                                                (_%tl121300121333%_
                                                 (##cdr _%e121298121328%_)))
                                            (let ((_%expr121336%_
                                                   _%hd121299121331%_))
                                              (if (gx#stx-null?
                                                   _%tl121300121333%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd121326%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd121326%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd121326%_)
                             (cons (gx#core-expand-expression _%expr121336%_)
                                   '())))
                 (gx#stx-source _%stx121288%_)))
              (_%E121291121306%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121291121306%_)))))
                                        (_%E121291121306%_)))))
                              (_%E121291121306%_))))
                      (_%E121291121306%_)))))
          (_%E121290121338%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx121232%_)
        (let* ((_%e121233121246%_ _%stx121232%_)
               (_%E121235121250%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121233121246%_)))
               (_%E121234121284%_
                (lambda ()
                  (if (gx#stx-pair? _%e121233121246%_)
                      (let ((_%e121236121254%_
                             (gx#syntax-e _%e121233121246%_)))
                        (let ((_%hd121237121257%_ (##car _%e121236121254%_))
                              (_%tl121238121259%_ (##cdr _%e121236121254%_)))
                          (if (gx#stx-pair? _%tl121238121259%_)
                              (let ((_%e121239121262%_
                                     (gx#syntax-e _%tl121238121259%_)))
                                (let ((_%hd121240121265%_
                                       (##car _%e121239121262%_))
                                      (_%tl121241121267%_
                                       (##cdr _%e121239121262%_)))
                                  (let ((_%id121270%_ _%hd121240121265%_))
                                    (if (gx#stx-pair? _%tl121241121267%_)
                                        (let ((_%e121242121272%_
                                               (gx#syntax-e
                                                _%tl121241121267%_)))
                                          (let ((_%hd121243121275%_
                                                 (##car _%e121242121272%_))
                                                (_%tl121244121277%_
                                                 (##cdr _%e121242121272%_)))
                                            (let ((_%binding-id121280%_
                                                   _%hd121243121275%_))
                                              (if (gx#stx-null?
                                                   _%tl121244121277%_)
                                                  (if (and (gx#identifier?
                                                            _%id121270%_)
                                                           (gx#identifier?
                                                            _%binding-id121280%_))
                                                      (let ((_%eid121282%_
                                                             (gx#stx-e
                                                              _%binding-id121280%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id121270%_
                                                         _%eid121282%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121270%_)
                             (cons _%eid121282%_ '())))))
              (_%E121235121250%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121235121250%_)))))
                                        (_%E121235121250%_)))))
                              (_%E121235121250%_))))
                      (_%E121235121250%_)))))
          (_%E121234121284%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx121175%_)
        (let* ((_%e121176121189%_ _%stx121175%_)
               (_%E121178121193%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121176121189%_)))
               (_%E121177121228%_
                (lambda ()
                  (if (gx#stx-pair? _%e121176121189%_)
                      (let ((_%e121179121197%_
                             (gx#syntax-e _%e121176121189%_)))
                        (let ((_%hd121180121200%_ (##car _%e121179121197%_))
                              (_%tl121181121202%_ (##cdr _%e121179121197%_)))
                          (if (gx#stx-pair? _%tl121181121202%_)
                              (let ((_%e121182121205%_
                                     (gx#syntax-e _%tl121181121202%_)))
                                (let ((_%hd121183121208%_
                                       (##car _%e121182121205%_))
                                      (_%tl121184121210%_
                                       (##cdr _%e121182121205%_)))
                                  (let ((_%id121213%_ _%hd121183121208%_))
                                    (if (gx#stx-pair? _%tl121184121210%_)
                                        (let ((_%e121185121215%_
                                               (gx#syntax-e
                                                _%tl121184121210%_)))
                                          (let ((_%hd121186121218%_
                                                 (##car _%e121185121215%_))
                                                (_%tl121187121220%_
                                                 (##cdr _%e121185121215%_)))
                                            (let ((_%expr121223%_
                                                   _%hd121186121218%_))
                                              (if (gx#stx-null?
                                                   _%tl121187121220%_)
                                                  (if (gx#identifier?
                                                       _%id121213%_)
                                                      (let ((_g122134_
                                                             (gx#core-expand-expression+1
                                                              _%expr121223%_)))
                                                        (begin
                                                          (let ((_g122135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g122134_)
                             (##vector-length _g122134_)
                             1)))
                    (if (not (##fx= _g122135_ 2))
                        (error "Context expects 2 values" _g122135_)))
                  (let ((_%e-stx121225%_ (##vector-ref _g122134_ 0))
                        (_%e121226%_ (##vector-ref _g122134_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id121213%_ _%e121226%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id121213%_)
                                   (cons _%e-stx121225%_ '())))
                       (gx#stx-source _%stx121175%_))))))
              (_%E121178121193%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121178121193%_)))))
                                        (_%E121178121193%_)))))
                              (_%E121178121193%_))))
                      (_%E121178121193%_)))))
          (_%E121177121228%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx121119%_)
        (let* ((_%e121120121133%_ _%stx121119%_)
               (_%E121122121137%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121120121133%_)))
               (_%E121121121171%_
                (lambda ()
                  (if (gx#stx-pair? _%e121120121133%_)
                      (let ((_%e121123121141%_
                             (gx#syntax-e _%e121120121133%_)))
                        (let ((_%hd121124121144%_ (##car _%e121123121141%_))
                              (_%tl121125121146%_ (##cdr _%e121123121141%_)))
                          (if (gx#stx-pair? _%tl121125121146%_)
                              (let ((_%e121126121149%_
                                     (gx#syntax-e _%tl121125121146%_)))
                                (let ((_%hd121127121152%_
                                       (##car _%e121126121149%_))
                                      (_%tl121128121154%_
                                       (##cdr _%e121126121149%_)))
                                  (let ((_%id121157%_ _%hd121127121152%_))
                                    (if (gx#stx-pair? _%tl121128121154%_)
                                        (let ((_%e121129121159%_
                                               (gx#syntax-e
                                                _%tl121128121154%_)))
                                          (let ((_%hd121130121162%_
                                                 (##car _%e121129121159%_))
                                                (_%tl121131121164%_
                                                 (##cdr _%e121129121159%_)))
                                            (let ((_%alias-id121167%_
                                                   _%hd121130121162%_))
                                              (if (gx#stx-null?
                                                   _%tl121131121164%_)
                                                  (if (and (gx#identifier?
                                                            _%id121157%_)
                                                           (gx#identifier?
                                                            _%alias-id121167%_))
                                                      (let ((_%alias-id121169%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id121167%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id121157%_
                                                         _%alias-id121169%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id121157%_)
                             (cons _%alias-id121169%_ '())))))
              (_%E121122121137%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121122121137%_)))))
                                        (_%E121122121137%_)))))
                              (_%E121122121137%_))))
                      (_%E121122121137%_)))))
          (_%E121121121171%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx121062%_ _%wrap?121063%_)
        (let* ((_%e121064121074%_ _%stx121062%_)
               (_%E121066121078%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121064121074%_)))
               (_%E121065121105%_
                (lambda ()
                  (if (gx#stx-pair? _%e121064121074%_)
                      (let ((_%e121067121082%_
                             (gx#syntax-e _%e121064121074%_)))
                        (let ((_%hd121068121085%_ (##car _%e121067121082%_))
                              (_%tl121069121087%_ (##cdr _%e121067121082%_)))
                          (if (gx#stx-pair? _%tl121069121087%_)
                              (let ((_%e121070121090%_
                                     (gx#syntax-e _%tl121069121087%_)))
                                (let ((_%hd121071121093%_
                                       (##car _%e121070121090%_))
                                      (_%tl121072121095%_
                                       (##cdr _%e121070121090%_)))
                                  (let* ((_%hd121098%_ _%hd121071121093%_)
                                         (_%body121100%_ _%tl121072121095%_))
                                    (if (gx#core-bind-values? _%hd121098%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd121098%_)
                                           (let ((_%body121103%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd121098%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx121062%_
                                                               _%body121100%_)
                                                              '()))))
                                             (if _%wrap?121063%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body121103%_)
                                                  (gx#stx-source
                                                   _%stx121062%_))
                                                 _%body121103%_)))
                                         gx#current-expander-context
                                         (let ((__obj122127
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122127)
                                           __obj122127))
                                        (_%E121066121078%_)))))
                              (_%E121066121078%_))))
                      (_%E121066121078%_)))))
          (_%E121065121105%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx121112%_)
        (let ((_%wrap?121114%_ '#t))
          (gx#core-expand-lambda%__% _%stx121112%_ _%wrap?121114%_))))
    (define gx#core-expand-lambda%
      (lambda _g122137_
        (let ((_g122136_ (##length _g122137_)))
          (cond ((##fx= _g122136_ 1)
                 (apply (lambda (_%stx121112%_)
                          (gx#core-expand-lambda%__0 _%stx121112%_))
                        _g122137_))
                ((##fx= _g122136_ 2)
                 (apply (lambda (_%stx121116%_ _%wrap?121117%_)
                          (gx#core-expand-lambda%__%
                           _%stx121116%_
                           _%wrap?121117%_))
                        _g122137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g122137_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx121026%_)
        (let* ((_%e121027121034%_ _%stx121026%_)
               (_%E121029121038%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121027121034%_)))
               (_%E121028121057%_
                (lambda ()
                  (if (gx#stx-pair? _%e121027121034%_)
                      (let ((_%e121030121042%_
                             (gx#syntax-e _%e121027121034%_)))
                        (let ((_%hd121031121045%_ (##car _%e121030121042%_))
                              (_%tl121032121047%_ (##cdr _%e121030121042%_)))
                          (let ((_%clauses121050%_ _%tl121032121047%_))
                            (if (gx#stx-list? _%clauses121050%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause121052%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause121052%_)
                                       (let ((_%$e121054%_
                                              (gx#stx-source
                                               _%clause121052%_)))
                                         (if _%$e121054%_
                                             _%$e121054%_
                                             (gx#stx-source _%stx121026%_))))
                                      '#f))
                                   _%clauses121050%_))
                                 (gx#stx-source _%stx121026%_))
                                (_%E121029121038%_)))))
                      (_%E121029121038%_)))))
          (_%E121028121057%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120980%_)
        (let* ((_%e120981120991%_ _%stx120980%_)
               (_%E120983120995%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120981120991%_)))
               (_%E120982121022%_
                (lambda ()
                  (if (gx#stx-pair? _%e120981120991%_)
                      (let ((_%e120984120999%_
                             (gx#syntax-e _%e120981120991%_)))
                        (let ((_%hd120985121002%_ (##car _%e120984120999%_))
                              (_%tl120986121004%_ (##cdr _%e120984120999%_)))
                          (if (gx#stx-pair? _%tl120986121004%_)
                              (let ((_%e120987121007%_
                                     (gx#syntax-e _%tl120986121004%_)))
                                (let ((_%hd120988121010%_
                                       (##car _%e120987121007%_))
                                      (_%tl120989121012%_
                                       (##cdr _%e120987121007%_)))
                                  (let* ((_%hd121015%_ _%hd120988121010%_)
                                         (_%body121017%_ _%tl120989121012%_))
                                    (if (gx#core-expand-let-bind? _%hd121015%_)
                                        (let ((_%expressions121019%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd121015%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd121015%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd121015%_
                                                           _%expressions121019%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120980%_
                         _%body121017%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120980%_)))
                                           gx#current-expander-context
                                           (let ((__obj122128
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122128)
                                             __obj122128)))
                                        (_%E120983120995%_)))))
                              (_%E120983120995%_))))
                      (_%E120983120995%_)))))
          (_%E120982121022%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120925%_ _%form120926%_)
        (let* ((_%e120927120937%_ _%stx120925%_)
               (_%E120929120941%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120927120937%_)))
               (_%E120928120966%_
                (lambda ()
                  (if (gx#stx-pair? _%e120927120937%_)
                      (let ((_%e120930120945%_
                             (gx#syntax-e _%e120927120937%_)))
                        (let ((_%hd120931120948%_ (##car _%e120930120945%_))
                              (_%tl120932120950%_ (##cdr _%e120930120945%_)))
                          (if (gx#stx-pair? _%tl120932120950%_)
                              (let ((_%e120933120953%_
                                     (gx#syntax-e _%tl120932120950%_)))
                                (let ((_%hd120934120956%_
                                       (##car _%e120933120953%_))
                                      (_%tl120935120958%_
                                       (##cdr _%e120933120953%_)))
                                  (let* ((_%hd120961%_ _%hd120934120956%_)
                                         (_%body120963%_ _%tl120935120958%_))
                                    (if (gx#core-expand-let-bind? _%hd120961%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120961%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120926%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120961%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120961%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120925%_
                                                               _%body120963%_)
                                                              '())))
                                            (gx#stx-source _%stx120925%_)))
                                         gx#current-expander-context
                                         (let ((__obj122129
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122129)
                                           __obj122129))
                                        (_%E120929120941%_)))))
                              (_%E120929120941%_))))
                      (_%E120929120941%_)))))
          (_%E120928120966%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120973%_)
        (let ((_%form120975%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120973%_ _%form120975%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g122139_
        (let ((_g122138_ (##length _g122139_)))
          (cond ((##fx= _g122138_ 1)
                 (apply (lambda (_%stx120973%_)
                          (gx#core-expand-letrec-values%__0 _%stx120973%_))
                        _g122139_))
                ((##fx= _g122138_ 2)
                 (apply (lambda (_%stx120977%_ _%form120978%_)
                          (gx#core-expand-letrec-values%__%
                           _%stx120977%_
                           _%form120978%_))
                        _g122139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g122139_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120922%_)
        (gx#core-expand-letrec-values%__% _%stx120922%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120879%_)
        (if (gx#stx-list? _%stx120879%_)
            (gx#stx-andmap
             (lambda (_%bind120881%_)
               (let* ((_%e120882120892%_ _%bind120881%_)
                      (_%E120884120896%_ (lambda () '#f))
                      (_%E120883120918%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120882120892%_)
                             (let ((_%e120885120900%_
                                    (gx#syntax-e _%e120882120892%_)))
                               (let ((_%hd120886120903%_
                                      (##car _%e120885120900%_))
                                     (_%tl120887120905%_
                                      (##cdr _%e120885120900%_)))
                                 (let ((_%hd120908%_ _%hd120886120903%_))
                                   (if (gx#stx-pair? _%tl120887120905%_)
                                       (let ((_%e120888120910%_
                                              (gx#syntax-e
                                               _%tl120887120905%_)))
                                         (let ((_%hd120889120913%_
                                                (##car _%e120888120910%_))
                                               (_%tl120890120915%_
                                                (##cdr _%e120888120910%_)))
                                           (if (gx#stx-null?
                                                _%tl120890120915%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120908%_)
                                                   (_%E120884120896%_))
                                               (_%E120884120896%_))))
                                       (_%E120884120896%_)))))
                             (_%E120884120896%_)))))
                 (_%E120883120918%_)))
             _%stx120879%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120838%_)
        (let* ((_%e120839120849%_ _%bind120838%_)
               (_%E120841120853%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120839120849%_)))
               (_%E120840120875%_
                (lambda ()
                  (if (gx#stx-pair? _%e120839120849%_)
                      (let ((_%e120842120857%_
                             (gx#syntax-e _%e120839120849%_)))
                        (let ((_%hd120843120860%_ (##car _%e120842120857%_))
                              (_%tl120844120862%_ (##cdr _%e120842120857%_)))
                          (if (gx#stx-pair? _%tl120844120862%_)
                              (let ((_%e120845120865%_
                                     (gx#syntax-e _%tl120844120862%_)))
                                (let ((_%hd120846120868%_
                                       (##car _%e120845120865%_))
                                      (_%tl120847120870%_
                                       (##cdr _%e120845120865%_)))
                                  (let ((_%expr120873%_ _%hd120846120868%_))
                                    (if (gx#stx-null? _%tl120847120870%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120873%_)
                                            (_%E120841120853%_))
                                        (_%E120841120853%_)))))
                              (_%E120841120853%_))))
                      (_%E120841120853%_)))))
          (_%E120840120875%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120797%_)
        (let* ((_%e120798120808%_ _%bind120797%_)
               (_%E120800120812%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120798120808%_)))
               (_%E120799120834%_
                (lambda ()
                  (if (gx#stx-pair? _%e120798120808%_)
                      (let ((_%e120801120816%_
                             (gx#syntax-e _%e120798120808%_)))
                        (let ((_%hd120802120819%_ (##car _%e120801120816%_))
                              (_%tl120803120821%_ (##cdr _%e120801120816%_)))
                          (let ((_%hd120824%_ _%hd120802120819%_))
                            (if (gx#stx-pair? _%tl120803120821%_)
                                (let ((_%e120804120826%_
                                       (gx#syntax-e _%tl120803120821%_)))
                                  (let ((_%hd120805120829%_
                                         (##car _%e120804120826%_))
                                        (_%tl120806120831%_
                                         (##cdr _%e120804120826%_)))
                                    (if (gx#stx-null? _%tl120806120831%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120824%_)
                                            (_%E120800120812%_))
                                        (_%E120800120812%_))))
                                (_%E120800120812%_)))))
                      (_%E120800120812%_)))))
          (_%E120799120834%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind120755%_ _%expr120756%_)
        (let* ((_%e120757120767%_ _%bind120755%_)
               (_%E120759120771%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120757120767%_)))
               (_%E120758120793%_
                (lambda ()
                  (if (gx#stx-pair? _%e120757120767%_)
                      (let ((_%e120760120775%_
                             (gx#syntax-e _%e120757120767%_)))
                        (let ((_%hd120761120778%_ (##car _%e120760120775%_))
                              (_%tl120762120780%_ (##cdr _%e120760120775%_)))
                          (let ((_%hd120783%_ _%hd120761120778%_))
                            (if (gx#stx-pair? _%tl120762120780%_)
                                (let ((_%e120763120785%_
                                       (gx#syntax-e _%tl120762120780%_)))
                                  (let ((_%hd120764120788%_
                                         (##car _%e120763120785%_))
                                        (_%tl120765120790%_
                                         (##cdr _%e120763120785%_)))
                                    (if (gx#stx-null? _%tl120765120790%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120783%_)
                                                  (cons _%expr120756%_ '()))
                                            (_%E120759120771%_))
                                        (_%E120759120771%_))))
                                (_%E120759120771%_)))))
                      (_%E120759120771%_)))))
          (_%E120758120793%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx120709%_)
        (let* ((_%e120710120720%_ _%stx120709%_)
               (_%E120712120724%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120710120720%_)))
               (_%E120711120751%_
                (lambda ()
                  (if (gx#stx-pair? _%e120710120720%_)
                      (let ((_%e120713120728%_
                             (gx#syntax-e _%e120710120720%_)))
                        (let ((_%hd120714120731%_ (##car _%e120713120728%_))
                              (_%tl120715120733%_ (##cdr _%e120713120728%_)))
                          (if (gx#stx-pair? _%tl120715120733%_)
                              (let ((_%e120716120736%_
                                     (gx#syntax-e _%tl120715120733%_)))
                                (let ((_%hd120717120739%_
                                       (##car _%e120716120736%_))
                                      (_%tl120718120741%_
                                       (##cdr _%e120716120736%_)))
                                  (let* ((_%hd120744%_ _%hd120717120739%_)
                                         (_%body120746%_ _%tl120718120741%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120744%_)
                                        (let ((_%expanders120748%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd120744%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd120744%_
                                              _%expanders120748%_)
                                             (gx#core-expand-local-block
                                              _%stx120709%_
                                              _%body120746%_))
                                           gx#current-expander-context
                                           (let ((__obj122130
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj122130)
                                             __obj122130)))
                                        (_%E120712120724%_)))))
                              (_%E120712120724%_))))
                      (_%E120712120724%_)))))
          (_%E120711120751%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx120658%_)
        (let* ((_%e120659120669%_ _%stx120658%_)
               (_%E120661120673%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120659120669%_)))
               (_%E120660120705%_
                (lambda ()
                  (if (gx#stx-pair? _%e120659120669%_)
                      (let ((_%e120662120677%_
                             (gx#syntax-e _%e120659120669%_)))
                        (let ((_%hd120663120680%_ (##car _%e120662120677%_))
                              (_%tl120664120682%_ (##cdr _%e120662120677%_)))
                          (if (gx#stx-pair? _%tl120664120682%_)
                              (let ((_%e120665120685%_
                                     (gx#syntax-e _%tl120664120682%_)))
                                (let ((_%hd120666120688%_
                                       (##car _%e120665120685%_))
                                      (_%tl120667120690%_
                                       (##cdr _%e120665120685%_)))
                                  (let* ((_%hd120693%_ _%hd120666120688%_)
                                         (_%body120695%_ _%tl120667120690%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd120693%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd120693%_
                                            (make-list
                                             (gx#stx-length _%hd120693%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g120697120700%_
                                                     _%g120698120702%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g120697120700%_
                                               _%g120698120702%_
                                               '#t))
                                            _%hd120693%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd120693%_))
                                           (gx#core-expand-local-block
                                            _%stx120658%_
                                            _%body120695%_))
                                         gx#current-expander-context
                                         (let ((__obj122131
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj122131)
                                           __obj122131))
                                        (_%E120661120673%_)))))
                              (_%E120661120673%_))))
                      (_%E120661120673%_)))))
          (_%E120660120705%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx120615%_)
        (if (gx#stx-list? _%stx120615%_)
            (gx#stx-andmap
             (lambda (_%bind120617%_)
               (let* ((_%e120618120628%_ _%bind120617%_)
                      (_%E120620120632%_ (lambda () '#f))
                      (_%E120619120654%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120618120628%_)
                             (let ((_%e120621120636%_
                                    (gx#syntax-e _%e120618120628%_)))
                               (let ((_%hd120622120639%_
                                      (##car _%e120621120636%_))
                                     (_%tl120623120641%_
                                      (##cdr _%e120621120636%_)))
                                 (let ((_%hd120644%_ _%hd120622120639%_))
                                   (if (gx#stx-pair? _%tl120623120641%_)
                                       (let ((_%e120624120646%_
                                              (gx#syntax-e
                                               _%tl120623120641%_)))
                                         (let ((_%hd120625120649%_
                                                (##car _%e120624120646%_))
                                               (_%tl120626120651%_
                                                (##cdr _%e120624120646%_)))
                                           (if (gx#stx-null?
                                                _%tl120626120651%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd120644%_)
                                                   (_%E120620120632%_))
                                               (_%E120620120632%_))))
                                       (_%E120620120632%_)))))
                             (_%E120620120632%_)))))
                 (_%E120619120654%_)))
             _%stx120615%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind120571%_)
        (let* ((_%e120572120582%_ _%bind120571%_)
               (_%E120574120586%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120572120582%_)))
               (_%E120573120611%_
                (lambda ()
                  (if (gx#stx-pair? _%e120572120582%_)
                      (let ((_%e120575120590%_
                             (gx#syntax-e _%e120572120582%_)))
                        (let ((_%hd120576120593%_ (##car _%e120575120590%_))
                              (_%tl120577120595%_ (##cdr _%e120575120590%_)))
                          (if (gx#stx-pair? _%tl120577120595%_)
                              (let ((_%e120578120598%_
                                     (gx#syntax-e _%tl120577120595%_)))
                                (let ((_%hd120579120601%_
                                       (##car _%e120578120598%_))
                                      (_%tl120580120603%_
                                       (##cdr _%e120578120598%_)))
                                  (let ((_%expr120606%_ _%hd120579120601%_))
                                    (if (gx#stx-null? _%tl120580120603%_)
                                        (if '#t
                                            (let ((_g122140_
                                                   (gx#core-expand-expression+1
                                                    _%expr120606%_)))
                                              (begin
                                                (let ((_g122141_
                                                       (if (##values?
                                                            _g122140_)
                                                           (##vector-length
                                                            _g122140_)
                                                           1)))
                                                  (if (not (##fx= _g122141_ 2))
                                                      (error "Context expects 2 values"
                                                             _g122141_)))
                                                (let ((_%_120608%_
                                                       (##vector-ref
                                                        _g122140_
                                                        0))
                                                      (_%e120609%_
                                                       (##vector-ref
                                                        _g122140_
                                                        1)))
                                                  _%e120609%_)))
                                            (_%E120574120586%_))
                                        (_%E120574120586%_)))))
                              (_%E120574120586%_))))
                      (_%E120574120586%_)))))
          (_%E120573120611%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind120516%_ _%e120517%_ _%rebind?120518%_)
        (let* ((_%e120519120529%_ _%bind120516%_)
               (_%E120521120533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120519120529%_)))
               (_%E120520120555%_
                (lambda ()
                  (if (gx#stx-pair? _%e120519120529%_)
                      (let ((_%e120522120537%_
                             (gx#syntax-e _%e120519120529%_)))
                        (let ((_%hd120523120540%_ (##car _%e120522120537%_))
                              (_%tl120524120542%_ (##cdr _%e120522120537%_)))
                          (let ((_%id120545%_ _%hd120523120540%_))
                            (if (gx#stx-pair? _%tl120524120542%_)
                                (let ((_%e120525120547%_
                                       (gx#syntax-e _%tl120524120542%_)))
                                  (let ((_%hd120526120550%_
                                         (##car _%e120525120547%_))
                                        (_%tl120527120552%_
                                         (##cdr _%e120525120547%_)))
                                    (if (gx#stx-null? _%tl120527120552%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id120545%_
                                             _%e120517%_
                                             _%rebind?120518%_)
                                            (_%E120521120533%_))
                                        (_%E120521120533%_))))
                                (_%E120521120533%_)))))
                      (_%E120521120533%_)))))
          (_%E120520120555%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind120562%_ _%e120563%_)
        (let ((_%rebind?120565%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind120562%_
           _%e120563%_
           _%rebind?120565%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g122143_
        (let ((_g122142_ (##length _g122143_)))
          (cond ((##fx= _g122142_ 2)
                 (apply (lambda (_%bind120562%_ _%e120563%_)
                          (gx#core-expand-let-bind-syntax!__0
                           _%bind120562%_
                           _%e120563%_))
                        _g122143_))
                ((##fx= _g122142_ 3)
                 (apply (lambda (_%bind120567%_ _%e120568%_ _%rebind?120569%_)
                          (gx#core-expand-let-bind-syntax!__%
                           _%bind120567%_
                           _%e120568%_
                           _%rebind?120569%_))
                        _g122143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g122143_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx120474%_)
        (let* ((_%e120475120485%_ _%stx120474%_)
               (_%E120477120489%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120475120485%_)))
               (_%E120476120511%_
                (lambda ()
                  (if (gx#stx-pair? _%e120475120485%_)
                      (let ((_%e120478120493%_
                             (gx#syntax-e _%e120475120485%_)))
                        (let ((_%hd120479120496%_ (##car _%e120478120493%_))
                              (_%tl120480120498%_ (##cdr _%e120478120493%_)))
                          (if (gx#stx-pair? _%tl120480120498%_)
                              (let ((_%e120481120501%_
                                     (gx#syntax-e _%tl120480120498%_)))
                                (let ((_%hd120482120504%_
                                       (##car _%e120481120501%_))
                                      (_%tl120483120506%_
                                       (##cdr _%e120481120501%_)))
                                  (let ((_%expr120509%_ _%hd120482120504%_))
                                    (if (gx#stx-null? _%tl120483120506%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120509%_)
                                            (_%E120477120489%_))
                                        (_%E120477120489%_)))))
                              (_%E120477120489%_))))
                      (_%E120477120489%_)))))
          (_%E120476120511%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx120433%_)
        (let* ((_%e120434120444%_ _%stx120433%_)
               (_%E120436120448%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120434120444%_)))
               (_%E120435120470%_
                (lambda ()
                  (if (gx#stx-pair? _%e120434120444%_)
                      (let ((_%e120437120452%_
                             (gx#syntax-e _%e120434120444%_)))
                        (let ((_%hd120438120455%_ (##car _%e120437120452%_))
                              (_%tl120439120457%_ (##cdr _%e120437120452%_)))
                          (if (gx#stx-pair? _%tl120439120457%_)
                              (let ((_%e120440120460%_
                                     (gx#syntax-e _%tl120439120457%_)))
                                (let ((_%hd120441120463%_
                                       (##car _%e120440120460%_))
                                      (_%tl120442120465%_
                                       (##cdr _%e120440120460%_)))
                                  (let ((_%e120468%_ _%hd120441120463%_))
                                    (if (gx#stx-null? _%tl120442120465%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e120468%_)
                                                         '()))
                                             (gx#stx-source _%stx120433%_))
                                            (_%E120436120448%_))
                                        (_%E120436120448%_)))))
                              (_%E120436120448%_))))
                      (_%E120436120448%_)))))
          (_%E120435120470%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx120392%_)
        (let* ((_%e120393120403%_ _%stx120392%_)
               (_%E120395120407%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120393120403%_)))
               (_%E120394120429%_
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
                                  (let ((_%e120427%_ _%hd120400120422%_))
                                    (if (gx#stx-null? _%tl120401120424%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e120427%_)
                                                         '()))
                                             (gx#stx-source _%stx120392%_))
                                            (_%E120395120407%_))
                                        (_%E120395120407%_)))))
                              (_%E120395120407%_))))
                      (_%E120395120407%_)))))
          (_%E120394120429%_))))
    (define gx#core-expand-call%
      (lambda (_%stx120349%_)
        (let* ((_%e120350120360%_ _%stx120349%_)
               (_%E120352120364%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120350120360%_)))
               (_%E120351120388%_
                (lambda ()
                  (if (gx#stx-pair? _%e120350120360%_)
                      (let ((_%e120353120368%_
                             (gx#syntax-e _%e120350120360%_)))
                        (let ((_%hd120354120371%_ (##car _%e120353120368%_))
                              (_%tl120355120373%_ (##cdr _%e120353120368%_)))
                          (if (gx#stx-pair? _%tl120355120373%_)
                              (let ((_%e120356120376%_
                                     (gx#syntax-e _%tl120355120373%_)))
                                (let ((_%hd120357120379%_
                                       (##car _%e120356120376%_))
                                      (_%tl120358120381%_
                                       (##cdr _%e120356120376%_)))
                                  (let* ((_%rator120384%_ _%hd120357120379%_)
                                         (_%args120386%_ _%tl120358120381%_))
                                    (if (gx#stx-list? _%args120386%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator120384%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args120386%_))
                                         (gx#stx-source _%stx120349%_))
                                        (_%E120352120364%_)))))
                              (_%E120352120364%_))))
                      (_%E120352120364%_)))))
          (_%E120351120388%_))))
    (define gx#core-expand-if%
      (lambda (_%stx120282%_)
        (let* ((_%e120283120299%_ _%stx120282%_)
               (_%E120285120303%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120283120299%_)))
               (_%E120284120345%_
                (lambda ()
                  (if (gx#stx-pair? _%e120283120299%_)
                      (let ((_%e120286120307%_
                             (gx#syntax-e _%e120283120299%_)))
                        (let ((_%hd120287120310%_ (##car _%e120286120307%_))
                              (_%tl120288120312%_ (##cdr _%e120286120307%_)))
                          (if (gx#stx-pair? _%tl120288120312%_)
                              (let ((_%e120289120315%_
                                     (gx#syntax-e _%tl120288120312%_)))
                                (let ((_%hd120290120318%_
                                       (##car _%e120289120315%_))
                                      (_%tl120291120320%_
                                       (##cdr _%e120289120315%_)))
                                  (let ((_%test120323%_ _%hd120290120318%_))
                                    (if (gx#stx-pair? _%tl120291120320%_)
                                        (let ((_%e120292120325%_
                                               (gx#syntax-e
                                                _%tl120291120320%_)))
                                          (let ((_%hd120293120328%_
                                                 (##car _%e120292120325%_))
                                                (_%tl120294120330%_
                                                 (##cdr _%e120292120325%_)))
                                            (let ((_%K120333%_
                                                   _%hd120293120328%_))
                                              (if (gx#stx-pair?
                                                   _%tl120294120330%_)
                                                  (let ((_%e120295120335%_
                                                         (gx#syntax-e
                                                          _%tl120294120330%_)))
                                                    (let ((_%hd120296120338%_
                                                           (##car _%e120295120335%_))
                                                          (_%tl120297120340%_
                                                           (##cdr _%e120295120335%_)))
                                                      (let ((_%E120343%_
                                                             _%hd120296120338%_))
                                                        (if (gx#stx-null?
                                                             _%tl120297120340%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test120323%_)
                                     (cons (gx#core-expand-expression
                                            _%K120333%_)
                                           (cons (gx#core-expand-expression
                                                  _%E120343%_)
                                                 '()))))
                         (gx#stx-source _%stx120282%_))
                        (_%E120285120303%_))
                    (_%E120285120303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120285120303%_)))))
                                        (_%E120285120303%_)))))
                              (_%E120285120303%_))))
                      (_%E120285120303%_)))))
          (_%E120284120345%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx120241%_)
        (let* ((_%e120242120252%_ _%stx120241%_)
               (_%E120244120256%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120242120252%_)))
               (_%E120243120278%_
                (lambda ()
                  (if (gx#stx-pair? _%e120242120252%_)
                      (let ((_%e120245120260%_
                             (gx#syntax-e _%e120242120252%_)))
                        (let ((_%hd120246120263%_ (##car _%e120245120260%_))
                              (_%tl120247120265%_ (##cdr _%e120245120260%_)))
                          (if (gx#stx-pair? _%tl120247120265%_)
                              (let ((_%e120248120268%_
                                     (gx#syntax-e _%tl120247120265%_)))
                                (let ((_%hd120249120271%_
                                       (##car _%e120248120268%_))
                                      (_%tl120250120273%_
                                       (##cdr _%e120248120268%_)))
                                  (let ((_%id120276%_ _%hd120249120271%_))
                                    (if (gx#stx-null? _%tl120250120273%_)
                                        (if (gx#identifier? _%id120276%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id120276%_
                                                          _%stx120241%_)
                                                         '()))
                                             (gx#stx-source _%stx120241%_))
                                            (_%E120244120256%_))
                                        (_%E120244120256%_)))))
                              (_%E120244120256%_))))
                      (_%E120244120256%_)))))
          (_%E120243120278%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx120187%_)
        (let* ((_%e120188120201%_ _%stx120187%_)
               (_%E120190120205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120188120201%_)))
               (_%E120189120237%_
                (lambda ()
                  (if (gx#stx-pair? _%e120188120201%_)
                      (let ((_%e120191120209%_
                             (gx#syntax-e _%e120188120201%_)))
                        (let ((_%hd120192120212%_ (##car _%e120191120209%_))
                              (_%tl120193120214%_ (##cdr _%e120191120209%_)))
                          (if (gx#stx-pair? _%tl120193120214%_)
                              (let ((_%e120194120217%_
                                     (gx#syntax-e _%tl120193120214%_)))
                                (let ((_%hd120195120220%_
                                       (##car _%e120194120217%_))
                                      (_%tl120196120222%_
                                       (##cdr _%e120194120217%_)))
                                  (let ((_%id120225%_ _%hd120195120220%_))
                                    (if (gx#stx-pair? _%tl120196120222%_)
                                        (let ((_%e120197120227%_
                                               (gx#syntax-e
                                                _%tl120196120222%_)))
                                          (let ((_%hd120198120230%_
                                                 (##car _%e120197120227%_))
                                                (_%tl120199120232%_
                                                 (##cdr _%e120197120227%_)))
                                            (let ((_%expr120235%_
                                                   _%hd120198120230%_))
                                              (if (gx#stx-null?
                                                   _%tl120199120232%_)
                                                  (if (gx#identifier?
                                                       _%id120225%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id120225%_
                            _%stx120187%_)
                           (cons (gx#core-expand-expression _%expr120235%_)
                                 '())))
               (gx#stx-source _%stx120187%_))
              (_%E120190120205%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120190120205%_)))))
                                        (_%E120190120205%_)))))
                              (_%E120190120205%_))))
                      (_%E120190120205%_)))))
          (_%E120189120237%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx120032%_)
        (letrec ((_%generate120034%_
                  (lambda (_%body120064%_)
                    (let _%lp120066%_ ((_%rest120068%_ _%body120064%_)
                                       (_%ns120069%_
                                        (gx#core-context-namespace__0))
                                       (_%r120070%_ '()))
                      (let* ((_%e120071120086%_ _%rest120068%_)
                             (_%E120084120090%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e120071120086%_)))
                             (_%E120080120094%_
                              (lambda ()
                                (if (gx#stx-null? _%e120071120086%_)
                                    (if '#t
                                        (reverse _%r120070%_)
                                        (_%E120084120090%_))
                                    (_%E120084120090%_))))
                             (_%E120073120151%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120071120086%_)
                                    (let ((_%e120081120098%_
                                           (gx#syntax-e _%e120071120086%_)))
                                      (let ((_%hd120082120101%_
                                             (##car _%e120081120098%_))
                                            (_%tl120083120103%_
                                             (##cdr _%e120081120098%_)))
                                        (let* ((_%hd120106%_
                                                _%hd120082120101%_)
                                               (_%rest120108%_
                                                _%tl120083120103%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd120106%_)
                                                  (_%lp120066%_
                                                   _%rest120108%_
                                                   _%ns120069%_
                                                   (cons (cons _%hd120106%_
                                                               (cons (if _%ns120069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd120106%_
                                  _%ns120069%_
                                  '"#"
                                  _%hd120106%_)
                                 _%hd120106%_)
                             '()))
                 _%r120070%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e120109120119%_
                                                          _%hd120106%_)
                                                         (_%E120111120123%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e120109120119%_)))
                                                         (_%E120110120147%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e120109120119%_)
                        (let ((_%e120112120127%_
                               (gx#syntax-e _%e120109120119%_)))
                          (let ((_%hd120113120130%_ (##car _%e120112120127%_))
                                (_%tl120114120132%_ (##cdr _%e120112120127%_)))
                            (let ((_%id120135%_ _%hd120113120130%_))
                              (if (gx#stx-pair? _%tl120114120132%_)
                                  (let ((_%e120115120137%_
                                         (gx#syntax-e _%tl120114120132%_)))
                                    (let ((_%hd120116120140%_
                                           (##car _%e120115120137%_))
                                          (_%tl120117120142%_
                                           (##cdr _%e120115120137%_)))
                                      (let ((_%eid120145%_ _%hd120116120140%_))
                                        (if (gx#stx-null? _%tl120117120142%_)
                                            (if (and (gx#identifier?
                                                      _%id120135%_)
                                                     (gx#identifier?
                                                      _%eid120145%_))
                                                (_%lp120066%_
                                                 _%rest120108%_
                                                 _%ns120069%_
                                                 (cons (cons _%id120135%_
                                                             (cons _%eid120145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r120070%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120111120123%_))
                                            (_%E120111120123%_)))))
                                  (_%E120111120123%_)))))
                        (_%E120111120123%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120110120147%_)))
                                              (_%E120080120094%_)))))
                                    (_%E120080120094%_))))
                             (_%E120072120183%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120071120086%_)
                                    (let ((_%e120074120155%_
                                           (gx#syntax-e _%e120071120086%_)))
                                      (let ((_%hd120075120158%_
                                             (##car _%e120074120155%_))
                                            (_%tl120076120160%_
                                             (##cdr _%e120074120155%_)))
                                        (if (eq? (gx#stx-e _%hd120075120158%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl120076120160%_)
                                                (let ((_%e120077120163%_
                                                       (gx#syntax-e
                                                        _%tl120076120160%_)))
                                                  (let ((_%hd120078120166%_
                                                         (##car _%e120077120163%_))
                                                        (_%tl120079120168%_
                                                         (##cdr _%e120077120163%_)))
                                                    (let* ((_%ns120171%_
                                                            _%hd120078120166%_)
                                                           (_%rest120173%_
                                                            _%tl120079120168%_))
                                                      (if '#t
                                                          (let ((_%ns120181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns120171%_)
                             (let () (symbol->string (gx#stx-e _%ns120171%_)))
                             (if (or (gx#stx-string? _%ns120171%_)
                                     (gx#stx-false? _%ns120171%_))
                                 (let () (gx#stx-e _%ns120171%_))
                                 (let ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; extern expects namespace identifier"
                                    _%stx120032%_
                                    _%ns120171%_))))))
                    (_%lp120066%_ _%rest120173%_ _%ns120181%_ _%r120070%_))
                  (_%E120073120151%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120073120151%_))
                                            (_%E120073120151%_))))
                                    (_%E120073120151%_)))))
                        (_%E120072120183%_))))))
          (let* ((_%e120035120042%_ _%stx120032%_)
                 (_%E120037120046%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e120035120042%_)))
                 (_%E120036120060%_
                  (lambda ()
                    (if (gx#stx-pair? _%e120035120042%_)
                        (let ((_%e120038120050%_
                               (gx#syntax-e _%e120035120042%_)))
                          (let ((_%hd120039120053%_ (##car _%e120038120050%_))
                                (_%tl120040120055%_ (##cdr _%e120038120050%_)))
                            (let ((_%body120058%_ _%tl120040120055%_))
                              (if (gx#stx-list? _%body120058%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate120034%_ _%body120058%_))
                                  (_%E120037120046%_)))))
                        (_%E120037120046%_)))))
            (_%E120036120060%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119978%_)
        (let* ((_%e119979119992%_ _%stx119978%_)
               (_%E119981119996%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119979119992%_)))
               (_%E119980120028%_
                (lambda ()
                  (if (gx#stx-pair? _%e119979119992%_)
                      (let ((_%e119982120000%_
                             (gx#syntax-e _%e119979119992%_)))
                        (let ((_%hd119983120003%_ (##car _%e119982120000%_))
                              (_%tl119984120005%_ (##cdr _%e119982120000%_)))
                          (if (gx#stx-pair? _%tl119984120005%_)
                              (let ((_%e119985120008%_
                                     (gx#syntax-e _%tl119984120005%_)))
                                (let ((_%hd119986120011%_
                                       (##car _%e119985120008%_))
                                      (_%tl119987120013%_
                                       (##cdr _%e119985120008%_)))
                                  (let ((_%hd120016%_ _%hd119986120011%_))
                                    (if (gx#stx-pair? _%tl119987120013%_)
                                        (let ((_%e119988120018%_
                                               (gx#syntax-e
                                                _%tl119987120013%_)))
                                          (let ((_%hd119989120021%_
                                                 (##car _%e119988120018%_))
                                                (_%tl119990120023%_
                                                 (##cdr _%e119988120018%_)))
                                            (let ((_%expr120026%_
                                                   _%hd119989120021%_))
                                              (if (gx#stx-null?
                                                   _%tl119990120023%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd120016%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd120016%_)
                          (cons _%expr120026%_ '())))
              (_%E119981119996%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119981119996%_)))))
                                        (_%E119981119996%_)))))
                              (_%E119981119996%_))))
                      (_%E119981119996%_)))))
          (_%E119980120028%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119924%_)
        (let* ((_%e119925119938%_ _%stx119924%_)
               (_%E119927119942%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119925119938%_)))
               (_%E119926119974%_
                (lambda ()
                  (if (gx#stx-pair? _%e119925119938%_)
                      (let ((_%e119928119946%_
                             (gx#syntax-e _%e119925119938%_)))
                        (let ((_%hd119929119949%_ (##car _%e119928119946%_))
                              (_%tl119930119951%_ (##cdr _%e119928119946%_)))
                          (if (gx#stx-pair? _%tl119930119951%_)
                              (let ((_%e119931119954%_
                                     (gx#syntax-e _%tl119930119951%_)))
                                (let ((_%hd119932119957%_
                                       (##car _%e119931119954%_))
                                      (_%tl119933119959%_
                                       (##cdr _%e119931119954%_)))
                                  (let ((_%hd119962%_ _%hd119932119957%_))
                                    (if (gx#stx-pair? _%tl119933119959%_)
                                        (let ((_%e119934119964%_
                                               (gx#syntax-e
                                                _%tl119933119959%_)))
                                          (let ((_%hd119935119967%_
                                                 (##car _%e119934119964%_))
                                                (_%tl119936119969%_
                                                 (##cdr _%e119934119964%_)))
                                            (let ((_%expr119972%_
                                                   _%hd119935119967%_))
                                              (if (gx#stx-null?
                                                   _%tl119936119969%_)
                                                  (if (gx#identifier?
                                                       _%hd119962%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119972%_ '())))
              (_%E119927119942%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119927119942%_)))))
                                        (_%E119927119942%_)))))
                              (_%E119927119942%_))))
                      (_%E119927119942%_)))))
          (_%E119926119974%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119870%_)
        (let* ((_%e119871119884%_ _%stx119870%_)
               (_%E119873119888%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119871119884%_)))
               (_%E119872119920%_
                (lambda ()
                  (if (gx#stx-pair? _%e119871119884%_)
                      (let ((_%e119874119892%_
                             (gx#syntax-e _%e119871119884%_)))
                        (let ((_%hd119875119895%_ (##car _%e119874119892%_))
                              (_%tl119876119897%_ (##cdr _%e119874119892%_)))
                          (if (gx#stx-pair? _%tl119876119897%_)
                              (let ((_%e119877119900%_
                                     (gx#syntax-e _%tl119876119897%_)))
                                (let ((_%hd119878119903%_
                                       (##car _%e119877119900%_))
                                      (_%tl119879119905%_
                                       (##cdr _%e119877119900%_)))
                                  (let ((_%id119908%_ _%hd119878119903%_))
                                    (if (gx#stx-pair? _%tl119879119905%_)
                                        (let ((_%e119880119910%_
                                               (gx#syntax-e
                                                _%tl119879119905%_)))
                                          (let ((_%hd119881119913%_
                                                 (##car _%e119880119910%_))
                                                (_%tl119882119915%_
                                                 (##cdr _%e119880119910%_)))
                                            (let ((_%alias-id119918%_
                                                   _%hd119881119913%_))
                                              (if (gx#stx-null?
                                                   _%tl119882119915%_)
                                                  (if (and (gx#identifier?
                                                            _%id119908%_)
                                                           (gx#identifier?
                                                            _%alias-id119918%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119918%_ '())))
              (_%E119873119888%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119873119888%_)))))
                                        (_%E119873119888%_)))))
                              (_%E119873119888%_))))
                      (_%E119873119888%_)))))
          (_%E119872119920%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119827%_)
        (let* ((_%e119828119838%_ _%stx119827%_)
               (_%E119830119842%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119828119838%_)))
               (_%E119829119866%_
                (lambda ()
                  (if (gx#stx-pair? _%e119828119838%_)
                      (let ((_%e119831119846%_
                             (gx#syntax-e _%e119828119838%_)))
                        (let ((_%hd119832119849%_ (##car _%e119831119846%_))
                              (_%tl119833119851%_ (##cdr _%e119831119846%_)))
                          (if (gx#stx-pair? _%tl119833119851%_)
                              (let ((_%e119834119854%_
                                     (gx#syntax-e _%tl119833119851%_)))
                                (let ((_%hd119835119857%_
                                       (##car _%e119834119854%_))
                                      (_%tl119836119859%_
                                       (##cdr _%e119834119854%_)))
                                  (let* ((_%hd119862%_ _%hd119835119857%_)
                                         (_%body119864%_ _%tl119836119859%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119862%_)
                                             (gx#stx-list? _%body119864%_)
                                             (not (gx#stx-null?
                                                   _%body119864%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119862%_)
                                         _%body119864%_)
                                        (_%E119830119842%_)))))
                              (_%E119830119842%_))))
                      (_%E119830119842%_)))))
          (_%E119829119866%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx119763%_)
        (letrec ((_%generate119765%_
                  (lambda (_%clause119795%_)
                    (let* ((_%e119796119803%_ _%clause119795%_)
                           (_%E119798119807%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx119763%_
                               _%clause119795%_)))
                           (_%E119797119823%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119796119803%_)
                                  (let ((_%e119799119811%_
                                         (gx#syntax-e _%e119796119803%_)))
                                    (let ((_%hd119800119814%_
                                           (##car _%e119799119811%_))
                                          (_%tl119801119816%_
                                           (##cdr _%e119799119811%_)))
                                      (let* ((_%hd119819%_ _%hd119800119814%_)
                                             (_%body119821%_
                                              _%tl119801119816%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119819%_)
                                                 (gx#stx-list? _%body119821%_)
                                                 (not (gx#stx-null?
                                                       _%body119821%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119819%_)
                                                   _%body119821%_)
                                             (gx#stx-source _%clause119795%_))
                                            (_%E119798119807%_)))))
                                  (_%E119798119807%_)))))
                      (_%E119797119823%_)))))
          (let* ((_%e119766119773%_ _%stx119763%_)
                 (_%E119768119777%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119766119773%_)))
                 (_%E119767119791%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119766119773%_)
                        (let ((_%e119769119781%_
                               (gx#syntax-e _%e119766119773%_)))
                          (let ((_%hd119770119784%_ (##car _%e119769119781%_))
                                (_%tl119771119786%_ (##cdr _%e119769119781%_)))
                            (let ((_%clauses119789%_ _%tl119771119786%_))
                              (if (gx#stx-list? _%clauses119789%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate119765%_
                                    _%clauses119789%_))
                                  (_%E119768119777%_)))))
                        (_%E119768119777%_)))))
            (_%E119767119791%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx119664%_ _%form119665%_)
        (letrec ((_%generate119667%_
                  (lambda (_%bind119710%_)
                    (let* ((_%e119711119721%_ _%bind119710%_)
                           (_%E119713119725%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx119664%_
                               _%bind119710%_)))
                           (_%E119712119749%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119711119721%_)
                                  (let ((_%e119714119729%_
                                         (gx#syntax-e _%e119711119721%_)))
                                    (let ((_%hd119715119732%_
                                           (##car _%e119714119729%_))
                                          (_%tl119716119734%_
                                           (##cdr _%e119714119729%_)))
                                      (let ((_%ids119737%_ _%hd119715119732%_))
                                        (if (gx#stx-pair? _%tl119716119734%_)
                                            (let ((_%e119717119739%_
                                                   (gx#syntax-e
                                                    _%tl119716119734%_)))
                                              (let ((_%hd119718119742%_
                                                     (##car _%e119717119739%_))
                                                    (_%tl119719119744%_
                                                     (##cdr _%e119717119739%_)))
                                                (let ((_%expr119747%_
                                                       _%hd119718119742%_))
                                                  (if (gx#stx-null?
                                                       _%tl119719119744%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids119737%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids119737%_)
                        (cons _%expr119747%_ '()))
                  (_%E119713119725%_))
              (_%E119713119725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E119713119725%_)))))
                                  (_%E119713119725%_)))))
                      (_%E119712119749%_)))))
          (let* ((_%e119668119678%_ _%stx119664%_)
                 (_%E119670119682%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119668119678%_)))
                 (_%E119669119706%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119668119678%_)
                        (let ((_%e119671119686%_
                               (gx#syntax-e _%e119668119678%_)))
                          (let ((_%hd119672119689%_ (##car _%e119671119686%_))
                                (_%tl119673119691%_ (##cdr _%e119671119686%_)))
                            (if (gx#stx-pair? _%tl119673119691%_)
                                (let ((_%e119674119694%_
                                       (gx#syntax-e _%tl119673119691%_)))
                                  (let ((_%hd119675119697%_
                                         (##car _%e119674119694%_))
                                        (_%tl119676119699%_
                                         (##cdr _%e119674119694%_)))
                                    (let* ((_%hd119702%_ _%hd119675119697%_)
                                           (_%body119704%_ _%tl119676119699%_))
                                      (if (and (gx#stx-list? _%hd119702%_)
                                               (gx#stx-list? _%body119704%_)
                                               (not (gx#stx-null?
                                                     _%body119704%_)))
                                          (gx#core-cons*
                                           _%form119665%_
                                           (gx#stx-map1
                                            _%generate119667%_
                                            _%hd119702%_)
                                           _%body119704%_)
                                          (_%E119670119682%_)))))
                                (_%E119670119682%_))))
                        (_%E119670119682%_)))))
            (_%E119669119706%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx119756%_)
        (let ((_%form119758%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx119756%_ _%form119758%_))))
    (define gx#macro-expand-let-values
      (lambda _g122145_
        (let ((_g122144_ (##length _g122145_)))
          (cond ((##fx= _g122144_ 1)
                 (apply (lambda (_%stx119756%_)
                          (gx#macro-expand-let-values__0 _%stx119756%_))
                        _g122145_))
                ((##fx= _g122144_ 2)
                 (apply (lambda (_%stx119760%_ _%form119761%_)
                          (gx#macro-expand-let-values__%
                           _%stx119760%_
                           _%form119761%_))
                        _g122145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g122145_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx119661%_)
        (gx#macro-expand-let-values__% _%stx119661%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx119659%_)
        (gx#macro-expand-let-values__% _%stx119659%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx119550%_)
        (let* ((_%e119551119577%_ _%stx119550%_)
               (_%E119563119581%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119551119577%_)))
               (_%E119553119623%_
                (lambda ()
                  (if (gx#stx-pair? _%e119551119577%_)
                      (let ((_%e119564119585%_
                             (gx#syntax-e _%e119551119577%_)))
                        (let ((_%hd119565119588%_ (##car _%e119564119585%_))
                              (_%tl119566119590%_ (##cdr _%e119564119585%_)))
                          (if (gx#stx-pair? _%tl119566119590%_)
                              (let ((_%e119567119593%_
                                     (gx#syntax-e _%tl119566119590%_)))
                                (let ((_%hd119568119596%_
                                       (##car _%e119567119593%_))
                                      (_%tl119569119598%_
                                       (##cdr _%e119567119593%_)))
                                  (let ((_%test119601%_ _%hd119568119596%_))
                                    (if (gx#stx-pair? _%tl119569119598%_)
                                        (let ((_%e119570119603%_
                                               (gx#syntax-e
                                                _%tl119569119598%_)))
                                          (let ((_%hd119571119606%_
                                                 (##car _%e119570119603%_))
                                                (_%tl119572119608%_
                                                 (##cdr _%e119570119603%_)))
                                            (let ((_%K119611%_
                                                   _%hd119571119606%_))
                                              (if (gx#stx-pair?
                                                   _%tl119572119608%_)
                                                  (let ((_%e119573119613%_
                                                         (gx#syntax-e
                                                          _%tl119572119608%_)))
                                                    (let ((_%hd119574119616%_
                                                           (##car _%e119573119613%_))
                                                          (_%tl119575119618%_
                                                           (##cdr _%e119573119613%_)))
                                                      (let ((_%E119621%_
                                                             _%hd119574119616%_))
                                                        (if (gx#stx-null?
                                                             _%tl119575119618%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test119601%_
                         _%K119611%_
                         _%E119621%_)
                        (_%E119563119581%_))
                    (_%E119563119581%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119563119581%_)))))
                                        (_%E119563119581%_)))))
                              (_%E119563119581%_))))
                      (_%E119563119581%_))))
               (_%E119552119655%_
                (lambda ()
                  (if (gx#stx-pair? _%e119551119577%_)
                      (let ((_%e119554119627%_
                             (gx#syntax-e _%e119551119577%_)))
                        (let ((_%hd119555119630%_ (##car _%e119554119627%_))
                              (_%tl119556119632%_ (##cdr _%e119554119627%_)))
                          (if (gx#stx-pair? _%tl119556119632%_)
                              (let ((_%e119557119635%_
                                     (gx#syntax-e _%tl119556119632%_)))
                                (let ((_%hd119558119638%_
                                       (##car _%e119557119635%_))
                                      (_%tl119559119640%_
                                       (##cdr _%e119557119635%_)))
                                  (let ((_%test119643%_ _%hd119558119638%_))
                                    (if (gx#stx-pair? _%tl119559119640%_)
                                        (let ((_%e119560119645%_
                                               (gx#syntax-e
                                                _%tl119559119640%_)))
                                          (let ((_%hd119561119648%_
                                                 (##car _%e119560119645%_))
                                                (_%tl119562119650%_
                                                 (##cdr _%e119560119645%_)))
                                            (let ((_%K119653%_
                                                   _%hd119561119648%_))
                                              (if (gx#stx-null?
                                                   _%tl119562119650%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test119643%_
                                                       _%K119653%_
                                                       '#!void)
                                                      (_%E119553119623%_))
                                                  (_%E119553119623%_)))))
                                        (_%E119553119623%_)))))
                              (_%E119553119623%_))))
                      (_%E119553119623%_)))))
          (_%E119552119655%_))))
    (define gx#free-identifier=?
      (lambda (_%xid119535%_ _%yid119536%_)
        (let ((_%xe119538%_ (gx#resolve-identifier__0 _%xid119535%_))
              (_%ye119539%_ (gx#resolve-identifier__0 _%yid119536%_)))
          (if (and _%xe119538%_ _%ye119539%_)
              (let ((_%$e119542%_ (eq? _%xe119538%_ _%ye119539%_)))
                (if _%$e119542%_
                    _%$e119542%_
                    (if (##structure-instance-of? _%xe119538%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye119539%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe119538%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye119539%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe119538%_ _%ye119539%_)
                  (let () '#f)
                  (let () (gx#stx-eq? _%xid119535%_ _%yid119536%_)))))))
    (define gx#bound-identifier=?
      (lambda (_%xid119516%_ _%yid119517%_)
        (letrec ((_%context119519%_
                  (lambda (_%e119533%_)
                    (if (##structure-direct-instance-of?
                         _%e119533%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e119533%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks119520%_
                  (lambda (_%e119528%_)
                    (if (symbol? _%e119528%_)
                        (let () '())
                        (if (##structure-direct-instance-of?
                             _%e119528%_
                             'gx#identifier-wrap::t)
                            (let ()
                              (##unchecked-structure-ref
                               _%e119528%_
                               '3
                               '#f
                               '#f))
                            (let ()
                              (##unchecked-structure-ref
                               _%e119528%_
                               '4
                               '#f
                               '#f))))))
                 (_%unwrap119521%_
                  (lambda (_%e119526%_)
                    (if (symbol? _%e119526%_)
                        _%e119526%_
                        (gx#syntax-local-unwrap _%e119526%_)))))
          (let ((_%x119523%_ (_%unwrap119521%_ _%xid119516%_))
                (_%y119524%_ (_%unwrap119521%_ _%yid119517%_)))
            (if (gx#stx-eq? _%x119523%_ _%y119524%_)
                (if (eq? (_%context119519%_ _%x119523%_)
                         (_%context119519%_ _%y119524%_))
                    (equal? (_%marks119520%_ _%x119523%_)
                            (_%marks119520%_ _%y119524%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx119514%_)
        (if (gx#identifier? _%stx119514%_)
            (gx#core-identifier=? _%stx119514%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx119512%_)
        (if (gx#identifier? _%stx119512%_)
            (gx#core-identifier=? _%stx119512%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx119455%_ _%where119456%_)
        (let _%lp119458%_ ((_%rest119460%_ (gx#syntax->list _%stx119455%_)))
          (let* ((_%rest119461119469%_ _%rest119460%_)
                 (_%else119463119477%_ (lambda () '#t))
                 (_%K119465119490%_
                  (lambda (_%rest119480%_ _%hd119481%_)
                    (if (not (gx#identifier? _%hd119481%_))
                        (let ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad identifier"
                           _%where119456%_
                           _%hd119481%_))
                        (if (__find (lambda (_%g119483119485%_)
                                      (gx#bound-identifier=?
                                       _%g119483119485%_
                                       _%hd119481%_))
                                    _%rest119480%_)
                            (let ()
                              (gx#raise-syntax-error
                               '#f
                               '"Duplicate identifier"
                               _%where119456%_
                               _%hd119481%_))
                            (let () (_%lp119458%_ _%rest119480%_)))))))
            (if (##pair? _%rest119461119469%_)
                (let ((_%hd119466119493%_ (##car _%rest119461119469%_))
                      (_%tl119467119495%_ (##cdr _%rest119461119469%_)))
                  (let* ((_%hd119498%_ _%hd119466119493%_)
                         (_%rest119500%_ _%tl119467119495%_))
                    (_%K119465119490%_ _%rest119500%_ _%hd119498%_)))
                (_%else119463119477%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx119505%_)
        (let ((_%where119507%_ _%stx119505%_))
          (gx#check-duplicate-identifiers__% _%stx119505%_ _%where119507%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g122147_
        (let ((_g122146_ (##length _g122147_)))
          (cond ((##fx= _g122146_ 1)
                 (apply (lambda (_%stx119505%_)
                          (gx#check-duplicate-identifiers__0 _%stx119505%_))
                        _g122147_))
                ((##fx= _g122146_ 2)
                 (apply (lambda (_%stx119509%_ _%where119510%_)
                          (gx#check-duplicate-identifiers__%
                           _%stx119509%_
                           _%where119510%_))
                        _g122147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g122147_))))))
    (define gx#core-bind-values?
      (lambda (_%stx119447%_)
        (gx#stx-andmap
         (lambda (_%x119449%_)
           (let ((_%$e119451%_ (gx#identifier? _%x119449%_)))
             (if _%$e119451%_ _%$e119451%_ (gx#stx-false? _%x119449%_))))
         _%stx119447%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx119411%_ _%rebind?119412%_ _%phi119413%_ _%ctx119414%_)
        (gx#stx-for-each1
         (lambda (_%id119416%_)
           (if (gx#identifier? _%id119416%_)
               (gx#core-bind-runtime!__%
                _%id119416%_
                _%rebind?119412%_
                _%phi119413%_
                _%ctx119414%_)
               '#!void))
         _%stx119411%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx119421%_)
        (let* ((_%rebind?119423%_ '#f)
               (_%phi119425%_ (gx#current-expander-phi))
               (_%ctx119427%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119421%_
           _%rebind?119423%_
           _%phi119425%_
           _%ctx119427%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx119429%_ _%rebind?119430%_)
        (let* ((_%phi119432%_ (gx#current-expander-phi))
               (_%ctx119434%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119429%_
           _%rebind?119430%_
           _%phi119432%_
           _%ctx119434%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx119436%_ _%rebind?119437%_ _%phi119438%_)
        (let ((_%ctx119440%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx119436%_
           _%rebind?119437%_
           _%phi119438%_
           _%ctx119440%_))))
    (define gx#core-bind-values!
      (lambda _g122149_
        (let ((_g122148_ (##length _g122149_)))
          (cond ((##fx= _g122148_ 1)
                 (apply (lambda (_%stx119421%_)
                          (gx#core-bind-values!__0 _%stx119421%_))
                        _g122149_))
                ((##fx= _g122148_ 2)
                 (apply (lambda (_%stx119429%_ _%rebind?119430%_)
                          (gx#core-bind-values!__1
                           _%stx119429%_
                           _%rebind?119430%_))
                        _g122149_))
                ((##fx= _g122148_ 3)
                 (apply (lambda (_%stx119436%_ _%rebind?119437%_ _%phi119438%_)
                          (gx#core-bind-values!__2
                           _%stx119436%_
                           _%rebind?119437%_
                           _%phi119438%_))
                        _g122149_))
                ((##fx= _g122148_ 4)
                 (apply (lambda (_%stx119442%_
                                 _%rebind?119443%_
                                 _%phi119444%_
                                 _%ctx119445%_)
                          (gx#core-bind-values!__%
                           _%stx119442%_
                           _%rebind?119443%_
                           _%phi119444%_
                           _%ctx119445%_))
                        _g122149_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g122149_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx119406%_)
        (gx#stx-map1
         (lambda (_%x119408%_)
           (if (gx#identifier? _%x119408%_)
               (gx#core-quote-syntax__0 _%x119408%_)
               '#f))
         _%stx119406%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx119399%_)
        (if (gx#identifier? _%stx119399%_)
            (let* ((_%bind119401%_ (gx#resolve-identifier__0 _%stx119399%_))
                   (_%$e119403%_ (not _%bind119401%_)))
              (if _%$e119403%_
                  _%$e119403%_
                  (##structure-instance-of?
                   _%bind119401%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id119388%_ _%form119389%_)
        (let ((_%bind119391%_ (gx#resolve-identifier__0 _%id119388%_)))
          (if (##structure-instance-of? _%bind119391%_ 'gx#runtime-binding::t)
              (let () (gx#core-quote-syntax__0 _%id119388%_))
              (if (not _%bind119391%_)
                  (let ()
                    (if (or (gx#core-context-rebind?__%
                             (gx#core-context-top__0))
                            (gx#core-extern-symbol? (gx#stx-e _%id119388%_)))
                        (gx#core-quote-syntax__0 _%id119388%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Reference to unbound identifier"
                         _%form119389%_
                         _%id119388%_)))
                  (let ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; not a runtime binding"
                     _%form119389%_
                     _%id119388%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id119343%_ _%rebind?119344%_ _%phi119345%_ _%ctx119346%_)
        (let* ((_%key119348%_ (gx#core-identifier-key _%id119343%_))
               (_%eid119350%_
                (gx#make-binding-id__%
                 _%key119348%_
                 '#f
                 _%phi119345%_
                 _%ctx119346%_))
               (_%bind119356%_
                (if (##structure-instance-of?
                     _%ctx119346%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119350%_
                       _%key119348%_
                       _%phi119345%_
                       _%ctx119346%_))
                    (if (##structure-instance-of?
                         _%ctx119346%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119350%_
                           _%key119348%_
                           _%phi119345%_))
                        (if (##structure-instance-of?
                             _%ctx119346%_
                             'gx#local-context::t)
                            (let ()
                              (##structure
                               gx#local-binding::t
                               _%eid119350%_
                               _%key119348%_
                               _%phi119345%_))
                            (let ()
                              (##structure
                               gx#runtime-binding::t
                               _%eid119350%_
                               _%key119348%_
                               _%phi119345%_)))))))
          (gx#bind-identifier!__%
           _%id119343%_
           _%bind119356%_
           _%rebind?119344%_
           _%phi119345%_
           _%ctx119346%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id119362%_)
        (let* ((_%rebind?119364%_ '#f)
               (_%phi119366%_ (gx#current-expander-phi))
               (_%ctx119368%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119362%_
           _%rebind?119364%_
           _%phi119366%_
           _%ctx119368%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id119370%_ _%rebind?119371%_)
        (let* ((_%phi119373%_ (gx#current-expander-phi))
               (_%ctx119375%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119370%_
           _%rebind?119371%_
           _%phi119373%_
           _%ctx119375%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id119377%_ _%rebind?119378%_ _%phi119379%_)
        (let ((_%ctx119381%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id119377%_
           _%rebind?119378%_
           _%phi119379%_
           _%ctx119381%_))))
    (define gx#core-bind-runtime!
      (lambda _g122151_
        (let ((_g122150_ (##length _g122151_)))
          (cond ((##fx= _g122150_ 1)
                 (apply (lambda (_%id119362%_)
                          (gx#core-bind-runtime!__0 _%id119362%_))
                        _g122151_))
                ((##fx= _g122150_ 2)
                 (apply (lambda (_%id119370%_ _%rebind?119371%_)
                          (gx#core-bind-runtime!__1
                           _%id119370%_
                           _%rebind?119371%_))
                        _g122151_))
                ((##fx= _g122150_ 3)
                 (apply (lambda (_%id119377%_ _%rebind?119378%_ _%phi119379%_)
                          (gx#core-bind-runtime!__2
                           _%id119377%_
                           _%rebind?119378%_
                           _%phi119379%_))
                        _g122151_))
                ((##fx= _g122150_ 4)
                 (apply (lambda (_%id119383%_
                                 _%rebind?119384%_
                                 _%phi119385%_
                                 _%ctx119386%_)
                          (gx#core-bind-runtime!__%
                           _%id119383%_
                           _%rebind?119384%_
                           _%phi119385%_
                           _%ctx119386%_))
                        _g122151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g122151_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id119295%_
               _%eid119296%_
               _%rebind?119297%_
               _%phi119298%_
               _%ctx119299%_)
        (let* ((_%key119301%_ (gx#core-identifier-key _%id119295%_))
               (_%bind119306%_
                (if (##structure-instance-of?
                     _%ctx119299%_
                     'gx#module-context::t)
                    (let ()
                      (##structure
                       gx#module-binding::t
                       _%eid119296%_
                       _%key119301%_
                       _%phi119298%_
                       _%ctx119299%_))
                    (if (##structure-instance-of?
                         _%ctx119299%_
                         'gx#top-context::t)
                        (let ()
                          (##structure
                           gx#top-binding::t
                           _%eid119296%_
                           _%key119301%_
                           _%phi119298%_))
                        (let ()
                          (##structure
                           gx#runtime-binding::t
                           _%eid119296%_
                           _%key119301%_
                           _%phi119298%_))))))
          (gx#bind-identifier!__%
           _%id119295%_
           _%bind119306%_
           _%rebind?119297%_
           _%phi119298%_
           _%ctx119299%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id119312%_ _%eid119313%_)
        (let* ((_%rebind?119315%_ '#f)
               (_%phi119317%_ (gx#current-expander-phi))
               (_%ctx119319%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119312%_
           _%eid119313%_
           _%rebind?119315%_
           _%phi119317%_
           _%ctx119319%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id119321%_ _%eid119322%_ _%rebind?119323%_)
        (let* ((_%phi119325%_ (gx#current-expander-phi))
               (_%ctx119327%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119321%_
           _%eid119322%_
           _%rebind?119323%_
           _%phi119325%_
           _%ctx119327%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id119329%_ _%eid119330%_ _%rebind?119331%_ _%phi119332%_)
        (let ((_%ctx119334%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id119329%_
           _%eid119330%_
           _%rebind?119331%_
           _%phi119332%_
           _%ctx119334%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g122153_
        (let ((_g122152_ (##length _g122153_)))
          (cond ((##fx= _g122152_ 2)
                 (apply (lambda (_%id119312%_ _%eid119313%_)
                          (gx#core-bind-runtime-reference!__0
                           _%id119312%_
                           _%eid119313%_))
                        _g122153_))
                ((##fx= _g122152_ 3)
                 (apply (lambda (_%id119321%_ _%eid119322%_ _%rebind?119323%_)
                          (gx#core-bind-runtime-reference!__1
                           _%id119321%_
                           _%eid119322%_
                           _%rebind?119323%_))
                        _g122153_))
                ((##fx= _g122152_ 4)
                 (apply (lambda (_%id119329%_
                                 _%eid119330%_
                                 _%rebind?119331%_
                                 _%phi119332%_)
                          (gx#core-bind-runtime-reference!__2
                           _%id119329%_
                           _%eid119330%_
                           _%rebind?119331%_
                           _%phi119332%_))
                        _g122153_))
                ((##fx= _g122152_ 5)
                 (apply (lambda (_%id119336%_
                                 _%eid119337%_
                                 _%rebind?119338%_
                                 _%phi119339%_
                                 _%ctx119340%_)
                          (gx#core-bind-runtime-reference!__%
                           _%id119336%_
                           _%eid119337%_
                           _%rebind?119338%_
                           _%phi119339%_
                           _%ctx119340%_))
                        _g122153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g122153_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id119255%_
               _%eid119256%_
               _%rebind?119257%_
               _%phi119258%_
               _%ctx119259%_)
        (gx#bind-identifier!__%
         _%id119255%_
         (##structure
          gx#extern-binding::t
          _%eid119256%_
          (gx#core-identifier-key _%id119255%_)
          _%phi119258%_)
         _%rebind?119257%_
         _%phi119258%_
         _%ctx119259%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id119264%_ _%eid119265%_)
        (let* ((_%rebind?119267%_ '#f)
               (_%phi119269%_ (gx#current-expander-phi))
               (_%ctx119271%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119264%_
           _%eid119265%_
           _%rebind?119267%_
           _%phi119269%_
           _%ctx119271%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id119273%_ _%eid119274%_ _%rebind?119275%_)
        (let* ((_%phi119277%_ (gx#current-expander-phi))
               (_%ctx119279%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119273%_
           _%eid119274%_
           _%rebind?119275%_
           _%phi119277%_
           _%ctx119279%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id119281%_ _%eid119282%_ _%rebind?119283%_ _%phi119284%_)
        (let ((_%ctx119286%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id119281%_
           _%eid119282%_
           _%rebind?119283%_
           _%phi119284%_
           _%ctx119286%_))))
    (define gx#core-bind-extern!
      (lambda _g122155_
        (let ((_g122154_ (##length _g122155_)))
          (cond ((##fx= _g122154_ 2)
                 (apply (lambda (_%id119264%_ _%eid119265%_)
                          (gx#core-bind-extern!__0 _%id119264%_ _%eid119265%_))
                        _g122155_))
                ((##fx= _g122154_ 3)
                 (apply (lambda (_%id119273%_ _%eid119274%_ _%rebind?119275%_)
                          (gx#core-bind-extern!__1
                           _%id119273%_
                           _%eid119274%_
                           _%rebind?119275%_))
                        _g122155_))
                ((##fx= _g122154_ 4)
                 (apply (lambda (_%id119281%_
                                 _%eid119282%_
                                 _%rebind?119283%_
                                 _%phi119284%_)
                          (gx#core-bind-extern!__2
                           _%id119281%_
                           _%eid119282%_
                           _%rebind?119283%_
                           _%phi119284%_))
                        _g122155_))
                ((##fx= _g122154_ 5)
                 (apply (lambda (_%id119288%_
                                 _%eid119289%_
                                 _%rebind?119290%_
                                 _%phi119291%_
                                 _%ctx119292%_)
                          (gx#core-bind-extern!__%
                           _%id119288%_
                           _%eid119289%_
                           _%rebind?119290%_
                           _%phi119291%_
                           _%ctx119292%_))
                        _g122155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g122155_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id119209%_
               _%e119210%_
               _%rebind?119211%_
               _%phi119212%_
               _%ctx119213%_)
        (gx#bind-identifier!__%
         _%id119209%_
         (let ((_%key119218%_ (gx#core-identifier-key _%id119209%_))
               (_%e119219%_
                (if (or (##structure-instance-of? _%e119210%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e119210%_
                         'gx#expander-context::t))
                    _%e119210%_
                    (##structure
                     gx#user-expander::t
                     _%e119210%_
                     _%ctx119213%_
                     _%phi119212%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key119218%_
             '#t
             _%phi119212%_
             _%ctx119213%_)
            _%key119218%_
            _%phi119212%_
            _%e119219%_))
         _%rebind?119211%_
         _%phi119212%_
         _%ctx119213%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id119224%_ _%e119225%_)
        (let* ((_%rebind?119227%_ '#f)
               (_%phi119229%_ (gx#current-expander-phi))
               (_%ctx119231%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119224%_
           _%e119225%_
           _%rebind?119227%_
           _%phi119229%_
           _%ctx119231%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id119233%_ _%e119234%_ _%rebind?119235%_)
        (let* ((_%phi119237%_ (gx#current-expander-phi))
               (_%ctx119239%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119233%_
           _%e119234%_
           _%rebind?119235%_
           _%phi119237%_
           _%ctx119239%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id119241%_ _%e119242%_ _%rebind?119243%_ _%phi119244%_)
        (let ((_%ctx119246%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id119241%_
           _%e119242%_
           _%rebind?119243%_
           _%phi119244%_
           _%ctx119246%_))))
    (define gx#core-bind-syntax!
      (lambda _g122157_
        (let ((_g122156_ (##length _g122157_)))
          (cond ((##fx= _g122156_ 2)
                 (apply (lambda (_%id119224%_ _%e119225%_)
                          (gx#core-bind-syntax!__0 _%id119224%_ _%e119225%_))
                        _g122157_))
                ((##fx= _g122156_ 3)
                 (apply (lambda (_%id119233%_ _%e119234%_ _%rebind?119235%_)
                          (gx#core-bind-syntax!__1
                           _%id119233%_
                           _%e119234%_
                           _%rebind?119235%_))
                        _g122157_))
                ((##fx= _g122156_ 4)
                 (apply (lambda (_%id119241%_
                                 _%e119242%_
                                 _%rebind?119243%_
                                 _%phi119244%_)
                          (gx#core-bind-syntax!__2
                           _%id119241%_
                           _%e119242%_
                           _%rebind?119243%_
                           _%phi119244%_))
                        _g122157_))
                ((##fx= _g122156_ 5)
                 (apply (lambda (_%id119248%_
                                 _%e119249%_
                                 _%rebind?119250%_
                                 _%phi119251%_
                                 _%ctx119252%_)
                          (gx#core-bind-syntax!__%
                           _%id119248%_
                           _%e119249%_
                           _%rebind?119250%_
                           _%phi119251%_
                           _%ctx119252%_))
                        _g122157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g122157_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id119192%_ _%e119193%_ _%rebind?119194%_)
        (gx#core-bind-syntax!__%
         _%id119192%_
         _%e119193%_
         _%rebind?119194%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id119199%_ _%e119200%_)
        (let ((_%rebind?119202%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id119199%_
           _%e119200%_
           _%rebind?119202%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g122159_
        (let ((_g122158_ (##length _g122159_)))
          (cond ((##fx= _g122158_ 2)
                 (apply (lambda (_%id119199%_ _%e119200%_)
                          (gx#core-bind-root-syntax!__0
                           _%id119199%_
                           _%e119200%_))
                        _g122159_))
                ((##fx= _g122158_ 3)
                 (apply (lambda (_%id119204%_ _%e119205%_ _%rebind?119206%_)
                          (gx#core-bind-root-syntax!__%
                           _%id119204%_
                           _%e119205%_
                           _%rebind?119206%_))
                        _g122159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g122159_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id119150%_
               _%alias-id119151%_
               _%rebind?119152%_
               _%phi119153%_
               _%ctx119154%_)
        (gx#bind-identifier!__%
         _%id119150%_
         (let ((_%key119156%_ (gx#core-identifier-key _%id119150%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key119156%_
             '#t
             _%phi119153%_
             _%ctx119154%_)
            _%key119156%_
            _%phi119153%_
            _%alias-id119151%_))
         _%rebind?119152%_
         _%phi119153%_
         _%ctx119154%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id119161%_ _%alias-id119162%_)
        (let* ((_%rebind?119164%_ '#f)
               (_%phi119166%_ (gx#current-expander-phi))
               (_%ctx119168%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119161%_
           _%alias-id119162%_
           _%rebind?119164%_
           _%phi119166%_
           _%ctx119168%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id119170%_ _%alias-id119171%_ _%rebind?119172%_)
        (let* ((_%phi119174%_ (gx#current-expander-phi))
               (_%ctx119176%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119170%_
           _%alias-id119171%_
           _%rebind?119172%_
           _%phi119174%_
           _%ctx119176%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id119178%_ _%alias-id119179%_ _%rebind?119180%_ _%phi119181%_)
        (let ((_%ctx119183%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id119178%_
           _%alias-id119179%_
           _%rebind?119180%_
           _%phi119181%_
           _%ctx119183%_))))
    (define gx#core-bind-alias!
      (lambda _g122161_
        (let ((_g122160_ (##length _g122161_)))
          (cond ((##fx= _g122160_ 2)
                 (apply (lambda (_%id119161%_ _%alias-id119162%_)
                          (gx#core-bind-alias!__0
                           _%id119161%_
                           _%alias-id119162%_))
                        _g122161_))
                ((##fx= _g122160_ 3)
                 (apply (lambda (_%id119170%_
                                 _%alias-id119171%_
                                 _%rebind?119172%_)
                          (gx#core-bind-alias!__1
                           _%id119170%_
                           _%alias-id119171%_
                           _%rebind?119172%_))
                        _g122161_))
                ((##fx= _g122160_ 4)
                 (apply (lambda (_%id119178%_
                                 _%alias-id119179%_
                                 _%rebind?119180%_
                                 _%phi119181%_)
                          (gx#core-bind-alias!__2
                           _%id119178%_
                           _%alias-id119179%_
                           _%rebind?119180%_
                           _%phi119181%_))
                        _g122161_))
                ((##fx= _g122160_ 5)
                 (apply (lambda (_%id119185%_
                                 _%alias-id119186%_
                                 _%rebind?119187%_
                                 _%phi119188%_
                                 _%ctx119189%_)
                          (gx#core-bind-alias!__%
                           _%id119185%_
                           _%alias-id119186%_
                           _%rebind?119187%_
                           _%phi119188%_
                           _%ctx119189%_))
                        _g122161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g122161_))))))
    (define gx#make-binding-id__%
      (lambda (_%key119100%_ _%syntax?119101%_ _%phi119102%_ _%ctx119103%_)
        (if (uninterned-symbol? _%key119100%_)
            (let () (##gensym 'L))
            (if (pair? _%key119100%_)
                (let () (gensym (car _%key119100%_)))
                (if (##structure-instance-of? _%ctx119103%_ 'gx#top-context::t)
                    (let ((_%ns119108%_
                           (gx#core-context-namespace__% _%ctx119103%_)))
                      (if (and (fxzero? _%phi119102%_) (not _%syntax?119101%_))
                          (let ()
                            (if _%ns119108%_
                                (make-symbol__1
                                 _%ns119108%_
                                 '"#"
                                 _%key119100%_)
                                _%key119100%_))
                          (if _%syntax?119101%_
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119112%_ _%ns119108%_))
                                   (if _%$e119112%_ _%$e119112%_ '""))
                                 '"[:"
                                 (number->string _%phi119102%_)
                                 '":]#"
                                 _%key119100%_))
                              (let ()
                                (make-symbol__1
                                 (let ((_%$e119116%_ _%ns119108%_))
                                   (if _%$e119116%_ _%$e119116%_ '""))
                                 '"["
                                 (number->string _%phi119102%_)
                                 '"]#"
                                 _%key119100%_)))))
                    (let () (gensym _%key119100%_)))))))
    (define gx#make-binding-id__0
      (lambda (_%key119123%_)
        (let* ((_%syntax?119125%_ '#f)
               (_%phi119127%_ (gx#current-expander-phi))
               (_%ctx119129%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119123%_
           _%syntax?119125%_
           _%phi119127%_
           _%ctx119129%_))))
    (define gx#make-binding-id__1
      (lambda (_%key119131%_ _%syntax?119132%_)
        (let* ((_%phi119134%_ (gx#current-expander-phi))
               (_%ctx119136%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119131%_
           _%syntax?119132%_
           _%phi119134%_
           _%ctx119136%_))))
    (define gx#make-binding-id__2
      (lambda (_%key119138%_ _%syntax?119139%_ _%phi119140%_)
        (let ((_%ctx119142%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key119138%_
           _%syntax?119139%_
           _%phi119140%_
           _%ctx119142%_))))
    (define gx#make-binding-id
      (lambda _g122163_
        (let ((_g122162_ (##length _g122163_)))
          (cond ((##fx= _g122162_ 1)
                 (apply (lambda (_%key119123%_)
                          (gx#make-binding-id__0 _%key119123%_))
                        _g122163_))
                ((##fx= _g122162_ 2)
                 (apply (lambda (_%key119131%_ _%syntax?119132%_)
                          (gx#make-binding-id__1
                           _%key119131%_
                           _%syntax?119132%_))
                        _g122163_))
                ((##fx= _g122162_ 3)
                 (apply (lambda (_%key119138%_ _%syntax?119139%_ _%phi119140%_)
                          (gx#make-binding-id__2
                           _%key119138%_
                           _%syntax?119139%_
                           _%phi119140%_))
                        _g122163_))
                ((##fx= _g122162_ 4)
                 (apply (lambda (_%key119144%_
                                 _%syntax?119145%_
                                 _%phi119146%_
                                 _%ctx119147%_)
                          (gx#make-binding-id__%
                           _%key119144%_
                           _%syntax?119145%_
                           _%phi119146%_
                           _%ctx119147%_))
                        _g122163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g122163_))))))))
