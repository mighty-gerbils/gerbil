(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1781697562)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx186842%_)
        (letrec ((_%expand-special186844%_
                  (lambda (_%hd186846%_ _%K186847%_ _%rest186848%_ _%r186849%_)
                    (_%K186847%_
                     _%rest186848%_
                     (cons (gx#core-expand-top _%hd186846%_) _%r186849%_)))))
          (gx#core-expand-block__0 _%stx186842%_ _%expand-special186844%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx186496%_)
        (letrec ((_%expand-special186498%_
                  (lambda (_%hd186618%_ _%K186619%_ _%rest186620%_ _%r186621%_)
                    (let* ((_%K*186625%_
                            (lambda (_%e186623%_)
                              (_%K186619%_
                               _%rest186620%_
                               (cons _%e186623%_ _%r186621%_))))
                           (_%$%e186626186678%_ _%hd186618%_)
                           (_%$%E186664186682%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e186626186678%_)))
                           (_%$%E186660186724%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186626186678%_)
                                  (let ((_%$%e186665186686%_
                                         (gx#syntax-e _%$%e186626186678%_)))
                                    (let ((_%$%hd186666186689%_
                                           (##car _%$%e186665186686%_))
                                          (_%$%tl186667186691%_
                                           (##cdr _%$%e186665186686%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186666186689%_)
                                               (gx#core-identifier=?
                                                _%$%hd186666186689%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl186667186691%_)
                                              (let ((_%$%e186668186694%_
                                                     (gx#syntax-e
                                                      _%$%tl186667186691%_)))
                                                (let ((_%$%hd186669186697%_
                                                       (##car _%$%e186668186694%_))
                                                      (_%$%tl186670186699%_
                                                       (##cdr _%$%e186668186694%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd186669186697%_)
                                                      (let ((_%$%e186674186702%_
                                                             (gx#syntax-e
                                                              _%$%hd186669186697%_)))
                                                        (let ((_%$%hd186675186705%_
                                                               (##car _%$%e186674186702%_))
                                                              (_%$%tl186676186707%_
                                                               (##cdr _%$%e186674186702%_)))
                                                          (let ((_%id186710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd186675186705%_))
                    (if (gx#stx-null? _%$%tl186676186707%_)
                        (if (gx#stx-pair? _%$%tl186670186699%_)
                            (let ((_%$%e186671186712%_
                                   (gx#syntax-e _%$%tl186670186699%_)))
                              (let ((_%$%hd186672186715%_
                                     (##car _%$%e186671186712%_))
                                    (_%$%tl186673186717%_
                                     (##cdr _%$%e186671186712%_)))
                                (let ((_%props186720%_ _%$%hd186672186715%_))
                                  (if (gx#stx-null? _%$%tl186673186717%_)
                                      (let ((_%bind186722%_
                                             (gx#resolve-identifier__0
                                              _%id186710%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind186722%_
                                         _%props186720%_)
                                        (_%K186619%_
                                         _%rest186620%_
                                         _%r186621%_))
                                      (_%$%E186664186682%_)))))
                            (_%$%E186664186682%_))
                        (_%$%E186664186682%_)))))
              (_%$%E186664186682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E186664186682%_))
                                          (_%$%E186664186682%_))))
                                  (_%$%E186664186682%_))))
                           (_%$%E186656186736%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186626186678%_)
                                  (let ((_%$%e186661186728%_
                                         (gx#syntax-e _%$%e186626186678%_)))
                                    (let ((_%$%hd186662186731%_
                                           (##car _%$%e186661186728%_))
                                          (_%$%tl186663186733%_
                                           (##cdr _%$%e186661186728%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186662186731%_)
                                               (gx#core-identifier=?
                                                _%$%hd186662186731%_
                                                '%#define-runtime))
                                          (_%K*186625%_
                                           (gx#core-expand-define-runtime%
                                            _%hd186618%_))
                                          (_%$%E186660186724%_))))
                                  (_%$%E186660186724%_))))
                           (_%$%E186652186748%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186626186678%_)
                                  (let ((_%$%e186657186740%_
                                         (gx#syntax-e _%$%e186626186678%_)))
                                    (let ((_%$%hd186658186743%_
                                           (##car _%$%e186657186740%_))
                                          (_%$%tl186659186745%_
                                           (##cdr _%$%e186657186740%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186658186743%_)
                                               (gx#core-identifier=?
                                                _%$%hd186658186743%_
                                                '%#define-alias))
                                          (_%K*186625%_
                                           (gx#core-expand-define-alias%
                                            _%hd186618%_))
                                          (_%$%E186656186736%_))))
                                  (_%$%E186656186736%_))))
                           (_%$%E186642186760%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186626186678%_)
                                  (let ((_%$%e186653186752%_
                                         (gx#syntax-e _%$%e186626186678%_)))
                                    (let ((_%$%hd186654186755%_
                                           (##car _%$%e186653186752%_))
                                          (_%$%tl186655186757%_
                                           (##cdr _%$%e186653186752%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186654186755%_)
                                               (gx#core-identifier=?
                                                _%$%hd186654186755%_
                                                '%#define-syntax))
                                          (_%K*186625%_
                                           (gx#core-expand-define-syntax%
                                            _%hd186618%_))
                                          (_%$%E186652186748%_))))
                                  (_%$%E186652186748%_))))
                           (_%$%E186632186792%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186626186678%_)
                                  (let ((_%$%e186643186764%_
                                         (gx#syntax-e _%$%e186626186678%_)))
                                    (let ((_%$%hd186644186767%_
                                           (##car _%$%e186643186764%_))
                                          (_%$%tl186645186769%_
                                           (##cdr _%$%e186643186764%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186644186767%_)
                                               (gx#core-identifier=?
                                                _%$%hd186644186767%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl186645186769%_)
                                              (let ((_%$%e186646186772%_
                                                     (gx#syntax-e
                                                      _%$%tl186645186769%_)))
                                                (let ((_%$%hd186647186775%_
                                                       (##car _%$%e186646186772%_))
                                                      (_%$%tl186648186777%_
                                                       (##cdr _%$%e186646186772%_)))
                                                  (let ((_%hd-bind186780%_
                                                         _%$%hd186647186775%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl186648186777%_)
                                                        (let ((_%$%e186649186782%_
                                                               (gx#syntax-e
                                                                _%$%tl186648186777%_)))
                                                          (let ((_%$%hd186650186785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e186649186782%_))
                        (_%$%tl186651186787%_ (##cdr _%$%e186649186782%_)))
                    (let ((_%expr186790%_ _%$%hd186650186785%_))
                      (if (gx#stx-null? _%$%tl186651186787%_)
                          (if (gx#core-bind-values? _%hd-bind186780%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind186780%_)
                                (_%K*186625%_ _%hd186618%_))
                              (_%$%E186642186760%_))
                          (_%$%E186642186760%_)))))
                (_%$%E186642186760%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E186642186760%_))
                                          (_%$%E186642186760%_))))
                                  (_%$%E186642186760%_))))
                           (_%$%E186628186826%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186626186678%_)
                                  (let ((_%$%e186633186796%_
                                         (gx#syntax-e _%$%e186626186678%_)))
                                    (let ((_%$%hd186634186799%_
                                           (##car _%$%e186633186796%_))
                                          (_%$%tl186635186801%_
                                           (##cdr _%$%e186633186796%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186634186799%_)
                                               (gx#core-identifier=?
                                                _%$%hd186634186799%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl186635186801%_)
                                              (let ((_%$%e186636186804%_
                                                     (gx#syntax-e
                                                      _%$%tl186635186801%_)))
                                                (let ((_%$%hd186637186807%_
                                                       (##car _%$%e186636186804%_))
                                                      (_%$%tl186638186809%_
                                                       (##cdr _%$%e186636186804%_)))
                                                  (let ((_%hd-bind186812%_
                                                         _%$%hd186637186807%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl186638186809%_)
                                                        (let ((_%$%e186639186814%_
                                                               (gx#syntax-e
                                                                _%$%tl186638186809%_)))
                                                          (let ((_%$%hd186640186817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e186639186814%_))
                        (_%$%tl186641186819%_ (##cdr _%$%e186639186814%_)))
                    (let* ((_%expr186822%_ _%$%hd186640186817%_)
                           (_%props186824%_ _%$%tl186641186819%_))
                      (if (and (gx#core-bind-values? _%hd-bind186812%_)
                               (gx#stx-list? _%props186824%_)
                               (not (gx#stx-null? _%props186824%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind186812%_)
                            (_%K186619%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind186812%_
                                          (cons _%props186824%_ '())))
                                   _%rest186620%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind186812%_
                                          (cons _%expr186822%_ '())))
                                   _%r186621%_)))
                          (_%$%E186632186792%_)))))
                (_%$%E186632186792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E186632186792%_))
                                          (_%$%E186632186792%_))))
                                  (_%$%E186632186792%_))))
                           (_%$%E186627186838%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186626186678%_)
                                  (let ((_%$%e186629186830%_
                                         (gx#syntax-e _%$%e186626186678%_)))
                                    (let ((_%$%hd186630186833%_
                                           (##car _%$%e186629186830%_))
                                          (_%$%tl186631186835%_
                                           (##cdr _%$%e186629186830%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186630186833%_)
                                               (gx#core-identifier=?
                                                _%$%hd186630186833%_
                                                '%#begin-syntax))
                                          (_%K*186625%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd186618%_))
                                          (_%$%E186628186826%_))))
                                  (_%$%E186628186826%_)))))
                      (_%$%E186627186838%_))))
                 (_%eval-body186499%_
                  (lambda (_%rbody186507%_)
                    (let _%lp186509%_ ((_%rest186511%_ _%rbody186507%_)
                                       (_%body186512%_ '())
                                       (_%ebody186513%_ '()))
                      (let* ((_%$%rest186514186522%_ _%rest186511%_)
                             (_%$%else186516186530%_
                              (lambda ()
                                (values _%body186512%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody186513%_)
                                          (gx#stx-source _%stx186496%_))))))
                             (_%$%K186518186606%_
                              (lambda (_%rest186533%_ _%hd186534%_)
                                (let* ((_%$%e186535186552%_ _%hd186534%_)
                                       (_%$%E186547186556%_
                                        (lambda ()
                                          (_%lp186509%_
                                           _%rest186533%_
                                           (cons _%hd186534%_ _%body186512%_)
                                           (cons _%hd186534%_
                                                 _%ebody186513%_))))
                                       (_%$%E186537186568%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e186535186552%_)
                                              (let ((_%$%e186548186560%_
                                                     (gx#syntax-e
                                                      _%$%e186535186552%_)))
                                                (let ((_%$%hd186549186563%_
                                                       (##car _%$%e186548186560%_))
                                                      (_%$%tl186550186565%_
                                                       (##cdr _%$%e186548186560%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd186549186563%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd186549186563%_
                                                            '%#begin-syntax))
                                                      (_%lp186509%_
                                                       _%rest186533%_
                                                       (cons _%hd186534%_
                                                             _%body186512%_)
                                                       _%ebody186513%_)
                                                      (_%$%E186547186556%_))))
                                              (_%$%E186547186556%_))))
                                       (_%$%E186536186602%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e186535186552%_)
                                              (let ((_%$%e186538186572%_
                                                     (gx#syntax-e
                                                      _%$%e186535186552%_)))
                                                (let ((_%$%hd186539186575%_
                                                       (##car _%$%e186538186572%_))
                                                      (_%$%tl186540186577%_
                                                       (##cdr _%$%e186538186572%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd186539186575%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd186539186575%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl186540186577%_)
                                                          (let ((_%$%e186541186580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl186540186577%_)))
                    (let ((_%$%hd186542186583%_ (##car _%$%e186541186580%_))
                          (_%$%tl186543186585%_ (##cdr _%$%e186541186580%_)))
                      (let ((_%hd-bind186588%_ _%$%hd186542186583%_))
                        (if (gx#stx-pair? _%$%tl186543186585%_)
                            (let ((_%$%e186544186590%_
                                   (gx#syntax-e _%$%tl186543186585%_)))
                              (let ((_%$%hd186545186593%_
                                     (##car _%$%e186544186590%_))
                                    (_%$%tl186546186595%_
                                     (##cdr _%$%e186544186590%_)))
                                (let ((_%expr186598%_ _%$%hd186545186593%_))
                                  (if (gx#stx-null? _%$%tl186546186595%_)
                                      (let ((_%ehd186600%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind186588%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr186598%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd186534%_))))
                                        (_%lp186509%_
                                         _%rest186533%_
                                         (cons _%ehd186600%_ _%body186512%_)
                                         (cons _%ehd186600%_ _%ebody186513%_)))
                                      (_%$%E186537186568%_)))))
                            (_%$%E186537186568%_)))))
                  (_%$%E186537186568%_))
              (_%$%E186537186568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E186537186568%_)))))
                                  (_%$%E186536186602%_)))))
                        (if (pair? _%$%rest186514186522%_)
                            (let ((_%$%hd186519186609%_
                                   (##car _%$%rest186514186522%_))
                                  (_%$%tl186520186611%_
                                   (##cdr _%$%rest186514186522%_)))
                              (let* ((_%hd186614%_ _%$%hd186519186609%_)
                                     (_%rest186616%_ _%$%tl186520186611%_))
                                (_%$%K186518186606%_
                                 _%rest186616%_
                                 _%hd186614%_)))
                            (_%$%else186516186530%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody186502%_
                     (gx#core-expand-block__1
                      _%stx186496%_
                      _%expand-special186498%_
                      '#f))
                    (_g186875_ (_%eval-body186499%_ _%rbody186502%_)))
               (begin
                 (let ((_g186876_
                        (if (##values? _g186875_)
                            (##values-length _g186875_)
                            1)))
                   (if (not (##fx= _g186876_ 2))
                       (error "Context expects 2 values" _g186876_)))
                 (let ((_%expanded-body186504%_ (##values-ref _g186875_ 0))
                       (_%value186505%_ (##values-ref _g186875_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body186504%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value186505%_ '())))
                    (gx#stx-source _%stx186496%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx186466%_)
        (let* ((_%$%e186467186474%_ _%stx186466%_)
               (_%$%E186469186478%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186467186474%_)))
               (_%$%E186468186492%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186467186474%_)
                      (let ((_%$%e186470186482%_
                             (gx#syntax-e _%$%e186467186474%_)))
                        (let ((_%$%hd186471186485%_
                               (##car _%$%e186470186482%_))
                              (_%$%tl186472186487%_
                               (##cdr _%$%e186470186482%_)))
                          (let ((_%body186490%_ _%$%tl186472186487%_))
                            (if (gx#stx-list? _%body186490%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body186490%_)
                                 (gx#stx-source _%stx186466%_))
                                (_%$%E186469186478%_)))))
                      (_%$%E186469186478%_)))))
          (_%$%E186468186492%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx186464%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx186464%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx186410%_)
        (let* ((_%$%e186411186424%_ _%stx186410%_)
               (_%$%E186413186428%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e186411186424%_)))
               (_%$%E186412186460%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e186411186424%_)
                      (let ((_%$%e186414186432%_
                             (gx#syntax-e _%$%e186411186424%_)))
                        (let ((_%$%hd186415186435%_
                               (##car _%$%e186414186432%_))
                              (_%$%tl186416186437%_
                               (##cdr _%$%e186414186432%_)))
                          (if (gx#stx-pair? _%$%tl186416186437%_)
                              (let ((_%$%e186417186440%_
                                     (gx#syntax-e _%$%tl186416186437%_)))
                                (let ((_%$%hd186418186443%_
                                       (##car _%$%e186417186440%_))
                                      (_%$%tl186419186445%_
                                       (##cdr _%$%e186417186440%_)))
                                  (let ((_%ann186448%_ _%$%hd186418186443%_))
                                    (if (gx#stx-pair? _%$%tl186419186445%_)
                                        (let ((_%$%e186420186450%_
                                               (gx#syntax-e
                                                _%$%tl186419186445%_)))
                                          (let ((_%$%hd186421186453%_
                                                 (##car _%$%e186420186450%_))
                                                (_%$%tl186422186455%_
                                                 (##cdr _%$%e186420186450%_)))
                                            (let ((_%expr186458%_
                                                   _%$%hd186421186453%_))
                                              (if (gx#stx-null?
                                                   _%$%tl186422186455%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann186448%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr186458%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx186410%_))
                                                  (_%$%E186413186428%_)))))
                                        (_%$%E186413186428%_)))))
                              (_%$%E186413186428%_))))
                      (_%$%E186413186428%_)))))
          (_%$%E186412186460%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx186035%_ _%body186036%_)
        (letrec ((_%expand-special186038%_
                  (lambda (_%hd186405%_ _%K186406%_ _%rest186407%_ _%r186408%_)
                    (_%K186406%_
                     '()
                     (cons (_%expand-internal186039%_
                            _%hd186405%_
                            _%rest186407%_)
                           _%r186408%_))))
                 (_%expand-internal186039%_
                  (lambda (_%hd186401%_ _%rest186402%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal186041%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd186401%_ _%rest186402%_))
                          (gx#stx-source _%stx186035%_))
                         _%expand-internal-special186040%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj186859
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj186859)
                       __obj186859))))
                 (_%expand-internal-special186040%_
                  (lambda (_%hd186197%_ _%K186198%_ _%rest186199%_ _%r186200%_)
                    (let* ((_%$%e186201186249%_ _%hd186197%_)
                           (_%$%E186244186253%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e186201186249%_)))
                           (_%$%E186231186265%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186201186249%_)
                                  (let ((_%$%e186245186257%_
                                         (gx#syntax-e _%$%e186201186249%_)))
                                    (let ((_%$%hd186246186260%_
                                           (##car _%$%e186245186257%_))
                                          (_%$%tl186247186262%_
                                           (##cdr _%$%e186245186257%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186246186260%_)
                                               (gx#core-identifier=?
                                                _%$%hd186246186260%_
                                                '%#declare))
                                          (_%K186198%_
                                           _%rest186199%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd186197%_)
                                                 _%r186200%_))
                                          (_%$%E186244186253%_))))
                                  (_%$%E186244186253%_))))
                           (_%$%E186227186307%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186201186249%_)
                                  (let ((_%$%e186232186269%_
                                         (gx#syntax-e _%$%e186201186249%_)))
                                    (let ((_%$%hd186233186272%_
                                           (##car _%$%e186232186269%_))
                                          (_%$%tl186234186274%_
                                           (##cdr _%$%e186232186269%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186233186272%_)
                                               (gx#core-identifier=?
                                                _%$%hd186233186272%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl186234186274%_)
                                              (let ((_%$%e186235186277%_
                                                     (gx#syntax-e
                                                      _%$%tl186234186274%_)))
                                                (let ((_%$%hd186236186280%_
                                                       (##car _%$%e186235186277%_))
                                                      (_%$%tl186237186282%_
                                                       (##cdr _%$%e186235186277%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd186236186280%_)
                                                      (let ((_%$%e186241186285%_
                                                             (gx#syntax-e
                                                              _%$%hd186236186280%_)))
                                                        (let ((_%$%hd186242186288%_
                                                               (##car _%$%e186241186285%_))
                                                              (_%$%tl186243186290%_
                                                               (##cdr _%$%e186241186285%_)))
                                                          (let ((_%id186293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd186242186288%_))
                    (if (gx#stx-null? _%$%tl186243186290%_)
                        (if (gx#stx-pair? _%$%tl186237186282%_)
                            (let ((_%$%e186238186295%_
                                   (gx#syntax-e _%$%tl186237186282%_)))
                              (let ((_%$%hd186239186298%_
                                     (##car _%$%e186238186295%_))
                                    (_%$%tl186240186300%_
                                     (##cdr _%$%e186238186295%_)))
                                (let ((_%props186303%_ _%$%hd186239186298%_))
                                  (if (gx#stx-null? _%$%tl186240186300%_)
                                      (let ((_%bind186305%_
                                             (gx#resolve-identifier__0
                                              _%id186293%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind186305%_
                                         _%props186303%_)
                                        (_%K186198%_
                                         _%rest186199%_
                                         _%r186200%_))
                                      (_%$%E186231186265%_)))))
                            (_%$%E186231186265%_))
                        (_%$%E186231186265%_)))))
              (_%$%E186231186265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E186231186265%_))
                                          (_%$%E186231186265%_))))
                                  (_%$%E186231186265%_))))
                           (_%$%E186223186319%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186201186249%_)
                                  (let ((_%$%e186228186311%_
                                         (gx#syntax-e _%$%e186201186249%_)))
                                    (let ((_%$%hd186229186314%_
                                           (##car _%$%e186228186311%_))
                                          (_%$%tl186230186316%_
                                           (##cdr _%$%e186228186311%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186229186314%_)
                                               (gx#core-identifier=?
                                                _%$%hd186229186314%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd186197%_)
                                            (_%K186198%_
                                             _%rest186199%_
                                             _%r186200%_))
                                          (_%$%E186227186307%_))))
                                  (_%$%E186227186307%_))))
                           (_%$%E186213186331%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186201186249%_)
                                  (let ((_%$%e186224186323%_
                                         (gx#syntax-e _%$%e186201186249%_)))
                                    (let ((_%$%hd186225186326%_
                                           (##car _%$%e186224186323%_))
                                          (_%$%tl186226186328%_
                                           (##cdr _%$%e186224186323%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186225186326%_)
                                               (gx#core-identifier=?
                                                _%$%hd186225186326%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd186197%_)
                                            (_%K186198%_
                                             _%rest186199%_
                                             _%r186200%_))
                                          (_%$%E186223186319%_))))
                                  (_%$%E186223186319%_))))
                           (_%$%E186203186363%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186201186249%_)
                                  (let ((_%$%e186214186335%_
                                         (gx#syntax-e _%$%e186201186249%_)))
                                    (let ((_%$%hd186215186338%_
                                           (##car _%$%e186214186335%_))
                                          (_%$%tl186216186340%_
                                           (##cdr _%$%e186214186335%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186215186338%_)
                                               (gx#core-identifier=?
                                                _%$%hd186215186338%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl186216186340%_)
                                              (let ((_%$%e186217186343%_
                                                     (gx#syntax-e
                                                      _%$%tl186216186340%_)))
                                                (let ((_%$%hd186218186346%_
                                                       (##car _%$%e186217186343%_))
                                                      (_%$%tl186219186348%_
                                                       (##cdr _%$%e186217186343%_)))
                                                  (let ((_%hd-bind186351%_
                                                         _%$%hd186218186346%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl186219186348%_)
                                                        (let ((_%$%e186220186353%_
                                                               (gx#syntax-e
                                                                _%$%tl186219186348%_)))
                                                          (let ((_%$%hd186221186356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e186220186353%_))
                        (_%$%tl186222186358%_ (##cdr _%$%e186220186353%_)))
                    (let ((_%expr186361%_ _%$%hd186221186356%_))
                      (if (gx#stx-null? _%$%tl186222186358%_)
                          (if (gx#core-bind-values? _%hd-bind186351%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind186351%_)
                                (_%K186198%_
                                 _%rest186199%_
                                 (cons _%hd186197%_ _%r186200%_)))
                              (_%$%E186213186331%_))
                          (_%$%E186213186331%_)))))
                (_%$%E186213186331%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E186213186331%_))
                                          (_%$%E186213186331%_))))
                                  (_%$%E186213186331%_))))
                           (_%$%E186202186397%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e186201186249%_)
                                  (let ((_%$%e186204186367%_
                                         (gx#syntax-e _%$%e186201186249%_)))
                                    (let ((_%$%hd186205186370%_
                                           (##car _%$%e186204186367%_))
                                          (_%$%tl186206186372%_
                                           (##cdr _%$%e186204186367%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd186205186370%_)
                                               (gx#core-identifier=?
                                                _%$%hd186205186370%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl186206186372%_)
                                              (let ((_%$%e186207186375%_
                                                     (gx#syntax-e
                                                      _%$%tl186206186372%_)))
                                                (let ((_%$%hd186208186378%_
                                                       (##car _%$%e186207186375%_))
                                                      (_%$%tl186209186380%_
                                                       (##cdr _%$%e186207186375%_)))
                                                  (let ((_%hd-bind186383%_
                                                         _%$%hd186208186378%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl186209186380%_)
                                                        (let ((_%$%e186210186385%_
                                                               (gx#syntax-e
                                                                _%$%tl186209186380%_)))
                                                          (let ((_%$%hd186211186388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e186210186385%_))
                        (_%$%tl186212186390%_ (##cdr _%$%e186210186385%_)))
                    (let* ((_%expr186393%_ _%$%hd186211186388%_)
                           (_%props186395%_ _%$%tl186212186390%_))
                      (if (and (gx#core-bind-values? _%hd-bind186383%_)
                               (gx#stx-list? _%props186395%_)
                               (not (gx#stx-null? _%props186395%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind186383%_)
                            (_%K186198%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind186383%_
                                          (cons _%props186395%_ '())))
                                   _%rest186199%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind186383%_
                                          (cons _%expr186393%_ '())))
                                   _%r186200%_)))
                          (_%$%E186203186363%_)))))
                (_%$%E186203186363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E186203186363%_))
                                          (_%$%E186203186363%_))))
                                  (_%$%E186203186363%_)))))
                      (_%$%E186202186397%_))))
                 (_%wrap-internal186041%_
                  (lambda (_%rbody186043%_)
                    (let _%lp186045%_ ((_%rest186047%_ _%rbody186043%_)
                                       (_%decls186048%_ '())
                                       (_%bind186049%_ '())
                                       (_%body186050%_ '()))
                      (let* ((_%$%e186051186058%_ _%rest186047%_)
                             (_%$%E186053186107%_
                              (lambda ()
                                (let* ((_%body186102%_
                                        (let* ((_%$%body186061186071%_
                                                _%body186050%_)
                                               (_%$%else186064186079%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body186050%_)
                                                   (gx#stx-source
                                                    _%stx186035%_)))))
                                          (let ((_%$%K186069186099%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx186035%_)))
                                                (_%$%K186066186085%_
                                                 (lambda (_%expr186083%_)
                                                   _%expr186083%_)))
                                            (let ((_%$%try-match186063186095%_
                                                   (lambda ()
                                                     (if (pair? _%$%body186061186071%_)
                                                         (let ((_%$%tl186068186090%_
                                                                (##cdr _%$%body186061186071%_))
                                                               (_%$%hd186067186088%_
                                                                (##car _%$%body186061186071%_)))
                                                           (if (null? _%$%tl186068186090%_)
                                                               (let ((_%expr186093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd186067186088%_))
                         (_%$%K186066186085%_ _%expr186093%_))
                       (_%$%else186064186079%_)))
                 (_%$%else186064186079%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body186061186071%_)
                                                  (_%$%K186069186099%_)
                                                  (_%$%try-match186063186095%_))))))
                                       (_%body186104%_
                                        (if (null? _%bind186049%_)
                                            _%body186102%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind186049%_
                                                         (cons _%body186102%_
                                                               '())))
                                             (gx#stx-source _%stx186035%_)))))
                                  (if (null? _%decls186048%_)
                                      _%body186104%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls186048%_
                                                   (cons _%body186104%_ '())))
                                       (gx#stx-source _%stx186035%_))))))
                             (_%$%E186052186193%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e186051186058%_)
                                    (let ((_%$%e186054186111%_
                                           (gx#syntax-e _%$%e186051186058%_)))
                                      (let ((_%$%hd186055186114%_
                                             (##car _%$%e186054186111%_))
                                            (_%$%tl186056186116%_
                                             (##cdr _%$%e186054186111%_)))
                                        (let* ((_%hd186119%_
                                                _%$%hd186055186114%_)
                                               (_%rest186121%_
                                                _%$%tl186056186116%_)
                                               (_%$%e186122186139%_
                                                _%hd186119%_)
                                               (_%$%E186134186143%_
                                                (lambda ()
                                                  (if (null? _%bind186049%_)
                                                      (_%lp186045%_
                                                       _%rest186121%_
                                                       _%decls186048%_
                                                       _%bind186049%_
                                                       (cons _%hd186119%_
                                                             _%body186050%_))
                                                      (_%lp186045%_
                                                       _%rest186121%_
                                                       _%decls186048%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd186119%_ '()))
                     _%bind186049%_)
               _%body186050%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E186124186157%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e186122186139%_)
                                                      (let ((_%$%e186135186147%_
                                                             (gx#syntax-e
                                                              _%$%e186122186139%_)))
                                                        (let ((_%$%hd186136186150%_
                                                               (##car _%$%e186135186147%_))
                                                              (_%$%tl186137186152%_
                                                               (##cdr _%$%e186135186147%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd186136186150%_)
                           (gx#core-identifier=?
                            _%$%hd186136186150%_
                            '%#declare))
                      (let ((_%xdecls186155%_ _%$%tl186137186152%_))
                        (_%lp186045%_
                         _%rest186121%_
                         (gx#stx-foldr cons _%decls186048%_ _%xdecls186155%_)
                         _%bind186049%_
                         _%body186050%_))
                      (_%$%E186134186143%_))))
              (_%$%E186134186143%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E186123186189%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e186122186139%_)
                                                      (let ((_%$%e186125186161%_
                                                             (gx#syntax-e
                                                              _%$%e186122186139%_)))
                                                        (let ((_%$%hd186126186164%_
                                                               (##car _%$%e186125186161%_))
                                                              (_%$%tl186127186166%_
                                                               (##cdr _%$%e186125186161%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd186126186164%_)
                           (gx#core-identifier=?
                            _%$%hd186126186164%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl186127186166%_)
                          (let ((_%$%e186128186169%_
                                 (gx#syntax-e _%$%tl186127186166%_)))
                            (let ((_%$%hd186129186172%_
                                   (##car _%$%e186128186169%_))
                                  (_%$%tl186130186174%_
                                   (##cdr _%$%e186128186169%_)))
                              (let ((_%hd-bind186177%_ _%$%hd186129186172%_))
                                (if (gx#stx-pair? _%$%tl186130186174%_)
                                    (let ((_%$%e186131186179%_
                                           (gx#syntax-e _%$%tl186130186174%_)))
                                      (let ((_%$%hd186132186182%_
                                             (##car _%$%e186131186179%_))
                                            (_%$%tl186133186184%_
                                             (##cdr _%$%e186131186179%_)))
                                        (let ((_%expr186187%_
                                               _%$%hd186132186182%_))
                                          (if (gx#stx-null?
                                               _%$%tl186133186184%_)
                                              (_%lp186045%_
                                               _%rest186121%_
                                               _%decls186048%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind186177%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr186187%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind186049%_)
                                               _%body186050%_)
                                              (_%$%E186124186157%_)))))
                                    (_%$%E186124186157%_)))))
                          (_%$%E186124186157%_))
                      (_%$%E186124186157%_))))
              (_%$%E186124186157%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E186123186189%_))))
                                    (_%$%E186053186107%_)))))
                        (_%$%E186052186193%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body186036%_)
            (gx#stx-source _%stx186035%_))
           _%expand-special186038%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx185973%_)
        (let* ((_%$%e185974185981%_ _%stx185973%_)
               (_%$%E185976185985%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185974185981%_)))
               (_%$%E185975186031%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185974185981%_)
                      (let ((_%$%e185977185989%_
                             (gx#syntax-e _%$%e185974185981%_)))
                        (let ((_%$%hd185978185992%_
                               (##car _%$%e185977185989%_))
                              (_%$%tl185979185994%_
                               (##cdr _%$%e185977185989%_)))
                          (let ((_%body185997%_ _%$%tl185979185994%_))
                            (if (gx#stx-list? _%body185997%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl185999%_)
                                     (let* ((_%$%e186000186007%_
                                             _%decl185999%_)
                                            (_%$%E186002186011%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e186000186007%_)))
                                            (_%$%E186001186027%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e186000186007%_)
                                                   (let ((_%$%e186003186015%_
                                                          (gx#syntax-e
                                                           _%$%e186000186007%_)))
                                                     (let ((_%$%hd186004186018%_
                                                            (##car _%$%e186003186015%_))
                                                           (_%$%tl186005186020%_
                                                            (##cdr _%$%e186003186015%_)))
                                                       (let* ((_%head186023%_
                                                               _%$%hd186004186018%_)
                                                              (_%args186025%_
                                                               _%$%tl186005186020%_))
                                                         (if (gx#stx-list?
                                                              _%args186025%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl185999%_)
                                                             (_%$%E186002186011%_)))))
                                                   (_%$%E186002186011%_)))))
                                       (_%$%E186001186027%_)))
                                   _%body185997%_))
                                 (gx#stx-source _%stx185973%_))
                                (_%$%E185976185985%_)))))
                      (_%$%E185976185985%_)))))
          (_%$%E185975186031%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx185877%_)
        (let* ((_%$%e185878185885%_ _%stx185877%_)
               (_%$%E185880185889%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185878185885%_)))
               (_%$%E185879185969%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185878185885%_)
                      (let ((_%$%e185881185893%_
                             (gx#syntax-e _%$%e185878185885%_)))
                        (let ((_%$%hd185882185896%_
                               (##car _%$%e185881185893%_))
                              (_%$%tl185883185898%_
                               (##cdr _%$%e185881185893%_)))
                          (let ((_%body185901%_ _%$%tl185883185898%_))
                            (let _%lp185903%_ ((_%rest185905%_ _%body185901%_)
                                               (_%r185906%_ '()))
                              (let* ((_%$%e185907185921%_ _%rest185905%_)
                                     (_%$%E185919185925%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx185877%_)))
                                     (_%$%E185909185929%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e185907185921%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r185906%_))
                                             (gx#stx-source _%stx185877%_))
                                            (_%$%E185919185925%_))))
                                     (_%$%E185908185965%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e185907185921%_)
                                            (let ((_%$%e185910185933%_
                                                   (gx#syntax-e
                                                    _%$%e185907185921%_)))
                                              (let ((_%$%hd185911185936%_
                                                     (##car _%$%e185910185933%_))
                                                    (_%$%tl185912185938%_
                                                     (##cdr _%$%e185910185933%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd185911185936%_)
                                                    (let ((_%$%e185913185941%_
                                                           (gx#syntax-e
                                                            _%$%hd185911185936%_)))
                                                      (let ((_%$%hd185914185944%_
                                                             (##car _%$%e185913185941%_))
                                                            (_%$%tl185915185946%_
                                                             (##cdr _%$%e185913185941%_)))
                                                        (let ((_%id185949%_
                                                               _%$%hd185914185944%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl185915185946%_)
                                                              (let ((_%$%e185916185951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl185915185946%_)))
                        (let ((_%$%hd185917185954%_
                               (##car _%$%e185916185951%_))
                              (_%$%tl185918185956%_
                               (##cdr _%$%e185916185951%_)))
                          (let ((_%eid185959%_ _%$%hd185917185954%_))
                            (if (gx#stx-null? _%$%tl185918185956%_)
                                (let ((_%rest185961%_ _%$%tl185912185938%_))
                                  (if (and (gx#identifier? _%id185949%_)
                                           (gx#identifier? _%eid185959%_))
                                      (let ((_%eid185963%_
                                             (gx#stx-e _%eid185959%_)))
                                        (gx#core-bind-extern!__0
                                         _%id185949%_
                                         _%eid185963%_)
                                        (_%lp185903%_
                                         _%rest185961%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id185949%_)
                                                     (cons _%eid185963%_ '()))
                                               _%r185906%_)))
                                      (_%$%E185909185929%_)))
                                (_%$%E185909185929%_)))))
                      (_%$%E185909185929%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185909185929%_))))
                                            (_%$%E185909185929%_)))))
                                (_%$%E185908185965%_))))))
                      (_%$%E185880185889%_)))))
          (_%$%E185879185969%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx185779%_)
        (let* ((_%$%e185780185803%_ _%stx185779%_)
               (_%$%E185792185807%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185780185803%_)))
               (_%$%E185782185839%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185780185803%_)
                      (let ((_%$%e185793185811%_
                             (gx#syntax-e _%$%e185780185803%_)))
                        (let ((_%$%hd185794185814%_
                               (##car _%$%e185793185811%_))
                              (_%$%tl185795185816%_
                               (##cdr _%$%e185793185811%_)))
                          (if (gx#stx-pair? _%$%tl185795185816%_)
                              (let ((_%$%e185796185819%_
                                     (gx#syntax-e _%$%tl185795185816%_)))
                                (let ((_%$%hd185797185822%_
                                       (##car _%$%e185796185819%_))
                                      (_%$%tl185798185824%_
                                       (##cdr _%$%e185796185819%_)))
                                  (let ((_%hd185827%_ _%$%hd185797185822%_))
                                    (if (gx#stx-pair? _%$%tl185798185824%_)
                                        (let ((_%$%e185799185829%_
                                               (gx#syntax-e
                                                _%$%tl185798185824%_)))
                                          (let ((_%$%hd185800185832%_
                                                 (##car _%$%e185799185829%_))
                                                (_%$%tl185801185834%_
                                                 (##cdr _%$%e185799185829%_)))
                                            (let ((_%expr185837%_
                                                   _%$%hd185800185832%_))
                                              (if (gx#stx-null?
                                                   _%$%tl185801185834%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd185827%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd185827%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd185827%_)
                             (cons (gx#core-expand-expression _%expr185837%_)
                                   '())))
                 (gx#stx-source _%stx185779%_)))
              (_%$%E185792185807%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E185792185807%_)))))
                                        (_%$%E185792185807%_)))))
                              (_%$%E185792185807%_))))
                      (_%$%E185792185807%_))))
               (_%$%E185781185873%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185780185803%_)
                      (let ((_%$%e185783185843%_
                             (gx#syntax-e _%$%e185780185803%_)))
                        (let ((_%$%hd185784185846%_
                               (##car _%$%e185783185843%_))
                              (_%$%tl185785185848%_
                               (##cdr _%$%e185783185843%_)))
                          (if (gx#stx-pair? _%$%tl185785185848%_)
                              (let ((_%$%e185786185851%_
                                     (gx#syntax-e _%$%tl185785185848%_)))
                                (let ((_%$%hd185787185854%_
                                       (##car _%$%e185786185851%_))
                                      (_%$%tl185788185856%_
                                       (##cdr _%$%e185786185851%_)))
                                  (let ((_%hd185859%_ _%$%hd185787185854%_))
                                    (if (gx#stx-pair? _%$%tl185788185856%_)
                                        (let ((_%$%e185789185861%_
                                               (gx#syntax-e
                                                _%$%tl185788185856%_)))
                                          (let ((_%$%hd185790185864%_
                                                 (##car _%$%e185789185861%_))
                                                (_%$%tl185791185866%_
                                                 (##cdr _%$%e185789185861%_)))
                                            (let* ((_%expr185869%_
                                                    _%$%hd185790185864%_)
                                                   (_%props185871%_
                                                    _%$%tl185791185866%_))
                                              (if (and (gx#stx-list?
                                                        _%props185871%_)
                                                       (not (gx#stx-null?
                                                             _%props185871%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd185859%_
                                                                (cons _%expr185869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd185859%_ (cons _%props185871%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E185782185839%_)))))
                                        (_%$%E185782185839%_)))))
                              (_%$%E185782185839%_))))
                      (_%$%E185782185839%_)))))
          (_%$%E185781185873%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx185718%_)
        (let* ((_%$%e185719185732%_ _%stx185718%_)
               (_%$%E185721185736%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185719185732%_)))
               (_%$%E185720185775%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185719185732%_)
                      (let ((_%$%e185722185740%_
                             (gx#syntax-e _%$%e185719185732%_)))
                        (let ((_%$%hd185723185743%_
                               (##car _%$%e185722185740%_))
                              (_%$%tl185724185745%_
                               (##cdr _%$%e185722185740%_)))
                          (if (gx#stx-pair? _%$%tl185724185745%_)
                              (let ((_%$%e185725185748%_
                                     (gx#syntax-e _%$%tl185724185745%_)))
                                (let ((_%$%hd185726185751%_
                                       (##car _%$%e185725185748%_))
                                      (_%$%tl185727185753%_
                                       (##cdr _%$%e185725185748%_)))
                                  (let ((_%id185756%_ _%$%hd185726185751%_))
                                    (if (gx#stx-pair? _%$%tl185727185753%_)
                                        (let ((_%$%e185728185758%_
                                               (gx#syntax-e
                                                _%$%tl185727185753%_)))
                                          (let ((_%$%hd185729185761%_
                                                 (##car _%$%e185728185758%_))
                                                (_%$%tl185730185763%_
                                                 (##cdr _%$%e185728185758%_)))
                                            (let* ((_%binding-id185766%_
                                                    _%$%hd185729185761%_)
                                                   (_%props185768%_
                                                    _%$%tl185730185763%_))
                                              (if (and (gx#identifier?
                                                        _%id185756%_)
                                                       (gx#identifier?
                                                        _%binding-id185766%_)
                                                       (gx#stx-list?
                                                        _%props185768%_))
                                                  (let* ((_%eid185770%_
                                                          (gx#stx-e
                                                           _%binding-id185766%_))
                                                         (_%bind185772%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id185756%_
                                                           _%eid185770%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind185772%_
                                                     _%props185768%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id185756%_)
                         (cons _%eid185770%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E185721185736%_)))))
                                        (_%$%E185721185736%_)))))
                              (_%$%E185721185736%_))))
                      (_%$%E185721185736%_)))))
          (_%$%E185720185775%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx185651%_)
        (let* ((_%$%e185652185668%_ _%stx185651%_)
               (_%$%E185654185672%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185652185668%_)))
               (_%$%E185653185714%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185652185668%_)
                      (let ((_%$%e185655185676%_
                             (gx#syntax-e _%$%e185652185668%_)))
                        (let ((_%$%hd185656185679%_
                               (##car _%$%e185655185676%_))
                              (_%$%tl185657185681%_
                               (##cdr _%$%e185655185676%_)))
                          (if (gx#stx-pair? _%$%tl185657185681%_)
                              (let ((_%$%e185658185684%_
                                     (gx#syntax-e _%$%tl185657185681%_)))
                                (let ((_%$%hd185659185687%_
                                       (##car _%$%e185658185684%_))
                                      (_%$%tl185660185689%_
                                       (##cdr _%$%e185658185684%_)))
                                  (if (gx#stx-pair? _%$%hd185659185687%_)
                                      (let ((_%$%e185664185692%_
                                             (gx#syntax-e
                                              _%$%hd185659185687%_)))
                                        (let ((_%$%hd185665185695%_
                                               (##car _%$%e185664185692%_))
                                              (_%$%tl185666185697%_
                                               (##cdr _%$%e185664185692%_)))
                                          (let ((_%id185700%_
                                                 _%$%hd185665185695%_))
                                            (if (gx#stx-null?
                                                 _%$%tl185666185697%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl185660185689%_)
                                                    (let ((_%$%e185661185702%_
                                                           (gx#syntax-e
                                                            _%$%tl185660185689%_)))
                                                      (let ((_%$%hd185662185705%_
                                                             (##car _%$%e185661185702%_))
                                                            (_%$%tl185663185707%_
                                                             (##cdr _%$%e185661185702%_)))
                                                        (let ((_%props185710%_
                                                               _%$%hd185662185705%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl185663185707%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id185700%_)
                               (gx#stx-list? _%props185710%_))
                          (let ((_%bind185712%_
                                 (gx#resolve-identifier__0 _%id185700%_)))
                            (if (##structure-instance-of?
                                 _%bind185712%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx185651%_
                                 _%id185700%_
                                 _%bind185712%_))
                            (gx#core-bind-runtime-properties!
                             _%bind185712%_
                             _%props185710%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E185654185672%_))
                      (_%$%E185654185672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185654185672%_))
                                                (_%$%E185654185672%_)))))
                                      (_%$%E185654185672%_))))
                              (_%$%E185654185672%_))))
                      (_%$%E185654185672%_)))))
          (_%$%E185653185714%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind185586%_ _%props185587%_)
        (letrec ((_%eval-prop185589%_
                  (lambda (_%prop185649%_)
                    (gx#eval-expression+1 _%prop185649%_))))
          (let _%loop185591%_ ((_%rest185593%_ _%props185587%_)
                               (_%props185594%_ '()))
            (let* ((_%$%e185595185606%_ _%rest185593%_)
                   (_%$%E185604185610%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e185595185606%_)))
                   (_%$%E185597185614%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e185595185606%_)
                          (if (null? _%props185594%_)
                              '#!void
                              (##structure-set!
                               _%bind185586%_
                               (reverse! _%props185594%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E185604185610%_))))
                   (_%$%E185596185645%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e185595185606%_)
                          (let ((_%$%e185598185618%_
                                 (gx#syntax-e _%$%e185595185606%_)))
                            (let ((_%$%hd185599185621%_
                                   (##car _%$%e185598185618%_))
                                  (_%$%tl185600185623%_
                                   (##cdr _%$%e185598185618%_)))
                              (let ((_%key185626%_ _%$%hd185599185621%_))
                                (if (gx#stx-pair? _%$%tl185600185623%_)
                                    (let ((_%$%e185601185628%_
                                           (gx#syntax-e _%$%tl185600185623%_)))
                                      (let ((_%$%hd185602185631%_
                                             (##car _%$%e185601185628%_))
                                            (_%$%tl185603185633%_
                                             (##cdr _%$%e185601185628%_)))
                                        (let* ((_%prop185636%_
                                                _%$%hd185602185631%_)
                                               (_%rest185638%_
                                                _%$%tl185603185633%_))
                                          (if (gx#stx-keyword? _%key185626%_)
                                              (let* ((_%key185640%_
                                                      (gx#stx-e _%key185626%_))
                                                     (_%$e185642%_
                                                      _%key185640%_))
                                                (if (eq? 'macro: _%$e185642%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind185586%_
                                                       (if (gx#identifier?
                                                            _%prop185636%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop185636%_)
                                                           (gx#eval-expression+1
                                                            _%prop185636%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop185591%_
                                                       _%rest185638%_
                                                       _%props185594%_))
                                                    (if (eq? 'type:
                                                             _%$e185642%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind185586%_
                                                           (gx#eval-expression+1
                                                            _%prop185636%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop185591%_
                                                           _%rest185638%_
                                                           _%props185594%_))
                                                        (_%loop185591%_
                                                         _%rest185638%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop185636%_)
                                                               (cons _%key185640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props185594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E185597185614%_)))))
                                    (_%$%E185597185614%_)))))
                          (_%$%E185597185614%_)))))
              (_%$%E185596185645%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx185529%_)
        (let* ((_%$%e185530185543%_ _%stx185529%_)
               (_%$%E185532185547%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185530185543%_)))
               (_%$%E185531185582%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185530185543%_)
                      (let ((_%$%e185533185551%_
                             (gx#syntax-e _%$%e185530185543%_)))
                        (let ((_%$%hd185534185554%_
                               (##car _%$%e185533185551%_))
                              (_%$%tl185535185556%_
                               (##cdr _%$%e185533185551%_)))
                          (if (gx#stx-pair? _%$%tl185535185556%_)
                              (let ((_%$%e185536185559%_
                                     (gx#syntax-e _%$%tl185535185556%_)))
                                (let ((_%$%hd185537185562%_
                                       (##car _%$%e185536185559%_))
                                      (_%$%tl185538185564%_
                                       (##cdr _%$%e185536185559%_)))
                                  (let ((_%id185567%_ _%$%hd185537185562%_))
                                    (if (gx#stx-pair? _%$%tl185538185564%_)
                                        (let ((_%$%e185539185569%_
                                               (gx#syntax-e
                                                _%$%tl185538185564%_)))
                                          (let ((_%$%hd185540185572%_
                                                 (##car _%$%e185539185569%_))
                                                (_%$%tl185541185574%_
                                                 (##cdr _%$%e185539185569%_)))
                                            (let ((_%expr185577%_
                                                   _%$%hd185540185572%_))
                                              (if (gx#stx-null?
                                                   _%$%tl185541185574%_)
                                                  (if (gx#identifier?
                                                       _%id185567%_)
                                                      (let ((_g186877_
                                                             (gx#core-expand-expression+1
                                                              _%expr185577%_)))
                                                        (begin
                                                          (let ((_g186878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g186877_)
                             (##values-length _g186877_)
                             1)))
                    (if (not (##fx= _g186878_ 2))
                        (error "Context expects 2 values" _g186878_)))
                  (let ((_%e-stx185579%_ (##values-ref _g186877_ 0))
                        (_%e185580%_ (##values-ref _g186877_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id185567%_ _%e185580%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id185567%_)
                                   (cons _%e-stx185579%_ '())))
                       (gx#stx-source _%stx185529%_))))))
              (_%$%E185532185547%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E185532185547%_)))))
                                        (_%$%E185532185547%_)))))
                              (_%$%E185532185547%_))))
                      (_%$%E185532185547%_)))))
          (_%$%E185531185582%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx185473%_)
        (let* ((_%$%e185474185487%_ _%stx185473%_)
               (_%$%E185476185491%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185474185487%_)))
               (_%$%E185475185525%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185474185487%_)
                      (let ((_%$%e185477185495%_
                             (gx#syntax-e _%$%e185474185487%_)))
                        (let ((_%$%hd185478185498%_
                               (##car _%$%e185477185495%_))
                              (_%$%tl185479185500%_
                               (##cdr _%$%e185477185495%_)))
                          (if (gx#stx-pair? _%$%tl185479185500%_)
                              (let ((_%$%e185480185503%_
                                     (gx#syntax-e _%$%tl185479185500%_)))
                                (let ((_%$%hd185481185506%_
                                       (##car _%$%e185480185503%_))
                                      (_%$%tl185482185508%_
                                       (##cdr _%$%e185480185503%_)))
                                  (let ((_%id185511%_ _%$%hd185481185506%_))
                                    (if (gx#stx-pair? _%$%tl185482185508%_)
                                        (let ((_%$%e185483185513%_
                                               (gx#syntax-e
                                                _%$%tl185482185508%_)))
                                          (let ((_%$%hd185484185516%_
                                                 (##car _%$%e185483185513%_))
                                                (_%$%tl185485185518%_
                                                 (##cdr _%$%e185483185513%_)))
                                            (let ((_%alias-id185521%_
                                                   _%$%hd185484185516%_))
                                              (if (gx#stx-null?
                                                   _%$%tl185485185518%_)
                                                  (if (and (gx#identifier?
                                                            _%id185511%_)
                                                           (gx#identifier?
                                                            _%alias-id185521%_))
                                                      (let ((_%alias-id185523%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id185521%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id185511%_
                                                         _%alias-id185523%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id185511%_)
                             (cons _%alias-id185523%_ '())))))
              (_%$%E185476185491%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E185476185491%_)))))
                                        (_%$%E185476185491%_)))))
                              (_%$%E185476185491%_))))
                      (_%$%E185476185491%_)))))
          (_%$%E185475185525%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx185416%_ _%wrap?185417%_)
        (let* ((_%$%e185418185428%_ _%stx185416%_)
               (_%$%E185420185432%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185418185428%_)))
               (_%$%E185419185459%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185418185428%_)
                      (let ((_%$%e185421185436%_
                             (gx#syntax-e _%$%e185418185428%_)))
                        (let ((_%$%hd185422185439%_
                               (##car _%$%e185421185436%_))
                              (_%$%tl185423185441%_
                               (##cdr _%$%e185421185436%_)))
                          (if (gx#stx-pair? _%$%tl185423185441%_)
                              (let ((_%$%e185424185444%_
                                     (gx#syntax-e _%$%tl185423185441%_)))
                                (let ((_%$%hd185425185447%_
                                       (##car _%$%e185424185444%_))
                                      (_%$%tl185426185449%_
                                       (##cdr _%$%e185424185444%_)))
                                  (let* ((_%hd185452%_ _%$%hd185425185447%_)
                                         (_%body185454%_ _%$%tl185426185449%_))
                                    (if (gx#core-bind-values? _%hd185452%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd185452%_)
                                           (let ((_%body185457%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd185452%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx185416%_
                                                               _%body185454%_)
                                                              '()))))
                                             (if _%wrap?185417%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body185457%_)
                                                  (gx#stx-source
                                                   _%stx185416%_))
                                                 _%body185457%_)))
                                         gx#current-expander-context
                                         (let ((__obj186860
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj186860)
                                           __obj186860))
                                        (_%$%E185420185432%_)))))
                              (_%$%E185420185432%_))))
                      (_%$%E185420185432%_)))))
          (_%$%E185419185459%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx185466%_)
        (let ((_%wrap?185468%_ '#t))
          (gx#core-expand-lambda%__% _%stx185466%_ _%wrap?185468%_))))
    (define gx#core-expand-lambda%
      (lambda _g186879_
        (let ((_g186880_ (##length _g186879_)))
          (cond ((##fx= _g186880_ 1)
                 (apply gx#core-expand-lambda%__0 _g186879_))
                ((##fx= _g186880_ 2)
                 (apply gx#core-expand-lambda%__% _g186879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g186879_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx185380%_)
        (let* ((_%$%e185381185388%_ _%stx185380%_)
               (_%$%E185383185392%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185381185388%_)))
               (_%$%E185382185411%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185381185388%_)
                      (let ((_%$%e185384185396%_
                             (gx#syntax-e _%$%e185381185388%_)))
                        (let ((_%$%hd185385185399%_
                               (##car _%$%e185384185396%_))
                              (_%$%tl185386185401%_
                               (##cdr _%$%e185384185396%_)))
                          (let ((_%clauses185404%_ _%$%tl185386185401%_))
                            (if (gx#stx-list? _%clauses185404%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause185406%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause185406%_)
                                       (let ((_%$e185408%_
                                              (gx#stx-source
                                               _%clause185406%_)))
                                         (if _%$e185408%_
                                             _%$e185408%_
                                             (gx#stx-source _%stx185380%_))))
                                      '#f))
                                   _%clauses185404%_))
                                 (gx#stx-source _%stx185380%_))
                                (_%$%E185383185392%_)))))
                      (_%$%E185383185392%_)))))
          (_%$%E185382185411%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx185334%_)
        (let* ((_%$%e185335185345%_ _%stx185334%_)
               (_%$%E185337185349%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185335185345%_)))
               (_%$%E185336185376%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185335185345%_)
                      (let ((_%$%e185338185353%_
                             (gx#syntax-e _%$%e185335185345%_)))
                        (let ((_%$%hd185339185356%_
                               (##car _%$%e185338185353%_))
                              (_%$%tl185340185358%_
                               (##cdr _%$%e185338185353%_)))
                          (if (gx#stx-pair? _%$%tl185340185358%_)
                              (let ((_%$%e185341185361%_
                                     (gx#syntax-e _%$%tl185340185358%_)))
                                (let ((_%$%hd185342185364%_
                                       (##car _%$%e185341185361%_))
                                      (_%$%tl185343185366%_
                                       (##cdr _%$%e185341185361%_)))
                                  (let* ((_%hd185369%_ _%$%hd185342185364%_)
                                         (_%body185371%_ _%$%tl185343185366%_))
                                    (if (gx#core-expand-let-bind? _%hd185369%_)
                                        (let ((_%expressions185373%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd185369%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd185369%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd185369%_
                                                           _%expressions185373%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx185334%_
                         _%body185371%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx185334%_)))
                                           gx#current-expander-context
                                           (let ((__obj186861
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj186861)
                                             __obj186861)))
                                        (_%$%E185337185349%_)))))
                              (_%$%E185337185349%_))))
                      (_%$%E185337185349%_)))))
          (_%$%E185336185376%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx185279%_ _%form185280%_)
        (let* ((_%$%e185281185291%_ _%stx185279%_)
               (_%$%E185283185295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185281185291%_)))
               (_%$%E185282185320%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185281185291%_)
                      (let ((_%$%e185284185299%_
                             (gx#syntax-e _%$%e185281185291%_)))
                        (let ((_%$%hd185285185302%_
                               (##car _%$%e185284185299%_))
                              (_%$%tl185286185304%_
                               (##cdr _%$%e185284185299%_)))
                          (if (gx#stx-pair? _%$%tl185286185304%_)
                              (let ((_%$%e185287185307%_
                                     (gx#syntax-e _%$%tl185286185304%_)))
                                (let ((_%$%hd185288185310%_
                                       (##car _%$%e185287185307%_))
                                      (_%$%tl185289185312%_
                                       (##cdr _%$%e185287185307%_)))
                                  (let* ((_%hd185315%_ _%$%hd185288185310%_)
                                         (_%body185317%_ _%$%tl185289185312%_))
                                    (if (gx#core-expand-let-bind? _%hd185315%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd185315%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form185280%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd185315%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd185315%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx185279%_
                                                               _%body185317%_)
                                                              '())))
                                            (gx#stx-source _%stx185279%_)))
                                         gx#current-expander-context
                                         (let ((__obj186862
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj186862)
                                           __obj186862))
                                        (_%$%E185283185295%_)))))
                              (_%$%E185283185295%_))))
                      (_%$%E185283185295%_)))))
          (_%$%E185282185320%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx185327%_)
        (let ((_%form185329%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx185327%_ _%form185329%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g186881_
        (let ((_g186882_ (##length _g186881_)))
          (cond ((##fx= _g186882_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g186881_))
                ((##fx= _g186882_ 2)
                 (apply gx#core-expand-letrec-values%__% _g186881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g186881_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx185276%_)
        (gx#core-expand-letrec-values%__% _%stx185276%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx185233%_)
        (if (gx#stx-list? _%stx185233%_)
            (gx#stx-andmap
             (lambda (_%bind185235%_)
               (let* ((_%$%e185236185246%_ _%bind185235%_)
                      (_%$%E185238185250%_ (lambda () '#f))
                      (_%$%E185237185272%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e185236185246%_)
                             (let ((_%$%e185239185254%_
                                    (gx#syntax-e _%$%e185236185246%_)))
                               (let ((_%$%hd185240185257%_
                                      (##car _%$%e185239185254%_))
                                     (_%$%tl185241185259%_
                                      (##cdr _%$%e185239185254%_)))
                                 (let ((_%hd185262%_ _%$%hd185240185257%_))
                                   (if (gx#stx-pair? _%$%tl185241185259%_)
                                       (let ((_%$%e185242185264%_
                                              (gx#syntax-e
                                               _%$%tl185241185259%_)))
                                         (let ((_%$%hd185243185267%_
                                                (##car _%$%e185242185264%_))
                                               (_%$%tl185244185269%_
                                                (##cdr _%$%e185242185264%_)))
                                           (if (gx#stx-null?
                                                _%$%tl185244185269%_)
                                               (gx#core-bind-values?
                                                _%hd185262%_)
                                               (_%$%E185238185250%_))))
                                       (_%$%E185238185250%_)))))
                             (_%$%E185238185250%_)))))
                 (_%$%E185237185272%_)))
             _%stx185233%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind185192%_)
        (let* ((_%$%e185193185203%_ _%bind185192%_)
               (_%$%E185195185207%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185193185203%_)))
               (_%$%E185194185229%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185193185203%_)
                      (let ((_%$%e185196185211%_
                             (gx#syntax-e _%$%e185193185203%_)))
                        (let ((_%$%hd185197185214%_
                               (##car _%$%e185196185211%_))
                              (_%$%tl185198185216%_
                               (##cdr _%$%e185196185211%_)))
                          (if (gx#stx-pair? _%$%tl185198185216%_)
                              (let ((_%$%e185199185219%_
                                     (gx#syntax-e _%$%tl185198185216%_)))
                                (let ((_%$%hd185200185222%_
                                       (##car _%$%e185199185219%_))
                                      (_%$%tl185201185224%_
                                       (##cdr _%$%e185199185219%_)))
                                  (let ((_%expr185227%_ _%$%hd185200185222%_))
                                    (if (gx#stx-null? _%$%tl185201185224%_)
                                        (gx#core-expand-expression
                                         _%expr185227%_)
                                        (_%$%E185195185207%_)))))
                              (_%$%E185195185207%_))))
                      (_%$%E185195185207%_)))))
          (_%$%E185194185229%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind185151%_)
        (let* ((_%$%e185152185162%_ _%bind185151%_)
               (_%$%E185154185166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185152185162%_)))
               (_%$%E185153185188%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185152185162%_)
                      (let ((_%$%e185155185170%_
                             (gx#syntax-e _%$%e185152185162%_)))
                        (let ((_%$%hd185156185173%_
                               (##car _%$%e185155185170%_))
                              (_%$%tl185157185175%_
                               (##cdr _%$%e185155185170%_)))
                          (let ((_%hd185178%_ _%$%hd185156185173%_))
                            (if (gx#stx-pair? _%$%tl185157185175%_)
                                (let ((_%$%e185158185180%_
                                       (gx#syntax-e _%$%tl185157185175%_)))
                                  (let ((_%$%hd185159185183%_
                                         (##car _%$%e185158185180%_))
                                        (_%$%tl185160185185%_
                                         (##cdr _%$%e185158185180%_)))
                                    (if (gx#stx-null? _%$%tl185160185185%_)
                                        (gx#core-bind-values!__0 _%hd185178%_)
                                        (_%$%E185154185166%_))))
                                (_%$%E185154185166%_)))))
                      (_%$%E185154185166%_)))))
          (_%$%E185153185188%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind185109%_ _%expr185110%_)
        (let* ((_%$%e185111185121%_ _%bind185109%_)
               (_%$%E185113185125%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185111185121%_)))
               (_%$%E185112185147%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185111185121%_)
                      (let ((_%$%e185114185129%_
                             (gx#syntax-e _%$%e185111185121%_)))
                        (let ((_%$%hd185115185132%_
                               (##car _%$%e185114185129%_))
                              (_%$%tl185116185134%_
                               (##cdr _%$%e185114185129%_)))
                          (let ((_%hd185137%_ _%$%hd185115185132%_))
                            (if (gx#stx-pair? _%$%tl185116185134%_)
                                (let ((_%$%e185117185139%_
                                       (gx#syntax-e _%$%tl185116185134%_)))
                                  (let ((_%$%hd185118185142%_
                                         (##car _%$%e185117185139%_))
                                        (_%$%tl185119185144%_
                                         (##cdr _%$%e185117185139%_)))
                                    (if (gx#stx-null? _%$%tl185119185144%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd185137%_)
                                              (cons _%expr185110%_ '()))
                                        (_%$%E185113185125%_))))
                                (_%$%E185113185125%_)))))
                      (_%$%E185113185125%_)))))
          (_%$%E185112185147%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx185063%_)
        (let* ((_%$%e185064185074%_ _%stx185063%_)
               (_%$%E185066185078%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185064185074%_)))
               (_%$%E185065185105%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185064185074%_)
                      (let ((_%$%e185067185082%_
                             (gx#syntax-e _%$%e185064185074%_)))
                        (let ((_%$%hd185068185085%_
                               (##car _%$%e185067185082%_))
                              (_%$%tl185069185087%_
                               (##cdr _%$%e185067185082%_)))
                          (if (gx#stx-pair? _%$%tl185069185087%_)
                              (let ((_%$%e185070185090%_
                                     (gx#syntax-e _%$%tl185069185087%_)))
                                (let ((_%$%hd185071185093%_
                                       (##car _%$%e185070185090%_))
                                      (_%$%tl185072185095%_
                                       (##cdr _%$%e185070185090%_)))
                                  (let* ((_%hd185098%_ _%$%hd185071185093%_)
                                         (_%body185100%_ _%$%tl185072185095%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd185098%_)
                                        (let ((_%expanders185102%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd185098%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd185098%_
                                              _%expanders185102%_)
                                             (gx#core-expand-local-block
                                              _%stx185063%_
                                              _%body185100%_))
                                           gx#current-expander-context
                                           (let ((__obj186863
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj186863)
                                             __obj186863)))
                                        (_%$%E185066185078%_)))))
                              (_%$%E185066185078%_))))
                      (_%$%E185066185078%_)))))
          (_%$%E185065185105%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx185012%_)
        (let* ((_%$%e185013185023%_ _%stx185012%_)
               (_%$%E185015185027%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185013185023%_)))
               (_%$%E185014185059%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185013185023%_)
                      (let ((_%$%e185016185031%_
                             (gx#syntax-e _%$%e185013185023%_)))
                        (let ((_%$%hd185017185034%_
                               (##car _%$%e185016185031%_))
                              (_%$%tl185018185036%_
                               (##cdr _%$%e185016185031%_)))
                          (if (gx#stx-pair? _%$%tl185018185036%_)
                              (let ((_%$%e185019185039%_
                                     (gx#syntax-e _%$%tl185018185036%_)))
                                (let ((_%$%hd185020185042%_
                                       (##car _%$%e185019185039%_))
                                      (_%$%tl185021185044%_
                                       (##cdr _%$%e185019185039%_)))
                                  (let* ((_%hd185047%_ _%$%hd185020185042%_)
                                         (_%body185049%_ _%$%tl185021185044%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd185047%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd185047%_
                                            (make-list
                                             (gx#stx-length _%hd185047%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g185051185054%_
                                                     _%$%g185052185056%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g185051185054%_
                                               _%$%g185052185056%_
                                               '#t))
                                            _%hd185047%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd185047%_))
                                           (gx#core-expand-local-block
                                            _%stx185012%_
                                            _%body185049%_))
                                         gx#current-expander-context
                                         (let ((__obj186864
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj186864)
                                           __obj186864))
                                        (_%$%E185015185027%_)))))
                              (_%$%E185015185027%_))))
                      (_%$%E185015185027%_)))))
          (_%$%E185014185059%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx184969%_)
        (if (gx#stx-list? _%stx184969%_)
            (gx#stx-andmap
             (lambda (_%bind184971%_)
               (let* ((_%$%e184972184982%_ _%bind184971%_)
                      (_%$%E184974184986%_ (lambda () '#f))
                      (_%$%E184973185008%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e184972184982%_)
                             (let ((_%$%e184975184990%_
                                    (gx#syntax-e _%$%e184972184982%_)))
                               (let ((_%$%hd184976184993%_
                                      (##car _%$%e184975184990%_))
                                     (_%$%tl184977184995%_
                                      (##cdr _%$%e184975184990%_)))
                                 (let ((_%hd184998%_ _%$%hd184976184993%_))
                                   (if (gx#stx-pair? _%$%tl184977184995%_)
                                       (let ((_%$%e184978185000%_
                                              (gx#syntax-e
                                               _%$%tl184977184995%_)))
                                         (let ((_%$%hd184979185003%_
                                                (##car _%$%e184978185000%_))
                                               (_%$%tl184980185005%_
                                                (##cdr _%$%e184978185000%_)))
                                           (if (gx#stx-null?
                                                _%$%tl184980185005%_)
                                               (gx#identifier? _%hd184998%_)
                                               (_%$%E184974184986%_))))
                                       (_%$%E184974184986%_)))))
                             (_%$%E184974184986%_)))))
                 (_%$%E184973185008%_)))
             _%stx184969%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind184925%_)
        (let* ((_%$%e184926184936%_ _%bind184925%_)
               (_%$%E184928184940%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184926184936%_)))
               (_%$%E184927184965%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184926184936%_)
                      (let ((_%$%e184929184944%_
                             (gx#syntax-e _%$%e184926184936%_)))
                        (let ((_%$%hd184930184947%_
                               (##car _%$%e184929184944%_))
                              (_%$%tl184931184949%_
                               (##cdr _%$%e184929184944%_)))
                          (if (gx#stx-pair? _%$%tl184931184949%_)
                              (let ((_%$%e184932184952%_
                                     (gx#syntax-e _%$%tl184931184949%_)))
                                (let ((_%$%hd184933184955%_
                                       (##car _%$%e184932184952%_))
                                      (_%$%tl184934184957%_
                                       (##cdr _%$%e184932184952%_)))
                                  (let ((_%expr184960%_ _%$%hd184933184955%_))
                                    (if (gx#stx-null? _%$%tl184934184957%_)
                                        (let ((_g186883_
                                               (gx#core-expand-expression+1
                                                _%expr184960%_)))
                                          (begin
                                            (let ((_g186884_
                                                   (if (##values? _g186883_)
                                                       (##values-length
                                                        _g186883_)
                                                       1)))
                                              (if (not (##fx= _g186884_ 2))
                                                  (error "Context expects 2 values"
                                                         _g186884_)))
                                            (let ((_%_184962%_
                                                   (##values-ref _g186883_ 0))
                                                  (_%e184963%_
                                                   (##values-ref _g186883_ 1)))
                                              _%e184963%_)))
                                        (_%$%E184928184940%_)))))
                              (_%$%E184928184940%_))))
                      (_%$%E184928184940%_)))))
          (_%$%E184927184965%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind184870%_ _%e184871%_ _%rebind?184872%_)
        (let* ((_%$%e184873184883%_ _%bind184870%_)
               (_%$%E184875184887%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184873184883%_)))
               (_%$%E184874184909%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184873184883%_)
                      (let ((_%$%e184876184891%_
                             (gx#syntax-e _%$%e184873184883%_)))
                        (let ((_%$%hd184877184894%_
                               (##car _%$%e184876184891%_))
                              (_%$%tl184878184896%_
                               (##cdr _%$%e184876184891%_)))
                          (let ((_%id184899%_ _%$%hd184877184894%_))
                            (if (gx#stx-pair? _%$%tl184878184896%_)
                                (let ((_%$%e184879184901%_
                                       (gx#syntax-e _%$%tl184878184896%_)))
                                  (let ((_%$%hd184880184904%_
                                         (##car _%$%e184879184901%_))
                                        (_%$%tl184881184906%_
                                         (##cdr _%$%e184879184901%_)))
                                    (if (gx#stx-null? _%$%tl184881184906%_)
                                        (gx#core-bind-syntax!__1
                                         _%id184899%_
                                         _%e184871%_
                                         _%rebind?184872%_)
                                        (_%$%E184875184887%_))))
                                (_%$%E184875184887%_)))))
                      (_%$%E184875184887%_)))))
          (_%$%E184874184909%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind184916%_ _%e184917%_)
        (let ((_%rebind?184919%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind184916%_
           _%e184917%_
           _%rebind?184919%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g186885_
        (let ((_g186886_ (##length _g186885_)))
          (cond ((##fx= _g186886_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g186885_))
                ((##fx= _g186886_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g186885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g186885_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx184828%_)
        (let* ((_%$%e184829184839%_ _%stx184828%_)
               (_%$%E184831184843%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184829184839%_)))
               (_%$%E184830184865%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184829184839%_)
                      (let ((_%$%e184832184847%_
                             (gx#syntax-e _%$%e184829184839%_)))
                        (let ((_%$%hd184833184850%_
                               (##car _%$%e184832184847%_))
                              (_%$%tl184834184852%_
                               (##cdr _%$%e184832184847%_)))
                          (if (gx#stx-pair? _%$%tl184834184852%_)
                              (let ((_%$%e184835184855%_
                                     (gx#syntax-e _%$%tl184834184852%_)))
                                (let ((_%$%hd184836184858%_
                                       (##car _%$%e184835184855%_))
                                      (_%$%tl184837184860%_
                                       (##cdr _%$%e184835184855%_)))
                                  (let ((_%expr184863%_ _%$%hd184836184858%_))
                                    (if (gx#stx-null? _%$%tl184837184860%_)
                                        (gx#core-expand-expression
                                         _%expr184863%_)
                                        (_%$%E184831184843%_)))))
                              (_%$%E184831184843%_))))
                      (_%$%E184831184843%_)))))
          (_%$%E184830184865%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx184787%_)
        (let* ((_%$%e184788184798%_ _%stx184787%_)
               (_%$%E184790184802%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184788184798%_)))
               (_%$%E184789184824%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184788184798%_)
                      (let ((_%$%e184791184806%_
                             (gx#syntax-e _%$%e184788184798%_)))
                        (let ((_%$%hd184792184809%_
                               (##car _%$%e184791184806%_))
                              (_%$%tl184793184811%_
                               (##cdr _%$%e184791184806%_)))
                          (if (gx#stx-pair? _%$%tl184793184811%_)
                              (let ((_%$%e184794184814%_
                                     (gx#syntax-e _%$%tl184793184811%_)))
                                (let ((_%$%hd184795184817%_
                                       (##car _%$%e184794184814%_))
                                      (_%$%tl184796184819%_
                                       (##cdr _%$%e184794184814%_)))
                                  (let ((_%e184822%_ _%$%hd184795184817%_))
                                    (if (gx#stx-null? _%$%tl184796184819%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e184822%_)
                                                     '()))
                                         (gx#stx-source _%stx184787%_))
                                        (_%$%E184790184802%_)))))
                              (_%$%E184790184802%_))))
                      (_%$%E184790184802%_)))))
          (_%$%E184789184824%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx184746%_)
        (let* ((_%$%e184747184757%_ _%stx184746%_)
               (_%$%E184749184761%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184747184757%_)))
               (_%$%E184748184783%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184747184757%_)
                      (let ((_%$%e184750184765%_
                             (gx#syntax-e _%$%e184747184757%_)))
                        (let ((_%$%hd184751184768%_
                               (##car _%$%e184750184765%_))
                              (_%$%tl184752184770%_
                               (##cdr _%$%e184750184765%_)))
                          (if (gx#stx-pair? _%$%tl184752184770%_)
                              (let ((_%$%e184753184773%_
                                     (gx#syntax-e _%$%tl184752184770%_)))
                                (let ((_%$%hd184754184776%_
                                       (##car _%$%e184753184773%_))
                                      (_%$%tl184755184778%_
                                       (##cdr _%$%e184753184773%_)))
                                  (let ((_%e184781%_ _%$%hd184754184776%_))
                                    (if (gx#stx-null? _%$%tl184755184778%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e184781%_)
                                                     '()))
                                         (gx#stx-source _%stx184746%_))
                                        (_%$%E184749184761%_)))))
                              (_%$%E184749184761%_))))
                      (_%$%E184749184761%_)))))
          (_%$%E184748184783%_))))
    (define gx#core-expand-call%
      (lambda (_%stx184640%_)
        (letrec ((_%expand-runtime-call184642%_
                  (lambda (_%rator-expr184743%_ _%args184744%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr184743%_
                      (gx#stx-map1 gx#core-expand-expression _%args184744%_))
                     (gx#stx-source _%stx184640%_)))))
          (let* ((_%$%e184643184653%_ _%stx184640%_)
                 (_%$%E184645184657%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e184643184653%_)))
                 (_%$%E184644184739%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e184643184653%_)
                        (let ((_%$%e184646184661%_
                               (gx#syntax-e _%$%e184643184653%_)))
                          (let ((_%$%hd184647184664%_
                                 (##car _%$%e184646184661%_))
                                (_%$%tl184648184666%_
                                 (##cdr _%$%e184646184661%_)))
                            (if (gx#stx-pair? _%$%tl184648184666%_)
                                (let ((_%$%e184649184669%_
                                       (gx#syntax-e _%$%tl184648184666%_)))
                                  (let ((_%$%hd184650184672%_
                                         (##car _%$%e184649184669%_))
                                        (_%$%tl184651184674%_
                                         (##cdr _%$%e184649184669%_)))
                                    (let* ((_%rator184677%_
                                            _%$%hd184650184672%_)
                                           (_%args184679%_
                                            _%$%tl184651184674%_))
                                      (if (gx#stx-list? _%args184679%_)
                                          (let* ((_%rator-expr184681%_
                                                  (gx#core-expand-expression
                                                   _%rator184677%_))
                                                 (_%$%e184682184692%_
                                                  _%rator-expr184681%_)
                                                 (_%$%E184684184696%_
                                                  (lambda ()
                                                    (_%expand-runtime-call184642%_
                                                     _%rator-expr184681%_
                                                     _%args184679%_)))
                                                 (_%$%E184683184735%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e184682184692%_)
                                                        (let ((_%$%e184685184700%_
                                                               (gx#syntax-e
                                                                _%$%e184682184692%_)))
                                                          (let ((_%$%hd184686184703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e184685184700%_))
                        (_%$%tl184687184705%_ (##cdr _%$%e184685184700%_)))
                    (if (and (gx#identifier? _%$%hd184686184703%_)
                             (gx#core-identifier=?
                              _%$%hd184686184703%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl184687184705%_)
                            (let ((_%$%e184688184708%_
                                   (gx#syntax-e _%$%tl184687184705%_)))
                              (let ((_%$%hd184689184711%_
                                     (##car _%$%e184688184708%_))
                                    (_%$%tl184690184713%_
                                     (##cdr _%$%e184688184708%_)))
                                (let ((_%id184716%_ _%$%hd184689184711%_))
                                  (if (gx#stx-null? _%$%tl184690184713%_)
                                      (let ((_%$e184718%_
                                             (gx#resolve-identifier__0
                                              _%id184716%_)))
                                        (if _%$e184718%_
                                            (let _%again184723%_ ((_%bind184725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e184718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e184727%_
                                                     (if (##structure-instance-of?
                                                          _%bind184725%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind184725%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e184727%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e184727%_
                                                            _%args184679%_)
                                                      (gx#stx-source
                                                       _%stx184640%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind184725%_
                                                         'gx#import-binding::t)
                                                        (_%again184723%_
                                                         (##unchecked-structure-ref
                                                          _%bind184725%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call184642%_
                                                         _%rator-expr184681%_
                                                         _%args184679%_)))))
                                            (_%expand-runtime-call184642%_
                                             _%rator-expr184681%_
                                             _%args184679%_)))
                                      (_%$%E184684184696%_)))))
                            (_%$%E184684184696%_))
                        (_%$%E184684184696%_))))
                (_%$%E184684184696%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E184683184735%_))
                                          (_%$%E184645184657%_)))))
                                (_%$%E184645184657%_))))
                        (_%$%E184645184657%_)))))
            (_%$%E184644184739%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx184573%_)
        (let* ((_%$%e184574184590%_ _%stx184573%_)
               (_%$%E184576184594%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184574184590%_)))
               (_%$%E184575184636%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184574184590%_)
                      (let ((_%$%e184577184598%_
                             (gx#syntax-e _%$%e184574184590%_)))
                        (let ((_%$%hd184578184601%_
                               (##car _%$%e184577184598%_))
                              (_%$%tl184579184603%_
                               (##cdr _%$%e184577184598%_)))
                          (if (gx#stx-pair? _%$%tl184579184603%_)
                              (let ((_%$%e184580184606%_
                                     (gx#syntax-e _%$%tl184579184603%_)))
                                (let ((_%$%hd184581184609%_
                                       (##car _%$%e184580184606%_))
                                      (_%$%tl184582184611%_
                                       (##cdr _%$%e184580184606%_)))
                                  (let ((_%test184614%_ _%$%hd184581184609%_))
                                    (if (gx#stx-pair? _%$%tl184582184611%_)
                                        (let ((_%$%e184583184616%_
                                               (gx#syntax-e
                                                _%$%tl184582184611%_)))
                                          (let ((_%$%hd184584184619%_
                                                 (##car _%$%e184583184616%_))
                                                (_%$%tl184585184621%_
                                                 (##cdr _%$%e184583184616%_)))
                                            (let ((_%K184624%_
                                                   _%$%hd184584184619%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl184585184621%_)
                                                  (let ((_%$%e184586184626%_
                                                         (gx#syntax-e
                                                          _%$%tl184585184621%_)))
                                                    (let ((_%$%hd184587184629%_
                                                           (##car _%$%e184586184626%_))
                                                          (_%$%tl184588184631%_
                                                           (##cdr _%$%e184586184626%_)))
                                                      (let ((_%E184634%_
                                                             _%$%hd184587184629%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl184588184631%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test184614%_)
                                 (cons (gx#core-expand-expression _%K184624%_)
                                       (cons (gx#core-expand-expression
                                              _%E184634%_)
                                             '()))))
                     (gx#stx-source _%stx184573%_))
                    (_%$%E184576184594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E184576184594%_)))))
                                        (_%$%E184576184594%_)))))
                              (_%$%E184576184594%_))))
                      (_%$%E184576184594%_)))))
          (_%$%E184575184636%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx184532%_)
        (let* ((_%$%e184533184543%_ _%stx184532%_)
               (_%$%E184535184547%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184533184543%_)))
               (_%$%E184534184569%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184533184543%_)
                      (let ((_%$%e184536184551%_
                             (gx#syntax-e _%$%e184533184543%_)))
                        (let ((_%$%hd184537184554%_
                               (##car _%$%e184536184551%_))
                              (_%$%tl184538184556%_
                               (##cdr _%$%e184536184551%_)))
                          (if (gx#stx-pair? _%$%tl184538184556%_)
                              (let ((_%$%e184539184559%_
                                     (gx#syntax-e _%$%tl184538184556%_)))
                                (let ((_%$%hd184540184562%_
                                       (##car _%$%e184539184559%_))
                                      (_%$%tl184541184564%_
                                       (##cdr _%$%e184539184559%_)))
                                  (let ((_%id184567%_ _%$%hd184540184562%_))
                                    (if (gx#stx-null? _%$%tl184541184564%_)
                                        (if (gx#identifier? _%id184567%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id184567%_
                                                          _%stx184532%_)
                                                         '()))
                                             (gx#stx-source _%stx184532%_))
                                            (_%$%E184535184547%_))
                                        (_%$%E184535184547%_)))))
                              (_%$%E184535184547%_))))
                      (_%$%E184535184547%_)))))
          (_%$%E184534184569%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx184478%_)
        (let* ((_%$%e184479184492%_ _%stx184478%_)
               (_%$%E184481184496%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184479184492%_)))
               (_%$%E184480184528%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184479184492%_)
                      (let ((_%$%e184482184500%_
                             (gx#syntax-e _%$%e184479184492%_)))
                        (let ((_%$%hd184483184503%_
                               (##car _%$%e184482184500%_))
                              (_%$%tl184484184505%_
                               (##cdr _%$%e184482184500%_)))
                          (if (gx#stx-pair? _%$%tl184484184505%_)
                              (let ((_%$%e184485184508%_
                                     (gx#syntax-e _%$%tl184484184505%_)))
                                (let ((_%$%hd184486184511%_
                                       (##car _%$%e184485184508%_))
                                      (_%$%tl184487184513%_
                                       (##cdr _%$%e184485184508%_)))
                                  (let ((_%id184516%_ _%$%hd184486184511%_))
                                    (if (gx#stx-pair? _%$%tl184487184513%_)
                                        (let ((_%$%e184488184518%_
                                               (gx#syntax-e
                                                _%$%tl184487184513%_)))
                                          (let ((_%$%hd184489184521%_
                                                 (##car _%$%e184488184518%_))
                                                (_%$%tl184490184523%_
                                                 (##cdr _%$%e184488184518%_)))
                                            (let ((_%expr184526%_
                                                   _%$%hd184489184521%_))
                                              (if (gx#stx-null?
                                                   _%$%tl184490184523%_)
                                                  (if (gx#identifier?
                                                       _%id184516%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id184516%_
                            _%stx184478%_)
                           (cons (gx#core-expand-expression _%expr184526%_)
                                 '())))
               (gx#stx-source _%stx184478%_))
              (_%$%E184481184496%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E184481184496%_)))))
                                        (_%$%E184481184496%_)))))
                              (_%$%E184481184496%_))))
                      (_%$%E184481184496%_)))))
          (_%$%E184480184528%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx184323%_)
        (letrec ((_%generate184325%_
                  (lambda (_%body184355%_)
                    (let _%lp184357%_ ((_%rest184359%_ _%body184355%_)
                                       (_%ns184360%_
                                        (gx#core-context-namespace__0))
                                       (_%r184361%_ '()))
                      (let* ((_%$%e184362184377%_ _%rest184359%_)
                             (_%$%E184375184381%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e184362184377%_)))
                             (_%$%E184371184385%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e184362184377%_)
                                    (reverse _%r184361%_)
                                    (_%$%E184375184381%_))))
                             (_%$%E184364184442%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e184362184377%_)
                                    (let ((_%$%e184372184389%_
                                           (gx#syntax-e _%$%e184362184377%_)))
                                      (let ((_%$%hd184373184392%_
                                             (##car _%$%e184372184389%_))
                                            (_%$%tl184374184394%_
                                             (##cdr _%$%e184372184389%_)))
                                        (let* ((_%hd184397%_
                                                _%$%hd184373184392%_)
                                               (_%rest184399%_
                                                _%$%tl184374184394%_))
                                          (if (gx#identifier? _%hd184397%_)
                                              (_%lp184357%_
                                               _%rest184399%_
                                               _%ns184360%_
                                               (cons (cons _%hd184397%_
                                                           (cons (if _%ns184360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd184397%_
                              _%ns184360%_
                              '"#"
                              _%hd184397%_)
                             _%hd184397%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r184361%_))
                                              (let* ((_%$%e184400184410%_
                                                      _%hd184397%_)
                                                     (_%$%E184402184414%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e184400184410%_)))
                                                     (_%$%E184401184438%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e184400184410%_)
                                                            (let ((_%$%e184403184418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e184400184410%_)))
                      (let ((_%$%hd184404184421%_ (##car _%$%e184403184418%_))
                            (_%$%tl184405184423%_ (##cdr _%$%e184403184418%_)))
                        (let ((_%id184426%_ _%$%hd184404184421%_))
                          (if (gx#stx-pair? _%$%tl184405184423%_)
                              (let ((_%$%e184406184428%_
                                     (gx#syntax-e _%$%tl184405184423%_)))
                                (let ((_%$%hd184407184431%_
                                       (##car _%$%e184406184428%_))
                                      (_%$%tl184408184433%_
                                       (##cdr _%$%e184406184428%_)))
                                  (let ((_%eid184436%_ _%$%hd184407184431%_))
                                    (if (gx#stx-null? _%$%tl184408184433%_)
                                        (if (and (gx#identifier? _%id184426%_)
                                                 (gx#identifier?
                                                  _%eid184436%_))
                                            (_%lp184357%_
                                             _%rest184399%_
                                             _%ns184360%_
                                             (cons (cons _%id184426%_
                                                         (cons _%eid184436%_
                                                               '()))
                                                   _%r184361%_))
                                            (_%$%E184402184414%_))
                                        (_%$%E184402184414%_)))))
                              (_%$%E184402184414%_)))))
                    (_%$%E184402184414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E184401184438%_))))))
                                    (_%$%E184371184385%_))))
                             (_%$%E184363184474%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e184362184377%_)
                                    (let ((_%$%e184365184446%_
                                           (gx#syntax-e _%$%e184362184377%_)))
                                      (let ((_%$%hd184366184449%_
                                             (##car _%$%e184365184446%_))
                                            (_%$%tl184367184451%_
                                             (##cdr _%$%e184365184446%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd184366184449%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl184367184451%_)
                                                (let ((_%$%e184368184454%_
                                                       (gx#syntax-e
                                                        _%$%tl184367184451%_)))
                                                  (let ((_%$%hd184369184457%_
                                                         (##car _%$%e184368184454%_))
                                                        (_%$%tl184370184459%_
                                                         (##cdr _%$%e184368184454%_)))
                                                    (let* ((_%ns184462%_
                                                            _%$%hd184369184457%_)
                                                           (_%rest184464%_
                                                            _%$%tl184370184459%_)
                                                           (_%ns184472%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns184462%_)
                        (symbol->string (gx#stx-e _%ns184462%_))
                        (if (or (gx#stx-string? _%ns184462%_)
                                (gx#stx-false? _%ns184462%_))
                            (gx#stx-e _%ns184462%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx184323%_
                             _%ns184462%_)))))
              (_%lp184357%_ _%rest184464%_ _%ns184472%_ _%r184361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E184364184442%_))
                                            (_%$%E184364184442%_))))
                                    (_%$%E184364184442%_)))))
                        (_%$%E184363184474%_))))))
          (let* ((_%$%e184326184333%_ _%stx184323%_)
                 (_%$%E184328184337%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e184326184333%_)))
                 (_%$%E184327184351%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e184326184333%_)
                        (let ((_%$%e184329184341%_
                               (gx#syntax-e _%$%e184326184333%_)))
                          (let ((_%$%hd184330184344%_
                                 (##car _%$%e184329184341%_))
                                (_%$%tl184331184346%_
                                 (##cdr _%$%e184329184341%_)))
                            (let ((_%body184349%_ _%$%tl184331184346%_))
                              (if (gx#stx-list? _%body184349%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate184325%_ _%body184349%_))
                                  (_%$%E184328184337%_)))))
                        (_%$%E184328184337%_)))))
            (_%$%E184327184351%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx184280%_)
        (let* ((_%$%e184281184291%_ _%stx184280%_)
               (_%$%E184283184295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184281184291%_)))
               (_%$%E184282184319%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184281184291%_)
                      (let ((_%$%e184284184299%_
                             (gx#syntax-e _%$%e184281184291%_)))
                        (let ((_%$%hd184285184302%_
                               (##car _%$%e184284184299%_))
                              (_%$%tl184286184304%_
                               (##cdr _%$%e184284184299%_)))
                          (if (gx#stx-pair? _%$%tl184286184304%_)
                              (let ((_%$%e184287184307%_
                                     (gx#syntax-e _%$%tl184286184304%_)))
                                (let ((_%$%hd184288184310%_
                                       (##car _%$%e184287184307%_))
                                      (_%$%tl184289184312%_
                                       (##cdr _%$%e184287184307%_)))
                                  (let* ((_%hd184315%_ _%$%hd184288184310%_)
                                         (_%body184317%_ _%$%tl184289184312%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd184315%_)
                                             (gx#stx-list? _%body184317%_)
                                             (not (gx#stx-null?
                                                   _%body184317%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd184315%_)
                                         _%body184317%_)
                                        (_%$%E184283184295%_)))))
                              (_%$%E184283184295%_))))
                      (_%$%E184283184295%_)))))
          (_%$%E184282184319%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx184216%_)
        (letrec ((_%generate184218%_
                  (lambda (_%clause184248%_)
                    (let* ((_%$%e184249184256%_ _%clause184248%_)
                           (_%$%E184251184260%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx184216%_
                               _%clause184248%_)))
                           (_%$%E184250184276%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184249184256%_)
                                  (let ((_%$%e184252184264%_
                                         (gx#syntax-e _%$%e184249184256%_)))
                                    (let ((_%$%hd184253184267%_
                                           (##car _%$%e184252184264%_))
                                          (_%$%tl184254184269%_
                                           (##cdr _%$%e184252184264%_)))
                                      (let* ((_%hd184272%_
                                              _%$%hd184253184267%_)
                                             (_%body184274%_
                                              _%$%tl184254184269%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd184272%_)
                                                 (gx#stx-list? _%body184274%_)
                                                 (not (gx#stx-null?
                                                       _%body184274%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd184272%_)
                                                   _%body184274%_)
                                             (gx#stx-source _%clause184248%_))
                                            (_%$%E184251184260%_)))))
                                  (_%$%E184251184260%_)))))
                      (_%$%E184250184276%_)))))
          (let* ((_%$%e184219184226%_ _%stx184216%_)
                 (_%$%E184221184230%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e184219184226%_)))
                 (_%$%E184220184244%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e184219184226%_)
                        (let ((_%$%e184222184234%_
                               (gx#syntax-e _%$%e184219184226%_)))
                          (let ((_%$%hd184223184237%_
                                 (##car _%$%e184222184234%_))
                                (_%$%tl184224184239%_
                                 (##cdr _%$%e184222184234%_)))
                            (let ((_%clauses184242%_ _%$%tl184224184239%_))
                              (if (gx#stx-list? _%clauses184242%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate184218%_
                                    _%clauses184242%_))
                                  (_%$%E184221184230%_)))))
                        (_%$%E184221184230%_)))))
            (_%$%E184220184244%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx184117%_ _%form184118%_)
        (letrec ((_%generate184120%_
                  (lambda (_%bind184163%_)
                    (let* ((_%$%e184164184174%_ _%bind184163%_)
                           (_%$%E184166184178%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx184117%_
                               _%bind184163%_)))
                           (_%$%E184165184202%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e184164184174%_)
                                  (let ((_%$%e184167184182%_
                                         (gx#syntax-e _%$%e184164184174%_)))
                                    (let ((_%$%hd184168184185%_
                                           (##car _%$%e184167184182%_))
                                          (_%$%tl184169184187%_
                                           (##cdr _%$%e184167184182%_)))
                                      (let ((_%ids184190%_
                                             _%$%hd184168184185%_))
                                        (if (gx#stx-pair? _%$%tl184169184187%_)
                                            (let ((_%$%e184170184192%_
                                                   (gx#syntax-e
                                                    _%$%tl184169184187%_)))
                                              (let ((_%$%hd184171184195%_
                                                     (##car _%$%e184170184192%_))
                                                    (_%$%tl184172184197%_
                                                     (##cdr _%$%e184170184192%_)))
                                                (let ((_%expr184200%_
                                                       _%$%hd184171184195%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl184172184197%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids184190%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids184190%_)
                        (cons _%expr184200%_ '()))
                  (_%$%E184166184178%_))
              (_%$%E184166184178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E184166184178%_)))))
                                  (_%$%E184166184178%_)))))
                      (_%$%E184165184202%_)))))
          (let* ((_%$%e184121184131%_ _%stx184117%_)
                 (_%$%E184123184135%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e184121184131%_)))
                 (_%$%E184122184159%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e184121184131%_)
                        (let ((_%$%e184124184139%_
                               (gx#syntax-e _%$%e184121184131%_)))
                          (let ((_%$%hd184125184142%_
                                 (##car _%$%e184124184139%_))
                                (_%$%tl184126184144%_
                                 (##cdr _%$%e184124184139%_)))
                            (if (gx#stx-pair? _%$%tl184126184144%_)
                                (let ((_%$%e184127184147%_
                                       (gx#syntax-e _%$%tl184126184144%_)))
                                  (let ((_%$%hd184128184150%_
                                         (##car _%$%e184127184147%_))
                                        (_%$%tl184129184152%_
                                         (##cdr _%$%e184127184147%_)))
                                    (let* ((_%hd184155%_ _%$%hd184128184150%_)
                                           (_%body184157%_
                                            _%$%tl184129184152%_))
                                      (if (and (gx#stx-list? _%hd184155%_)
                                               (gx#stx-list? _%body184157%_)
                                               (not (gx#stx-null?
                                                     _%body184157%_)))
                                          (gx#core-cons*
                                           _%form184118%_
                                           (gx#stx-map1
                                            _%generate184120%_
                                            _%hd184155%_)
                                           _%body184157%_)
                                          (_%$%E184123184135%_)))))
                                (_%$%E184123184135%_))))
                        (_%$%E184123184135%_)))))
            (_%$%E184122184159%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx184209%_)
        (let ((_%form184211%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx184209%_ _%form184211%_))))
    (define gx#macro-expand-let-values
      (lambda _g186887_
        (let ((_g186888_ (##length _g186887_)))
          (cond ((##fx= _g186888_ 1)
                 (apply gx#macro-expand-let-values__0 _g186887_))
                ((##fx= _g186888_ 2)
                 (apply gx#macro-expand-let-values__% _g186887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g186887_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx184114%_)
        (gx#macro-expand-let-values__% _%stx184114%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx184112%_)
        (gx#macro-expand-let-values__% _%stx184112%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx184003%_)
        (let* ((_%$%e184004184030%_ _%stx184003%_)
               (_%$%E184016184034%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e184004184030%_)))
               (_%$%E184006184076%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184004184030%_)
                      (let ((_%$%e184017184038%_
                             (gx#syntax-e _%$%e184004184030%_)))
                        (let ((_%$%hd184018184041%_
                               (##car _%$%e184017184038%_))
                              (_%$%tl184019184043%_
                               (##cdr _%$%e184017184038%_)))
                          (if (gx#stx-pair? _%$%tl184019184043%_)
                              (let ((_%$%e184020184046%_
                                     (gx#syntax-e _%$%tl184019184043%_)))
                                (let ((_%$%hd184021184049%_
                                       (##car _%$%e184020184046%_))
                                      (_%$%tl184022184051%_
                                       (##cdr _%$%e184020184046%_)))
                                  (let ((_%test184054%_ _%$%hd184021184049%_))
                                    (if (gx#stx-pair? _%$%tl184022184051%_)
                                        (let ((_%$%e184023184056%_
                                               (gx#syntax-e
                                                _%$%tl184022184051%_)))
                                          (let ((_%$%hd184024184059%_
                                                 (##car _%$%e184023184056%_))
                                                (_%$%tl184025184061%_
                                                 (##cdr _%$%e184023184056%_)))
                                            (let ((_%K184064%_
                                                   _%$%hd184024184059%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl184025184061%_)
                                                  (let ((_%$%e184026184066%_
                                                         (gx#syntax-e
                                                          _%$%tl184025184061%_)))
                                                    (let ((_%$%hd184027184069%_
                                                           (##car _%$%e184026184066%_))
                                                          (_%$%tl184028184071%_
                                                           (##cdr _%$%e184026184066%_)))
                                                      (let ((_%E184074%_
                                                             _%$%hd184027184069%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl184028184071%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test184054%_
                                                             _%K184064%_
                                                             _%E184074%_)
                                                            (_%$%E184016184034%_)))))
                                                  (_%$%E184016184034%_)))))
                                        (_%$%E184016184034%_)))))
                              (_%$%E184016184034%_))))
                      (_%$%E184016184034%_))))
               (_%$%E184005184108%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e184004184030%_)
                      (let ((_%$%e184007184080%_
                             (gx#syntax-e _%$%e184004184030%_)))
                        (let ((_%$%hd184008184083%_
                               (##car _%$%e184007184080%_))
                              (_%$%tl184009184085%_
                               (##cdr _%$%e184007184080%_)))
                          (if (gx#stx-pair? _%$%tl184009184085%_)
                              (let ((_%$%e184010184088%_
                                     (gx#syntax-e _%$%tl184009184085%_)))
                                (let ((_%$%hd184011184091%_
                                       (##car _%$%e184010184088%_))
                                      (_%$%tl184012184093%_
                                       (##cdr _%$%e184010184088%_)))
                                  (let ((_%test184096%_ _%$%hd184011184091%_))
                                    (if (gx#stx-pair? _%$%tl184012184093%_)
                                        (let ((_%$%e184013184098%_
                                               (gx#syntax-e
                                                _%$%tl184012184093%_)))
                                          (let ((_%$%hd184014184101%_
                                                 (##car _%$%e184013184098%_))
                                                (_%$%tl184015184103%_
                                                 (##cdr _%$%e184013184098%_)))
                                            (let ((_%K184106%_
                                                   _%$%hd184014184101%_))
                                              (if (gx#stx-null?
                                                   _%$%tl184015184103%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test184096%_
                                                   _%K184106%_
                                                   '#!void)
                                                  (_%$%E184006184076%_)))))
                                        (_%$%E184006184076%_)))))
                              (_%$%E184006184076%_))))
                      (_%$%E184006184076%_)))))
          (_%$%E184005184108%_))))
    (define gx#free-identifier=?
      (lambda (_%xid183988%_ _%yid183989%_)
        (let ((_%xe183991%_ (gx#resolve-identifier__0 _%xid183988%_))
              (_%ye183992%_ (gx#resolve-identifier__0 _%yid183989%_)))
          (if (and _%xe183991%_ _%ye183992%_)
              (let ((_%$e183995%_ (eq? _%xe183991%_ _%ye183992%_)))
                (if _%$e183995%_
                    _%$e183995%_
                    (if (##structure-instance-of? _%xe183991%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye183992%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe183991%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye183992%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe183991%_ _%ye183992%_)
                  '#f
                  (gx#stx-eq? _%xid183988%_ _%yid183989%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid183969%_ _%yid183970%_)
        (letrec ((_%context183972%_
                  (lambda (_%e183986%_)
                    (if (##structure-direct-instance-of?
                         _%e183986%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e183986%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks183973%_
                  (lambda (_%e183981%_)
                    (if (symbol? _%e183981%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e183981%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e183981%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e183981%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap183974%_
                  (lambda (_%e183979%_)
                    (if (symbol? _%e183979%_)
                        _%e183979%_
                        (gx#syntax-local-unwrap _%e183979%_)))))
          (let ((_%x183976%_ (_%unwrap183974%_ _%xid183969%_))
                (_%y183977%_ (_%unwrap183974%_ _%yid183970%_)))
            (if (gx#stx-eq? _%x183976%_ _%y183977%_)
                (if (eq? (_%context183972%_ _%x183976%_)
                         (_%context183972%_ _%y183977%_))
                    (equal? (_%marks183973%_ _%x183976%_)
                            (_%marks183973%_ _%y183977%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx183967%_)
        (if (gx#identifier? _%stx183967%_)
            (gx#core-identifier=? _%stx183967%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx183965%_)
        (if (gx#identifier? _%stx183965%_)
            (gx#core-identifier=? _%stx183965%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx183908%_ _%where183909%_)
        (let _%lp183911%_ ((_%rest183913%_ (gx#syntax->list _%stx183908%_)))
          (let* ((_%$%rest183914183922%_ _%rest183913%_)
                 (_%$%else183916183930%_ (lambda () '#t))
                 (_%$%K183918183943%_
                  (lambda (_%rest183933%_ _%hd183934%_)
                    (if (gx#identifier? _%hd183934%_)
                        (if (__find (lambda (_%$%g183936183938%_)
                                      (gx#bound-identifier=?
                                       _%$%g183936183938%_
                                       _%hd183934%_))
                                    _%rest183933%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where183909%_
                             _%hd183934%_)
                            (_%lp183911%_ _%rest183933%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where183909%_
                         _%hd183934%_)))))
            (if (pair? _%$%rest183914183922%_)
                (let ((_%$%hd183919183946%_ (##car _%$%rest183914183922%_))
                      (_%$%tl183920183948%_ (##cdr _%$%rest183914183922%_)))
                  (let* ((_%hd183951%_ _%$%hd183919183946%_)
                         (_%rest183953%_ _%$%tl183920183948%_))
                    (_%$%K183918183943%_ _%rest183953%_ _%hd183951%_)))
                (_%$%else183916183930%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx183958%_)
        (let ((_%where183960%_ _%stx183958%_))
          (gx#check-duplicate-identifiers__% _%stx183958%_ _%where183960%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g186889_
        (let ((_g186890_ (##length _g186889_)))
          (cond ((##fx= _g186890_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g186889_))
                ((##fx= _g186890_ 2)
                 (apply gx#check-duplicate-identifiers__% _g186889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g186889_))))))
    (define gx#core-bind-values?
      (lambda (_%stx183900%_)
        (gx#stx-andmap
         (lambda (_%x183902%_)
           (let ((_%$e183904%_ (gx#identifier? _%x183902%_)))
             (if _%$e183904%_ _%$e183904%_ (gx#stx-false? _%x183902%_))))
         _%stx183900%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx183864%_ _%rebind?183865%_ _%phi183866%_ _%ctx183867%_)
        (gx#stx-for-each1
         (lambda (_%id183869%_)
           (if (gx#identifier? _%id183869%_)
               (gx#core-bind-runtime!__%
                _%id183869%_
                _%rebind?183865%_
                _%phi183866%_
                _%ctx183867%_)
               '#!void))
         _%stx183864%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx183874%_)
        (let* ((_%rebind?183876%_ '#f)
               (_%phi183878%_ (gx#current-expander-phi))
               (_%ctx183880%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx183874%_
           _%rebind?183876%_
           _%phi183878%_
           _%ctx183880%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx183882%_ _%rebind?183883%_)
        (let* ((_%phi183885%_ (gx#current-expander-phi))
               (_%ctx183887%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx183882%_
           _%rebind?183883%_
           _%phi183885%_
           _%ctx183887%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx183889%_ _%rebind?183890%_ _%phi183891%_)
        (let ((_%ctx183893%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx183889%_
           _%rebind?183890%_
           _%phi183891%_
           _%ctx183893%_))))
    (define gx#core-bind-values!
      (lambda _g186891_
        (let ((_g186892_ (##length _g186891_)))
          (cond ((##fx= _g186892_ 1) (apply gx#core-bind-values!__0 _g186891_))
                ((##fx= _g186892_ 2) (apply gx#core-bind-values!__1 _g186891_))
                ((##fx= _g186892_ 3) (apply gx#core-bind-values!__2 _g186891_))
                ((##fx= _g186892_ 4) (apply gx#core-bind-values!__% _g186891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g186891_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx183859%_)
        (gx#stx-map1
         (lambda (_%x183861%_)
           (if (gx#identifier? _%x183861%_)
               (gx#core-quote-syntax__0 _%x183861%_)
               '#f))
         _%stx183859%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx183852%_)
        (if (gx#identifier? _%stx183852%_)
            (let* ((_%bind183854%_ (gx#resolve-identifier__0 _%stx183852%_))
                   (_%$e183856%_ (not _%bind183854%_)))
              (if _%$e183856%_
                  _%$e183856%_
                  (##structure-instance-of?
                   _%bind183854%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id183841%_ _%form183842%_)
        (let ((_%bind183844%_ (gx#resolve-identifier__0 _%id183841%_)))
          (if (##structure-instance-of? _%bind183844%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id183841%_)
              (if (not _%bind183844%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id183841%_)))
                      (gx#core-quote-syntax__0 _%id183841%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form183842%_
                       _%id183841%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form183842%_
                   _%id183841%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id183796%_ _%rebind?183797%_ _%phi183798%_ _%ctx183799%_)
        (let* ((_%key183801%_ (gx#core-identifier-key _%id183796%_))
               (_%eid183803%_
                (gx#make-binding-id__%
                 _%key183801%_
                 '#f
                 _%phi183798%_
                 _%ctx183799%_))
               (_%bind183809%_
                (if (##structure-instance-of?
                     _%ctx183799%_
                     'gx#module-context::t)
                    (let ((__obj186868
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj186868
                       _%eid183803%_
                       _%key183801%_
                       _%phi183798%_
                       _%ctx183799%_)
                      __obj186868)
                    (if (##structure-instance-of?
                         _%ctx183799%_
                         'gx#top-context::t)
                        (let ((__obj186867
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj186867
                           _%eid183803%_
                           _%key183801%_
                           _%phi183798%_)
                          __obj186867)
                        (if (##structure-instance-of?
                             _%ctx183799%_
                             'gx#local-context::t)
                            (let ((__obj186866
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj186866
                               _%eid183803%_
                               _%key183801%_
                               _%phi183798%_)
                              __obj186866)
                            (let ((__obj186865
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj186865
                               _%eid183803%_
                               _%key183801%_
                               _%phi183798%_)
                              __obj186865))))))
          (gx#bind-identifier!__%
           _%id183796%_
           _%bind183809%_
           _%rebind?183797%_
           _%phi183798%_
           _%ctx183799%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id183815%_)
        (let* ((_%rebind?183817%_ '#f)
               (_%phi183819%_ (gx#current-expander-phi))
               (_%ctx183821%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id183815%_
           _%rebind?183817%_
           _%phi183819%_
           _%ctx183821%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id183823%_ _%rebind?183824%_)
        (let* ((_%phi183826%_ (gx#current-expander-phi))
               (_%ctx183828%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id183823%_
           _%rebind?183824%_
           _%phi183826%_
           _%ctx183828%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id183830%_ _%rebind?183831%_ _%phi183832%_)
        (let ((_%ctx183834%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id183830%_
           _%rebind?183831%_
           _%phi183832%_
           _%ctx183834%_))))
    (define gx#core-bind-runtime!
      (lambda _g186893_
        (let ((_g186894_ (##length _g186893_)))
          (cond ((##fx= _g186894_ 1)
                 (apply gx#core-bind-runtime!__0 _g186893_))
                ((##fx= _g186894_ 2)
                 (apply gx#core-bind-runtime!__1 _g186893_))
                ((##fx= _g186894_ 3)
                 (apply gx#core-bind-runtime!__2 _g186893_))
                ((##fx= _g186894_ 4)
                 (apply gx#core-bind-runtime!__% _g186893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g186893_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id183748%_
               _%eid183749%_
               _%rebind?183750%_
               _%phi183751%_
               _%ctx183752%_)
        (let* ((_%key183754%_ (gx#core-identifier-key _%id183748%_))
               (_%bind183759%_
                (if (##structure-instance-of?
                     _%ctx183752%_
                     'gx#module-context::t)
                    (let ((__obj186871
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj186871
                       _%eid183749%_
                       _%key183754%_
                       _%phi183751%_
                       _%ctx183752%_)
                      __obj186871)
                    (if (##structure-instance-of?
                         _%ctx183752%_
                         'gx#top-context::t)
                        (let ((__obj186870
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj186870
                           _%eid183749%_
                           _%key183754%_
                           _%phi183751%_)
                          __obj186870)
                        (let ((__obj186869
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj186869
                           _%eid183749%_
                           _%key183754%_
                           _%phi183751%_)
                          __obj186869)))))
          (gx#bind-identifier!__%
           _%id183748%_
           _%bind183759%_
           _%rebind?183750%_
           _%phi183751%_
           _%ctx183752%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id183765%_ _%eid183766%_)
        (let* ((_%rebind?183768%_ '#f)
               (_%phi183770%_ (gx#current-expander-phi))
               (_%ctx183772%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id183765%_
           _%eid183766%_
           _%rebind?183768%_
           _%phi183770%_
           _%ctx183772%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id183774%_ _%eid183775%_ _%rebind?183776%_)
        (let* ((_%phi183778%_ (gx#current-expander-phi))
               (_%ctx183780%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id183774%_
           _%eid183775%_
           _%rebind?183776%_
           _%phi183778%_
           _%ctx183780%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id183782%_ _%eid183783%_ _%rebind?183784%_ _%phi183785%_)
        (let ((_%ctx183787%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id183782%_
           _%eid183783%_
           _%rebind?183784%_
           _%phi183785%_
           _%ctx183787%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g186895_
        (let ((_g186896_ (##length _g186895_)))
          (cond ((##fx= _g186896_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g186895_))
                ((##fx= _g186896_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g186895_))
                ((##fx= _g186896_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g186895_))
                ((##fx= _g186896_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g186895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g186895_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id183708%_
               _%eid183709%_
               _%rebind?183710%_
               _%phi183711%_
               _%ctx183712%_)
        (gx#bind-identifier!__%
         _%id183708%_
         (let ((__obj186872
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj186872
            _%eid183709%_
            (gx#core-identifier-key _%id183708%_)
            _%phi183711%_)
           __obj186872)
         _%rebind?183710%_
         _%phi183711%_
         _%ctx183712%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id183717%_ _%eid183718%_)
        (let* ((_%rebind?183720%_ '#f)
               (_%phi183722%_ (gx#current-expander-phi))
               (_%ctx183724%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id183717%_
           _%eid183718%_
           _%rebind?183720%_
           _%phi183722%_
           _%ctx183724%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id183726%_ _%eid183727%_ _%rebind?183728%_)
        (let* ((_%phi183730%_ (gx#current-expander-phi))
               (_%ctx183732%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id183726%_
           _%eid183727%_
           _%rebind?183728%_
           _%phi183730%_
           _%ctx183732%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id183734%_ _%eid183735%_ _%rebind?183736%_ _%phi183737%_)
        (let ((_%ctx183739%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id183734%_
           _%eid183735%_
           _%rebind?183736%_
           _%phi183737%_
           _%ctx183739%_))))
    (define gx#core-bind-extern!
      (lambda _g186897_
        (let ((_g186898_ (##length _g186897_)))
          (cond ((##fx= _g186898_ 2) (apply gx#core-bind-extern!__0 _g186897_))
                ((##fx= _g186898_ 3) (apply gx#core-bind-extern!__1 _g186897_))
                ((##fx= _g186898_ 4) (apply gx#core-bind-extern!__2 _g186897_))
                ((##fx= _g186898_ 5) (apply gx#core-bind-extern!__% _g186897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g186897_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id183662%_
               _%e183663%_
               _%rebind?183664%_
               _%phi183665%_
               _%ctx183666%_)
        (gx#bind-identifier!__%
         _%id183662%_
         (let ((_%key183671%_ (gx#core-identifier-key _%id183662%_))
               (_%e183672%_
                (if (or (##structure-instance-of? _%e183663%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e183663%_
                         'gx#expander-context::t))
                    _%e183663%_
                    (##structure
                     gx#user-expander::t
                     _%e183663%_
                     _%ctx183666%_
                     _%phi183665%_))))
           (let ((__obj186873
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj186873
              (gx#make-binding-id__%
               _%key183671%_
               '#t
               _%phi183665%_
               _%ctx183666%_)
              _%key183671%_
              _%phi183665%_
              _%e183672%_)
             __obj186873))
         _%rebind?183664%_
         _%phi183665%_
         _%ctx183666%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id183677%_ _%e183678%_)
        (let* ((_%rebind?183680%_ '#f)
               (_%phi183682%_ (gx#current-expander-phi))
               (_%ctx183684%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id183677%_
           _%e183678%_
           _%rebind?183680%_
           _%phi183682%_
           _%ctx183684%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id183686%_ _%e183687%_ _%rebind?183688%_)
        (let* ((_%phi183690%_ (gx#current-expander-phi))
               (_%ctx183692%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id183686%_
           _%e183687%_
           _%rebind?183688%_
           _%phi183690%_
           _%ctx183692%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id183694%_ _%e183695%_ _%rebind?183696%_ _%phi183697%_)
        (let ((_%ctx183699%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id183694%_
           _%e183695%_
           _%rebind?183696%_
           _%phi183697%_
           _%ctx183699%_))))
    (define gx#core-bind-syntax!
      (lambda _g186899_
        (let ((_g186900_ (##length _g186899_)))
          (cond ((##fx= _g186900_ 2) (apply gx#core-bind-syntax!__0 _g186899_))
                ((##fx= _g186900_ 3) (apply gx#core-bind-syntax!__1 _g186899_))
                ((##fx= _g186900_ 4) (apply gx#core-bind-syntax!__2 _g186899_))
                ((##fx= _g186900_ 5) (apply gx#core-bind-syntax!__% _g186899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g186899_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id183645%_ _%e183646%_ _%rebind?183647%_)
        (gx#core-bind-syntax!__%
         _%id183645%_
         _%e183646%_
         _%rebind?183647%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id183652%_ _%e183653%_)
        (let ((_%rebind?183655%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id183652%_
           _%e183653%_
           _%rebind?183655%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g186901_
        (let ((_g186902_ (##length _g186901_)))
          (cond ((##fx= _g186902_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g186901_))
                ((##fx= _g186902_ 3)
                 (apply gx#core-bind-root-syntax!__% _g186901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g186901_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id183603%_
               _%alias-id183604%_
               _%rebind?183605%_
               _%phi183606%_
               _%ctx183607%_)
        (gx#bind-identifier!__%
         _%id183603%_
         (let* ((_%key183609%_ (gx#core-identifier-key _%id183603%_))
                (__obj186874
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj186874
            (gx#make-binding-id__%
             _%key183609%_
             '#t
             _%phi183606%_
             _%ctx183607%_)
            _%key183609%_
            _%phi183606%_
            _%alias-id183604%_)
           __obj186874)
         _%rebind?183605%_
         _%phi183606%_
         _%ctx183607%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id183614%_ _%alias-id183615%_)
        (let* ((_%rebind?183617%_ '#f)
               (_%phi183619%_ (gx#current-expander-phi))
               (_%ctx183621%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id183614%_
           _%alias-id183615%_
           _%rebind?183617%_
           _%phi183619%_
           _%ctx183621%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id183623%_ _%alias-id183624%_ _%rebind?183625%_)
        (let* ((_%phi183627%_ (gx#current-expander-phi))
               (_%ctx183629%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id183623%_
           _%alias-id183624%_
           _%rebind?183625%_
           _%phi183627%_
           _%ctx183629%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id183631%_ _%alias-id183632%_ _%rebind?183633%_ _%phi183634%_)
        (let ((_%ctx183636%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id183631%_
           _%alias-id183632%_
           _%rebind?183633%_
           _%phi183634%_
           _%ctx183636%_))))
    (define gx#core-bind-alias!
      (lambda _g186903_
        (let ((_g186904_ (##length _g186903_)))
          (cond ((##fx= _g186904_ 2) (apply gx#core-bind-alias!__0 _g186903_))
                ((##fx= _g186904_ 3) (apply gx#core-bind-alias!__1 _g186903_))
                ((##fx= _g186904_ 4) (apply gx#core-bind-alias!__2 _g186903_))
                ((##fx= _g186904_ 5) (apply gx#core-bind-alias!__% _g186903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g186903_))))))
    (define gx#make-binding-id__%
      (lambda (_%key183553%_ _%syntax?183554%_ _%phi183555%_ _%ctx183556%_)
        (if (uninterned-symbol? _%key183553%_)
            (##gensym 'L)
            (if (pair? _%key183553%_)
                (gensym (##car _%key183553%_))
                (if (##structure-instance-of? _%ctx183556%_ 'gx#top-context::t)
                    (let ((_%ns183561%_
                           (gx#core-context-namespace__% _%ctx183556%_)))
                      (if (and (fxzero? _%phi183555%_) (not _%syntax?183554%_))
                          (if _%ns183561%_
                              (make-symbol__1 _%ns183561%_ '"#" _%key183553%_)
                              _%key183553%_)
                          (if _%syntax?183554%_
                              (make-symbol__1
                               (let ((_%$e183565%_ _%ns183561%_))
                                 (if _%$e183565%_ _%$e183565%_ '""))
                               '"[:"
                               (number->string _%phi183555%_)
                               '":]#"
                               _%key183553%_)
                              (make-symbol__1
                               (let ((_%$e183569%_ _%ns183561%_))
                                 (if _%$e183569%_ _%$e183569%_ '""))
                               '"["
                               (number->string _%phi183555%_)
                               '"]#"
                               _%key183553%_))))
                    (gensym _%key183553%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key183576%_)
        (let* ((_%syntax?183578%_ '#f)
               (_%phi183580%_ (gx#current-expander-phi))
               (_%ctx183582%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key183576%_
           _%syntax?183578%_
           _%phi183580%_
           _%ctx183582%_))))
    (define gx#make-binding-id__1
      (lambda (_%key183584%_ _%syntax?183585%_)
        (let* ((_%phi183587%_ (gx#current-expander-phi))
               (_%ctx183589%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key183584%_
           _%syntax?183585%_
           _%phi183587%_
           _%ctx183589%_))))
    (define gx#make-binding-id__2
      (lambda (_%key183591%_ _%syntax?183592%_ _%phi183593%_)
        (let ((_%ctx183595%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key183591%_
           _%syntax?183592%_
           _%phi183593%_
           _%ctx183595%_))))
    (define gx#make-binding-id
      (lambda _g186905_
        (let ((_g186906_ (##length _g186905_)))
          (cond ((##fx= _g186906_ 1) (apply gx#make-binding-id__0 _g186905_))
                ((##fx= _g186906_ 2) (apply gx#make-binding-id__1 _g186905_))
                ((##fx= _g186906_ 3) (apply gx#make-binding-id__2 _g186905_))
                ((##fx= _g186906_ 4) (apply gx#make-binding-id__% _g186905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g186905_))))))))
