(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1771037609)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx190796%_)
        (letrec ((_%expand-special190798%_
                  (lambda (_%hd190800%_ _%K190801%_ _%rest190802%_ _%r190803%_)
                    (_%K190801%_
                     _%rest190802%_
                     (cons (gx#core-expand-top _%hd190800%_) _%r190803%_)))))
          (gx#core-expand-block__0 _%stx190796%_ _%expand-special190798%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx190490%_)
        (letrec ((_%expand-special190492%_
                  (lambda (_%hd190614%_ _%K190615%_ _%rest190616%_ _%r190617%_)
                    (let* ((_%K190621%_
                            (lambda (_%e190619%_)
                              (_%K190615%_
                               _%rest190616%_
                               (cons _%e190619%_ _%r190617%_))))
                           (_%e190622190664%_ _%hd190614%_)
                           (_%E190659190668%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e190622190664%_)))
                           (_%E190655190680%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190622190664%_)
                                  (let ((_%e190660190672%_
                                         (gx#syntax-e _%e190622190664%_)))
                                    (let ((_%hd190661190675%_
                                           (##car _%e190660190672%_))
                                          (_%tl190662190677%_
                                           (##cdr _%e190660190672%_)))
                                      (if (and (gx#identifier?
                                                _%hd190661190675%_)
                                               (gx#core-identifier=?
                                                _%hd190661190675%_
                                                '%#define-runtime))
                                          (_%K190621%_
                                           (gx#core-expand-define-runtime%
                                            _%hd190614%_))
                                          (_%E190659190668%_))))
                                  (_%E190659190668%_))))
                           (_%E190651190692%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190622190664%_)
                                  (let ((_%e190656190684%_
                                         (gx#syntax-e _%e190622190664%_)))
                                    (let ((_%hd190657190687%_
                                           (##car _%e190656190684%_))
                                          (_%tl190658190689%_
                                           (##cdr _%e190656190684%_)))
                                      (if (and (gx#identifier?
                                                _%hd190657190687%_)
                                               (gx#core-identifier=?
                                                _%hd190657190687%_
                                                '%#define-alias))
                                          (_%K190621%_
                                           (gx#core-expand-define-alias%
                                            _%hd190614%_))
                                          (_%E190655190680%_))))
                                  (_%E190655190680%_))))
                           (_%E190641190704%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190622190664%_)
                                  (let ((_%e190652190696%_
                                         (gx#syntax-e _%e190622190664%_)))
                                    (let ((_%hd190653190699%_
                                           (##car _%e190652190696%_))
                                          (_%tl190654190701%_
                                           (##cdr _%e190652190696%_)))
                                      (if (and (gx#identifier?
                                                _%hd190653190699%_)
                                               (gx#core-identifier=?
                                                _%hd190653190699%_
                                                '%#define-syntax))
                                          (_%K190621%_
                                           (gx#core-expand-define-syntax%
                                            _%hd190614%_))
                                          (_%E190651190692%_))))
                                  (_%E190651190692%_))))
                           (_%E190628190736%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190622190664%_)
                                  (let ((_%e190642190708%_
                                         (gx#syntax-e _%e190622190664%_)))
                                    (let ((_%hd190643190711%_
                                           (##car _%e190642190708%_))
                                          (_%tl190644190713%_
                                           (##cdr _%e190642190708%_)))
                                      (if (and (gx#identifier?
                                                _%hd190643190711%_)
                                               (gx#core-identifier=?
                                                _%hd190643190711%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl190644190713%_)
                                              (let ((_%e190645190716%_
                                                     (gx#syntax-e
                                                      _%tl190644190713%_)))
                                                (let ((_%hd190646190719%_
                                                       (##car _%e190645190716%_))
                                                      (_%tl190647190721%_
                                                       (##cdr _%e190645190716%_)))
                                                  (let ((_%hd-bind190724%_
                                                         _%hd190646190719%_))
                                                    (if (gx#stx-pair?
                                                         _%tl190647190721%_)
                                                        (let ((_%e190648190726%_
                                                               (gx#syntax-e
                                                                _%tl190647190721%_)))
                                                          (let ((_%hd190649190729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e190648190726%_))
                        (_%tl190650190731%_ (##cdr _%e190648190726%_)))
                    (let ((_%expr190734%_ _%hd190649190729%_))
                      (if (gx#stx-null? _%tl190650190731%_)
                          (if (gx#core-bind-values? _%hd-bind190724%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind190724%_)
                                (_%K190621%_ _%hd190614%_))
                              (_%E190641190704%_))
                          (_%E190641190704%_)))))
                (_%E190641190704%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E190641190704%_))
                                          (_%E190641190704%_))))
                                  (_%E190641190704%_))))
                           (_%E190624190780%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190622190664%_)
                                  (let ((_%e190629190740%_
                                         (gx#syntax-e _%e190622190664%_)))
                                    (let ((_%hd190630190743%_
                                           (##car _%e190629190740%_))
                                          (_%tl190631190745%_
                                           (##cdr _%e190629190740%_)))
                                      (if (and (gx#identifier?
                                                _%hd190630190743%_)
                                               (gx#core-identifier=?
                                                _%hd190630190743%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl190631190745%_)
                                              (let ((_%e190632190748%_
                                                     (gx#syntax-e
                                                      _%tl190631190745%_)))
                                                (let ((_%hd190633190751%_
                                                       (##car _%e190632190748%_))
                                                      (_%tl190634190753%_
                                                       (##cdr _%e190632190748%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd190633190751%_)
                                                      (let ((_%e190638190756%_
                                                             (gx#syntax-e
                                                              _%hd190633190751%_)))
                                                        (let ((_%hd190639190759%_
                                                               (##car _%e190638190756%_))
                                                              (_%tl190640190761%_
                                                               (##cdr _%e190638190756%_)))
                                                          (let ((_%id190764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd190639190759%_))
                    (if (gx#stx-null? _%tl190640190761%_)
                        (if (gx#stx-pair? _%tl190634190753%_)
                            (let ((_%e190635190766%_
                                   (gx#syntax-e _%tl190634190753%_)))
                              (let ((_%hd190636190769%_
                                     (##car _%e190635190766%_))
                                    (_%tl190637190771%_
                                     (##cdr _%e190635190766%_)))
                                (let* ((_%expr190774%_ _%hd190636190769%_)
                                       (_%props190776%_ _%tl190637190771%_))
                                  (if (gx#identifier? _%id190764%_)
                                      (let ((_%bind190778%_
                                             (gx#core-bind-runtime!__0
                                              _%id190764%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind190778%_
                                         _%props190776%_)
                                        (_%K190621%_ _%hd190614%_))
                                      (_%E190628190736%_)))))
                            (_%E190628190736%_))
                        (_%E190628190736%_)))))
              (_%E190628190736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E190628190736%_))
                                          (_%E190628190736%_))))
                                  (_%E190628190736%_))))
                           (_%E190623190792%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190622190664%_)
                                  (let ((_%e190625190784%_
                                         (gx#syntax-e _%e190622190664%_)))
                                    (let ((_%hd190626190787%_
                                           (##car _%e190625190784%_))
                                          (_%tl190627190789%_
                                           (##cdr _%e190625190784%_)))
                                      (if (and (gx#identifier?
                                                _%hd190626190787%_)
                                               (gx#core-identifier=?
                                                _%hd190626190787%_
                                                '%#begin-syntax))
                                          (_%K190621%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd190614%_))
                                          (_%E190624190780%_))))
                                  (_%E190624190780%_)))))
                      (_%E190623190792%_))))
                 (_%eval-body190493%_
                  (lambda (_%rbody190501%_)
                    (let _%lp190503%_ ((_%rest190505%_ _%rbody190501%_)
                                       (_%body190506%_ '())
                                       (_%ebody190507%_ '()))
                      (let* ((_%rest190508190516%_ _%rest190505%_)
                             (_%else190510190524%_
                              (lambda ()
                                (values _%body190506%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody190507%_)
                                          (gx#stx-source _%stx190490%_))))))
                             (_%K190512190602%_
                              (lambda (_%rest190527%_ _%hd190528%_)
                                (let* ((_%e190529190546%_ _%hd190528%_)
                                       (_%E190541190550%_
                                        (lambda ()
                                          (_%lp190503%_
                                           _%rest190527%_
                                           (cons _%hd190528%_ _%body190506%_)
                                           (cons _%hd190528%_
                                                 _%ebody190507%_))))
                                       (_%E190531190562%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e190529190546%_)
                                              (let ((_%e190542190554%_
                                                     (gx#syntax-e
                                                      _%e190529190546%_)))
                                                (let ((_%hd190543190557%_
                                                       (##car _%e190542190554%_))
                                                      (_%tl190544190559%_
                                                       (##cdr _%e190542190554%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd190543190557%_)
                                                           (gx#core-identifier=?
                                                            _%hd190543190557%_
                                                            '%#begin-syntax))
                                                      (_%lp190503%_
                                                       _%rest190527%_
                                                       (cons _%hd190528%_
                                                             _%body190506%_)
                                                       _%ebody190507%_)
                                                      (_%E190541190550%_))))
                                              (_%E190541190550%_))))
                                       (_%E190530190598%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e190529190546%_)
                                              (let ((_%e190532190566%_
                                                     (gx#syntax-e
                                                      _%e190529190546%_)))
                                                (let ((_%hd190533190569%_
                                                       (##car _%e190532190566%_))
                                                      (_%tl190534190571%_
                                                       (##cdr _%e190532190566%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd190533190569%_)
                                                           (gx#core-identifier=?
                                                            _%hd190533190569%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl190534190571%_)
                                                          (let ((_%e190535190574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl190534190571%_)))
                    (let ((_%hd190536190577%_ (##car _%e190535190574%_))
                          (_%tl190537190579%_ (##cdr _%e190535190574%_)))
                      (let ((_%hd-bind190582%_ _%hd190536190577%_))
                        (if (gx#stx-pair? _%tl190537190579%_)
                            (let ((_%e190538190584%_
                                   (gx#syntax-e _%tl190537190579%_)))
                              (let ((_%hd190539190587%_
                                     (##car _%e190538190584%_))
                                    (_%tl190540190589%_
                                     (##cdr _%e190538190584%_)))
                                (let* ((_%expr190592%_ _%hd190539190587%_)
                                       (_%ignore-props190594%_
                                        _%tl190540190589%_)
                                       (_%ehd190596%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind190582%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr190592%_)
                                                           '())))
                                         (gx#stx-source _%hd190528%_))))
                                  (_%lp190503%_
                                   _%rest190527%_
                                   (cons _%ehd190596%_ _%body190506%_)
                                   (cons _%ehd190596%_ _%ebody190507%_)))))
                            (_%E190531190562%_)))))
                  (_%E190531190562%_))
              (_%E190531190562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E190531190562%_)))))
                                  (_%E190530190598%_)))))
                        (if (pair? _%rest190508190516%_)
                            (let ((_%hd190513190605%_
                                   (##car _%rest190508190516%_))
                                  (_%tl190514190607%_
                                   (##cdr _%rest190508190516%_)))
                              (let* ((_%hd190610%_ _%hd190513190605%_)
                                     (_%rest190612%_ _%tl190514190607%_))
                                (_%K190512190602%_
                                 _%rest190612%_
                                 _%hd190610%_)))
                            (_%else190510190524%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody190496%_
                     (gx#core-expand-block__1
                      _%stx190490%_
                      _%expand-special190492%_
                      '#f))
                    (_g190829_ (_%eval-body190493%_ _%rbody190496%_)))
               (begin
                 (let ((_g190830_
                        (if (##values? _g190829_)
                            (##values-length _g190829_)
                            1)))
                   (if (not (##fx= _g190830_ 2))
                       (error "Context expects 2 values" _g190830_)))
                 (let ((_%expanded-body190498%_ (##values-ref _g190829_ 0))
                       (_%value190499%_ (##values-ref _g190829_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body190498%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value190499%_ '())))
                    (gx#stx-source _%stx190490%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx190460%_)
        (let* ((_%e190461190468%_ _%stx190460%_)
               (_%E190463190472%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e190461190468%_)))
               (_%E190462190486%_
                (lambda ()
                  (if (gx#stx-pair? _%e190461190468%_)
                      (let ((_%e190464190476%_
                             (gx#syntax-e _%e190461190468%_)))
                        (let ((_%hd190465190479%_ (##car _%e190464190476%_))
                              (_%tl190466190481%_ (##cdr _%e190464190476%_)))
                          (let ((_%body190484%_ _%tl190466190481%_))
                            (if (gx#stx-list? _%body190484%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body190484%_)
                                 (gx#stx-source _%stx190460%_))
                                (_%E190463190472%_)))))
                      (_%E190463190472%_)))))
          (_%E190462190486%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx190458%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx190458%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx190404%_)
        (let* ((_%e190405190418%_ _%stx190404%_)
               (_%E190407190422%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e190405190418%_)))
               (_%E190406190454%_
                (lambda ()
                  (if (gx#stx-pair? _%e190405190418%_)
                      (let ((_%e190408190426%_
                             (gx#syntax-e _%e190405190418%_)))
                        (let ((_%hd190409190429%_ (##car _%e190408190426%_))
                              (_%tl190410190431%_ (##cdr _%e190408190426%_)))
                          (if (gx#stx-pair? _%tl190410190431%_)
                              (let ((_%e190411190434%_
                                     (gx#syntax-e _%tl190410190431%_)))
                                (let ((_%hd190412190437%_
                                       (##car _%e190411190434%_))
                                      (_%tl190413190439%_
                                       (##cdr _%e190411190434%_)))
                                  (let ((_%ann190442%_ _%hd190412190437%_))
                                    (if (gx#stx-pair? _%tl190413190439%_)
                                        (let ((_%e190414190444%_
                                               (gx#syntax-e
                                                _%tl190413190439%_)))
                                          (let ((_%hd190415190447%_
                                                 (##car _%e190414190444%_))
                                                (_%tl190416190449%_
                                                 (##cdr _%e190414190444%_)))
                                            (let ((_%expr190452%_
                                                   _%hd190415190447%_))
                                              (if (gx#stx-null?
                                                   _%tl190416190449%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann190442%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr190452%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx190404%_))
                                                  (_%E190407190422%_)))))
                                        (_%E190407190422%_)))))
                              (_%E190407190422%_))))
                      (_%E190407190422%_)))))
          (_%E190406190454%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx190069%_ _%body190070%_)
        (letrec ((_%expand-special190072%_
                  (lambda (_%hd190399%_ _%K190400%_ _%rest190401%_ _%r190402%_)
                    (_%K190400%_
                     '()
                     (cons (_%expand-internal190073%_
                            _%hd190399%_
                            _%rest190401%_)
                           _%r190402%_))))
                 (_%expand-internal190073%_
                  (lambda (_%hd190395%_ _%rest190396%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal190075%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd190395%_ _%rest190396%_))
                          (gx#stx-source _%stx190069%_))
                         _%expand-internal-special190074%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj190813
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj190813)
                       __obj190813))))
                 (_%expand-internal-special190074%_
                  (lambda (_%hd190233%_ _%K190234%_ _%rest190235%_ _%r190236%_)
                    (let* ((_%e190237190275%_ _%hd190233%_)
                           (_%E190270190279%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e190237190275%_)))
                           (_%E190266190291%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190237190275%_)
                                  (let ((_%e190271190283%_
                                         (gx#syntax-e _%e190237190275%_)))
                                    (let ((_%hd190272190286%_
                                           (##car _%e190271190283%_))
                                          (_%tl190273190288%_
                                           (##cdr _%e190271190283%_)))
                                      (if (and (gx#identifier?
                                                _%hd190272190286%_)
                                               (gx#core-identifier=?
                                                _%hd190272190286%_
                                                '%#declare))
                                          (_%K190234%_
                                           _%rest190235%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd190233%_)
                                                 _%r190236%_))
                                          (_%E190270190279%_))))
                                  (_%E190270190279%_))))
                           (_%E190262190303%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190237190275%_)
                                  (let ((_%e190267190295%_
                                         (gx#syntax-e _%e190237190275%_)))
                                    (let ((_%hd190268190298%_
                                           (##car _%e190267190295%_))
                                          (_%tl190269190300%_
                                           (##cdr _%e190267190295%_)))
                                      (if (and (gx#identifier?
                                                _%hd190268190298%_)
                                               (gx#core-identifier=?
                                                _%hd190268190298%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd190233%_)
                                            (_%K190234%_
                                             _%rest190235%_
                                             _%r190236%_))
                                          (_%E190266190291%_))))
                                  (_%E190266190291%_))))
                           (_%E190252190315%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190237190275%_)
                                  (let ((_%e190263190307%_
                                         (gx#syntax-e _%e190237190275%_)))
                                    (let ((_%hd190264190310%_
                                           (##car _%e190263190307%_))
                                          (_%tl190265190312%_
                                           (##cdr _%e190263190307%_)))
                                      (if (and (gx#identifier?
                                                _%hd190264190310%_)
                                               (gx#core-identifier=?
                                                _%hd190264190310%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd190233%_)
                                            (_%K190234%_
                                             _%rest190235%_
                                             _%r190236%_))
                                          (_%E190262190303%_))))
                                  (_%E190262190303%_))))
                           (_%E190239190347%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190237190275%_)
                                  (let ((_%e190253190319%_
                                         (gx#syntax-e _%e190237190275%_)))
                                    (let ((_%hd190254190322%_
                                           (##car _%e190253190319%_))
                                          (_%tl190255190324%_
                                           (##cdr _%e190253190319%_)))
                                      (if (and (gx#identifier?
                                                _%hd190254190322%_)
                                               (gx#core-identifier=?
                                                _%hd190254190322%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl190255190324%_)
                                              (let ((_%e190256190327%_
                                                     (gx#syntax-e
                                                      _%tl190255190324%_)))
                                                (let ((_%hd190257190330%_
                                                       (##car _%e190256190327%_))
                                                      (_%tl190258190332%_
                                                       (##cdr _%e190256190327%_)))
                                                  (let ((_%hd-bind190335%_
                                                         _%hd190257190330%_))
                                                    (if (gx#stx-pair?
                                                         _%tl190258190332%_)
                                                        (let ((_%e190259190337%_
                                                               (gx#syntax-e
                                                                _%tl190258190332%_)))
                                                          (let ((_%hd190260190340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e190259190337%_))
                        (_%tl190261190342%_ (##cdr _%e190259190337%_)))
                    (let ((_%expr190345%_ _%hd190260190340%_))
                      (if (gx#stx-null? _%tl190261190342%_)
                          (if (gx#core-bind-values? _%hd-bind190335%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind190335%_)
                                (_%K190234%_
                                 _%rest190235%_
                                 (cons _%hd190233%_ _%r190236%_)))
                              (_%E190252190315%_))
                          (_%E190252190315%_)))))
                (_%E190252190315%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E190252190315%_))
                                          (_%E190252190315%_))))
                                  (_%E190252190315%_))))
                           (_%E190238190391%_
                            (lambda ()
                              (if (gx#stx-pair? _%e190237190275%_)
                                  (let ((_%e190240190351%_
                                         (gx#syntax-e _%e190237190275%_)))
                                    (let ((_%hd190241190354%_
                                           (##car _%e190240190351%_))
                                          (_%tl190242190356%_
                                           (##cdr _%e190240190351%_)))
                                      (if (and (gx#identifier?
                                                _%hd190241190354%_)
                                               (gx#core-identifier=?
                                                _%hd190241190354%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl190242190356%_)
                                              (let ((_%e190243190359%_
                                                     (gx#syntax-e
                                                      _%tl190242190356%_)))
                                                (let ((_%hd190244190362%_
                                                       (##car _%e190243190359%_))
                                                      (_%tl190245190364%_
                                                       (##cdr _%e190243190359%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd190244190362%_)
                                                      (let ((_%e190249190367%_
                                                             (gx#syntax-e
                                                              _%hd190244190362%_)))
                                                        (let ((_%hd190250190370%_
                                                               (##car _%e190249190367%_))
                                                              (_%tl190251190372%_
                                                               (##cdr _%e190249190367%_)))
                                                          (let ((_%id190375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd190250190370%_))
                    (if (gx#stx-null? _%tl190251190372%_)
                        (if (gx#stx-pair? _%tl190245190364%_)
                            (let ((_%e190246190377%_
                                   (gx#syntax-e _%tl190245190364%_)))
                              (let ((_%hd190247190380%_
                                     (##car _%e190246190377%_))
                                    (_%tl190248190382%_
                                     (##cdr _%e190246190377%_)))
                                (let* ((_%expr190385%_ _%hd190247190380%_)
                                       (_%props190387%_ _%tl190248190382%_))
                                  (if (gx#identifier? _%id190375%_)
                                      (let ((_%bind190389%_
                                             (gx#core-bind-runtime!__0
                                              _%id190375%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind190389%_
                                         _%props190387%_)
                                        (_%K190234%_
                                         _%rest190235%_
                                         (cons _%hd190233%_ _%r190236%_)))
                                      (_%E190239190347%_)))))
                            (_%E190239190347%_))
                        (_%E190239190347%_)))))
              (_%E190239190347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E190239190347%_))
                                          (_%E190239190347%_))))
                                  (_%E190239190347%_)))))
                      (_%E190238190391%_))))
                 (_%wrap-internal190075%_
                  (lambda (_%rbody190077%_)
                    (let _%lp190079%_ ((_%rest190081%_ _%rbody190077%_)
                                       (_%decls190082%_ '())
                                       (_%bind190083%_ '())
                                       (_%body190084%_ '()))
                      (let* ((_%e190085190092%_ _%rest190081%_)
                             (_%E190087190141%_
                              (lambda ()
                                (let* ((_%body190136%_
                                        (let* ((_%body190095190105%_
                                                _%body190084%_)
                                               (_%else190098190113%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body190084%_)
                                                   (gx#stx-source
                                                    _%stx190069%_)))))
                                          (let ((_%K190103190133%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx190069%_)))
                                                (_%K190100190119%_
                                                 (lambda (_%expr190117%_)
                                                   _%expr190117%_)))
                                            (let ((_%try-match190097190129%_
                                                   (lambda ()
                                                     (if (pair? _%body190095190105%_)
                                                         (let ((_%tl190102190124%_
                                                                (##cdr _%body190095190105%_))
                                                               (_%hd190101190122%_
                                                                (##car _%body190095190105%_)))
                                                           (if (null? _%tl190102190124%_)
                                                               (let ((_%expr190127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd190101190122%_))
                         (_%K190100190119%_ _%expr190127%_))
                       (_%else190098190113%_)))
                 (_%else190098190113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body190095190105%_)
                                                  (_%K190103190133%_)
                                                  (_%try-match190097190129%_))))))
                                       (_%body190138%_
                                        (if (null? _%bind190083%_)
                                            _%body190136%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind190083%_
                                                         (cons _%body190136%_
                                                               '())))
                                             (gx#stx-source _%stx190069%_)))))
                                  (if (null? _%decls190082%_)
                                      _%body190138%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls190082%_
                                                   (cons _%body190138%_ '())))
                                       (gx#stx-source _%stx190069%_))))))
                             (_%E190086190229%_
                              (lambda ()
                                (if (gx#stx-pair? _%e190085190092%_)
                                    (let ((_%e190088190145%_
                                           (gx#syntax-e _%e190085190092%_)))
                                      (let ((_%hd190089190148%_
                                             (##car _%e190088190145%_))
                                            (_%tl190090190150%_
                                             (##cdr _%e190088190145%_)))
                                        (let* ((_%hd190153%_
                                                _%hd190089190148%_)
                                               (_%rest190155%_
                                                _%tl190090190150%_)
                                               (_%e190156190173%_ _%hd190153%_)
                                               (_%E190168190177%_
                                                (lambda ()
                                                  (if (null? _%bind190083%_)
                                                      (_%lp190079%_
                                                       _%rest190155%_
                                                       _%decls190082%_
                                                       _%bind190083%_
                                                       (cons _%hd190153%_
                                                             _%body190084%_))
                                                      (_%lp190079%_
                                                       _%rest190155%_
                                                       _%decls190082%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd190153%_ '()))
                     _%bind190083%_)
               _%body190084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E190158190191%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e190156190173%_)
                                                      (let ((_%e190169190181%_
                                                             (gx#syntax-e
                                                              _%e190156190173%_)))
                                                        (let ((_%hd190170190184%_
                                                               (##car _%e190169190181%_))
                                                              (_%tl190171190186%_
                                                               (##cdr _%e190169190181%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd190170190184%_)
                           (gx#core-identifier=?
                            _%hd190170190184%_
                            '%#declare))
                      (let ((_%xdecls190189%_ _%tl190171190186%_))
                        (_%lp190079%_
                         _%rest190155%_
                         (gx#stx-foldr cons _%decls190082%_ _%xdecls190189%_)
                         _%bind190083%_
                         _%body190084%_))
                      (_%E190168190177%_))))
              (_%E190168190177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E190157190225%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e190156190173%_)
                                                      (let ((_%e190159190195%_
                                                             (gx#syntax-e
                                                              _%e190156190173%_)))
                                                        (let ((_%hd190160190198%_
                                                               (##car _%e190159190195%_))
                                                              (_%tl190161190200%_
                                                               (##cdr _%e190159190195%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd190160190198%_)
                           (gx#core-identifier=?
                            _%hd190160190198%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl190161190200%_)
                          (let ((_%e190162190203%_
                                 (gx#syntax-e _%tl190161190200%_)))
                            (let ((_%hd190163190206%_
                                   (##car _%e190162190203%_))
                                  (_%tl190164190208%_
                                   (##cdr _%e190162190203%_)))
                              (let ((_%hd-bind190211%_ _%hd190163190206%_))
                                (if (gx#stx-pair? _%tl190164190208%_)
                                    (let ((_%e190165190213%_
                                           (gx#syntax-e _%tl190164190208%_)))
                                      (let ((_%hd190166190216%_
                                             (##car _%e190165190213%_))
                                            (_%tl190167190218%_
                                             (##cdr _%e190165190213%_)))
                                        (let* ((_%expr190221%_
                                                _%hd190166190216%_)
                                               (_%ignore-props190223%_
                                                _%tl190167190218%_))
                                          (_%lp190079%_
                                           _%rest190155%_
                                           _%decls190082%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind190211%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr190221%_)
                                                             '()))
                                                 _%bind190083%_)
                                           _%body190084%_))))
                                    (_%E190158190191%_)))))
                          (_%E190158190191%_))
                      (_%E190158190191%_))))
              (_%E190158190191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E190157190225%_))))
                                    (_%E190087190141%_)))))
                        (_%E190086190229%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body190070%_)
            (gx#stx-source _%stx190069%_))
           _%expand-special190072%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx190007%_)
        (let* ((_%e190008190015%_ _%stx190007%_)
               (_%E190010190019%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e190008190015%_)))
               (_%E190009190065%_
                (lambda ()
                  (if (gx#stx-pair? _%e190008190015%_)
                      (let ((_%e190011190023%_
                             (gx#syntax-e _%e190008190015%_)))
                        (let ((_%hd190012190026%_ (##car _%e190011190023%_))
                              (_%tl190013190028%_ (##cdr _%e190011190023%_)))
                          (let ((_%body190031%_ _%tl190013190028%_))
                            (if (gx#stx-list? _%body190031%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl190033%_)
                                     (let* ((_%e190034190041%_ _%decl190033%_)
                                            (_%E190036190045%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e190034190041%_)))
                                            (_%E190035190061%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e190034190041%_)
                                                   (let ((_%e190037190049%_
                                                          (gx#syntax-e
                                                           _%e190034190041%_)))
                                                     (let ((_%hd190038190052%_
                                                            (##car _%e190037190049%_))
                                                           (_%tl190039190054%_
                                                            (##cdr _%e190037190049%_)))
                                                       (let* ((_%head190057%_
                                                               _%hd190038190052%_)
                                                              (_%args190059%_
                                                               _%tl190039190054%_))
                                                         (if (gx#stx-list?
                                                              _%args190059%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl190033%_)
                                                             (_%E190036190045%_)))))
                                                   (_%E190036190045%_)))))
                                       (_%E190035190061%_)))
                                   _%body190031%_))
                                 (gx#stx-source _%stx190007%_))
                                (_%E190010190019%_)))))
                      (_%E190010190019%_)))))
          (_%E190009190065%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx189911%_)
        (let* ((_%e189912189919%_ _%stx189911%_)
               (_%E189914189923%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189912189919%_)))
               (_%E189913190003%_
                (lambda ()
                  (if (gx#stx-pair? _%e189912189919%_)
                      (let ((_%e189915189927%_
                             (gx#syntax-e _%e189912189919%_)))
                        (let ((_%hd189916189930%_ (##car _%e189915189927%_))
                              (_%tl189917189932%_ (##cdr _%e189915189927%_)))
                          (let ((_%body189935%_ _%tl189917189932%_))
                            (let _%lp189937%_ ((_%rest189939%_ _%body189935%_)
                                               (_%r189940%_ '()))
                              (let* ((_%e189941189955%_ _%rest189939%_)
                                     (_%E189953189959%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx189911%_)))
                                     (_%E189943189963%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e189941189955%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r189940%_))
                                             (gx#stx-source _%stx189911%_))
                                            (_%E189953189959%_))))
                                     (_%E189942189999%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e189941189955%_)
                                            (let ((_%e189944189967%_
                                                   (gx#syntax-e
                                                    _%e189941189955%_)))
                                              (let ((_%hd189945189970%_
                                                     (##car _%e189944189967%_))
                                                    (_%tl189946189972%_
                                                     (##cdr _%e189944189967%_)))
                                                (if (gx#stx-pair?
                                                     _%hd189945189970%_)
                                                    (let ((_%e189947189975%_
                                                           (gx#syntax-e
                                                            _%hd189945189970%_)))
                                                      (let ((_%hd189948189978%_
                                                             (##car _%e189947189975%_))
                                                            (_%tl189949189980%_
                                                             (##cdr _%e189947189975%_)))
                                                        (let ((_%id189983%_
                                                               _%hd189948189978%_))
                                                          (if (gx#stx-pair?
                                                               _%tl189949189980%_)
                                                              (let ((_%e189950189985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl189949189980%_)))
                        (let ((_%hd189951189988%_ (##car _%e189950189985%_))
                              (_%tl189952189990%_ (##cdr _%e189950189985%_)))
                          (let ((_%eid189993%_ _%hd189951189988%_))
                            (if (gx#stx-null? _%tl189952189990%_)
                                (let ((_%rest189995%_ _%tl189946189972%_))
                                  (if (and (gx#identifier? _%id189983%_)
                                           (gx#identifier? _%eid189993%_))
                                      (let ((_%eid189997%_
                                             (gx#stx-e _%eid189993%_)))
                                        (gx#core-bind-extern!__0
                                         _%id189983%_
                                         _%eid189997%_)
                                        (_%lp189937%_
                                         _%rest189995%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id189983%_)
                                                     (cons _%eid189997%_ '()))
                                               _%r189940%_)))
                                      (_%E189943189963%_)))
                                (_%E189943189963%_)))))
                      (_%E189943189963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E189943189963%_))))
                                            (_%E189943189963%_)))))
                                (_%E189942189999%_))))))
                      (_%E189914189923%_)))))
          (_%E189913190003%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx189800%_)
        (let* ((_%e189801189827%_ _%stx189800%_)
               (_%E189816189831%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189801189827%_)))
               (_%E189803189863%_
                (lambda ()
                  (if (gx#stx-pair? _%e189801189827%_)
                      (let ((_%e189817189835%_
                             (gx#syntax-e _%e189801189827%_)))
                        (let ((_%hd189818189838%_ (##car _%e189817189835%_))
                              (_%tl189819189840%_ (##cdr _%e189817189835%_)))
                          (if (gx#stx-pair? _%tl189819189840%_)
                              (let ((_%e189820189843%_
                                     (gx#syntax-e _%tl189819189840%_)))
                                (let ((_%hd189821189846%_
                                       (##car _%e189820189843%_))
                                      (_%tl189822189848%_
                                       (##cdr _%e189820189843%_)))
                                  (let ((_%hd189851%_ _%hd189821189846%_))
                                    (if (gx#stx-pair? _%tl189822189848%_)
                                        (let ((_%e189823189853%_
                                               (gx#syntax-e
                                                _%tl189822189848%_)))
                                          (let ((_%hd189824189856%_
                                                 (##car _%e189823189853%_))
                                                (_%tl189825189858%_
                                                 (##cdr _%e189823189853%_)))
                                            (let ((_%expr189861%_
                                                   _%hd189824189856%_))
                                              (if (gx#stx-null?
                                                   _%tl189825189858%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd189851%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd189851%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd189851%_)
                             (cons (gx#core-expand-expression _%expr189861%_)
                                   '())))
                 (gx#stx-source _%stx189800%_)))
              (_%E189816189831%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189816189831%_)))))
                                        (_%E189816189831%_)))))
                              (_%E189816189831%_))))
                      (_%E189816189831%_))))
               (_%E189802189907%_
                (lambda ()
                  (if (gx#stx-pair? _%e189801189827%_)
                      (let ((_%e189804189867%_
                             (gx#syntax-e _%e189801189827%_)))
                        (let ((_%hd189805189870%_ (##car _%e189804189867%_))
                              (_%tl189806189872%_ (##cdr _%e189804189867%_)))
                          (if (gx#stx-pair? _%tl189806189872%_)
                              (let ((_%e189807189875%_
                                     (gx#syntax-e _%tl189806189872%_)))
                                (let ((_%hd189808189878%_
                                       (##car _%e189807189875%_))
                                      (_%tl189809189880%_
                                       (##cdr _%e189807189875%_)))
                                  (if (gx#stx-pair? _%hd189808189878%_)
                                      (let ((_%e189813189883%_
                                             (gx#syntax-e _%hd189808189878%_)))
                                        (let ((_%hd189814189886%_
                                               (##car _%e189813189883%_))
                                              (_%tl189815189888%_
                                               (##cdr _%e189813189883%_)))
                                          (let ((_%id189891%_
                                                 _%hd189814189886%_))
                                            (if (gx#stx-null?
                                                 _%tl189815189888%_)
                                                (if (gx#stx-pair?
                                                     _%tl189809189880%_)
                                                    (let ((_%e189810189893%_
                                                           (gx#syntax-e
                                                            _%tl189809189880%_)))
                                                      (let ((_%hd189811189896%_
                                                             (##car _%e189810189893%_))
                                                            (_%tl189812189898%_
                                                             (##cdr _%e189810189893%_)))
                                                        (let* ((_%expr189901%_
                                                                _%hd189811189896%_)
                                                               (_%props189903%_
                                                                _%tl189812189898%_))
                                                          (if (gx#identifier?
                                                               _%id189891%_)
                                                              (let ((_%bind189905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id189891%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind189905%_
                         _%props189903%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id189891%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr189901%_)
                                           '())))
                         (gx#stx-source _%stx189800%_)))
                      (_%E189803189863%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E189803189863%_))
                                                (_%E189803189863%_)))))
                                      (_%E189803189863%_))))
                              (_%E189803189863%_))))
                      (_%E189803189863%_)))))
          (_%E189802189907%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx189739%_)
        (let* ((_%e189740189753%_ _%stx189739%_)
               (_%E189742189757%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189740189753%_)))
               (_%E189741189796%_
                (lambda ()
                  (if (gx#stx-pair? _%e189740189753%_)
                      (let ((_%e189743189761%_
                             (gx#syntax-e _%e189740189753%_)))
                        (let ((_%hd189744189764%_ (##car _%e189743189761%_))
                              (_%tl189745189766%_ (##cdr _%e189743189761%_)))
                          (if (gx#stx-pair? _%tl189745189766%_)
                              (let ((_%e189746189769%_
                                     (gx#syntax-e _%tl189745189766%_)))
                                (let ((_%hd189747189772%_
                                       (##car _%e189746189769%_))
                                      (_%tl189748189774%_
                                       (##cdr _%e189746189769%_)))
                                  (let ((_%id189777%_ _%hd189747189772%_))
                                    (if (gx#stx-pair? _%tl189748189774%_)
                                        (let ((_%e189749189779%_
                                               (gx#syntax-e
                                                _%tl189748189774%_)))
                                          (let ((_%hd189750189782%_
                                                 (##car _%e189749189779%_))
                                                (_%tl189751189784%_
                                                 (##cdr _%e189749189779%_)))
                                            (let* ((_%binding-id189787%_
                                                    _%hd189750189782%_)
                                                   (_%props189789%_
                                                    _%tl189751189784%_))
                                              (if (and (gx#identifier?
                                                        _%id189777%_)
                                                       (gx#identifier?
                                                        _%binding-id189787%_)
                                                       (gx#stx-list?
                                                        _%props189789%_))
                                                  (let* ((_%eid189791%_
                                                          (gx#stx-e
                                                           _%binding-id189787%_))
                                                         (_%bind189793%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id189777%_
                                                           _%eid189791%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind189793%_
                                                     _%props189789%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id189777%_)
                         (cons _%eid189791%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189742189757%_)))))
                                        (_%E189742189757%_)))))
                              (_%E189742189757%_))))
                      (_%E189742189757%_)))))
          (_%E189741189796%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind189674%_ _%props189675%_)
        (letrec ((_%eval-prop189677%_
                  (lambda (_%prop189737%_)
                    (gx#eval-expression+1 _%prop189737%_))))
          (let _%loop189679%_ ((_%rest189681%_ _%props189675%_)
                               (_%props189682%_ '()))
            (let* ((_%e189683189694%_ _%rest189681%_)
                   (_%E189692189698%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e189683189694%_)))
                   (_%E189685189702%_
                    (lambda ()
                      (if (gx#stx-null? _%e189683189694%_)
                          (if (null? _%props189682%_)
                              '#!void
                              (##structure-set!
                               _%bind189674%_
                               (reverse! _%props189682%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E189692189698%_))))
                   (_%E189684189733%_
                    (lambda ()
                      (if (gx#stx-pair? _%e189683189694%_)
                          (let ((_%e189686189706%_
                                 (gx#syntax-e _%e189683189694%_)))
                            (let ((_%hd189687189709%_
                                   (##car _%e189686189706%_))
                                  (_%tl189688189711%_
                                   (##cdr _%e189686189706%_)))
                              (let ((_%key189714%_ _%hd189687189709%_))
                                (if (gx#stx-pair? _%tl189688189711%_)
                                    (let ((_%e189689189716%_
                                           (gx#syntax-e _%tl189688189711%_)))
                                      (let ((_%hd189690189719%_
                                             (##car _%e189689189716%_))
                                            (_%tl189691189721%_
                                             (##cdr _%e189689189716%_)))
                                        (let* ((_%prop189724%_
                                                _%hd189690189719%_)
                                               (_%rest189726%_
                                                _%tl189691189721%_))
                                          (if (gx#stx-keyword? _%key189714%_)
                                              (let* ((_%key189728%_
                                                      (gx#stx-e _%key189714%_))
                                                     (_%$e189730%_
                                                      _%key189728%_))
                                                (if (eq? 'macro: _%$e189730%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind189674%_
                                                       (if (gx#identifier?
                                                            _%prop189724%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop189724%_)
                                                           (gx#eval-expression+1
                                                            _%prop189724%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop189679%_
                                                       _%rest189726%_
                                                       _%props189682%_))
                                                    (if (eq? 'type:
                                                             _%$e189730%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind189674%_
                                                           (gx#eval-expression+1
                                                            _%prop189724%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop189679%_
                                                           _%rest189726%_
                                                           _%props189682%_))
                                                        (_%loop189679%_
                                                         _%rest189726%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop189724%_)
                                                               (cons _%key189728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props189682%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E189685189702%_)))))
                                    (_%E189685189702%_)))))
                          (_%E189685189702%_)))))
              (_%E189684189733%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx189617%_)
        (let* ((_%e189618189631%_ _%stx189617%_)
               (_%E189620189635%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189618189631%_)))
               (_%E189619189670%_
                (lambda ()
                  (if (gx#stx-pair? _%e189618189631%_)
                      (let ((_%e189621189639%_
                             (gx#syntax-e _%e189618189631%_)))
                        (let ((_%hd189622189642%_ (##car _%e189621189639%_))
                              (_%tl189623189644%_ (##cdr _%e189621189639%_)))
                          (if (gx#stx-pair? _%tl189623189644%_)
                              (let ((_%e189624189647%_
                                     (gx#syntax-e _%tl189623189644%_)))
                                (let ((_%hd189625189650%_
                                       (##car _%e189624189647%_))
                                      (_%tl189626189652%_
                                       (##cdr _%e189624189647%_)))
                                  (let ((_%id189655%_ _%hd189625189650%_))
                                    (if (gx#stx-pair? _%tl189626189652%_)
                                        (let ((_%e189627189657%_
                                               (gx#syntax-e
                                                _%tl189626189652%_)))
                                          (let ((_%hd189628189660%_
                                                 (##car _%e189627189657%_))
                                                (_%tl189629189662%_
                                                 (##cdr _%e189627189657%_)))
                                            (let ((_%expr189665%_
                                                   _%hd189628189660%_))
                                              (if (gx#stx-null?
                                                   _%tl189629189662%_)
                                                  (if (gx#identifier?
                                                       _%id189655%_)
                                                      (let ((_g190831_
                                                             (gx#core-expand-expression+1
                                                              _%expr189665%_)))
                                                        (begin
                                                          (let ((_g190832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g190831_)
                             (##values-length _g190831_)
                             1)))
                    (if (not (##fx= _g190832_ 2))
                        (error "Context expects 2 values" _g190832_)))
                  (let ((_%e-stx189667%_ (##values-ref _g190831_ 0))
                        (_%e189668%_ (##values-ref _g190831_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id189655%_ _%e189668%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id189655%_)
                                   (cons _%e-stx189667%_ '())))
                       (gx#stx-source _%stx189617%_))))))
              (_%E189620189635%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189620189635%_)))))
                                        (_%E189620189635%_)))))
                              (_%E189620189635%_))))
                      (_%E189620189635%_)))))
          (_%E189619189670%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx189561%_)
        (let* ((_%e189562189575%_ _%stx189561%_)
               (_%E189564189579%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189562189575%_)))
               (_%E189563189613%_
                (lambda ()
                  (if (gx#stx-pair? _%e189562189575%_)
                      (let ((_%e189565189583%_
                             (gx#syntax-e _%e189562189575%_)))
                        (let ((_%hd189566189586%_ (##car _%e189565189583%_))
                              (_%tl189567189588%_ (##cdr _%e189565189583%_)))
                          (if (gx#stx-pair? _%tl189567189588%_)
                              (let ((_%e189568189591%_
                                     (gx#syntax-e _%tl189567189588%_)))
                                (let ((_%hd189569189594%_
                                       (##car _%e189568189591%_))
                                      (_%tl189570189596%_
                                       (##cdr _%e189568189591%_)))
                                  (let ((_%id189599%_ _%hd189569189594%_))
                                    (if (gx#stx-pair? _%tl189570189596%_)
                                        (let ((_%e189571189601%_
                                               (gx#syntax-e
                                                _%tl189570189596%_)))
                                          (let ((_%hd189572189604%_
                                                 (##car _%e189571189601%_))
                                                (_%tl189573189606%_
                                                 (##cdr _%e189571189601%_)))
                                            (let ((_%alias-id189609%_
                                                   _%hd189572189604%_))
                                              (if (gx#stx-null?
                                                   _%tl189573189606%_)
                                                  (if (and (gx#identifier?
                                                            _%id189599%_)
                                                           (gx#identifier?
                                                            _%alias-id189609%_))
                                                      (let ((_%alias-id189611%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id189609%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id189599%_
                                                         _%alias-id189611%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id189599%_)
                             (cons _%alias-id189611%_ '())))))
              (_%E189564189579%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E189564189579%_)))))
                                        (_%E189564189579%_)))))
                              (_%E189564189579%_))))
                      (_%E189564189579%_)))))
          (_%E189563189613%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx189504%_ _%wrap?189505%_)
        (let* ((_%e189506189516%_ _%stx189504%_)
               (_%E189508189520%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189506189516%_)))
               (_%E189507189547%_
                (lambda ()
                  (if (gx#stx-pair? _%e189506189516%_)
                      (let ((_%e189509189524%_
                             (gx#syntax-e _%e189506189516%_)))
                        (let ((_%hd189510189527%_ (##car _%e189509189524%_))
                              (_%tl189511189529%_ (##cdr _%e189509189524%_)))
                          (if (gx#stx-pair? _%tl189511189529%_)
                              (let ((_%e189512189532%_
                                     (gx#syntax-e _%tl189511189529%_)))
                                (let ((_%hd189513189535%_
                                       (##car _%e189512189532%_))
                                      (_%tl189514189537%_
                                       (##cdr _%e189512189532%_)))
                                  (let* ((_%hd189540%_ _%hd189513189535%_)
                                         (_%body189542%_ _%tl189514189537%_))
                                    (if (gx#core-bind-values? _%hd189540%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd189540%_)
                                           (let ((_%body189545%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd189540%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx189504%_
                                                               _%body189542%_)
                                                              '()))))
                                             (if _%wrap?189505%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body189545%_)
                                                  (gx#stx-source
                                                   _%stx189504%_))
                                                 _%body189545%_)))
                                         gx#current-expander-context
                                         (let ((__obj190814
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj190814)
                                           __obj190814))
                                        (_%E189508189520%_)))))
                              (_%E189508189520%_))))
                      (_%E189508189520%_)))))
          (_%E189507189547%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx189554%_)
        (let ((_%wrap?189556%_ '#t))
          (gx#core-expand-lambda%__% _%stx189554%_ _%wrap?189556%_))))
    (define gx#core-expand-lambda%
      (lambda _g190833_
        (let ((_g190834_ (##length _g190833_)))
          (cond ((##fx= _g190834_ 1)
                 (apply gx#core-expand-lambda%__0 _g190833_))
                ((##fx= _g190834_ 2)
                 (apply gx#core-expand-lambda%__% _g190833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g190833_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx189468%_)
        (let* ((_%e189469189476%_ _%stx189468%_)
               (_%E189471189480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189469189476%_)))
               (_%E189470189499%_
                (lambda ()
                  (if (gx#stx-pair? _%e189469189476%_)
                      (let ((_%e189472189484%_
                             (gx#syntax-e _%e189469189476%_)))
                        (let ((_%hd189473189487%_ (##car _%e189472189484%_))
                              (_%tl189474189489%_ (##cdr _%e189472189484%_)))
                          (let ((_%clauses189492%_ _%tl189474189489%_))
                            (if (gx#stx-list? _%clauses189492%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause189494%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause189494%_)
                                       (let ((_%$e189496%_
                                              (gx#stx-source
                                               _%clause189494%_)))
                                         (if _%$e189496%_
                                             _%$e189496%_
                                             (gx#stx-source _%stx189468%_))))
                                      '#f))
                                   _%clauses189492%_))
                                 (gx#stx-source _%stx189468%_))
                                (_%E189471189480%_)))))
                      (_%E189471189480%_)))))
          (_%E189470189499%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx189422%_)
        (let* ((_%e189423189433%_ _%stx189422%_)
               (_%E189425189437%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189423189433%_)))
               (_%E189424189464%_
                (lambda ()
                  (if (gx#stx-pair? _%e189423189433%_)
                      (let ((_%e189426189441%_
                             (gx#syntax-e _%e189423189433%_)))
                        (let ((_%hd189427189444%_ (##car _%e189426189441%_))
                              (_%tl189428189446%_ (##cdr _%e189426189441%_)))
                          (if (gx#stx-pair? _%tl189428189446%_)
                              (let ((_%e189429189449%_
                                     (gx#syntax-e _%tl189428189446%_)))
                                (let ((_%hd189430189452%_
                                       (##car _%e189429189449%_))
                                      (_%tl189431189454%_
                                       (##cdr _%e189429189449%_)))
                                  (let* ((_%hd189457%_ _%hd189430189452%_)
                                         (_%body189459%_ _%tl189431189454%_))
                                    (if (gx#core-expand-let-bind? _%hd189457%_)
                                        (let ((_%expressions189461%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd189457%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd189457%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd189457%_
                                                           _%expressions189461%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx189422%_
                         _%body189459%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx189422%_)))
                                           gx#current-expander-context
                                           (let ((__obj190815
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj190815)
                                             __obj190815)))
                                        (_%E189425189437%_)))))
                              (_%E189425189437%_))))
                      (_%E189425189437%_)))))
          (_%E189424189464%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx189367%_ _%form189368%_)
        (let* ((_%e189369189379%_ _%stx189367%_)
               (_%E189371189383%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189369189379%_)))
               (_%E189370189408%_
                (lambda ()
                  (if (gx#stx-pair? _%e189369189379%_)
                      (let ((_%e189372189387%_
                             (gx#syntax-e _%e189369189379%_)))
                        (let ((_%hd189373189390%_ (##car _%e189372189387%_))
                              (_%tl189374189392%_ (##cdr _%e189372189387%_)))
                          (if (gx#stx-pair? _%tl189374189392%_)
                              (let ((_%e189375189395%_
                                     (gx#syntax-e _%tl189374189392%_)))
                                (let ((_%hd189376189398%_
                                       (##car _%e189375189395%_))
                                      (_%tl189377189400%_
                                       (##cdr _%e189375189395%_)))
                                  (let* ((_%hd189403%_ _%hd189376189398%_)
                                         (_%body189405%_ _%tl189377189400%_))
                                    (if (gx#core-expand-let-bind? _%hd189403%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd189403%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form189368%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd189403%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd189403%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx189367%_
                                                               _%body189405%_)
                                                              '())))
                                            (gx#stx-source _%stx189367%_)))
                                         gx#current-expander-context
                                         (let ((__obj190816
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj190816)
                                           __obj190816))
                                        (_%E189371189383%_)))))
                              (_%E189371189383%_))))
                      (_%E189371189383%_)))))
          (_%E189370189408%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx189415%_)
        (let ((_%form189417%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx189415%_ _%form189417%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g190835_
        (let ((_g190836_ (##length _g190835_)))
          (cond ((##fx= _g190836_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g190835_))
                ((##fx= _g190836_ 2)
                 (apply gx#core-expand-letrec-values%__% _g190835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g190835_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx189364%_)
        (gx#core-expand-letrec-values%__% _%stx189364%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx189321%_)
        (if (gx#stx-list? _%stx189321%_)
            (gx#stx-andmap
             (lambda (_%bind189323%_)
               (let* ((_%e189324189334%_ _%bind189323%_)
                      (_%E189326189338%_ (lambda () '#f))
                      (_%E189325189360%_
                       (lambda ()
                         (if (gx#stx-pair? _%e189324189334%_)
                             (let ((_%e189327189342%_
                                    (gx#syntax-e _%e189324189334%_)))
                               (let ((_%hd189328189345%_
                                      (##car _%e189327189342%_))
                                     (_%tl189329189347%_
                                      (##cdr _%e189327189342%_)))
                                 (let ((_%hd189350%_ _%hd189328189345%_))
                                   (if (gx#stx-pair? _%tl189329189347%_)
                                       (let ((_%e189330189352%_
                                              (gx#syntax-e
                                               _%tl189329189347%_)))
                                         (let ((_%hd189331189355%_
                                                (##car _%e189330189352%_))
                                               (_%tl189332189357%_
                                                (##cdr _%e189330189352%_)))
                                           (if (gx#stx-null?
                                                _%tl189332189357%_)
                                               (gx#core-bind-values?
                                                _%hd189350%_)
                                               (_%E189326189338%_))))
                                       (_%E189326189338%_)))))
                             (_%E189326189338%_)))))
                 (_%E189325189360%_)))
             _%stx189321%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind189280%_)
        (let* ((_%e189281189291%_ _%bind189280%_)
               (_%E189283189295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189281189291%_)))
               (_%E189282189317%_
                (lambda ()
                  (if (gx#stx-pair? _%e189281189291%_)
                      (let ((_%e189284189299%_
                             (gx#syntax-e _%e189281189291%_)))
                        (let ((_%hd189285189302%_ (##car _%e189284189299%_))
                              (_%tl189286189304%_ (##cdr _%e189284189299%_)))
                          (if (gx#stx-pair? _%tl189286189304%_)
                              (let ((_%e189287189307%_
                                     (gx#syntax-e _%tl189286189304%_)))
                                (let ((_%hd189288189310%_
                                       (##car _%e189287189307%_))
                                      (_%tl189289189312%_
                                       (##cdr _%e189287189307%_)))
                                  (let ((_%expr189315%_ _%hd189288189310%_))
                                    (if (gx#stx-null? _%tl189289189312%_)
                                        (gx#core-expand-expression
                                         _%expr189315%_)
                                        (_%E189283189295%_)))))
                              (_%E189283189295%_))))
                      (_%E189283189295%_)))))
          (_%E189282189317%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind189239%_)
        (let* ((_%e189240189250%_ _%bind189239%_)
               (_%E189242189254%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189240189250%_)))
               (_%E189241189276%_
                (lambda ()
                  (if (gx#stx-pair? _%e189240189250%_)
                      (let ((_%e189243189258%_
                             (gx#syntax-e _%e189240189250%_)))
                        (let ((_%hd189244189261%_ (##car _%e189243189258%_))
                              (_%tl189245189263%_ (##cdr _%e189243189258%_)))
                          (let ((_%hd189266%_ _%hd189244189261%_))
                            (if (gx#stx-pair? _%tl189245189263%_)
                                (let ((_%e189246189268%_
                                       (gx#syntax-e _%tl189245189263%_)))
                                  (let ((_%hd189247189271%_
                                         (##car _%e189246189268%_))
                                        (_%tl189248189273%_
                                         (##cdr _%e189246189268%_)))
                                    (if (gx#stx-null? _%tl189248189273%_)
                                        (gx#core-bind-values!__0 _%hd189266%_)
                                        (_%E189242189254%_))))
                                (_%E189242189254%_)))))
                      (_%E189242189254%_)))))
          (_%E189241189276%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind189197%_ _%expr189198%_)
        (let* ((_%e189199189209%_ _%bind189197%_)
               (_%E189201189213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189199189209%_)))
               (_%E189200189235%_
                (lambda ()
                  (if (gx#stx-pair? _%e189199189209%_)
                      (let ((_%e189202189217%_
                             (gx#syntax-e _%e189199189209%_)))
                        (let ((_%hd189203189220%_ (##car _%e189202189217%_))
                              (_%tl189204189222%_ (##cdr _%e189202189217%_)))
                          (let ((_%hd189225%_ _%hd189203189220%_))
                            (if (gx#stx-pair? _%tl189204189222%_)
                                (let ((_%e189205189227%_
                                       (gx#syntax-e _%tl189204189222%_)))
                                  (let ((_%hd189206189230%_
                                         (##car _%e189205189227%_))
                                        (_%tl189207189232%_
                                         (##cdr _%e189205189227%_)))
                                    (if (gx#stx-null? _%tl189207189232%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd189225%_)
                                              (cons _%expr189198%_ '()))
                                        (_%E189201189213%_))))
                                (_%E189201189213%_)))))
                      (_%E189201189213%_)))))
          (_%E189200189235%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx189151%_)
        (let* ((_%e189152189162%_ _%stx189151%_)
               (_%E189154189166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189152189162%_)))
               (_%E189153189193%_
                (lambda ()
                  (if (gx#stx-pair? _%e189152189162%_)
                      (let ((_%e189155189170%_
                             (gx#syntax-e _%e189152189162%_)))
                        (let ((_%hd189156189173%_ (##car _%e189155189170%_))
                              (_%tl189157189175%_ (##cdr _%e189155189170%_)))
                          (if (gx#stx-pair? _%tl189157189175%_)
                              (let ((_%e189158189178%_
                                     (gx#syntax-e _%tl189157189175%_)))
                                (let ((_%hd189159189181%_
                                       (##car _%e189158189178%_))
                                      (_%tl189160189183%_
                                       (##cdr _%e189158189178%_)))
                                  (let* ((_%hd189186%_ _%hd189159189181%_)
                                         (_%body189188%_ _%tl189160189183%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd189186%_)
                                        (let ((_%expanders189190%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd189186%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd189186%_
                                              _%expanders189190%_)
                                             (gx#core-expand-local-block
                                              _%stx189151%_
                                              _%body189188%_))
                                           gx#current-expander-context
                                           (let ((__obj190817
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj190817)
                                             __obj190817)))
                                        (_%E189154189166%_)))))
                              (_%E189154189166%_))))
                      (_%E189154189166%_)))))
          (_%E189153189193%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx189100%_)
        (let* ((_%e189101189111%_ _%stx189100%_)
               (_%E189103189115%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189101189111%_)))
               (_%E189102189147%_
                (lambda ()
                  (if (gx#stx-pair? _%e189101189111%_)
                      (let ((_%e189104189119%_
                             (gx#syntax-e _%e189101189111%_)))
                        (let ((_%hd189105189122%_ (##car _%e189104189119%_))
                              (_%tl189106189124%_ (##cdr _%e189104189119%_)))
                          (if (gx#stx-pair? _%tl189106189124%_)
                              (let ((_%e189107189127%_
                                     (gx#syntax-e _%tl189106189124%_)))
                                (let ((_%hd189108189130%_
                                       (##car _%e189107189127%_))
                                      (_%tl189109189132%_
                                       (##cdr _%e189107189127%_)))
                                  (let* ((_%hd189135%_ _%hd189108189130%_)
                                         (_%body189137%_ _%tl189109189132%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd189135%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd189135%_
                                            (make-list
                                             (gx#stx-length _%hd189135%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g189139189142%_
                                                     _%g189140189144%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g189139189142%_
                                               _%g189140189144%_
                                               '#t))
                                            _%hd189135%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd189135%_))
                                           (gx#core-expand-local-block
                                            _%stx189100%_
                                            _%body189137%_))
                                         gx#current-expander-context
                                         (let ((__obj190818
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj190818)
                                           __obj190818))
                                        (_%E189103189115%_)))))
                              (_%E189103189115%_))))
                      (_%E189103189115%_)))))
          (_%E189102189147%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx189057%_)
        (if (gx#stx-list? _%stx189057%_)
            (gx#stx-andmap
             (lambda (_%bind189059%_)
               (let* ((_%e189060189070%_ _%bind189059%_)
                      (_%E189062189074%_ (lambda () '#f))
                      (_%E189061189096%_
                       (lambda ()
                         (if (gx#stx-pair? _%e189060189070%_)
                             (let ((_%e189063189078%_
                                    (gx#syntax-e _%e189060189070%_)))
                               (let ((_%hd189064189081%_
                                      (##car _%e189063189078%_))
                                     (_%tl189065189083%_
                                      (##cdr _%e189063189078%_)))
                                 (let ((_%hd189086%_ _%hd189064189081%_))
                                   (if (gx#stx-pair? _%tl189065189083%_)
                                       (let ((_%e189066189088%_
                                              (gx#syntax-e
                                               _%tl189065189083%_)))
                                         (let ((_%hd189067189091%_
                                                (##car _%e189066189088%_))
                                               (_%tl189068189093%_
                                                (##cdr _%e189066189088%_)))
                                           (if (gx#stx-null?
                                                _%tl189068189093%_)
                                               (gx#identifier? _%hd189086%_)
                                               (_%E189062189074%_))))
                                       (_%E189062189074%_)))))
                             (_%E189062189074%_)))))
                 (_%E189061189096%_)))
             _%stx189057%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind189013%_)
        (let* ((_%e189014189024%_ _%bind189013%_)
               (_%E189016189028%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e189014189024%_)))
               (_%E189015189053%_
                (lambda ()
                  (if (gx#stx-pair? _%e189014189024%_)
                      (let ((_%e189017189032%_
                             (gx#syntax-e _%e189014189024%_)))
                        (let ((_%hd189018189035%_ (##car _%e189017189032%_))
                              (_%tl189019189037%_ (##cdr _%e189017189032%_)))
                          (if (gx#stx-pair? _%tl189019189037%_)
                              (let ((_%e189020189040%_
                                     (gx#syntax-e _%tl189019189037%_)))
                                (let ((_%hd189021189043%_
                                       (##car _%e189020189040%_))
                                      (_%tl189022189045%_
                                       (##cdr _%e189020189040%_)))
                                  (let ((_%expr189048%_ _%hd189021189043%_))
                                    (if (gx#stx-null? _%tl189022189045%_)
                                        (let ((_g190837_
                                               (gx#core-expand-expression+1
                                                _%expr189048%_)))
                                          (begin
                                            (let ((_g190838_
                                                   (if (##values? _g190837_)
                                                       (##values-length
                                                        _g190837_)
                                                       1)))
                                              (if (not (##fx= _g190838_ 2))
                                                  (error "Context expects 2 values"
                                                         _g190838_)))
                                            (let ((_%_189050%_
                                                   (##values-ref _g190837_ 0))
                                                  (_%e189051%_
                                                   (##values-ref _g190837_ 1)))
                                              _%e189051%_)))
                                        (_%E189016189028%_)))))
                              (_%E189016189028%_))))
                      (_%E189016189028%_)))))
          (_%E189015189053%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind188958%_ _%e188959%_ _%rebind?188960%_)
        (let* ((_%e188961188971%_ _%bind188958%_)
               (_%E188963188975%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188961188971%_)))
               (_%E188962188997%_
                (lambda ()
                  (if (gx#stx-pair? _%e188961188971%_)
                      (let ((_%e188964188979%_
                             (gx#syntax-e _%e188961188971%_)))
                        (let ((_%hd188965188982%_ (##car _%e188964188979%_))
                              (_%tl188966188984%_ (##cdr _%e188964188979%_)))
                          (let ((_%id188987%_ _%hd188965188982%_))
                            (if (gx#stx-pair? _%tl188966188984%_)
                                (let ((_%e188967188989%_
                                       (gx#syntax-e _%tl188966188984%_)))
                                  (let ((_%hd188968188992%_
                                         (##car _%e188967188989%_))
                                        (_%tl188969188994%_
                                         (##cdr _%e188967188989%_)))
                                    (if (gx#stx-null? _%tl188969188994%_)
                                        (gx#core-bind-syntax!__1
                                         _%id188987%_
                                         _%e188959%_
                                         _%rebind?188960%_)
                                        (_%E188963188975%_))))
                                (_%E188963188975%_)))))
                      (_%E188963188975%_)))))
          (_%E188962188997%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind189004%_ _%e189005%_)
        (let ((_%rebind?189007%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind189004%_
           _%e189005%_
           _%rebind?189007%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g190839_
        (let ((_g190840_ (##length _g190839_)))
          (cond ((##fx= _g190840_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g190839_))
                ((##fx= _g190840_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g190839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g190839_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx188916%_)
        (let* ((_%e188917188927%_ _%stx188916%_)
               (_%E188919188931%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188917188927%_)))
               (_%E188918188953%_
                (lambda ()
                  (if (gx#stx-pair? _%e188917188927%_)
                      (let ((_%e188920188935%_
                             (gx#syntax-e _%e188917188927%_)))
                        (let ((_%hd188921188938%_ (##car _%e188920188935%_))
                              (_%tl188922188940%_ (##cdr _%e188920188935%_)))
                          (if (gx#stx-pair? _%tl188922188940%_)
                              (let ((_%e188923188943%_
                                     (gx#syntax-e _%tl188922188940%_)))
                                (let ((_%hd188924188946%_
                                       (##car _%e188923188943%_))
                                      (_%tl188925188948%_
                                       (##cdr _%e188923188943%_)))
                                  (let ((_%expr188951%_ _%hd188924188946%_))
                                    (if (gx#stx-null? _%tl188925188948%_)
                                        (gx#core-expand-expression
                                         _%expr188951%_)
                                        (_%E188919188931%_)))))
                              (_%E188919188931%_))))
                      (_%E188919188931%_)))))
          (_%E188918188953%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx188875%_)
        (let* ((_%e188876188886%_ _%stx188875%_)
               (_%E188878188890%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188876188886%_)))
               (_%E188877188912%_
                (lambda ()
                  (if (gx#stx-pair? _%e188876188886%_)
                      (let ((_%e188879188894%_
                             (gx#syntax-e _%e188876188886%_)))
                        (let ((_%hd188880188897%_ (##car _%e188879188894%_))
                              (_%tl188881188899%_ (##cdr _%e188879188894%_)))
                          (if (gx#stx-pair? _%tl188881188899%_)
                              (let ((_%e188882188902%_
                                     (gx#syntax-e _%tl188881188899%_)))
                                (let ((_%hd188883188905%_
                                       (##car _%e188882188902%_))
                                      (_%tl188884188907%_
                                       (##cdr _%e188882188902%_)))
                                  (let ((_%e188910%_ _%hd188883188905%_))
                                    (if (gx#stx-null? _%tl188884188907%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e188910%_)
                                                     '()))
                                         (gx#stx-source _%stx188875%_))
                                        (_%E188878188890%_)))))
                              (_%E188878188890%_))))
                      (_%E188878188890%_)))))
          (_%E188877188912%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx188834%_)
        (let* ((_%e188835188845%_ _%stx188834%_)
               (_%E188837188849%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188835188845%_)))
               (_%E188836188871%_
                (lambda ()
                  (if (gx#stx-pair? _%e188835188845%_)
                      (let ((_%e188838188853%_
                             (gx#syntax-e _%e188835188845%_)))
                        (let ((_%hd188839188856%_ (##car _%e188838188853%_))
                              (_%tl188840188858%_ (##cdr _%e188838188853%_)))
                          (if (gx#stx-pair? _%tl188840188858%_)
                              (let ((_%e188841188861%_
                                     (gx#syntax-e _%tl188840188858%_)))
                                (let ((_%hd188842188864%_
                                       (##car _%e188841188861%_))
                                      (_%tl188843188866%_
                                       (##cdr _%e188841188861%_)))
                                  (let ((_%e188869%_ _%hd188842188864%_))
                                    (if (gx#stx-null? _%tl188843188866%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e188869%_)
                                                     '()))
                                         (gx#stx-source _%stx188834%_))
                                        (_%E188837188849%_)))))
                              (_%E188837188849%_))))
                      (_%E188837188849%_)))))
          (_%E188836188871%_))))
    (define gx#core-expand-call%
      (lambda (_%stx188728%_)
        (letrec ((_%expand-runtime-call188730%_
                  (lambda (_%rator-expr188831%_ _%args188832%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr188831%_
                      (gx#stx-map1 gx#core-expand-expression _%args188832%_))
                     (gx#stx-source _%stx188728%_)))))
          (let* ((_%e188731188741%_ _%stx188728%_)
                 (_%E188733188745%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e188731188741%_)))
                 (_%E188732188827%_
                  (lambda ()
                    (if (gx#stx-pair? _%e188731188741%_)
                        (let ((_%e188734188749%_
                               (gx#syntax-e _%e188731188741%_)))
                          (let ((_%hd188735188752%_ (##car _%e188734188749%_))
                                (_%tl188736188754%_ (##cdr _%e188734188749%_)))
                            (if (gx#stx-pair? _%tl188736188754%_)
                                (let ((_%e188737188757%_
                                       (gx#syntax-e _%tl188736188754%_)))
                                  (let ((_%hd188738188760%_
                                         (##car _%e188737188757%_))
                                        (_%tl188739188762%_
                                         (##cdr _%e188737188757%_)))
                                    (let* ((_%rator188765%_ _%hd188738188760%_)
                                           (_%args188767%_ _%tl188739188762%_))
                                      (if (gx#stx-list? _%args188767%_)
                                          (let* ((_%rator-expr188769%_
                                                  (gx#core-expand-expression
                                                   _%rator188765%_))
                                                 (_%e188770188780%_
                                                  _%rator-expr188769%_)
                                                 (_%E188772188784%_
                                                  (lambda ()
                                                    (_%expand-runtime-call188730%_
                                                     _%rator-expr188769%_
                                                     _%args188767%_)))
                                                 (_%E188771188823%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e188770188780%_)
                                                        (let ((_%e188773188788%_
                                                               (gx#syntax-e
                                                                _%e188770188780%_)))
                                                          (let ((_%hd188774188791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e188773188788%_))
                        (_%tl188775188793%_ (##cdr _%e188773188788%_)))
                    (if (and (gx#identifier? _%hd188774188791%_)
                             (gx#core-identifier=? _%hd188774188791%_ '%#ref))
                        (if (gx#stx-pair? _%tl188775188793%_)
                            (let ((_%e188776188796%_
                                   (gx#syntax-e _%tl188775188793%_)))
                              (let ((_%hd188777188799%_
                                     (##car _%e188776188796%_))
                                    (_%tl188778188801%_
                                     (##cdr _%e188776188796%_)))
                                (let ((_%id188804%_ _%hd188777188799%_))
                                  (if (gx#stx-null? _%tl188778188801%_)
                                      (let ((_%$e188806%_
                                             (gx#resolve-identifier__0
                                              _%id188804%_)))
                                        (if _%$e188806%_
                                            ((lambda (_%bind188809%_)
                                               (let _%again188811%_ ((_%bind188813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind188809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e188815%_
                                                        (if (##structure-instance-of?
                                                             _%bind188813%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind188813%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e188815%_
                                                       ((lambda (_%macro188818%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro188818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args188767%_)
                    (gx#stx-source _%stx188728%_))))
                _%$e188815%_)
               (if (##structure-direct-instance-of?
                    _%bind188813%_
                    'gx#import-binding::t)
                   (_%again188811%_
                    (##unchecked-structure-ref _%bind188813%_ '5 '#f '#f))
                   (_%expand-runtime-call188730%_
                    _%rator-expr188769%_
                    _%args188767%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e188806%_)
                                            (_%expand-runtime-call188730%_
                                             _%rator-expr188769%_
                                             _%args188767%_)))
                                      (_%E188772188784%_)))))
                            (_%E188772188784%_))
                        (_%E188772188784%_))))
                (_%E188772188784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E188771188823%_))
                                          (_%E188733188745%_)))))
                                (_%E188733188745%_))))
                        (_%E188733188745%_)))))
            (_%E188732188827%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx188661%_)
        (let* ((_%e188662188678%_ _%stx188661%_)
               (_%E188664188682%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188662188678%_)))
               (_%E188663188724%_
                (lambda ()
                  (if (gx#stx-pair? _%e188662188678%_)
                      (let ((_%e188665188686%_
                             (gx#syntax-e _%e188662188678%_)))
                        (let ((_%hd188666188689%_ (##car _%e188665188686%_))
                              (_%tl188667188691%_ (##cdr _%e188665188686%_)))
                          (if (gx#stx-pair? _%tl188667188691%_)
                              (let ((_%e188668188694%_
                                     (gx#syntax-e _%tl188667188691%_)))
                                (let ((_%hd188669188697%_
                                       (##car _%e188668188694%_))
                                      (_%tl188670188699%_
                                       (##cdr _%e188668188694%_)))
                                  (let ((_%test188702%_ _%hd188669188697%_))
                                    (if (gx#stx-pair? _%tl188670188699%_)
                                        (let ((_%e188671188704%_
                                               (gx#syntax-e
                                                _%tl188670188699%_)))
                                          (let ((_%hd188672188707%_
                                                 (##car _%e188671188704%_))
                                                (_%tl188673188709%_
                                                 (##cdr _%e188671188704%_)))
                                            (let ((_%K188712%_
                                                   _%hd188672188707%_))
                                              (if (gx#stx-pair?
                                                   _%tl188673188709%_)
                                                  (let ((_%e188674188714%_
                                                         (gx#syntax-e
                                                          _%tl188673188709%_)))
                                                    (let ((_%hd188675188717%_
                                                           (##car _%e188674188714%_))
                                                          (_%tl188676188719%_
                                                           (##cdr _%e188674188714%_)))
                                                      (let ((_%E188722%_
                                                             _%hd188675188717%_))
                                                        (if (gx#stx-null?
                                                             _%tl188676188719%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test188702%_)
                                 (cons (gx#core-expand-expression _%K188712%_)
                                       (cons (gx#core-expand-expression
                                              _%E188722%_)
                                             '()))))
                     (gx#stx-source _%stx188661%_))
                    (_%E188664188682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188664188682%_)))))
                                        (_%E188664188682%_)))))
                              (_%E188664188682%_))))
                      (_%E188664188682%_)))))
          (_%E188663188724%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx188620%_)
        (let* ((_%e188621188631%_ _%stx188620%_)
               (_%E188623188635%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188621188631%_)))
               (_%E188622188657%_
                (lambda ()
                  (if (gx#stx-pair? _%e188621188631%_)
                      (let ((_%e188624188639%_
                             (gx#syntax-e _%e188621188631%_)))
                        (let ((_%hd188625188642%_ (##car _%e188624188639%_))
                              (_%tl188626188644%_ (##cdr _%e188624188639%_)))
                          (if (gx#stx-pair? _%tl188626188644%_)
                              (let ((_%e188627188647%_
                                     (gx#syntax-e _%tl188626188644%_)))
                                (let ((_%hd188628188650%_
                                       (##car _%e188627188647%_))
                                      (_%tl188629188652%_
                                       (##cdr _%e188627188647%_)))
                                  (let ((_%id188655%_ _%hd188628188650%_))
                                    (if (gx#stx-null? _%tl188629188652%_)
                                        (if (gx#identifier? _%id188655%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id188655%_
                                                          _%stx188620%_)
                                                         '()))
                                             (gx#stx-source _%stx188620%_))
                                            (_%E188623188635%_))
                                        (_%E188623188635%_)))))
                              (_%E188623188635%_))))
                      (_%E188623188635%_)))))
          (_%E188622188657%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx188566%_)
        (let* ((_%e188567188580%_ _%stx188566%_)
               (_%E188569188584%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188567188580%_)))
               (_%E188568188616%_
                (lambda ()
                  (if (gx#stx-pair? _%e188567188580%_)
                      (let ((_%e188570188588%_
                             (gx#syntax-e _%e188567188580%_)))
                        (let ((_%hd188571188591%_ (##car _%e188570188588%_))
                              (_%tl188572188593%_ (##cdr _%e188570188588%_)))
                          (if (gx#stx-pair? _%tl188572188593%_)
                              (let ((_%e188573188596%_
                                     (gx#syntax-e _%tl188572188593%_)))
                                (let ((_%hd188574188599%_
                                       (##car _%e188573188596%_))
                                      (_%tl188575188601%_
                                       (##cdr _%e188573188596%_)))
                                  (let ((_%id188604%_ _%hd188574188599%_))
                                    (if (gx#stx-pair? _%tl188575188601%_)
                                        (let ((_%e188576188606%_
                                               (gx#syntax-e
                                                _%tl188575188601%_)))
                                          (let ((_%hd188577188609%_
                                                 (##car _%e188576188606%_))
                                                (_%tl188578188611%_
                                                 (##cdr _%e188576188606%_)))
                                            (let ((_%expr188614%_
                                                   _%hd188577188609%_))
                                              (if (gx#stx-null?
                                                   _%tl188578188611%_)
                                                  (if (gx#identifier?
                                                       _%id188604%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id188604%_
                            _%stx188566%_)
                           (cons (gx#core-expand-expression _%expr188614%_)
                                 '())))
               (gx#stx-source _%stx188566%_))
              (_%E188569188584%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E188569188584%_)))))
                                        (_%E188569188584%_)))))
                              (_%E188569188584%_))))
                      (_%E188569188584%_)))))
          (_%E188568188616%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx188411%_)
        (letrec ((_%generate188413%_
                  (lambda (_%body188443%_)
                    (let _%lp188445%_ ((_%rest188447%_ _%body188443%_)
                                       (_%ns188448%_
                                        (gx#core-context-namespace__0))
                                       (_%r188449%_ '()))
                      (let* ((_%e188450188465%_ _%rest188447%_)
                             (_%E188463188469%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e188450188465%_)))
                             (_%E188459188473%_
                              (lambda ()
                                (if (gx#stx-null? _%e188450188465%_)
                                    (reverse _%r188449%_)
                                    (_%E188463188469%_))))
                             (_%E188452188530%_
                              (lambda ()
                                (if (gx#stx-pair? _%e188450188465%_)
                                    (let ((_%e188460188477%_
                                           (gx#syntax-e _%e188450188465%_)))
                                      (let ((_%hd188461188480%_
                                             (##car _%e188460188477%_))
                                            (_%tl188462188482%_
                                             (##cdr _%e188460188477%_)))
                                        (let* ((_%hd188485%_
                                                _%hd188461188480%_)
                                               (_%rest188487%_
                                                _%tl188462188482%_))
                                          (if (gx#identifier? _%hd188485%_)
                                              (_%lp188445%_
                                               _%rest188487%_
                                               _%ns188448%_
                                               (cons (cons _%hd188485%_
                                                           (cons (if _%ns188448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd188485%_
                              _%ns188448%_
                              '"#"
                              _%hd188485%_)
                             _%hd188485%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r188449%_))
                                              (let* ((_%e188488188498%_
                                                      _%hd188485%_)
                                                     (_%E188490188502%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e188488188498%_)))
                                                     (_%E188489188526%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e188488188498%_)
                                                            (let ((_%e188491188506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e188488188498%_)))
                      (let ((_%hd188492188509%_ (##car _%e188491188506%_))
                            (_%tl188493188511%_ (##cdr _%e188491188506%_)))
                        (let ((_%id188514%_ _%hd188492188509%_))
                          (if (gx#stx-pair? _%tl188493188511%_)
                              (let ((_%e188494188516%_
                                     (gx#syntax-e _%tl188493188511%_)))
                                (let ((_%hd188495188519%_
                                       (##car _%e188494188516%_))
                                      (_%tl188496188521%_
                                       (##cdr _%e188494188516%_)))
                                  (let ((_%eid188524%_ _%hd188495188519%_))
                                    (if (gx#stx-null? _%tl188496188521%_)
                                        (if (and (gx#identifier? _%id188514%_)
                                                 (gx#identifier?
                                                  _%eid188524%_))
                                            (_%lp188445%_
                                             _%rest188487%_
                                             _%ns188448%_
                                             (cons (cons _%id188514%_
                                                         (cons _%eid188524%_
                                                               '()))
                                                   _%r188449%_))
                                            (_%E188490188502%_))
                                        (_%E188490188502%_)))))
                              (_%E188490188502%_)))))
                    (_%E188490188502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E188489188526%_))))))
                                    (_%E188459188473%_))))
                             (_%E188451188562%_
                              (lambda ()
                                (if (gx#stx-pair? _%e188450188465%_)
                                    (let ((_%e188453188534%_
                                           (gx#syntax-e _%e188450188465%_)))
                                      (let ((_%hd188454188537%_
                                             (##car _%e188453188534%_))
                                            (_%tl188455188539%_
                                             (##cdr _%e188453188534%_)))
                                        (if (eq? (gx#stx-e _%hd188454188537%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl188455188539%_)
                                                (let ((_%e188456188542%_
                                                       (gx#syntax-e
                                                        _%tl188455188539%_)))
                                                  (let ((_%hd188457188545%_
                                                         (##car _%e188456188542%_))
                                                        (_%tl188458188547%_
                                                         (##cdr _%e188456188542%_)))
                                                    (let* ((_%ns188550%_
                                                            _%hd188457188545%_)
                                                           (_%rest188552%_
                                                            _%tl188458188547%_)
                                                           (_%ns188560%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns188550%_)
                        (symbol->string (gx#stx-e _%ns188550%_))
                        (if (or (gx#stx-string? _%ns188550%_)
                                (gx#stx-false? _%ns188550%_))
                            (gx#stx-e _%ns188550%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx188411%_
                             _%ns188550%_)))))
              (_%lp188445%_ _%rest188552%_ _%ns188560%_ _%r188449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E188452188530%_))
                                            (_%E188452188530%_))))
                                    (_%E188452188530%_)))))
                        (_%E188451188562%_))))))
          (let* ((_%e188414188421%_ _%stx188411%_)
                 (_%E188416188425%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e188414188421%_)))
                 (_%E188415188439%_
                  (lambda ()
                    (if (gx#stx-pair? _%e188414188421%_)
                        (let ((_%e188417188429%_
                               (gx#syntax-e _%e188414188421%_)))
                          (let ((_%hd188418188432%_ (##car _%e188417188429%_))
                                (_%tl188419188434%_ (##cdr _%e188417188429%_)))
                            (let ((_%body188437%_ _%tl188419188434%_))
                              (if (gx#stx-list? _%body188437%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate188413%_ _%body188437%_))
                                  (_%E188416188425%_)))))
                        (_%E188416188425%_)))))
            (_%E188415188439%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx188368%_)
        (let* ((_%e188369188379%_ _%stx188368%_)
               (_%E188371188383%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188369188379%_)))
               (_%E188370188407%_
                (lambda ()
                  (if (gx#stx-pair? _%e188369188379%_)
                      (let ((_%e188372188387%_
                             (gx#syntax-e _%e188369188379%_)))
                        (let ((_%hd188373188390%_ (##car _%e188372188387%_))
                              (_%tl188374188392%_ (##cdr _%e188372188387%_)))
                          (if (gx#stx-pair? _%tl188374188392%_)
                              (let ((_%e188375188395%_
                                     (gx#syntax-e _%tl188374188392%_)))
                                (let ((_%hd188376188398%_
                                       (##car _%e188375188395%_))
                                      (_%tl188377188400%_
                                       (##cdr _%e188375188395%_)))
                                  (let* ((_%hd188403%_ _%hd188376188398%_)
                                         (_%body188405%_ _%tl188377188400%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd188403%_)
                                             (gx#stx-list? _%body188405%_)
                                             (not (gx#stx-null?
                                                   _%body188405%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd188403%_)
                                         _%body188405%_)
                                        (_%E188371188383%_)))))
                              (_%E188371188383%_))))
                      (_%E188371188383%_)))))
          (_%E188370188407%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx188304%_)
        (letrec ((_%generate188306%_
                  (lambda (_%clause188336%_)
                    (let* ((_%e188337188344%_ _%clause188336%_)
                           (_%E188339188348%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx188304%_
                               _%clause188336%_)))
                           (_%E188338188364%_
                            (lambda ()
                              (if (gx#stx-pair? _%e188337188344%_)
                                  (let ((_%e188340188352%_
                                         (gx#syntax-e _%e188337188344%_)))
                                    (let ((_%hd188341188355%_
                                           (##car _%e188340188352%_))
                                          (_%tl188342188357%_
                                           (##cdr _%e188340188352%_)))
                                      (let* ((_%hd188360%_ _%hd188341188355%_)
                                             (_%body188362%_
                                              _%tl188342188357%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd188360%_)
                                                 (gx#stx-list? _%body188362%_)
                                                 (not (gx#stx-null?
                                                       _%body188362%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd188360%_)
                                                   _%body188362%_)
                                             (gx#stx-source _%clause188336%_))
                                            (_%E188339188348%_)))))
                                  (_%E188339188348%_)))))
                      (_%E188338188364%_)))))
          (let* ((_%e188307188314%_ _%stx188304%_)
                 (_%E188309188318%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e188307188314%_)))
                 (_%E188308188332%_
                  (lambda ()
                    (if (gx#stx-pair? _%e188307188314%_)
                        (let ((_%e188310188322%_
                               (gx#syntax-e _%e188307188314%_)))
                          (let ((_%hd188311188325%_ (##car _%e188310188322%_))
                                (_%tl188312188327%_ (##cdr _%e188310188322%_)))
                            (let ((_%clauses188330%_ _%tl188312188327%_))
                              (if (gx#stx-list? _%clauses188330%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate188306%_
                                    _%clauses188330%_))
                                  (_%E188309188318%_)))))
                        (_%E188309188318%_)))))
            (_%E188308188332%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx188205%_ _%form188206%_)
        (letrec ((_%generate188208%_
                  (lambda (_%bind188251%_)
                    (let* ((_%e188252188262%_ _%bind188251%_)
                           (_%E188254188266%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx188205%_
                               _%bind188251%_)))
                           (_%E188253188290%_
                            (lambda ()
                              (if (gx#stx-pair? _%e188252188262%_)
                                  (let ((_%e188255188270%_
                                         (gx#syntax-e _%e188252188262%_)))
                                    (let ((_%hd188256188273%_
                                           (##car _%e188255188270%_))
                                          (_%tl188257188275%_
                                           (##cdr _%e188255188270%_)))
                                      (let ((_%ids188278%_ _%hd188256188273%_))
                                        (if (gx#stx-pair? _%tl188257188275%_)
                                            (let ((_%e188258188280%_
                                                   (gx#syntax-e
                                                    _%tl188257188275%_)))
                                              (let ((_%hd188259188283%_
                                                     (##car _%e188258188280%_))
                                                    (_%tl188260188285%_
                                                     (##cdr _%e188258188280%_)))
                                                (let ((_%expr188288%_
                                                       _%hd188259188283%_))
                                                  (if (gx#stx-null?
                                                       _%tl188260188285%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids188278%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids188278%_)
                        (cons _%expr188288%_ '()))
                  (_%E188254188266%_))
              (_%E188254188266%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E188254188266%_)))))
                                  (_%E188254188266%_)))))
                      (_%E188253188290%_)))))
          (let* ((_%e188209188219%_ _%stx188205%_)
                 (_%E188211188223%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e188209188219%_)))
                 (_%E188210188247%_
                  (lambda ()
                    (if (gx#stx-pair? _%e188209188219%_)
                        (let ((_%e188212188227%_
                               (gx#syntax-e _%e188209188219%_)))
                          (let ((_%hd188213188230%_ (##car _%e188212188227%_))
                                (_%tl188214188232%_ (##cdr _%e188212188227%_)))
                            (if (gx#stx-pair? _%tl188214188232%_)
                                (let ((_%e188215188235%_
                                       (gx#syntax-e _%tl188214188232%_)))
                                  (let ((_%hd188216188238%_
                                         (##car _%e188215188235%_))
                                        (_%tl188217188240%_
                                         (##cdr _%e188215188235%_)))
                                    (let* ((_%hd188243%_ _%hd188216188238%_)
                                           (_%body188245%_ _%tl188217188240%_))
                                      (if (and (gx#stx-list? _%hd188243%_)
                                               (gx#stx-list? _%body188245%_)
                                               (not (gx#stx-null?
                                                     _%body188245%_)))
                                          (gx#core-cons*
                                           _%form188206%_
                                           (gx#stx-map1
                                            _%generate188208%_
                                            _%hd188243%_)
                                           _%body188245%_)
                                          (_%E188211188223%_)))))
                                (_%E188211188223%_))))
                        (_%E188211188223%_)))))
            (_%E188210188247%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx188297%_)
        (let ((_%form188299%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx188297%_ _%form188299%_))))
    (define gx#macro-expand-let-values
      (lambda _g190841_
        (let ((_g190842_ (##length _g190841_)))
          (cond ((##fx= _g190842_ 1)
                 (apply gx#macro-expand-let-values__0 _g190841_))
                ((##fx= _g190842_ 2)
                 (apply gx#macro-expand-let-values__% _g190841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g190841_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx188202%_)
        (gx#macro-expand-let-values__% _%stx188202%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx188200%_)
        (gx#macro-expand-let-values__% _%stx188200%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx188091%_)
        (let* ((_%e188092188118%_ _%stx188091%_)
               (_%E188104188122%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e188092188118%_)))
               (_%E188094188164%_
                (lambda ()
                  (if (gx#stx-pair? _%e188092188118%_)
                      (let ((_%e188105188126%_
                             (gx#syntax-e _%e188092188118%_)))
                        (let ((_%hd188106188129%_ (##car _%e188105188126%_))
                              (_%tl188107188131%_ (##cdr _%e188105188126%_)))
                          (if (gx#stx-pair? _%tl188107188131%_)
                              (let ((_%e188108188134%_
                                     (gx#syntax-e _%tl188107188131%_)))
                                (let ((_%hd188109188137%_
                                       (##car _%e188108188134%_))
                                      (_%tl188110188139%_
                                       (##cdr _%e188108188134%_)))
                                  (let ((_%test188142%_ _%hd188109188137%_))
                                    (if (gx#stx-pair? _%tl188110188139%_)
                                        (let ((_%e188111188144%_
                                               (gx#syntax-e
                                                _%tl188110188139%_)))
                                          (let ((_%hd188112188147%_
                                                 (##car _%e188111188144%_))
                                                (_%tl188113188149%_
                                                 (##cdr _%e188111188144%_)))
                                            (let ((_%K188152%_
                                                   _%hd188112188147%_))
                                              (if (gx#stx-pair?
                                                   _%tl188113188149%_)
                                                  (let ((_%e188114188154%_
                                                         (gx#syntax-e
                                                          _%tl188113188149%_)))
                                                    (let ((_%hd188115188157%_
                                                           (##car _%e188114188154%_))
                                                          (_%tl188116188159%_
                                                           (##cdr _%e188114188154%_)))
                                                      (let ((_%E188162%_
                                                             _%hd188115188157%_))
                                                        (if (gx#stx-null?
                                                             _%tl188116188159%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test188142%_
                                                             _%K188152%_
                                                             _%E188162%_)
                                                            (_%E188104188122%_)))))
                                                  (_%E188104188122%_)))))
                                        (_%E188104188122%_)))))
                              (_%E188104188122%_))))
                      (_%E188104188122%_))))
               (_%E188093188196%_
                (lambda ()
                  (if (gx#stx-pair? _%e188092188118%_)
                      (let ((_%e188095188168%_
                             (gx#syntax-e _%e188092188118%_)))
                        (let ((_%hd188096188171%_ (##car _%e188095188168%_))
                              (_%tl188097188173%_ (##cdr _%e188095188168%_)))
                          (if (gx#stx-pair? _%tl188097188173%_)
                              (let ((_%e188098188176%_
                                     (gx#syntax-e _%tl188097188173%_)))
                                (let ((_%hd188099188179%_
                                       (##car _%e188098188176%_))
                                      (_%tl188100188181%_
                                       (##cdr _%e188098188176%_)))
                                  (let ((_%test188184%_ _%hd188099188179%_))
                                    (if (gx#stx-pair? _%tl188100188181%_)
                                        (let ((_%e188101188186%_
                                               (gx#syntax-e
                                                _%tl188100188181%_)))
                                          (let ((_%hd188102188189%_
                                                 (##car _%e188101188186%_))
                                                (_%tl188103188191%_
                                                 (##cdr _%e188101188186%_)))
                                            (let ((_%K188194%_
                                                   _%hd188102188189%_))
                                              (if (gx#stx-null?
                                                   _%tl188103188191%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test188184%_
                                                   _%K188194%_
                                                   '#!void)
                                                  (_%E188094188164%_)))))
                                        (_%E188094188164%_)))))
                              (_%E188094188164%_))))
                      (_%E188094188164%_)))))
          (_%E188093188196%_))))
    (define gx#free-identifier=?
      (lambda (_%xid188076%_ _%yid188077%_)
        (let ((_%xe188079%_ (gx#resolve-identifier__0 _%xid188076%_))
              (_%ye188080%_ (gx#resolve-identifier__0 _%yid188077%_)))
          (if (and _%xe188079%_ _%ye188080%_)
              (let ((_%$e188083%_ (eq? _%xe188079%_ _%ye188080%_)))
                (if _%$e188083%_
                    _%$e188083%_
                    (if (##structure-instance-of? _%xe188079%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye188080%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe188079%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye188080%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe188079%_ _%ye188080%_)
                  '#f
                  (gx#stx-eq? _%xid188076%_ _%yid188077%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid188057%_ _%yid188058%_)
        (letrec ((_%context188060%_
                  (lambda (_%e188074%_)
                    (if (##structure-direct-instance-of?
                         _%e188074%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e188074%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks188061%_
                  (lambda (_%e188069%_)
                    (if (symbol? _%e188069%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e188069%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e188069%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e188069%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap188062%_
                  (lambda (_%e188067%_)
                    (if (symbol? _%e188067%_)
                        _%e188067%_
                        (gx#syntax-local-unwrap _%e188067%_)))))
          (let ((_%x188064%_ (_%unwrap188062%_ _%xid188057%_))
                (_%y188065%_ (_%unwrap188062%_ _%yid188058%_)))
            (if (gx#stx-eq? _%x188064%_ _%y188065%_)
                (if (eq? (_%context188060%_ _%x188064%_)
                         (_%context188060%_ _%y188065%_))
                    (equal? (_%marks188061%_ _%x188064%_)
                            (_%marks188061%_ _%y188065%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx188055%_)
        (if (gx#identifier? _%stx188055%_)
            (gx#core-identifier=? _%stx188055%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx188053%_)
        (if (gx#identifier? _%stx188053%_)
            (gx#core-identifier=? _%stx188053%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx187996%_ _%where187997%_)
        (let _%lp187999%_ ((_%rest188001%_ (gx#syntax->list _%stx187996%_)))
          (let* ((_%rest188002188010%_ _%rest188001%_)
                 (_%else188004188018%_ (lambda () '#t))
                 (_%K188006188031%_
                  (lambda (_%rest188021%_ _%hd188022%_)
                    (if (gx#identifier? _%hd188022%_)
                        (if (__find (lambda (_%g188024188026%_)
                                      (gx#bound-identifier=?
                                       _%g188024188026%_
                                       _%hd188022%_))
                                    _%rest188021%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where187997%_
                             _%hd188022%_)
                            (_%lp187999%_ _%rest188021%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where187997%_
                         _%hd188022%_)))))
            (if (pair? _%rest188002188010%_)
                (let ((_%hd188007188034%_ (##car _%rest188002188010%_))
                      (_%tl188008188036%_ (##cdr _%rest188002188010%_)))
                  (let* ((_%hd188039%_ _%hd188007188034%_)
                         (_%rest188041%_ _%tl188008188036%_))
                    (_%K188006188031%_ _%rest188041%_ _%hd188039%_)))
                (_%else188004188018%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx188046%_)
        (let ((_%where188048%_ _%stx188046%_))
          (gx#check-duplicate-identifiers__% _%stx188046%_ _%where188048%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g190843_
        (let ((_g190844_ (##length _g190843_)))
          (cond ((##fx= _g190844_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g190843_))
                ((##fx= _g190844_ 2)
                 (apply gx#check-duplicate-identifiers__% _g190843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g190843_))))))
    (define gx#core-bind-values?
      (lambda (_%stx187988%_)
        (gx#stx-andmap
         (lambda (_%x187990%_)
           (let ((_%$e187992%_ (gx#identifier? _%x187990%_)))
             (if _%$e187992%_ _%$e187992%_ (gx#stx-false? _%x187990%_))))
         _%stx187988%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx187952%_ _%rebind?187953%_ _%phi187954%_ _%ctx187955%_)
        (gx#stx-for-each1
         (lambda (_%id187957%_)
           (if (gx#identifier? _%id187957%_)
               (gx#core-bind-runtime!__%
                _%id187957%_
                _%rebind?187953%_
                _%phi187954%_
                _%ctx187955%_)
               '#!void))
         _%stx187952%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx187962%_)
        (let* ((_%rebind?187964%_ '#f)
               (_%phi187966%_ (gx#current-expander-phi))
               (_%ctx187968%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx187962%_
           _%rebind?187964%_
           _%phi187966%_
           _%ctx187968%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx187970%_ _%rebind?187971%_)
        (let* ((_%phi187973%_ (gx#current-expander-phi))
               (_%ctx187975%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx187970%_
           _%rebind?187971%_
           _%phi187973%_
           _%ctx187975%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx187977%_ _%rebind?187978%_ _%phi187979%_)
        (let ((_%ctx187981%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx187977%_
           _%rebind?187978%_
           _%phi187979%_
           _%ctx187981%_))))
    (define gx#core-bind-values!
      (lambda _g190845_
        (let ((_g190846_ (##length _g190845_)))
          (cond ((##fx= _g190846_ 1) (apply gx#core-bind-values!__0 _g190845_))
                ((##fx= _g190846_ 2) (apply gx#core-bind-values!__1 _g190845_))
                ((##fx= _g190846_ 3) (apply gx#core-bind-values!__2 _g190845_))
                ((##fx= _g190846_ 4) (apply gx#core-bind-values!__% _g190845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g190845_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx187947%_)
        (gx#stx-map1
         (lambda (_%x187949%_)
           (if (gx#identifier? _%x187949%_)
               (gx#core-quote-syntax__0 _%x187949%_)
               '#f))
         _%stx187947%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx187940%_)
        (if (gx#identifier? _%stx187940%_)
            (let* ((_%bind187942%_ (gx#resolve-identifier__0 _%stx187940%_))
                   (_%$e187944%_ (not _%bind187942%_)))
              (if _%$e187944%_
                  _%$e187944%_
                  (##structure-instance-of?
                   _%bind187942%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id187929%_ _%form187930%_)
        (let ((_%bind187932%_ (gx#resolve-identifier__0 _%id187929%_)))
          (if (##structure-instance-of? _%bind187932%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id187929%_)
              (if (not _%bind187932%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id187929%_)))
                      (gx#core-quote-syntax__0 _%id187929%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form187930%_
                       _%id187929%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form187930%_
                   _%id187929%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id187884%_ _%rebind?187885%_ _%phi187886%_ _%ctx187887%_)
        (let* ((_%key187889%_ (gx#core-identifier-key _%id187884%_))
               (_%eid187891%_
                (gx#make-binding-id__%
                 _%key187889%_
                 '#f
                 _%phi187886%_
                 _%ctx187887%_))
               (_%bind187897%_
                (if (##structure-instance-of?
                     _%ctx187887%_
                     'gx#module-context::t)
                    (let ((__obj190822
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
                       __obj190822
                       _%eid187891%_
                       _%key187889%_
                       _%phi187886%_
                       _%ctx187887%_)
                      __obj190822)
                    (if (##structure-instance-of?
                         _%ctx187887%_
                         'gx#top-context::t)
                        (let ((__obj190821
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj190821
                           _%eid187891%_
                           _%key187889%_
                           _%phi187886%_)
                          __obj190821)
                        (if (##structure-instance-of?
                             _%ctx187887%_
                             'gx#local-context::t)
                            (let ((__obj190820
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj190820
                               _%eid187891%_
                               _%key187889%_
                               _%phi187886%_)
                              __obj190820)
                            (let ((__obj190819
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj190819
                               _%eid187891%_
                               _%key187889%_
                               _%phi187886%_)
                              __obj190819))))))
          (gx#bind-identifier!__%
           _%id187884%_
           _%bind187897%_
           _%rebind?187885%_
           _%phi187886%_
           _%ctx187887%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id187903%_)
        (let* ((_%rebind?187905%_ '#f)
               (_%phi187907%_ (gx#current-expander-phi))
               (_%ctx187909%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id187903%_
           _%rebind?187905%_
           _%phi187907%_
           _%ctx187909%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id187911%_ _%rebind?187912%_)
        (let* ((_%phi187914%_ (gx#current-expander-phi))
               (_%ctx187916%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id187911%_
           _%rebind?187912%_
           _%phi187914%_
           _%ctx187916%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id187918%_ _%rebind?187919%_ _%phi187920%_)
        (let ((_%ctx187922%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id187918%_
           _%rebind?187919%_
           _%phi187920%_
           _%ctx187922%_))))
    (define gx#core-bind-runtime!
      (lambda _g190847_
        (let ((_g190848_ (##length _g190847_)))
          (cond ((##fx= _g190848_ 1)
                 (apply gx#core-bind-runtime!__0 _g190847_))
                ((##fx= _g190848_ 2)
                 (apply gx#core-bind-runtime!__1 _g190847_))
                ((##fx= _g190848_ 3)
                 (apply gx#core-bind-runtime!__2 _g190847_))
                ((##fx= _g190848_ 4)
                 (apply gx#core-bind-runtime!__% _g190847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g190847_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id187836%_
               _%eid187837%_
               _%rebind?187838%_
               _%phi187839%_
               _%ctx187840%_)
        (let* ((_%key187842%_ (gx#core-identifier-key _%id187836%_))
               (_%bind187847%_
                (if (##structure-instance-of?
                     _%ctx187840%_
                     'gx#module-context::t)
                    (let ((__obj190825
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
                       __obj190825
                       _%eid187837%_
                       _%key187842%_
                       _%phi187839%_
                       _%ctx187840%_)
                      __obj190825)
                    (if (##structure-instance-of?
                         _%ctx187840%_
                         'gx#top-context::t)
                        (let ((__obj190824
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj190824
                           _%eid187837%_
                           _%key187842%_
                           _%phi187839%_)
                          __obj190824)
                        (let ((__obj190823
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj190823
                           _%eid187837%_
                           _%key187842%_
                           _%phi187839%_)
                          __obj190823)))))
          (gx#bind-identifier!__%
           _%id187836%_
           _%bind187847%_
           _%rebind?187838%_
           _%phi187839%_
           _%ctx187840%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id187853%_ _%eid187854%_)
        (let* ((_%rebind?187856%_ '#f)
               (_%phi187858%_ (gx#current-expander-phi))
               (_%ctx187860%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id187853%_
           _%eid187854%_
           _%rebind?187856%_
           _%phi187858%_
           _%ctx187860%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id187862%_ _%eid187863%_ _%rebind?187864%_)
        (let* ((_%phi187866%_ (gx#current-expander-phi))
               (_%ctx187868%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id187862%_
           _%eid187863%_
           _%rebind?187864%_
           _%phi187866%_
           _%ctx187868%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id187870%_ _%eid187871%_ _%rebind?187872%_ _%phi187873%_)
        (let ((_%ctx187875%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id187870%_
           _%eid187871%_
           _%rebind?187872%_
           _%phi187873%_
           _%ctx187875%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g190849_
        (let ((_g190850_ (##length _g190849_)))
          (cond ((##fx= _g190850_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g190849_))
                ((##fx= _g190850_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g190849_))
                ((##fx= _g190850_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g190849_))
                ((##fx= _g190850_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g190849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g190849_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id187796%_
               _%eid187797%_
               _%rebind?187798%_
               _%phi187799%_
               _%ctx187800%_)
        (gx#bind-identifier!__%
         _%id187796%_
         (let ((__obj190826
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj190826
            _%eid187797%_
            (gx#core-identifier-key _%id187796%_)
            _%phi187799%_)
           __obj190826)
         _%rebind?187798%_
         _%phi187799%_
         _%ctx187800%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id187805%_ _%eid187806%_)
        (let* ((_%rebind?187808%_ '#f)
               (_%phi187810%_ (gx#current-expander-phi))
               (_%ctx187812%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id187805%_
           _%eid187806%_
           _%rebind?187808%_
           _%phi187810%_
           _%ctx187812%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id187814%_ _%eid187815%_ _%rebind?187816%_)
        (let* ((_%phi187818%_ (gx#current-expander-phi))
               (_%ctx187820%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id187814%_
           _%eid187815%_
           _%rebind?187816%_
           _%phi187818%_
           _%ctx187820%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id187822%_ _%eid187823%_ _%rebind?187824%_ _%phi187825%_)
        (let ((_%ctx187827%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id187822%_
           _%eid187823%_
           _%rebind?187824%_
           _%phi187825%_
           _%ctx187827%_))))
    (define gx#core-bind-extern!
      (lambda _g190851_
        (let ((_g190852_ (##length _g190851_)))
          (cond ((##fx= _g190852_ 2) (apply gx#core-bind-extern!__0 _g190851_))
                ((##fx= _g190852_ 3) (apply gx#core-bind-extern!__1 _g190851_))
                ((##fx= _g190852_ 4) (apply gx#core-bind-extern!__2 _g190851_))
                ((##fx= _g190852_ 5) (apply gx#core-bind-extern!__% _g190851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g190851_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id187750%_
               _%e187751%_
               _%rebind?187752%_
               _%phi187753%_
               _%ctx187754%_)
        (gx#bind-identifier!__%
         _%id187750%_
         (let ((_%key187759%_ (gx#core-identifier-key _%id187750%_))
               (_%e187760%_
                (if (or (##structure-instance-of? _%e187751%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e187751%_
                         'gx#expander-context::t))
                    _%e187751%_
                    (##structure
                     gx#user-expander::t
                     _%e187751%_
                     _%ctx187754%_
                     _%phi187753%_))))
           (let ((__obj190827
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj190827
              (gx#make-binding-id__%
               _%key187759%_
               '#t
               _%phi187753%_
               _%ctx187754%_)
              _%key187759%_
              _%phi187753%_
              _%e187760%_)
             __obj190827))
         _%rebind?187752%_
         _%phi187753%_
         _%ctx187754%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id187765%_ _%e187766%_)
        (let* ((_%rebind?187768%_ '#f)
               (_%phi187770%_ (gx#current-expander-phi))
               (_%ctx187772%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id187765%_
           _%e187766%_
           _%rebind?187768%_
           _%phi187770%_
           _%ctx187772%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id187774%_ _%e187775%_ _%rebind?187776%_)
        (let* ((_%phi187778%_ (gx#current-expander-phi))
               (_%ctx187780%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id187774%_
           _%e187775%_
           _%rebind?187776%_
           _%phi187778%_
           _%ctx187780%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id187782%_ _%e187783%_ _%rebind?187784%_ _%phi187785%_)
        (let ((_%ctx187787%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id187782%_
           _%e187783%_
           _%rebind?187784%_
           _%phi187785%_
           _%ctx187787%_))))
    (define gx#core-bind-syntax!
      (lambda _g190853_
        (let ((_g190854_ (##length _g190853_)))
          (cond ((##fx= _g190854_ 2) (apply gx#core-bind-syntax!__0 _g190853_))
                ((##fx= _g190854_ 3) (apply gx#core-bind-syntax!__1 _g190853_))
                ((##fx= _g190854_ 4) (apply gx#core-bind-syntax!__2 _g190853_))
                ((##fx= _g190854_ 5) (apply gx#core-bind-syntax!__% _g190853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g190853_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id187733%_ _%e187734%_ _%rebind?187735%_)
        (gx#core-bind-syntax!__%
         _%id187733%_
         _%e187734%_
         _%rebind?187735%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id187740%_ _%e187741%_)
        (let ((_%rebind?187743%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id187740%_
           _%e187741%_
           _%rebind?187743%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g190855_
        (let ((_g190856_ (##length _g190855_)))
          (cond ((##fx= _g190856_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g190855_))
                ((##fx= _g190856_ 3)
                 (apply gx#core-bind-root-syntax!__% _g190855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g190855_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id187691%_
               _%alias-id187692%_
               _%rebind?187693%_
               _%phi187694%_
               _%ctx187695%_)
        (gx#bind-identifier!__%
         _%id187691%_
         (let* ((_%key187697%_ (gx#core-identifier-key _%id187691%_))
                (__obj190828
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj190828
            (gx#make-binding-id__%
             _%key187697%_
             '#t
             _%phi187694%_
             _%ctx187695%_)
            _%key187697%_
            _%phi187694%_
            _%alias-id187692%_)
           __obj190828)
         _%rebind?187693%_
         _%phi187694%_
         _%ctx187695%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id187702%_ _%alias-id187703%_)
        (let* ((_%rebind?187705%_ '#f)
               (_%phi187707%_ (gx#current-expander-phi))
               (_%ctx187709%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id187702%_
           _%alias-id187703%_
           _%rebind?187705%_
           _%phi187707%_
           _%ctx187709%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id187711%_ _%alias-id187712%_ _%rebind?187713%_)
        (let* ((_%phi187715%_ (gx#current-expander-phi))
               (_%ctx187717%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id187711%_
           _%alias-id187712%_
           _%rebind?187713%_
           _%phi187715%_
           _%ctx187717%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id187719%_ _%alias-id187720%_ _%rebind?187721%_ _%phi187722%_)
        (let ((_%ctx187724%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id187719%_
           _%alias-id187720%_
           _%rebind?187721%_
           _%phi187722%_
           _%ctx187724%_))))
    (define gx#core-bind-alias!
      (lambda _g190857_
        (let ((_g190858_ (##length _g190857_)))
          (cond ((##fx= _g190858_ 2) (apply gx#core-bind-alias!__0 _g190857_))
                ((##fx= _g190858_ 3) (apply gx#core-bind-alias!__1 _g190857_))
                ((##fx= _g190858_ 4) (apply gx#core-bind-alias!__2 _g190857_))
                ((##fx= _g190858_ 5) (apply gx#core-bind-alias!__% _g190857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g190857_))))))
    (define gx#make-binding-id__%
      (lambda (_%key187641%_ _%syntax?187642%_ _%phi187643%_ _%ctx187644%_)
        (if (uninterned-symbol? _%key187641%_)
            (##gensym 'L)
            (if (pair? _%key187641%_)
                (gensym (##car _%key187641%_))
                (if (##structure-instance-of? _%ctx187644%_ 'gx#top-context::t)
                    (let ((_%ns187649%_
                           (gx#core-context-namespace__% _%ctx187644%_)))
                      (if (and (fxzero? _%phi187643%_) (not _%syntax?187642%_))
                          (if _%ns187649%_
                              (make-symbol__1 _%ns187649%_ '"#" _%key187641%_)
                              _%key187641%_)
                          (if _%syntax?187642%_
                              (make-symbol__1
                               (let ((_%$e187653%_ _%ns187649%_))
                                 (if _%$e187653%_ _%$e187653%_ '""))
                               '"[:"
                               (number->string _%phi187643%_)
                               '":]#"
                               _%key187641%_)
                              (make-symbol__1
                               (let ((_%$e187657%_ _%ns187649%_))
                                 (if _%$e187657%_ _%$e187657%_ '""))
                               '"["
                               (number->string _%phi187643%_)
                               '"]#"
                               _%key187641%_))))
                    (gensym _%key187641%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key187664%_)
        (let* ((_%syntax?187666%_ '#f)
               (_%phi187668%_ (gx#current-expander-phi))
               (_%ctx187670%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key187664%_
           _%syntax?187666%_
           _%phi187668%_
           _%ctx187670%_))))
    (define gx#make-binding-id__1
      (lambda (_%key187672%_ _%syntax?187673%_)
        (let* ((_%phi187675%_ (gx#current-expander-phi))
               (_%ctx187677%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key187672%_
           _%syntax?187673%_
           _%phi187675%_
           _%ctx187677%_))))
    (define gx#make-binding-id__2
      (lambda (_%key187679%_ _%syntax?187680%_ _%phi187681%_)
        (let ((_%ctx187683%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key187679%_
           _%syntax?187680%_
           _%phi187681%_
           _%ctx187683%_))))
    (define gx#make-binding-id
      (lambda _g190859_
        (let ((_g190860_ (##length _g190859_)))
          (cond ((##fx= _g190860_ 1) (apply gx#make-binding-id__0 _g190859_))
                ((##fx= _g190860_ 2) (apply gx#make-binding-id__1 _g190859_))
                ((##fx= _g190860_ 3) (apply gx#make-binding-id__2 _g190859_))
                ((##fx= _g190860_ 4) (apply gx#make-binding-id__% _g190859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g190859_))))))))
