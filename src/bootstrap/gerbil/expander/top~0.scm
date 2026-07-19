(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1784279016)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx190984%_)
        (letrec ((_%expand-special190986%_
                  (lambda (_%hd190988%_ _%K190989%_ _%rest190990%_ _%r190991%_)
                    (_%K190989%_
                     _%rest190990%_
                     (cons (gx#core-expand-top _%hd190988%_) _%r190991%_)))))
          (gx#core-expand-block__0 _%stx190984%_ _%expand-special190986%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx190638%_)
        (letrec ((_%expand-special190640%_
                  (lambda (_%hd190760%_ _%K190761%_ _%rest190762%_ _%r190763%_)
                    (let* ((_%K*190767%_
                            (lambda (_%e190765%_)
                              (_%K190761%_
                               _%rest190762%_
                               (cons _%e190765%_ _%r190763%_))))
                           (_%$%e190768190820%_ _%hd190760%_)
                           (_%$%E190806190824%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e190768190820%_)))
                           (_%$%E190802190866%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190768190820%_)
                                  (let ((_%$%e190807190828%_
                                         (gx#syntax-e _%$%e190768190820%_)))
                                    (let ((_%$%hd190808190831%_
                                           (##car _%$%e190807190828%_))
                                          (_%$%tl190809190833%_
                                           (##cdr _%$%e190807190828%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190808190831%_)
                                               (gx#core-identifier=?
                                                _%$%hd190808190831%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl190809190833%_)
                                              (let ((_%$%e190810190836%_
                                                     (gx#syntax-e
                                                      _%$%tl190809190833%_)))
                                                (let ((_%$%hd190811190839%_
                                                       (##car _%$%e190810190836%_))
                                                      (_%$%tl190812190841%_
                                                       (##cdr _%$%e190810190836%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd190811190839%_)
                                                      (let ((_%$%e190816190844%_
                                                             (gx#syntax-e
                                                              _%$%hd190811190839%_)))
                                                        (let ((_%$%hd190817190847%_
                                                               (##car _%$%e190816190844%_))
                                                              (_%$%tl190818190849%_
                                                               (##cdr _%$%e190816190844%_)))
                                                          (let ((_%id190852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd190817190847%_))
                    (if (gx#stx-null? _%$%tl190818190849%_)
                        (if (gx#stx-pair? _%$%tl190812190841%_)
                            (let ((_%$%e190813190854%_
                                   (gx#syntax-e _%$%tl190812190841%_)))
                              (let ((_%$%hd190814190857%_
                                     (##car _%$%e190813190854%_))
                                    (_%$%tl190815190859%_
                                     (##cdr _%$%e190813190854%_)))
                                (let ((_%props190862%_ _%$%hd190814190857%_))
                                  (if (gx#stx-null? _%$%tl190815190859%_)
                                      (let ((_%bind190864%_
                                             (gx#resolve-identifier__0
                                              _%id190852%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind190864%_
                                         _%props190862%_)
                                        (_%K190761%_
                                         _%rest190762%_
                                         _%r190763%_))
                                      (_%$%E190806190824%_)))))
                            (_%$%E190806190824%_))
                        (_%$%E190806190824%_)))))
              (_%$%E190806190824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190806190824%_))
                                          (_%$%E190806190824%_))))
                                  (_%$%E190806190824%_))))
                           (_%$%E190798190878%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190768190820%_)
                                  (let ((_%$%e190803190870%_
                                         (gx#syntax-e _%$%e190768190820%_)))
                                    (let ((_%$%hd190804190873%_
                                           (##car _%$%e190803190870%_))
                                          (_%$%tl190805190875%_
                                           (##cdr _%$%e190803190870%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190804190873%_)
                                               (gx#core-identifier=?
                                                _%$%hd190804190873%_
                                                '%#define-runtime))
                                          (_%K*190767%_
                                           (gx#core-expand-define-runtime%
                                            _%hd190760%_))
                                          (_%$%E190802190866%_))))
                                  (_%$%E190802190866%_))))
                           (_%$%E190794190890%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190768190820%_)
                                  (let ((_%$%e190799190882%_
                                         (gx#syntax-e _%$%e190768190820%_)))
                                    (let ((_%$%hd190800190885%_
                                           (##car _%$%e190799190882%_))
                                          (_%$%tl190801190887%_
                                           (##cdr _%$%e190799190882%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190800190885%_)
                                               (gx#core-identifier=?
                                                _%$%hd190800190885%_
                                                '%#define-alias))
                                          (_%K*190767%_
                                           (gx#core-expand-define-alias%
                                            _%hd190760%_))
                                          (_%$%E190798190878%_))))
                                  (_%$%E190798190878%_))))
                           (_%$%E190784190902%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190768190820%_)
                                  (let ((_%$%e190795190894%_
                                         (gx#syntax-e _%$%e190768190820%_)))
                                    (let ((_%$%hd190796190897%_
                                           (##car _%$%e190795190894%_))
                                          (_%$%tl190797190899%_
                                           (##cdr _%$%e190795190894%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190796190897%_)
                                               (gx#core-identifier=?
                                                _%$%hd190796190897%_
                                                '%#define-syntax))
                                          (_%K*190767%_
                                           (gx#core-expand-define-syntax%
                                            _%hd190760%_))
                                          (_%$%E190794190890%_))))
                                  (_%$%E190794190890%_))))
                           (_%$%E190774190934%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190768190820%_)
                                  (let ((_%$%e190785190906%_
                                         (gx#syntax-e _%$%e190768190820%_)))
                                    (let ((_%$%hd190786190909%_
                                           (##car _%$%e190785190906%_))
                                          (_%$%tl190787190911%_
                                           (##cdr _%$%e190785190906%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190786190909%_)
                                               (gx#core-identifier=?
                                                _%$%hd190786190909%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl190787190911%_)
                                              (let ((_%$%e190788190914%_
                                                     (gx#syntax-e
                                                      _%$%tl190787190911%_)))
                                                (let ((_%$%hd190789190917%_
                                                       (##car _%$%e190788190914%_))
                                                      (_%$%tl190790190919%_
                                                       (##cdr _%$%e190788190914%_)))
                                                  (let ((_%hd-bind190922%_
                                                         _%$%hd190789190917%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl190790190919%_)
                                                        (let ((_%$%e190791190924%_
                                                               (gx#syntax-e
                                                                _%$%tl190790190919%_)))
                                                          (let ((_%$%hd190792190927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e190791190924%_))
                        (_%$%tl190793190929%_ (##cdr _%$%e190791190924%_)))
                    (let ((_%expr190932%_ _%$%hd190792190927%_))
                      (if (gx#stx-null? _%$%tl190793190929%_)
                          (if (gx#core-bind-values? _%hd-bind190922%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind190922%_)
                                (_%K*190767%_ _%hd190760%_))
                              (_%$%E190784190902%_))
                          (_%$%E190784190902%_)))))
                (_%$%E190784190902%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190784190902%_))
                                          (_%$%E190784190902%_))))
                                  (_%$%E190784190902%_))))
                           (_%$%E190770190968%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190768190820%_)
                                  (let ((_%$%e190775190938%_
                                         (gx#syntax-e _%$%e190768190820%_)))
                                    (let ((_%$%hd190776190941%_
                                           (##car _%$%e190775190938%_))
                                          (_%$%tl190777190943%_
                                           (##cdr _%$%e190775190938%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190776190941%_)
                                               (gx#core-identifier=?
                                                _%$%hd190776190941%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl190777190943%_)
                                              (let ((_%$%e190778190946%_
                                                     (gx#syntax-e
                                                      _%$%tl190777190943%_)))
                                                (let ((_%$%hd190779190949%_
                                                       (##car _%$%e190778190946%_))
                                                      (_%$%tl190780190951%_
                                                       (##cdr _%$%e190778190946%_)))
                                                  (let ((_%hd-bind190954%_
                                                         _%$%hd190779190949%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl190780190951%_)
                                                        (let ((_%$%e190781190956%_
                                                               (gx#syntax-e
                                                                _%$%tl190780190951%_)))
                                                          (let ((_%$%hd190782190959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e190781190956%_))
                        (_%$%tl190783190961%_ (##cdr _%$%e190781190956%_)))
                    (let* ((_%expr190964%_ _%$%hd190782190959%_)
                           (_%props190966%_ _%$%tl190783190961%_))
                      (if (and (gx#core-bind-values? _%hd-bind190954%_)
                               (gx#stx-list? _%props190966%_)
                               (not (gx#stx-null? _%props190966%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind190954%_)
                            (_%K190761%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind190954%_
                                          (cons _%props190966%_ '())))
                                   _%rest190762%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind190954%_
                                          (cons _%expr190964%_ '())))
                                   _%r190763%_)))
                          (_%$%E190774190934%_)))))
                (_%$%E190774190934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190774190934%_))
                                          (_%$%E190774190934%_))))
                                  (_%$%E190774190934%_))))
                           (_%$%E190769190980%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190768190820%_)
                                  (let ((_%$%e190771190972%_
                                         (gx#syntax-e _%$%e190768190820%_)))
                                    (let ((_%$%hd190772190975%_
                                           (##car _%$%e190771190972%_))
                                          (_%$%tl190773190977%_
                                           (##cdr _%$%e190771190972%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190772190975%_)
                                               (gx#core-identifier=?
                                                _%$%hd190772190975%_
                                                '%#begin-syntax))
                                          (_%K*190767%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd190760%_))
                                          (_%$%E190770190968%_))))
                                  (_%$%E190770190968%_)))))
                      (_%$%E190769190980%_))))
                 (_%eval-body190641%_
                  (lambda (_%rbody190649%_)
                    (let _%lp190651%_ ((_%rest190653%_ _%rbody190649%_)
                                       (_%body190654%_ '())
                                       (_%ebody190655%_ '()))
                      (let* ((_%$%rest190656190664%_ _%rest190653%_)
                             (_%$%else190658190672%_
                              (lambda ()
                                (values _%body190654%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody190655%_)
                                          (gx#stx-source _%stx190638%_))))))
                             (_%$%K190660190748%_
                              (lambda (_%rest190675%_ _%hd190676%_)
                                (let* ((_%$%e190677190694%_ _%hd190676%_)
                                       (_%$%E190689190698%_
                                        (lambda ()
                                          (_%lp190651%_
                                           _%rest190675%_
                                           (cons _%hd190676%_ _%body190654%_)
                                           (cons _%hd190676%_
                                                 _%ebody190655%_))))
                                       (_%$%E190679190710%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e190677190694%_)
                                              (let ((_%$%e190690190702%_
                                                     (gx#syntax-e
                                                      _%$%e190677190694%_)))
                                                (let ((_%$%hd190691190705%_
                                                       (##car _%$%e190690190702%_))
                                                      (_%$%tl190692190707%_
                                                       (##cdr _%$%e190690190702%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd190691190705%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd190691190705%_
                                                            '%#begin-syntax))
                                                      (_%lp190651%_
                                                       _%rest190675%_
                                                       (cons _%hd190676%_
                                                             _%body190654%_)
                                                       _%ebody190655%_)
                                                      (_%$%E190689190698%_))))
                                              (_%$%E190689190698%_))))
                                       (_%$%E190678190744%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e190677190694%_)
                                              (let ((_%$%e190680190714%_
                                                     (gx#syntax-e
                                                      _%$%e190677190694%_)))
                                                (let ((_%$%hd190681190717%_
                                                       (##car _%$%e190680190714%_))
                                                      (_%$%tl190682190719%_
                                                       (##cdr _%$%e190680190714%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd190681190717%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd190681190717%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl190682190719%_)
                                                          (let ((_%$%e190683190722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl190682190719%_)))
                    (let ((_%$%hd190684190725%_ (##car _%$%e190683190722%_))
                          (_%$%tl190685190727%_ (##cdr _%$%e190683190722%_)))
                      (let ((_%hd-bind190730%_ _%$%hd190684190725%_))
                        (if (gx#stx-pair? _%$%tl190685190727%_)
                            (let ((_%$%e190686190732%_
                                   (gx#syntax-e _%$%tl190685190727%_)))
                              (let ((_%$%hd190687190735%_
                                     (##car _%$%e190686190732%_))
                                    (_%$%tl190688190737%_
                                     (##cdr _%$%e190686190732%_)))
                                (let ((_%expr190740%_ _%$%hd190687190735%_))
                                  (if (gx#stx-null? _%$%tl190688190737%_)
                                      (let ((_%ehd190742%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind190730%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr190740%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd190676%_))))
                                        (_%lp190651%_
                                         _%rest190675%_
                                         (cons _%ehd190742%_ _%body190654%_)
                                         (cons _%ehd190742%_ _%ebody190655%_)))
                                      (_%$%E190679190710%_)))))
                            (_%$%E190679190710%_)))))
                  (_%$%E190679190710%_))
              (_%$%E190679190710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190679190710%_)))))
                                  (_%$%E190678190744%_)))))
                        (if (pair? _%$%rest190656190664%_)
                            (let ((_%$%hd190661190751%_
                                   (##car _%$%rest190656190664%_))
                                  (_%$%tl190662190753%_
                                   (##cdr _%$%rest190656190664%_)))
                              (let* ((_%hd190756%_ _%$%hd190661190751%_)
                                     (_%rest190758%_ _%$%tl190662190753%_))
                                (_%$%K190660190748%_
                                 _%rest190758%_
                                 _%hd190756%_)))
                            (_%$%else190658190672%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody190644%_
                     (gx#core-expand-block__1
                      _%stx190638%_
                      _%expand-special190640%_
                      '#f))
                    (_g191017_ (_%eval-body190641%_ _%rbody190644%_)))
               (begin
                 (let ((_g191018_
                        (if (##values? _g191017_)
                            (##values-length _g191017_)
                            1)))
                   (if (not (##fx= _g191018_ 2))
                       (error "Context expects 2 values" _g191018_)))
                 (let ((_%expanded-body190646%_ (##values-ref _g191017_ 0))
                       (_%value190647%_ (##values-ref _g191017_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body190646%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value190647%_ '())))
                    (gx#stx-source _%stx190638%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx190608%_)
        (let* ((_%$%e190609190616%_ _%stx190608%_)
               (_%$%E190611190620%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190609190616%_)))
               (_%$%E190610190634%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190609190616%_)
                      (let ((_%$%e190612190624%_
                             (gx#syntax-e _%$%e190609190616%_)))
                        (let ((_%$%hd190613190627%_
                               (##car _%$%e190612190624%_))
                              (_%$%tl190614190629%_
                               (##cdr _%$%e190612190624%_)))
                          (let ((_%body190632%_ _%$%tl190614190629%_))
                            (if (gx#stx-list? _%body190632%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body190632%_)
                                 (gx#stx-source _%stx190608%_))
                                (_%$%E190611190620%_)))))
                      (_%$%E190611190620%_)))))
          (_%$%E190610190634%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx190606%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx190606%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx190552%_)
        (let* ((_%$%e190553190566%_ _%stx190552%_)
               (_%$%E190555190570%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190553190566%_)))
               (_%$%E190554190602%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190553190566%_)
                      (let ((_%$%e190556190574%_
                             (gx#syntax-e _%$%e190553190566%_)))
                        (let ((_%$%hd190557190577%_
                               (##car _%$%e190556190574%_))
                              (_%$%tl190558190579%_
                               (##cdr _%$%e190556190574%_)))
                          (if (gx#stx-pair? _%$%tl190558190579%_)
                              (let ((_%$%e190559190582%_
                                     (gx#syntax-e _%$%tl190558190579%_)))
                                (let ((_%$%hd190560190585%_
                                       (##car _%$%e190559190582%_))
                                      (_%$%tl190561190587%_
                                       (##cdr _%$%e190559190582%_)))
                                  (let ((_%ann190590%_ _%$%hd190560190585%_))
                                    (if (gx#stx-pair? _%$%tl190561190587%_)
                                        (let ((_%$%e190562190592%_
                                               (gx#syntax-e
                                                _%$%tl190561190587%_)))
                                          (let ((_%$%hd190563190595%_
                                                 (##car _%$%e190562190592%_))
                                                (_%$%tl190564190597%_
                                                 (##cdr _%$%e190562190592%_)))
                                            (let ((_%expr190600%_
                                                   _%$%hd190563190595%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190564190597%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann190590%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr190600%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx190552%_))
                                                  (_%$%E190555190570%_)))))
                                        (_%$%E190555190570%_)))))
                              (_%$%E190555190570%_))))
                      (_%$%E190555190570%_)))))
          (_%$%E190554190602%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx190177%_ _%body190178%_)
        (letrec ((_%expand-special190180%_
                  (lambda (_%hd190547%_ _%K190548%_ _%rest190549%_ _%r190550%_)
                    (_%K190548%_
                     '()
                     (cons (_%expand-internal190181%_
                            _%hd190547%_
                            _%rest190549%_)
                           _%r190550%_))))
                 (_%expand-internal190181%_
                  (lambda (_%hd190543%_ _%rest190544%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal190183%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd190543%_ _%rest190544%_))
                          (gx#stx-source _%stx190177%_))
                         _%expand-internal-special190182%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj191001
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj191001)
                       __obj191001))))
                 (_%expand-internal-special190182%_
                  (lambda (_%hd190339%_ _%K190340%_ _%rest190341%_ _%r190342%_)
                    (let* ((_%$%e190343190391%_ _%hd190339%_)
                           (_%$%E190386190395%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e190343190391%_)))
                           (_%$%E190373190407%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190343190391%_)
                                  (let ((_%$%e190387190399%_
                                         (gx#syntax-e _%$%e190343190391%_)))
                                    (let ((_%$%hd190388190402%_
                                           (##car _%$%e190387190399%_))
                                          (_%$%tl190389190404%_
                                           (##cdr _%$%e190387190399%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190388190402%_)
                                               (gx#core-identifier=?
                                                _%$%hd190388190402%_
                                                '%#declare))
                                          (_%K190340%_
                                           _%rest190341%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd190339%_)
                                                 _%r190342%_))
                                          (_%$%E190386190395%_))))
                                  (_%$%E190386190395%_))))
                           (_%$%E190369190449%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190343190391%_)
                                  (let ((_%$%e190374190411%_
                                         (gx#syntax-e _%$%e190343190391%_)))
                                    (let ((_%$%hd190375190414%_
                                           (##car _%$%e190374190411%_))
                                          (_%$%tl190376190416%_
                                           (##cdr _%$%e190374190411%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190375190414%_)
                                               (gx#core-identifier=?
                                                _%$%hd190375190414%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl190376190416%_)
                                              (let ((_%$%e190377190419%_
                                                     (gx#syntax-e
                                                      _%$%tl190376190416%_)))
                                                (let ((_%$%hd190378190422%_
                                                       (##car _%$%e190377190419%_))
                                                      (_%$%tl190379190424%_
                                                       (##cdr _%$%e190377190419%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd190378190422%_)
                                                      (let ((_%$%e190383190427%_
                                                             (gx#syntax-e
                                                              _%$%hd190378190422%_)))
                                                        (let ((_%$%hd190384190430%_
                                                               (##car _%$%e190383190427%_))
                                                              (_%$%tl190385190432%_
                                                               (##cdr _%$%e190383190427%_)))
                                                          (let ((_%id190435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd190384190430%_))
                    (if (gx#stx-null? _%$%tl190385190432%_)
                        (if (gx#stx-pair? _%$%tl190379190424%_)
                            (let ((_%$%e190380190437%_
                                   (gx#syntax-e _%$%tl190379190424%_)))
                              (let ((_%$%hd190381190440%_
                                     (##car _%$%e190380190437%_))
                                    (_%$%tl190382190442%_
                                     (##cdr _%$%e190380190437%_)))
                                (let ((_%props190445%_ _%$%hd190381190440%_))
                                  (if (gx#stx-null? _%$%tl190382190442%_)
                                      (let ((_%bind190447%_
                                             (gx#resolve-identifier__0
                                              _%id190435%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind190447%_
                                         _%props190445%_)
                                        (_%K190340%_
                                         _%rest190341%_
                                         _%r190342%_))
                                      (_%$%E190373190407%_)))))
                            (_%$%E190373190407%_))
                        (_%$%E190373190407%_)))))
              (_%$%E190373190407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190373190407%_))
                                          (_%$%E190373190407%_))))
                                  (_%$%E190373190407%_))))
                           (_%$%E190365190461%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190343190391%_)
                                  (let ((_%$%e190370190453%_
                                         (gx#syntax-e _%$%e190343190391%_)))
                                    (let ((_%$%hd190371190456%_
                                           (##car _%$%e190370190453%_))
                                          (_%$%tl190372190458%_
                                           (##cdr _%$%e190370190453%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190371190456%_)
                                               (gx#core-identifier=?
                                                _%$%hd190371190456%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd190339%_)
                                            (_%K190340%_
                                             _%rest190341%_
                                             _%r190342%_))
                                          (_%$%E190369190449%_))))
                                  (_%$%E190369190449%_))))
                           (_%$%E190355190473%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190343190391%_)
                                  (let ((_%$%e190366190465%_
                                         (gx#syntax-e _%$%e190343190391%_)))
                                    (let ((_%$%hd190367190468%_
                                           (##car _%$%e190366190465%_))
                                          (_%$%tl190368190470%_
                                           (##cdr _%$%e190366190465%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190367190468%_)
                                               (gx#core-identifier=?
                                                _%$%hd190367190468%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd190339%_)
                                            (_%K190340%_
                                             _%rest190341%_
                                             _%r190342%_))
                                          (_%$%E190365190461%_))))
                                  (_%$%E190365190461%_))))
                           (_%$%E190345190505%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190343190391%_)
                                  (let ((_%$%e190356190477%_
                                         (gx#syntax-e _%$%e190343190391%_)))
                                    (let ((_%$%hd190357190480%_
                                           (##car _%$%e190356190477%_))
                                          (_%$%tl190358190482%_
                                           (##cdr _%$%e190356190477%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190357190480%_)
                                               (gx#core-identifier=?
                                                _%$%hd190357190480%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl190358190482%_)
                                              (let ((_%$%e190359190485%_
                                                     (gx#syntax-e
                                                      _%$%tl190358190482%_)))
                                                (let ((_%$%hd190360190488%_
                                                       (##car _%$%e190359190485%_))
                                                      (_%$%tl190361190490%_
                                                       (##cdr _%$%e190359190485%_)))
                                                  (let ((_%hd-bind190493%_
                                                         _%$%hd190360190488%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl190361190490%_)
                                                        (let ((_%$%e190362190495%_
                                                               (gx#syntax-e
                                                                _%$%tl190361190490%_)))
                                                          (let ((_%$%hd190363190498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e190362190495%_))
                        (_%$%tl190364190500%_ (##cdr _%$%e190362190495%_)))
                    (let ((_%expr190503%_ _%$%hd190363190498%_))
                      (if (gx#stx-null? _%$%tl190364190500%_)
                          (if (gx#core-bind-values? _%hd-bind190493%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind190493%_)
                                (_%K190340%_
                                 _%rest190341%_
                                 (cons _%hd190339%_ _%r190342%_)))
                              (_%$%E190355190473%_))
                          (_%$%E190355190473%_)))))
                (_%$%E190355190473%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190355190473%_))
                                          (_%$%E190355190473%_))))
                                  (_%$%E190355190473%_))))
                           (_%$%E190344190539%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190343190391%_)
                                  (let ((_%$%e190346190509%_
                                         (gx#syntax-e _%$%e190343190391%_)))
                                    (let ((_%$%hd190347190512%_
                                           (##car _%$%e190346190509%_))
                                          (_%$%tl190348190514%_
                                           (##cdr _%$%e190346190509%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190347190512%_)
                                               (gx#core-identifier=?
                                                _%$%hd190347190512%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl190348190514%_)
                                              (let ((_%$%e190349190517%_
                                                     (gx#syntax-e
                                                      _%$%tl190348190514%_)))
                                                (let ((_%$%hd190350190520%_
                                                       (##car _%$%e190349190517%_))
                                                      (_%$%tl190351190522%_
                                                       (##cdr _%$%e190349190517%_)))
                                                  (let ((_%hd-bind190525%_
                                                         _%$%hd190350190520%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl190351190522%_)
                                                        (let ((_%$%e190352190527%_
                                                               (gx#syntax-e
                                                                _%$%tl190351190522%_)))
                                                          (let ((_%$%hd190353190530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e190352190527%_))
                        (_%$%tl190354190532%_ (##cdr _%$%e190352190527%_)))
                    (let* ((_%expr190535%_ _%$%hd190353190530%_)
                           (_%props190537%_ _%$%tl190354190532%_))
                      (if (and (gx#core-bind-values? _%hd-bind190525%_)
                               (gx#stx-list? _%props190537%_)
                               (not (gx#stx-null? _%props190537%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind190525%_)
                            (_%K190340%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind190525%_
                                          (cons _%props190537%_ '())))
                                   _%rest190341%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind190525%_
                                          (cons _%expr190535%_ '())))
                                   _%r190342%_)))
                          (_%$%E190345190505%_)))))
                (_%$%E190345190505%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190345190505%_))
                                          (_%$%E190345190505%_))))
                                  (_%$%E190345190505%_)))))
                      (_%$%E190344190539%_))))
                 (_%wrap-internal190183%_
                  (lambda (_%rbody190185%_)
                    (let _%lp190187%_ ((_%rest190189%_ _%rbody190185%_)
                                       (_%decls190190%_ '())
                                       (_%bind190191%_ '())
                                       (_%body190192%_ '()))
                      (let* ((_%$%e190193190200%_ _%rest190189%_)
                             (_%$%E190195190249%_
                              (lambda ()
                                (let* ((_%body190244%_
                                        (let* ((_%$%body190203190213%_
                                                _%body190192%_)
                                               (_%$%else190206190221%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body190192%_)
                                                   (gx#stx-source
                                                    _%stx190177%_)))))
                                          (let ((_%$%K190211190241%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx190177%_)))
                                                (_%$%K190208190227%_
                                                 (lambda (_%expr190225%_)
                                                   _%expr190225%_)))
                                            (let ((_%$%try-match190205190237%_
                                                   (lambda ()
                                                     (if (pair? _%$%body190203190213%_)
                                                         (let ((_%$%tl190210190232%_
                                                                (##cdr _%$%body190203190213%_))
                                                               (_%$%hd190209190230%_
                                                                (##car _%$%body190203190213%_)))
                                                           (if (null? _%$%tl190210190232%_)
                                                               (let ((_%expr190235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd190209190230%_))
                         (_%$%K190208190227%_ _%expr190235%_))
                       (_%$%else190206190221%_)))
                 (_%$%else190206190221%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body190203190213%_)
                                                  (_%$%K190211190241%_)
                                                  (_%$%try-match190205190237%_))))))
                                       (_%body190246%_
                                        (if (null? _%bind190191%_)
                                            _%body190244%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind190191%_
                                                         (cons _%body190244%_
                                                               '())))
                                             (gx#stx-source _%stx190177%_)))))
                                  (if (null? _%decls190190%_)
                                      _%body190246%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls190190%_
                                                   (cons _%body190246%_ '())))
                                       (gx#stx-source _%stx190177%_))))))
                             (_%$%E190194190335%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e190193190200%_)
                                    (let ((_%$%e190196190253%_
                                           (gx#syntax-e _%$%e190193190200%_)))
                                      (let ((_%$%hd190197190256%_
                                             (##car _%$%e190196190253%_))
                                            (_%$%tl190198190258%_
                                             (##cdr _%$%e190196190253%_)))
                                        (let* ((_%hd190261%_
                                                _%$%hd190197190256%_)
                                               (_%rest190263%_
                                                _%$%tl190198190258%_)
                                               (_%$%e190264190281%_
                                                _%hd190261%_)
                                               (_%$%E190276190285%_
                                                (lambda ()
                                                  (if (null? _%bind190191%_)
                                                      (_%lp190187%_
                                                       _%rest190263%_
                                                       _%decls190190%_
                                                       _%bind190191%_
                                                       (cons _%hd190261%_
                                                             _%body190192%_))
                                                      (_%lp190187%_
                                                       _%rest190263%_
                                                       _%decls190190%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd190261%_ '()))
                     _%bind190191%_)
               _%body190192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E190266190299%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e190264190281%_)
                                                      (let ((_%$%e190277190289%_
                                                             (gx#syntax-e
                                                              _%$%e190264190281%_)))
                                                        (let ((_%$%hd190278190292%_
                                                               (##car _%$%e190277190289%_))
                                                              (_%$%tl190279190294%_
                                                               (##cdr _%$%e190277190289%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd190278190292%_)
                           (gx#core-identifier=?
                            _%$%hd190278190292%_
                            '%#declare))
                      (let ((_%xdecls190297%_ _%$%tl190279190294%_))
                        (_%lp190187%_
                         _%rest190263%_
                         (gx#stx-foldr cons _%decls190190%_ _%xdecls190297%_)
                         _%bind190191%_
                         _%body190192%_))
                      (_%$%E190276190285%_))))
              (_%$%E190276190285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E190265190331%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e190264190281%_)
                                                      (let ((_%$%e190267190303%_
                                                             (gx#syntax-e
                                                              _%$%e190264190281%_)))
                                                        (let ((_%$%hd190268190306%_
                                                               (##car _%$%e190267190303%_))
                                                              (_%$%tl190269190308%_
                                                               (##cdr _%$%e190267190303%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd190268190306%_)
                           (gx#core-identifier=?
                            _%$%hd190268190306%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl190269190308%_)
                          (let ((_%$%e190270190311%_
                                 (gx#syntax-e _%$%tl190269190308%_)))
                            (let ((_%$%hd190271190314%_
                                   (##car _%$%e190270190311%_))
                                  (_%$%tl190272190316%_
                                   (##cdr _%$%e190270190311%_)))
                              (let ((_%hd-bind190319%_ _%$%hd190271190314%_))
                                (if (gx#stx-pair? _%$%tl190272190316%_)
                                    (let ((_%$%e190273190321%_
                                           (gx#syntax-e _%$%tl190272190316%_)))
                                      (let ((_%$%hd190274190324%_
                                             (##car _%$%e190273190321%_))
                                            (_%$%tl190275190326%_
                                             (##cdr _%$%e190273190321%_)))
                                        (let ((_%expr190329%_
                                               _%$%hd190274190324%_))
                                          (if (gx#stx-null?
                                               _%$%tl190275190326%_)
                                              (_%lp190187%_
                                               _%rest190263%_
                                               _%decls190190%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind190319%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr190329%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind190191%_)
                                               _%body190192%_)
                                              (_%$%E190266190299%_)))))
                                    (_%$%E190266190299%_)))))
                          (_%$%E190266190299%_))
                      (_%$%E190266190299%_))))
              (_%$%E190266190299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E190265190331%_))))
                                    (_%$%E190195190249%_)))))
                        (_%$%E190194190335%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body190178%_)
            (gx#stx-source _%stx190177%_))
           _%expand-special190180%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx190115%_)
        (let* ((_%$%e190116190123%_ _%stx190115%_)
               (_%$%E190118190127%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190116190123%_)))
               (_%$%E190117190173%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190116190123%_)
                      (let ((_%$%e190119190131%_
                             (gx#syntax-e _%$%e190116190123%_)))
                        (let ((_%$%hd190120190134%_
                               (##car _%$%e190119190131%_))
                              (_%$%tl190121190136%_
                               (##cdr _%$%e190119190131%_)))
                          (let ((_%body190139%_ _%$%tl190121190136%_))
                            (if (gx#stx-list? _%body190139%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl190141%_)
                                     (let* ((_%$%e190142190149%_
                                             _%decl190141%_)
                                            (_%$%E190144190153%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e190142190149%_)))
                                            (_%$%E190143190169%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e190142190149%_)
                                                   (let ((_%$%e190145190157%_
                                                          (gx#syntax-e
                                                           _%$%e190142190149%_)))
                                                     (let ((_%$%hd190146190160%_
                                                            (##car _%$%e190145190157%_))
                                                           (_%$%tl190147190162%_
                                                            (##cdr _%$%e190145190157%_)))
                                                       (let* ((_%head190165%_
                                                               _%$%hd190146190160%_)
                                                              (_%args190167%_
                                                               _%$%tl190147190162%_))
                                                         (if (gx#stx-list?
                                                              _%args190167%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl190141%_)
                                                             (_%$%E190144190153%_)))))
                                                   (_%$%E190144190153%_)))))
                                       (_%$%E190143190169%_)))
                                   _%body190139%_))
                                 (gx#stx-source _%stx190115%_))
                                (_%$%E190118190127%_)))))
                      (_%$%E190118190127%_)))))
          (_%$%E190117190173%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx190019%_)
        (let* ((_%$%e190020190027%_ _%stx190019%_)
               (_%$%E190022190031%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190020190027%_)))
               (_%$%E190021190111%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190020190027%_)
                      (let ((_%$%e190023190035%_
                             (gx#syntax-e _%$%e190020190027%_)))
                        (let ((_%$%hd190024190038%_
                               (##car _%$%e190023190035%_))
                              (_%$%tl190025190040%_
                               (##cdr _%$%e190023190035%_)))
                          (let ((_%body190043%_ _%$%tl190025190040%_))
                            (let _%lp190045%_ ((_%rest190047%_ _%body190043%_)
                                               (_%r190048%_ '()))
                              (let* ((_%$%e190049190063%_ _%rest190047%_)
                                     (_%$%E190061190067%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx190019%_)))
                                     (_%$%E190051190071%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e190049190063%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r190048%_))
                                             (gx#stx-source _%stx190019%_))
                                            (_%$%E190061190067%_))))
                                     (_%$%E190050190107%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e190049190063%_)
                                            (let ((_%$%e190052190075%_
                                                   (gx#syntax-e
                                                    _%$%e190049190063%_)))
                                              (let ((_%$%hd190053190078%_
                                                     (##car _%$%e190052190075%_))
                                                    (_%$%tl190054190080%_
                                                     (##cdr _%$%e190052190075%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd190053190078%_)
                                                    (let ((_%$%e190055190083%_
                                                           (gx#syntax-e
                                                            _%$%hd190053190078%_)))
                                                      (let ((_%$%hd190056190086%_
                                                             (##car _%$%e190055190083%_))
                                                            (_%$%tl190057190088%_
                                                             (##cdr _%$%e190055190083%_)))
                                                        (let ((_%id190091%_
                                                               _%$%hd190056190086%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl190057190088%_)
                                                              (let ((_%$%e190058190093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl190057190088%_)))
                        (let ((_%$%hd190059190096%_
                               (##car _%$%e190058190093%_))
                              (_%$%tl190060190098%_
                               (##cdr _%$%e190058190093%_)))
                          (let ((_%eid190101%_ _%$%hd190059190096%_))
                            (if (gx#stx-null? _%$%tl190060190098%_)
                                (let ((_%rest190103%_ _%$%tl190054190080%_))
                                  (if (and (gx#identifier? _%id190091%_)
                                           (gx#identifier? _%eid190101%_))
                                      (let ((_%eid190105%_
                                             (gx#stx-e _%eid190101%_)))
                                        (gx#core-bind-extern!__0
                                         _%id190091%_
                                         _%eid190105%_)
                                        (_%lp190045%_
                                         _%rest190103%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id190091%_)
                                                     (cons _%eid190105%_ '()))
                                               _%r190048%_)))
                                      (_%$%E190051190071%_)))
                                (_%$%E190051190071%_)))))
                      (_%$%E190051190071%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E190051190071%_))))
                                            (_%$%E190051190071%_)))))
                                (_%$%E190050190107%_))))))
                      (_%$%E190022190031%_)))))
          (_%$%E190021190111%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx189921%_)
        (let* ((_%$%e189922189945%_ _%stx189921%_)
               (_%$%E189934189949%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189922189945%_)))
               (_%$%E189924189981%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189922189945%_)
                      (let ((_%$%e189935189953%_
                             (gx#syntax-e _%$%e189922189945%_)))
                        (let ((_%$%hd189936189956%_
                               (##car _%$%e189935189953%_))
                              (_%$%tl189937189958%_
                               (##cdr _%$%e189935189953%_)))
                          (if (gx#stx-pair? _%$%tl189937189958%_)
                              (let ((_%$%e189938189961%_
                                     (gx#syntax-e _%$%tl189937189958%_)))
                                (let ((_%$%hd189939189964%_
                                       (##car _%$%e189938189961%_))
                                      (_%$%tl189940189966%_
                                       (##cdr _%$%e189938189961%_)))
                                  (let ((_%hd189969%_ _%$%hd189939189964%_))
                                    (if (gx#stx-pair? _%$%tl189940189966%_)
                                        (let ((_%$%e189941189971%_
                                               (gx#syntax-e
                                                _%$%tl189940189966%_)))
                                          (let ((_%$%hd189942189974%_
                                                 (##car _%$%e189941189971%_))
                                                (_%$%tl189943189976%_
                                                 (##cdr _%$%e189941189971%_)))
                                            (let ((_%expr189979%_
                                                   _%$%hd189942189974%_))
                                              (if (gx#stx-null?
                                                   _%$%tl189943189976%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd189969%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd189969%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd189969%_)
                             (cons (gx#core-expand-expression _%expr189979%_)
                                   '())))
                 (gx#stx-source _%stx189921%_)))
              (_%$%E189934189949%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189934189949%_)))))
                                        (_%$%E189934189949%_)))))
                              (_%$%E189934189949%_))))
                      (_%$%E189934189949%_))))
               (_%$%E189923190015%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189922189945%_)
                      (let ((_%$%e189925189985%_
                             (gx#syntax-e _%$%e189922189945%_)))
                        (let ((_%$%hd189926189988%_
                               (##car _%$%e189925189985%_))
                              (_%$%tl189927189990%_
                               (##cdr _%$%e189925189985%_)))
                          (if (gx#stx-pair? _%$%tl189927189990%_)
                              (let ((_%$%e189928189993%_
                                     (gx#syntax-e _%$%tl189927189990%_)))
                                (let ((_%$%hd189929189996%_
                                       (##car _%$%e189928189993%_))
                                      (_%$%tl189930189998%_
                                       (##cdr _%$%e189928189993%_)))
                                  (let ((_%hd190001%_ _%$%hd189929189996%_))
                                    (if (gx#stx-pair? _%$%tl189930189998%_)
                                        (let ((_%$%e189931190003%_
                                               (gx#syntax-e
                                                _%$%tl189930189998%_)))
                                          (let ((_%$%hd189932190006%_
                                                 (##car _%$%e189931190003%_))
                                                (_%$%tl189933190008%_
                                                 (##cdr _%$%e189931190003%_)))
                                            (let* ((_%expr190011%_
                                                    _%$%hd189932190006%_)
                                                   (_%props190013%_
                                                    _%$%tl189933190008%_))
                                              (if (and (gx#stx-list?
                                                        _%props190013%_)
                                                       (not (gx#stx-null?
                                                             _%props190013%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd190001%_
                                                                (cons _%expr190011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd190001%_ (cons _%props190013%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189924189981%_)))))
                                        (_%$%E189924189981%_)))))
                              (_%$%E189924189981%_))))
                      (_%$%E189924189981%_)))))
          (_%$%E189923190015%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx189860%_)
        (let* ((_%$%e189861189874%_ _%stx189860%_)
               (_%$%E189863189878%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189861189874%_)))
               (_%$%E189862189917%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189861189874%_)
                      (let ((_%$%e189864189882%_
                             (gx#syntax-e _%$%e189861189874%_)))
                        (let ((_%$%hd189865189885%_
                               (##car _%$%e189864189882%_))
                              (_%$%tl189866189887%_
                               (##cdr _%$%e189864189882%_)))
                          (if (gx#stx-pair? _%$%tl189866189887%_)
                              (let ((_%$%e189867189890%_
                                     (gx#syntax-e _%$%tl189866189887%_)))
                                (let ((_%$%hd189868189893%_
                                       (##car _%$%e189867189890%_))
                                      (_%$%tl189869189895%_
                                       (##cdr _%$%e189867189890%_)))
                                  (let ((_%id189898%_ _%$%hd189868189893%_))
                                    (if (gx#stx-pair? _%$%tl189869189895%_)
                                        (let ((_%$%e189870189900%_
                                               (gx#syntax-e
                                                _%$%tl189869189895%_)))
                                          (let ((_%$%hd189871189903%_
                                                 (##car _%$%e189870189900%_))
                                                (_%$%tl189872189905%_
                                                 (##cdr _%$%e189870189900%_)))
                                            (let* ((_%binding-id189908%_
                                                    _%$%hd189871189903%_)
                                                   (_%props189910%_
                                                    _%$%tl189872189905%_))
                                              (if (and (gx#identifier?
                                                        _%id189898%_)
                                                       (gx#identifier?
                                                        _%binding-id189908%_)
                                                       (gx#stx-list?
                                                        _%props189910%_))
                                                  (let* ((_%eid189912%_
                                                          (gx#stx-e
                                                           _%binding-id189908%_))
                                                         (_%bind189914%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id189898%_
                                                           _%eid189912%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind189914%_
                                                     _%props189910%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id189898%_)
                         (cons _%eid189912%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189863189878%_)))))
                                        (_%$%E189863189878%_)))))
                              (_%$%E189863189878%_))))
                      (_%$%E189863189878%_)))))
          (_%$%E189862189917%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx189793%_)
        (let* ((_%$%e189794189810%_ _%stx189793%_)
               (_%$%E189796189814%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189794189810%_)))
               (_%$%E189795189856%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189794189810%_)
                      (let ((_%$%e189797189818%_
                             (gx#syntax-e _%$%e189794189810%_)))
                        (let ((_%$%hd189798189821%_
                               (##car _%$%e189797189818%_))
                              (_%$%tl189799189823%_
                               (##cdr _%$%e189797189818%_)))
                          (if (gx#stx-pair? _%$%tl189799189823%_)
                              (let ((_%$%e189800189826%_
                                     (gx#syntax-e _%$%tl189799189823%_)))
                                (let ((_%$%hd189801189829%_
                                       (##car _%$%e189800189826%_))
                                      (_%$%tl189802189831%_
                                       (##cdr _%$%e189800189826%_)))
                                  (if (gx#stx-pair? _%$%hd189801189829%_)
                                      (let ((_%$%e189806189834%_
                                             (gx#syntax-e
                                              _%$%hd189801189829%_)))
                                        (let ((_%$%hd189807189837%_
                                               (##car _%$%e189806189834%_))
                                              (_%$%tl189808189839%_
                                               (##cdr _%$%e189806189834%_)))
                                          (let ((_%id189842%_
                                                 _%$%hd189807189837%_))
                                            (if (gx#stx-null?
                                                 _%$%tl189808189839%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl189802189831%_)
                                                    (let ((_%$%e189803189844%_
                                                           (gx#syntax-e
                                                            _%$%tl189802189831%_)))
                                                      (let ((_%$%hd189804189847%_
                                                             (##car _%$%e189803189844%_))
                                                            (_%$%tl189805189849%_
                                                             (##cdr _%$%e189803189844%_)))
                                                        (let ((_%props189852%_
                                                               _%$%hd189804189847%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl189805189849%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id189842%_)
                               (gx#stx-list? _%props189852%_))
                          (let ((_%bind189854%_
                                 (gx#resolve-identifier__0 _%id189842%_)))
                            (if (##structure-instance-of?
                                 _%bind189854%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx189793%_
                                 _%id189842%_
                                 _%bind189854%_))
                            (gx#core-bind-runtime-properties!
                             _%bind189854%_
                             _%props189852%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E189796189814%_))
                      (_%$%E189796189814%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E189796189814%_))
                                                (_%$%E189796189814%_)))))
                                      (_%$%E189796189814%_))))
                              (_%$%E189796189814%_))))
                      (_%$%E189796189814%_)))))
          (_%$%E189795189856%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind189728%_ _%props189729%_)
        (letrec ((_%eval-prop189731%_
                  (lambda (_%prop189791%_)
                    (gx#eval-expression+1 _%prop189791%_))))
          (let _%loop189733%_ ((_%rest189735%_ _%props189729%_)
                               (_%props189736%_ '()))
            (let* ((_%$%e189737189748%_ _%rest189735%_)
                   (_%$%E189746189752%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e189737189748%_)))
                   (_%$%E189739189756%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e189737189748%_)
                          (if (null? _%props189736%_)
                              '#!void
                              (##structure-set!
                               _%bind189728%_
                               (reverse! _%props189736%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E189746189752%_))))
                   (_%$%E189738189787%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e189737189748%_)
                          (let ((_%$%e189740189760%_
                                 (gx#syntax-e _%$%e189737189748%_)))
                            (let ((_%$%hd189741189763%_
                                   (##car _%$%e189740189760%_))
                                  (_%$%tl189742189765%_
                                   (##cdr _%$%e189740189760%_)))
                              (let ((_%key189768%_ _%$%hd189741189763%_))
                                (if (gx#stx-pair? _%$%tl189742189765%_)
                                    (let ((_%$%e189743189770%_
                                           (gx#syntax-e _%$%tl189742189765%_)))
                                      (let ((_%$%hd189744189773%_
                                             (##car _%$%e189743189770%_))
                                            (_%$%tl189745189775%_
                                             (##cdr _%$%e189743189770%_)))
                                        (let* ((_%prop189778%_
                                                _%$%hd189744189773%_)
                                               (_%rest189780%_
                                                _%$%tl189745189775%_))
                                          (if (gx#stx-keyword? _%key189768%_)
                                              (let* ((_%key189782%_
                                                      (gx#stx-e _%key189768%_))
                                                     (_%$e189784%_
                                                      _%key189782%_))
                                                (if (eq? 'macro: _%$e189784%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind189728%_
                                                       (if (gx#identifier?
                                                            _%prop189778%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop189778%_)
                                                           (gx#eval-expression+1
                                                            _%prop189778%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop189733%_
                                                       _%rest189780%_
                                                       _%props189736%_))
                                                    (if (eq? 'type:
                                                             _%$e189784%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind189728%_
                                                           (gx#eval-expression+1
                                                            _%prop189778%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop189733%_
                                                           _%rest189780%_
                                                           _%props189736%_))
                                                        (_%loop189733%_
                                                         _%rest189780%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop189778%_)
                                                               (cons _%key189782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props189736%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E189739189756%_)))))
                                    (_%$%E189739189756%_)))))
                          (_%$%E189739189756%_)))))
              (_%$%E189738189787%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx189671%_)
        (let* ((_%$%e189672189685%_ _%stx189671%_)
               (_%$%E189674189689%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189672189685%_)))
               (_%$%E189673189724%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189672189685%_)
                      (let ((_%$%e189675189693%_
                             (gx#syntax-e _%$%e189672189685%_)))
                        (let ((_%$%hd189676189696%_
                               (##car _%$%e189675189693%_))
                              (_%$%tl189677189698%_
                               (##cdr _%$%e189675189693%_)))
                          (if (gx#stx-pair? _%$%tl189677189698%_)
                              (let ((_%$%e189678189701%_
                                     (gx#syntax-e _%$%tl189677189698%_)))
                                (let ((_%$%hd189679189704%_
                                       (##car _%$%e189678189701%_))
                                      (_%$%tl189680189706%_
                                       (##cdr _%$%e189678189701%_)))
                                  (let ((_%id189709%_ _%$%hd189679189704%_))
                                    (if (gx#stx-pair? _%$%tl189680189706%_)
                                        (let ((_%$%e189681189711%_
                                               (gx#syntax-e
                                                _%$%tl189680189706%_)))
                                          (let ((_%$%hd189682189714%_
                                                 (##car _%$%e189681189711%_))
                                                (_%$%tl189683189716%_
                                                 (##cdr _%$%e189681189711%_)))
                                            (let ((_%expr189719%_
                                                   _%$%hd189682189714%_))
                                              (if (gx#stx-null?
                                                   _%$%tl189683189716%_)
                                                  (if (gx#identifier?
                                                       _%id189709%_)
                                                      (let ((_g191019_
                                                             (gx#core-expand-expression+1
                                                              _%expr189719%_)))
                                                        (begin
                                                          (let ((_g191020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g191019_)
                             (##values-length _g191019_)
                             1)))
                    (if (not (##fx= _g191020_ 2))
                        (error "Context expects 2 values" _g191020_)))
                  (let ((_%e-stx189721%_ (##values-ref _g191019_ 0))
                        (_%e189722%_ (##values-ref _g191019_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id189709%_ _%e189722%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id189709%_)
                                   (cons _%e-stx189721%_ '())))
                       (gx#stx-source _%stx189671%_))))))
              (_%$%E189674189689%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189674189689%_)))))
                                        (_%$%E189674189689%_)))))
                              (_%$%E189674189689%_))))
                      (_%$%E189674189689%_)))))
          (_%$%E189673189724%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx189615%_)
        (let* ((_%$%e189616189629%_ _%stx189615%_)
               (_%$%E189618189633%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189616189629%_)))
               (_%$%E189617189667%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189616189629%_)
                      (let ((_%$%e189619189637%_
                             (gx#syntax-e _%$%e189616189629%_)))
                        (let ((_%$%hd189620189640%_
                               (##car _%$%e189619189637%_))
                              (_%$%tl189621189642%_
                               (##cdr _%$%e189619189637%_)))
                          (if (gx#stx-pair? _%$%tl189621189642%_)
                              (let ((_%$%e189622189645%_
                                     (gx#syntax-e _%$%tl189621189642%_)))
                                (let ((_%$%hd189623189648%_
                                       (##car _%$%e189622189645%_))
                                      (_%$%tl189624189650%_
                                       (##cdr _%$%e189622189645%_)))
                                  (let ((_%id189653%_ _%$%hd189623189648%_))
                                    (if (gx#stx-pair? _%$%tl189624189650%_)
                                        (let ((_%$%e189625189655%_
                                               (gx#syntax-e
                                                _%$%tl189624189650%_)))
                                          (let ((_%$%hd189626189658%_
                                                 (##car _%$%e189625189655%_))
                                                (_%$%tl189627189660%_
                                                 (##cdr _%$%e189625189655%_)))
                                            (let ((_%alias-id189663%_
                                                   _%$%hd189626189658%_))
                                              (if (gx#stx-null?
                                                   _%$%tl189627189660%_)
                                                  (if (and (gx#identifier?
                                                            _%id189653%_)
                                                           (gx#identifier?
                                                            _%alias-id189663%_))
                                                      (let ((_%alias-id189665%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id189663%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id189653%_
                                                         _%alias-id189665%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id189653%_)
                             (cons _%alias-id189665%_ '())))))
              (_%$%E189618189633%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189618189633%_)))))
                                        (_%$%E189618189633%_)))))
                              (_%$%E189618189633%_))))
                      (_%$%E189618189633%_)))))
          (_%$%E189617189667%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx189558%_ _%wrap?189559%_)
        (let* ((_%$%e189560189570%_ _%stx189558%_)
               (_%$%E189562189574%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189560189570%_)))
               (_%$%E189561189601%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189560189570%_)
                      (let ((_%$%e189563189578%_
                             (gx#syntax-e _%$%e189560189570%_)))
                        (let ((_%$%hd189564189581%_
                               (##car _%$%e189563189578%_))
                              (_%$%tl189565189583%_
                               (##cdr _%$%e189563189578%_)))
                          (if (gx#stx-pair? _%$%tl189565189583%_)
                              (let ((_%$%e189566189586%_
                                     (gx#syntax-e _%$%tl189565189583%_)))
                                (let ((_%$%hd189567189589%_
                                       (##car _%$%e189566189586%_))
                                      (_%$%tl189568189591%_
                                       (##cdr _%$%e189566189586%_)))
                                  (let* ((_%hd189594%_ _%$%hd189567189589%_)
                                         (_%body189596%_ _%$%tl189568189591%_))
                                    (if (gx#core-bind-values? _%hd189594%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd189594%_)
                                           (let ((_%body189599%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd189594%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx189558%_
                                                               _%body189596%_)
                                                              '()))))
                                             (if _%wrap?189559%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body189599%_)
                                                  (gx#stx-source
                                                   _%stx189558%_))
                                                 _%body189599%_)))
                                         gx#current-expander-context
                                         (let ((__obj191002
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191002)
                                           __obj191002))
                                        (_%$%E189562189574%_)))))
                              (_%$%E189562189574%_))))
                      (_%$%E189562189574%_)))))
          (_%$%E189561189601%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx189608%_)
        (let ((_%wrap?189610%_ '#t))
          (gx#core-expand-lambda%__% _%stx189608%_ _%wrap?189610%_))))
    (define gx#core-expand-lambda%
      (lambda _g191021_
        (let ((_g191022_ (##length _g191021_)))
          (cond ((##fx= _g191022_ 1)
                 (apply gx#core-expand-lambda%__0 _g191021_))
                ((##fx= _g191022_ 2)
                 (apply gx#core-expand-lambda%__% _g191021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g191021_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx189522%_)
        (let* ((_%$%e189523189530%_ _%stx189522%_)
               (_%$%E189525189534%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189523189530%_)))
               (_%$%E189524189553%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189523189530%_)
                      (let ((_%$%e189526189538%_
                             (gx#syntax-e _%$%e189523189530%_)))
                        (let ((_%$%hd189527189541%_
                               (##car _%$%e189526189538%_))
                              (_%$%tl189528189543%_
                               (##cdr _%$%e189526189538%_)))
                          (let ((_%clauses189546%_ _%$%tl189528189543%_))
                            (if (gx#stx-list? _%clauses189546%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause189548%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause189548%_)
                                       (let ((_%$e189550%_
                                              (gx#stx-source
                                               _%clause189548%_)))
                                         (if _%$e189550%_
                                             _%$e189550%_
                                             (gx#stx-source _%stx189522%_))))
                                      '#f))
                                   _%clauses189546%_))
                                 (gx#stx-source _%stx189522%_))
                                (_%$%E189525189534%_)))))
                      (_%$%E189525189534%_)))))
          (_%$%E189524189553%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx189476%_)
        (let* ((_%$%e189477189487%_ _%stx189476%_)
               (_%$%E189479189491%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189477189487%_)))
               (_%$%E189478189518%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189477189487%_)
                      (let ((_%$%e189480189495%_
                             (gx#syntax-e _%$%e189477189487%_)))
                        (let ((_%$%hd189481189498%_
                               (##car _%$%e189480189495%_))
                              (_%$%tl189482189500%_
                               (##cdr _%$%e189480189495%_)))
                          (if (gx#stx-pair? _%$%tl189482189500%_)
                              (let ((_%$%e189483189503%_
                                     (gx#syntax-e _%$%tl189482189500%_)))
                                (let ((_%$%hd189484189506%_
                                       (##car _%$%e189483189503%_))
                                      (_%$%tl189485189508%_
                                       (##cdr _%$%e189483189503%_)))
                                  (let* ((_%hd189511%_ _%$%hd189484189506%_)
                                         (_%body189513%_ _%$%tl189485189508%_))
                                    (if (gx#core-expand-let-bind? _%hd189511%_)
                                        (let ((_%expressions189515%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd189511%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd189511%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd189511%_
                                                           _%expressions189515%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx189476%_
                         _%body189513%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx189476%_)))
                                           gx#current-expander-context
                                           (let ((__obj191003
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj191003)
                                             __obj191003)))
                                        (_%$%E189479189491%_)))))
                              (_%$%E189479189491%_))))
                      (_%$%E189479189491%_)))))
          (_%$%E189478189518%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx189421%_ _%form189422%_)
        (let* ((_%$%e189423189433%_ _%stx189421%_)
               (_%$%E189425189437%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189423189433%_)))
               (_%$%E189424189462%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189423189433%_)
                      (let ((_%$%e189426189441%_
                             (gx#syntax-e _%$%e189423189433%_)))
                        (let ((_%$%hd189427189444%_
                               (##car _%$%e189426189441%_))
                              (_%$%tl189428189446%_
                               (##cdr _%$%e189426189441%_)))
                          (if (gx#stx-pair? _%$%tl189428189446%_)
                              (let ((_%$%e189429189449%_
                                     (gx#syntax-e _%$%tl189428189446%_)))
                                (let ((_%$%hd189430189452%_
                                       (##car _%$%e189429189449%_))
                                      (_%$%tl189431189454%_
                                       (##cdr _%$%e189429189449%_)))
                                  (let* ((_%hd189457%_ _%$%hd189430189452%_)
                                         (_%body189459%_ _%$%tl189431189454%_))
                                    (if (gx#core-expand-let-bind? _%hd189457%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd189457%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form189422%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd189457%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd189457%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx189421%_
                                                               _%body189459%_)
                                                              '())))
                                            (gx#stx-source _%stx189421%_)))
                                         gx#current-expander-context
                                         (let ((__obj191004
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191004)
                                           __obj191004))
                                        (_%$%E189425189437%_)))))
                              (_%$%E189425189437%_))))
                      (_%$%E189425189437%_)))))
          (_%$%E189424189462%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx189469%_)
        (let ((_%form189471%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx189469%_ _%form189471%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g191023_
        (let ((_g191024_ (##length _g191023_)))
          (cond ((##fx= _g191024_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g191023_))
                ((##fx= _g191024_ 2)
                 (apply gx#core-expand-letrec-values%__% _g191023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g191023_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx189418%_)
        (gx#core-expand-letrec-values%__% _%stx189418%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx189375%_)
        (if (gx#stx-list? _%stx189375%_)
            (gx#stx-andmap
             (lambda (_%bind189377%_)
               (let* ((_%$%e189378189388%_ _%bind189377%_)
                      (_%$%E189380189392%_ (lambda () '#f))
                      (_%$%E189379189414%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e189378189388%_)
                             (let ((_%$%e189381189396%_
                                    (gx#syntax-e _%$%e189378189388%_)))
                               (let ((_%$%hd189382189399%_
                                      (##car _%$%e189381189396%_))
                                     (_%$%tl189383189401%_
                                      (##cdr _%$%e189381189396%_)))
                                 (let ((_%hd189404%_ _%$%hd189382189399%_))
                                   (if (gx#stx-pair? _%$%tl189383189401%_)
                                       (let ((_%$%e189384189406%_
                                              (gx#syntax-e
                                               _%$%tl189383189401%_)))
                                         (let ((_%$%hd189385189409%_
                                                (##car _%$%e189384189406%_))
                                               (_%$%tl189386189411%_
                                                (##cdr _%$%e189384189406%_)))
                                           (if (gx#stx-null?
                                                _%$%tl189386189411%_)
                                               (gx#core-bind-values?
                                                _%hd189404%_)
                                               (_%$%E189380189392%_))))
                                       (_%$%E189380189392%_)))))
                             (_%$%E189380189392%_)))))
                 (_%$%E189379189414%_)))
             _%stx189375%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind189334%_)
        (let* ((_%$%e189335189345%_ _%bind189334%_)
               (_%$%E189337189349%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189335189345%_)))
               (_%$%E189336189371%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189335189345%_)
                      (let ((_%$%e189338189353%_
                             (gx#syntax-e _%$%e189335189345%_)))
                        (let ((_%$%hd189339189356%_
                               (##car _%$%e189338189353%_))
                              (_%$%tl189340189358%_
                               (##cdr _%$%e189338189353%_)))
                          (if (gx#stx-pair? _%$%tl189340189358%_)
                              (let ((_%$%e189341189361%_
                                     (gx#syntax-e _%$%tl189340189358%_)))
                                (let ((_%$%hd189342189364%_
                                       (##car _%$%e189341189361%_))
                                      (_%$%tl189343189366%_
                                       (##cdr _%$%e189341189361%_)))
                                  (let ((_%expr189369%_ _%$%hd189342189364%_))
                                    (if (gx#stx-null? _%$%tl189343189366%_)
                                        (gx#core-expand-expression
                                         _%expr189369%_)
                                        (_%$%E189337189349%_)))))
                              (_%$%E189337189349%_))))
                      (_%$%E189337189349%_)))))
          (_%$%E189336189371%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind189293%_)
        (let* ((_%$%e189294189304%_ _%bind189293%_)
               (_%$%E189296189308%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189294189304%_)))
               (_%$%E189295189330%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189294189304%_)
                      (let ((_%$%e189297189312%_
                             (gx#syntax-e _%$%e189294189304%_)))
                        (let ((_%$%hd189298189315%_
                               (##car _%$%e189297189312%_))
                              (_%$%tl189299189317%_
                               (##cdr _%$%e189297189312%_)))
                          (let ((_%hd189320%_ _%$%hd189298189315%_))
                            (if (gx#stx-pair? _%$%tl189299189317%_)
                                (let ((_%$%e189300189322%_
                                       (gx#syntax-e _%$%tl189299189317%_)))
                                  (let ((_%$%hd189301189325%_
                                         (##car _%$%e189300189322%_))
                                        (_%$%tl189302189327%_
                                         (##cdr _%$%e189300189322%_)))
                                    (if (gx#stx-null? _%$%tl189302189327%_)
                                        (gx#core-bind-values!__0 _%hd189320%_)
                                        (_%$%E189296189308%_))))
                                (_%$%E189296189308%_)))))
                      (_%$%E189296189308%_)))))
          (_%$%E189295189330%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind189251%_ _%expr189252%_)
        (let* ((_%$%e189253189263%_ _%bind189251%_)
               (_%$%E189255189267%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189253189263%_)))
               (_%$%E189254189289%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189253189263%_)
                      (let ((_%$%e189256189271%_
                             (gx#syntax-e _%$%e189253189263%_)))
                        (let ((_%$%hd189257189274%_
                               (##car _%$%e189256189271%_))
                              (_%$%tl189258189276%_
                               (##cdr _%$%e189256189271%_)))
                          (let ((_%hd189279%_ _%$%hd189257189274%_))
                            (if (gx#stx-pair? _%$%tl189258189276%_)
                                (let ((_%$%e189259189281%_
                                       (gx#syntax-e _%$%tl189258189276%_)))
                                  (let ((_%$%hd189260189284%_
                                         (##car _%$%e189259189281%_))
                                        (_%$%tl189261189286%_
                                         (##cdr _%$%e189259189281%_)))
                                    (if (gx#stx-null? _%$%tl189261189286%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd189279%_)
                                              (cons _%expr189252%_ '()))
                                        (_%$%E189255189267%_))))
                                (_%$%E189255189267%_)))))
                      (_%$%E189255189267%_)))))
          (_%$%E189254189289%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx189205%_)
        (let* ((_%$%e189206189216%_ _%stx189205%_)
               (_%$%E189208189220%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189206189216%_)))
               (_%$%E189207189247%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189206189216%_)
                      (let ((_%$%e189209189224%_
                             (gx#syntax-e _%$%e189206189216%_)))
                        (let ((_%$%hd189210189227%_
                               (##car _%$%e189209189224%_))
                              (_%$%tl189211189229%_
                               (##cdr _%$%e189209189224%_)))
                          (if (gx#stx-pair? _%$%tl189211189229%_)
                              (let ((_%$%e189212189232%_
                                     (gx#syntax-e _%$%tl189211189229%_)))
                                (let ((_%$%hd189213189235%_
                                       (##car _%$%e189212189232%_))
                                      (_%$%tl189214189237%_
                                       (##cdr _%$%e189212189232%_)))
                                  (let* ((_%hd189240%_ _%$%hd189213189235%_)
                                         (_%body189242%_ _%$%tl189214189237%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd189240%_)
                                        (let ((_%expanders189244%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd189240%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd189240%_
                                              _%expanders189244%_)
                                             (gx#core-expand-local-block
                                              _%stx189205%_
                                              _%body189242%_))
                                           gx#current-expander-context
                                           (let ((__obj191005
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj191005)
                                             __obj191005)))
                                        (_%$%E189208189220%_)))))
                              (_%$%E189208189220%_))))
                      (_%$%E189208189220%_)))))
          (_%$%E189207189247%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx189154%_)
        (let* ((_%$%e189155189165%_ _%stx189154%_)
               (_%$%E189157189169%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189155189165%_)))
               (_%$%E189156189201%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189155189165%_)
                      (let ((_%$%e189158189173%_
                             (gx#syntax-e _%$%e189155189165%_)))
                        (let ((_%$%hd189159189176%_
                               (##car _%$%e189158189173%_))
                              (_%$%tl189160189178%_
                               (##cdr _%$%e189158189173%_)))
                          (if (gx#stx-pair? _%$%tl189160189178%_)
                              (let ((_%$%e189161189181%_
                                     (gx#syntax-e _%$%tl189160189178%_)))
                                (let ((_%$%hd189162189184%_
                                       (##car _%$%e189161189181%_))
                                      (_%$%tl189163189186%_
                                       (##cdr _%$%e189161189181%_)))
                                  (let* ((_%hd189189%_ _%$%hd189162189184%_)
                                         (_%body189191%_ _%$%tl189163189186%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd189189%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd189189%_
                                            (make-list
                                             (gx#stx-length _%hd189189%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g189193189196%_
                                                     _%$%g189194189198%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g189193189196%_
                                               _%$%g189194189198%_
                                               '#t))
                                            _%hd189189%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd189189%_))
                                           (gx#core-expand-local-block
                                            _%stx189154%_
                                            _%body189191%_))
                                         gx#current-expander-context
                                         (let ((__obj191006
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191006)
                                           __obj191006))
                                        (_%$%E189157189169%_)))))
                              (_%$%E189157189169%_))))
                      (_%$%E189157189169%_)))))
          (_%$%E189156189201%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx189111%_)
        (if (gx#stx-list? _%stx189111%_)
            (gx#stx-andmap
             (lambda (_%bind189113%_)
               (let* ((_%$%e189114189124%_ _%bind189113%_)
                      (_%$%E189116189128%_ (lambda () '#f))
                      (_%$%E189115189150%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e189114189124%_)
                             (let ((_%$%e189117189132%_
                                    (gx#syntax-e _%$%e189114189124%_)))
                               (let ((_%$%hd189118189135%_
                                      (##car _%$%e189117189132%_))
                                     (_%$%tl189119189137%_
                                      (##cdr _%$%e189117189132%_)))
                                 (let ((_%hd189140%_ _%$%hd189118189135%_))
                                   (if (gx#stx-pair? _%$%tl189119189137%_)
                                       (let ((_%$%e189120189142%_
                                              (gx#syntax-e
                                               _%$%tl189119189137%_)))
                                         (let ((_%$%hd189121189145%_
                                                (##car _%$%e189120189142%_))
                                               (_%$%tl189122189147%_
                                                (##cdr _%$%e189120189142%_)))
                                           (if (gx#stx-null?
                                                _%$%tl189122189147%_)
                                               (gx#identifier? _%hd189140%_)
                                               (_%$%E189116189128%_))))
                                       (_%$%E189116189128%_)))))
                             (_%$%E189116189128%_)))))
                 (_%$%E189115189150%_)))
             _%stx189111%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind189067%_)
        (let* ((_%$%e189068189078%_ _%bind189067%_)
               (_%$%E189070189082%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189068189078%_)))
               (_%$%E189069189107%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189068189078%_)
                      (let ((_%$%e189071189086%_
                             (gx#syntax-e _%$%e189068189078%_)))
                        (let ((_%$%hd189072189089%_
                               (##car _%$%e189071189086%_))
                              (_%$%tl189073189091%_
                               (##cdr _%$%e189071189086%_)))
                          (if (gx#stx-pair? _%$%tl189073189091%_)
                              (let ((_%$%e189074189094%_
                                     (gx#syntax-e _%$%tl189073189091%_)))
                                (let ((_%$%hd189075189097%_
                                       (##car _%$%e189074189094%_))
                                      (_%$%tl189076189099%_
                                       (##cdr _%$%e189074189094%_)))
                                  (let ((_%expr189102%_ _%$%hd189075189097%_))
                                    (if (gx#stx-null? _%$%tl189076189099%_)
                                        (let ((_g191025_
                                               (gx#core-expand-expression+1
                                                _%expr189102%_)))
                                          (begin
                                            (let ((_g191026_
                                                   (if (##values? _g191025_)
                                                       (##values-length
                                                        _g191025_)
                                                       1)))
                                              (if (not (##fx= _g191026_ 2))
                                                  (error "Context expects 2 values"
                                                         _g191026_)))
                                            (let ((_%_189104%_
                                                   (##values-ref _g191025_ 0))
                                                  (_%e189105%_
                                                   (##values-ref _g191025_ 1)))
                                              _%e189105%_)))
                                        (_%$%E189070189082%_)))))
                              (_%$%E189070189082%_))))
                      (_%$%E189070189082%_)))))
          (_%$%E189069189107%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind189012%_ _%e189013%_ _%rebind?189014%_)
        (let* ((_%$%e189015189025%_ _%bind189012%_)
               (_%$%E189017189029%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189015189025%_)))
               (_%$%E189016189051%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189015189025%_)
                      (let ((_%$%e189018189033%_
                             (gx#syntax-e _%$%e189015189025%_)))
                        (let ((_%$%hd189019189036%_
                               (##car _%$%e189018189033%_))
                              (_%$%tl189020189038%_
                               (##cdr _%$%e189018189033%_)))
                          (let ((_%id189041%_ _%$%hd189019189036%_))
                            (if (gx#stx-pair? _%$%tl189020189038%_)
                                (let ((_%$%e189021189043%_
                                       (gx#syntax-e _%$%tl189020189038%_)))
                                  (let ((_%$%hd189022189046%_
                                         (##car _%$%e189021189043%_))
                                        (_%$%tl189023189048%_
                                         (##cdr _%$%e189021189043%_)))
                                    (if (gx#stx-null? _%$%tl189023189048%_)
                                        (gx#core-bind-syntax!__1
                                         _%id189041%_
                                         _%e189013%_
                                         _%rebind?189014%_)
                                        (_%$%E189017189029%_))))
                                (_%$%E189017189029%_)))))
                      (_%$%E189017189029%_)))))
          (_%$%E189016189051%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind189058%_ _%e189059%_)
        (let ((_%rebind?189061%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind189058%_
           _%e189059%_
           _%rebind?189061%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g191027_
        (let ((_g191028_ (##length _g191027_)))
          (cond ((##fx= _g191028_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g191027_))
                ((##fx= _g191028_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g191027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g191027_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx188970%_)
        (let* ((_%$%e188971188981%_ _%stx188970%_)
               (_%$%E188973188985%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188971188981%_)))
               (_%$%E188972189007%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188971188981%_)
                      (let ((_%$%e188974188989%_
                             (gx#syntax-e _%$%e188971188981%_)))
                        (let ((_%$%hd188975188992%_
                               (##car _%$%e188974188989%_))
                              (_%$%tl188976188994%_
                               (##cdr _%$%e188974188989%_)))
                          (if (gx#stx-pair? _%$%tl188976188994%_)
                              (let ((_%$%e188977188997%_
                                     (gx#syntax-e _%$%tl188976188994%_)))
                                (let ((_%$%hd188978189000%_
                                       (##car _%$%e188977188997%_))
                                      (_%$%tl188979189002%_
                                       (##cdr _%$%e188977188997%_)))
                                  (let ((_%expr189005%_ _%$%hd188978189000%_))
                                    (if (gx#stx-null? _%$%tl188979189002%_)
                                        (gx#core-expand-expression
                                         _%expr189005%_)
                                        (_%$%E188973188985%_)))))
                              (_%$%E188973188985%_))))
                      (_%$%E188973188985%_)))))
          (_%$%E188972189007%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx188929%_)
        (let* ((_%$%e188930188940%_ _%stx188929%_)
               (_%$%E188932188944%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188930188940%_)))
               (_%$%E188931188966%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188930188940%_)
                      (let ((_%$%e188933188948%_
                             (gx#syntax-e _%$%e188930188940%_)))
                        (let ((_%$%hd188934188951%_
                               (##car _%$%e188933188948%_))
                              (_%$%tl188935188953%_
                               (##cdr _%$%e188933188948%_)))
                          (if (gx#stx-pair? _%$%tl188935188953%_)
                              (let ((_%$%e188936188956%_
                                     (gx#syntax-e _%$%tl188935188953%_)))
                                (let ((_%$%hd188937188959%_
                                       (##car _%$%e188936188956%_))
                                      (_%$%tl188938188961%_
                                       (##cdr _%$%e188936188956%_)))
                                  (let ((_%e188964%_ _%$%hd188937188959%_))
                                    (if (gx#stx-null? _%$%tl188938188961%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e188964%_)
                                                     '()))
                                         (gx#stx-source _%stx188929%_))
                                        (_%$%E188932188944%_)))))
                              (_%$%E188932188944%_))))
                      (_%$%E188932188944%_)))))
          (_%$%E188931188966%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx188888%_)
        (let* ((_%$%e188889188899%_ _%stx188888%_)
               (_%$%E188891188903%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188889188899%_)))
               (_%$%E188890188925%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188889188899%_)
                      (let ((_%$%e188892188907%_
                             (gx#syntax-e _%$%e188889188899%_)))
                        (let ((_%$%hd188893188910%_
                               (##car _%$%e188892188907%_))
                              (_%$%tl188894188912%_
                               (##cdr _%$%e188892188907%_)))
                          (if (gx#stx-pair? _%$%tl188894188912%_)
                              (let ((_%$%e188895188915%_
                                     (gx#syntax-e _%$%tl188894188912%_)))
                                (let ((_%$%hd188896188918%_
                                       (##car _%$%e188895188915%_))
                                      (_%$%tl188897188920%_
                                       (##cdr _%$%e188895188915%_)))
                                  (let ((_%e188923%_ _%$%hd188896188918%_))
                                    (if (gx#stx-null? _%$%tl188897188920%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e188923%_)
                                                     '()))
                                         (gx#stx-source _%stx188888%_))
                                        (_%$%E188891188903%_)))))
                              (_%$%E188891188903%_))))
                      (_%$%E188891188903%_)))))
          (_%$%E188890188925%_))))
    (define gx#core-expand-call%
      (lambda (_%stx188782%_)
        (letrec ((_%expand-runtime-call188784%_
                  (lambda (_%rator-expr188885%_ _%args188886%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr188885%_
                      (gx#stx-map1 gx#core-expand-expression _%args188886%_))
                     (gx#stx-source _%stx188782%_)))))
          (let* ((_%$%e188785188795%_ _%stx188782%_)
                 (_%$%E188787188799%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188785188795%_)))
                 (_%$%E188786188881%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188785188795%_)
                        (let ((_%$%e188788188803%_
                               (gx#syntax-e _%$%e188785188795%_)))
                          (let ((_%$%hd188789188806%_
                                 (##car _%$%e188788188803%_))
                                (_%$%tl188790188808%_
                                 (##cdr _%$%e188788188803%_)))
                            (if (gx#stx-pair? _%$%tl188790188808%_)
                                (let ((_%$%e188791188811%_
                                       (gx#syntax-e _%$%tl188790188808%_)))
                                  (let ((_%$%hd188792188814%_
                                         (##car _%$%e188791188811%_))
                                        (_%$%tl188793188816%_
                                         (##cdr _%$%e188791188811%_)))
                                    (let* ((_%rator188819%_
                                            _%$%hd188792188814%_)
                                           (_%args188821%_
                                            _%$%tl188793188816%_))
                                      (if (gx#stx-list? _%args188821%_)
                                          (let* ((_%rator-expr188823%_
                                                  (gx#core-expand-expression
                                                   _%rator188819%_))
                                                 (_%$%e188824188834%_
                                                  _%rator-expr188823%_)
                                                 (_%$%E188826188838%_
                                                  (lambda ()
                                                    (_%expand-runtime-call188784%_
                                                     _%rator-expr188823%_
                                                     _%args188821%_)))
                                                 (_%$%E188825188877%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e188824188834%_)
                                                        (let ((_%$%e188827188842%_
                                                               (gx#syntax-e
                                                                _%$%e188824188834%_)))
                                                          (let ((_%$%hd188828188845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e188827188842%_))
                        (_%$%tl188829188847%_ (##cdr _%$%e188827188842%_)))
                    (if (and (gx#identifier? _%$%hd188828188845%_)
                             (gx#core-identifier=?
                              _%$%hd188828188845%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl188829188847%_)
                            (let ((_%$%e188830188850%_
                                   (gx#syntax-e _%$%tl188829188847%_)))
                              (let ((_%$%hd188831188853%_
                                     (##car _%$%e188830188850%_))
                                    (_%$%tl188832188855%_
                                     (##cdr _%$%e188830188850%_)))
                                (let ((_%id188858%_ _%$%hd188831188853%_))
                                  (if (gx#stx-null? _%$%tl188832188855%_)
                                      (let ((_%$e188860%_
                                             (gx#resolve-identifier__0
                                              _%id188858%_)))
                                        (if _%$e188860%_
                                            (let _%again188865%_ ((_%bind188867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e188860%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e188869%_
                                                     (if (##structure-instance-of?
                                                          _%bind188867%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind188867%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e188869%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e188869%_
                                                            _%args188821%_)
                                                      (gx#stx-source
                                                       _%stx188782%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind188867%_
                                                         'gx#import-binding::t)
                                                        (_%again188865%_
                                                         (##unchecked-structure-ref
                                                          _%bind188867%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call188784%_
                                                         _%rator-expr188823%_
                                                         _%args188821%_)))))
                                            (_%expand-runtime-call188784%_
                                             _%rator-expr188823%_
                                             _%args188821%_)))
                                      (_%$%E188826188838%_)))))
                            (_%$%E188826188838%_))
                        (_%$%E188826188838%_))))
                (_%$%E188826188838%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E188825188877%_))
                                          (_%$%E188787188799%_)))))
                                (_%$%E188787188799%_))))
                        (_%$%E188787188799%_)))))
            (_%$%E188786188881%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx188715%_)
        (let* ((_%$%e188716188732%_ _%stx188715%_)
               (_%$%E188718188736%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188716188732%_)))
               (_%$%E188717188778%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188716188732%_)
                      (let ((_%$%e188719188740%_
                             (gx#syntax-e _%$%e188716188732%_)))
                        (let ((_%$%hd188720188743%_
                               (##car _%$%e188719188740%_))
                              (_%$%tl188721188745%_
                               (##cdr _%$%e188719188740%_)))
                          (if (gx#stx-pair? _%$%tl188721188745%_)
                              (let ((_%$%e188722188748%_
                                     (gx#syntax-e _%$%tl188721188745%_)))
                                (let ((_%$%hd188723188751%_
                                       (##car _%$%e188722188748%_))
                                      (_%$%tl188724188753%_
                                       (##cdr _%$%e188722188748%_)))
                                  (let ((_%test188756%_ _%$%hd188723188751%_))
                                    (if (gx#stx-pair? _%$%tl188724188753%_)
                                        (let ((_%$%e188725188758%_
                                               (gx#syntax-e
                                                _%$%tl188724188753%_)))
                                          (let ((_%$%hd188726188761%_
                                                 (##car _%$%e188725188758%_))
                                                (_%$%tl188727188763%_
                                                 (##cdr _%$%e188725188758%_)))
                                            (let ((_%K188766%_
                                                   _%$%hd188726188761%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl188727188763%_)
                                                  (let ((_%$%e188728188768%_
                                                         (gx#syntax-e
                                                          _%$%tl188727188763%_)))
                                                    (let ((_%$%hd188729188771%_
                                                           (##car _%$%e188728188768%_))
                                                          (_%$%tl188730188773%_
                                                           (##cdr _%$%e188728188768%_)))
                                                      (let ((_%E188776%_
                                                             _%$%hd188729188771%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl188730188773%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test188756%_)
                                 (cons (gx#core-expand-expression _%K188766%_)
                                       (cons (gx#core-expand-expression
                                              _%E188776%_)
                                             '()))))
                     (gx#stx-source _%stx188715%_))
                    (_%$%E188718188736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E188718188736%_)))))
                                        (_%$%E188718188736%_)))))
                              (_%$%E188718188736%_))))
                      (_%$%E188718188736%_)))))
          (_%$%E188717188778%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx188674%_)
        (let* ((_%$%e188675188685%_ _%stx188674%_)
               (_%$%E188677188689%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188675188685%_)))
               (_%$%E188676188711%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188675188685%_)
                      (let ((_%$%e188678188693%_
                             (gx#syntax-e _%$%e188675188685%_)))
                        (let ((_%$%hd188679188696%_
                               (##car _%$%e188678188693%_))
                              (_%$%tl188680188698%_
                               (##cdr _%$%e188678188693%_)))
                          (if (gx#stx-pair? _%$%tl188680188698%_)
                              (let ((_%$%e188681188701%_
                                     (gx#syntax-e _%$%tl188680188698%_)))
                                (let ((_%$%hd188682188704%_
                                       (##car _%$%e188681188701%_))
                                      (_%$%tl188683188706%_
                                       (##cdr _%$%e188681188701%_)))
                                  (let ((_%id188709%_ _%$%hd188682188704%_))
                                    (if (gx#stx-null? _%$%tl188683188706%_)
                                        (if (gx#identifier? _%id188709%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id188709%_
                                                          _%stx188674%_)
                                                         '()))
                                             (gx#stx-source _%stx188674%_))
                                            (_%$%E188677188689%_))
                                        (_%$%E188677188689%_)))))
                              (_%$%E188677188689%_))))
                      (_%$%E188677188689%_)))))
          (_%$%E188676188711%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx188620%_)
        (let* ((_%$%e188621188634%_ _%stx188620%_)
               (_%$%E188623188638%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188621188634%_)))
               (_%$%E188622188670%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188621188634%_)
                      (let ((_%$%e188624188642%_
                             (gx#syntax-e _%$%e188621188634%_)))
                        (let ((_%$%hd188625188645%_
                               (##car _%$%e188624188642%_))
                              (_%$%tl188626188647%_
                               (##cdr _%$%e188624188642%_)))
                          (if (gx#stx-pair? _%$%tl188626188647%_)
                              (let ((_%$%e188627188650%_
                                     (gx#syntax-e _%$%tl188626188647%_)))
                                (let ((_%$%hd188628188653%_
                                       (##car _%$%e188627188650%_))
                                      (_%$%tl188629188655%_
                                       (##cdr _%$%e188627188650%_)))
                                  (let ((_%id188658%_ _%$%hd188628188653%_))
                                    (if (gx#stx-pair? _%$%tl188629188655%_)
                                        (let ((_%$%e188630188660%_
                                               (gx#syntax-e
                                                _%$%tl188629188655%_)))
                                          (let ((_%$%hd188631188663%_
                                                 (##car _%$%e188630188660%_))
                                                (_%$%tl188632188665%_
                                                 (##cdr _%$%e188630188660%_)))
                                            (let ((_%expr188668%_
                                                   _%$%hd188631188663%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188632188665%_)
                                                  (if (gx#identifier?
                                                       _%id188658%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id188658%_
                            _%stx188620%_)
                           (cons (gx#core-expand-expression _%expr188668%_)
                                 '())))
               (gx#stx-source _%stx188620%_))
              (_%$%E188623188638%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E188623188638%_)))))
                                        (_%$%E188623188638%_)))))
                              (_%$%E188623188638%_))))
                      (_%$%E188623188638%_)))))
          (_%$%E188622188670%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx188465%_)
        (letrec ((_%generate188467%_
                  (lambda (_%body188497%_)
                    (let _%lp188499%_ ((_%rest188501%_ _%body188497%_)
                                       (_%ns188502%_
                                        (gx#core-context-namespace__0))
                                       (_%r188503%_ '()))
                      (let* ((_%$%e188504188519%_ _%rest188501%_)
                             (_%$%E188517188523%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e188504188519%_)))
                             (_%$%E188513188527%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e188504188519%_)
                                    (reverse _%r188503%_)
                                    (_%$%E188517188523%_))))
                             (_%$%E188506188584%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e188504188519%_)
                                    (let ((_%$%e188514188531%_
                                           (gx#syntax-e _%$%e188504188519%_)))
                                      (let ((_%$%hd188515188534%_
                                             (##car _%$%e188514188531%_))
                                            (_%$%tl188516188536%_
                                             (##cdr _%$%e188514188531%_)))
                                        (let* ((_%hd188539%_
                                                _%$%hd188515188534%_)
                                               (_%rest188541%_
                                                _%$%tl188516188536%_))
                                          (if (gx#identifier? _%hd188539%_)
                                              (_%lp188499%_
                                               _%rest188541%_
                                               _%ns188502%_
                                               (cons (cons _%hd188539%_
                                                           (cons (if _%ns188502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd188539%_
                              _%ns188502%_
                              '"#"
                              _%hd188539%_)
                             _%hd188539%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r188503%_))
                                              (let* ((_%$%e188542188552%_
                                                      _%hd188539%_)
                                                     (_%$%E188544188556%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e188542188552%_)))
                                                     (_%$%E188543188580%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e188542188552%_)
                                                            (let ((_%$%e188545188560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e188542188552%_)))
                      (let ((_%$%hd188546188563%_ (##car _%$%e188545188560%_))
                            (_%$%tl188547188565%_ (##cdr _%$%e188545188560%_)))
                        (let ((_%id188568%_ _%$%hd188546188563%_))
                          (if (gx#stx-pair? _%$%tl188547188565%_)
                              (let ((_%$%e188548188570%_
                                     (gx#syntax-e _%$%tl188547188565%_)))
                                (let ((_%$%hd188549188573%_
                                       (##car _%$%e188548188570%_))
                                      (_%$%tl188550188575%_
                                       (##cdr _%$%e188548188570%_)))
                                  (let ((_%eid188578%_ _%$%hd188549188573%_))
                                    (if (gx#stx-null? _%$%tl188550188575%_)
                                        (if (and (gx#identifier? _%id188568%_)
                                                 (gx#identifier?
                                                  _%eid188578%_))
                                            (_%lp188499%_
                                             _%rest188541%_
                                             _%ns188502%_
                                             (cons (cons _%id188568%_
                                                         (cons _%eid188578%_
                                                               '()))
                                                   _%r188503%_))
                                            (_%$%E188544188556%_))
                                        (_%$%E188544188556%_)))))
                              (_%$%E188544188556%_)))))
                    (_%$%E188544188556%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E188543188580%_))))))
                                    (_%$%E188513188527%_))))
                             (_%$%E188505188616%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e188504188519%_)
                                    (let ((_%$%e188507188588%_
                                           (gx#syntax-e _%$%e188504188519%_)))
                                      (let ((_%$%hd188508188591%_
                                             (##car _%$%e188507188588%_))
                                            (_%$%tl188509188593%_
                                             (##cdr _%$%e188507188588%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd188508188591%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl188509188593%_)
                                                (let ((_%$%e188510188596%_
                                                       (gx#syntax-e
                                                        _%$%tl188509188593%_)))
                                                  (let ((_%$%hd188511188599%_
                                                         (##car _%$%e188510188596%_))
                                                        (_%$%tl188512188601%_
                                                         (##cdr _%$%e188510188596%_)))
                                                    (let* ((_%ns188604%_
                                                            _%$%hd188511188599%_)
                                                           (_%rest188606%_
                                                            _%$%tl188512188601%_)
                                                           (_%ns188614%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns188604%_)
                        (symbol->string (gx#stx-e _%ns188604%_))
                        (if (or (gx#stx-string? _%ns188604%_)
                                (gx#stx-false? _%ns188604%_))
                            (gx#stx-e _%ns188604%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx188465%_
                             _%ns188604%_)))))
              (_%lp188499%_ _%rest188606%_ _%ns188614%_ _%r188503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E188506188584%_))
                                            (_%$%E188506188584%_))))
                                    (_%$%E188506188584%_)))))
                        (_%$%E188505188616%_))))))
          (let* ((_%$%e188468188475%_ _%stx188465%_)
                 (_%$%E188470188479%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188468188475%_)))
                 (_%$%E188469188493%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188468188475%_)
                        (let ((_%$%e188471188483%_
                               (gx#syntax-e _%$%e188468188475%_)))
                          (let ((_%$%hd188472188486%_
                                 (##car _%$%e188471188483%_))
                                (_%$%tl188473188488%_
                                 (##cdr _%$%e188471188483%_)))
                            (let ((_%body188491%_ _%$%tl188473188488%_))
                              (if (gx#stx-list? _%body188491%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate188467%_ _%body188491%_))
                                  (_%$%E188470188479%_)))))
                        (_%$%E188470188479%_)))))
            (_%$%E188469188493%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx188422%_)
        (let* ((_%$%e188423188433%_ _%stx188422%_)
               (_%$%E188425188437%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188423188433%_)))
               (_%$%E188424188461%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188423188433%_)
                      (let ((_%$%e188426188441%_
                             (gx#syntax-e _%$%e188423188433%_)))
                        (let ((_%$%hd188427188444%_
                               (##car _%$%e188426188441%_))
                              (_%$%tl188428188446%_
                               (##cdr _%$%e188426188441%_)))
                          (if (gx#stx-pair? _%$%tl188428188446%_)
                              (let ((_%$%e188429188449%_
                                     (gx#syntax-e _%$%tl188428188446%_)))
                                (let ((_%$%hd188430188452%_
                                       (##car _%$%e188429188449%_))
                                      (_%$%tl188431188454%_
                                       (##cdr _%$%e188429188449%_)))
                                  (let* ((_%hd188457%_ _%$%hd188430188452%_)
                                         (_%body188459%_ _%$%tl188431188454%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd188457%_)
                                             (gx#stx-list? _%body188459%_)
                                             (not (gx#stx-null?
                                                   _%body188459%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd188457%_)
                                         _%body188459%_)
                                        (_%$%E188425188437%_)))))
                              (_%$%E188425188437%_))))
                      (_%$%E188425188437%_)))))
          (_%$%E188424188461%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx188358%_)
        (letrec ((_%generate188360%_
                  (lambda (_%clause188390%_)
                    (let* ((_%$%e188391188398%_ _%clause188390%_)
                           (_%$%E188393188402%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx188358%_
                               _%clause188390%_)))
                           (_%$%E188392188418%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188391188398%_)
                                  (let ((_%$%e188394188406%_
                                         (gx#syntax-e _%$%e188391188398%_)))
                                    (let ((_%$%hd188395188409%_
                                           (##car _%$%e188394188406%_))
                                          (_%$%tl188396188411%_
                                           (##cdr _%$%e188394188406%_)))
                                      (let* ((_%hd188414%_
                                              _%$%hd188395188409%_)
                                             (_%body188416%_
                                              _%$%tl188396188411%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd188414%_)
                                                 (gx#stx-list? _%body188416%_)
                                                 (not (gx#stx-null?
                                                       _%body188416%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd188414%_)
                                                   _%body188416%_)
                                             (gx#stx-source _%clause188390%_))
                                            (_%$%E188393188402%_)))))
                                  (_%$%E188393188402%_)))))
                      (_%$%E188392188418%_)))))
          (let* ((_%$%e188361188368%_ _%stx188358%_)
                 (_%$%E188363188372%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188361188368%_)))
                 (_%$%E188362188386%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188361188368%_)
                        (let ((_%$%e188364188376%_
                               (gx#syntax-e _%$%e188361188368%_)))
                          (let ((_%$%hd188365188379%_
                                 (##car _%$%e188364188376%_))
                                (_%$%tl188366188381%_
                                 (##cdr _%$%e188364188376%_)))
                            (let ((_%clauses188384%_ _%$%tl188366188381%_))
                              (if (gx#stx-list? _%clauses188384%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate188360%_
                                    _%clauses188384%_))
                                  (_%$%E188363188372%_)))))
                        (_%$%E188363188372%_)))))
            (_%$%E188362188386%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx188259%_ _%form188260%_)
        (letrec ((_%generate188262%_
                  (lambda (_%bind188305%_)
                    (let* ((_%$%e188306188316%_ _%bind188305%_)
                           (_%$%E188308188320%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx188259%_
                               _%bind188305%_)))
                           (_%$%E188307188344%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188306188316%_)
                                  (let ((_%$%e188309188324%_
                                         (gx#syntax-e _%$%e188306188316%_)))
                                    (let ((_%$%hd188310188327%_
                                           (##car _%$%e188309188324%_))
                                          (_%$%tl188311188329%_
                                           (##cdr _%$%e188309188324%_)))
                                      (let ((_%ids188332%_
                                             _%$%hd188310188327%_))
                                        (if (gx#stx-pair? _%$%tl188311188329%_)
                                            (let ((_%$%e188312188334%_
                                                   (gx#syntax-e
                                                    _%$%tl188311188329%_)))
                                              (let ((_%$%hd188313188337%_
                                                     (##car _%$%e188312188334%_))
                                                    (_%$%tl188314188339%_
                                                     (##cdr _%$%e188312188334%_)))
                                                (let ((_%expr188342%_
                                                       _%$%hd188313188337%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl188314188339%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids188332%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids188332%_)
                        (cons _%expr188342%_ '()))
                  (_%$%E188308188320%_))
              (_%$%E188308188320%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E188308188320%_)))))
                                  (_%$%E188308188320%_)))))
                      (_%$%E188307188344%_)))))
          (let* ((_%$%e188263188273%_ _%stx188259%_)
                 (_%$%E188265188277%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188263188273%_)))
                 (_%$%E188264188301%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188263188273%_)
                        (let ((_%$%e188266188281%_
                               (gx#syntax-e _%$%e188263188273%_)))
                          (let ((_%$%hd188267188284%_
                                 (##car _%$%e188266188281%_))
                                (_%$%tl188268188286%_
                                 (##cdr _%$%e188266188281%_)))
                            (if (gx#stx-pair? _%$%tl188268188286%_)
                                (let ((_%$%e188269188289%_
                                       (gx#syntax-e _%$%tl188268188286%_)))
                                  (let ((_%$%hd188270188292%_
                                         (##car _%$%e188269188289%_))
                                        (_%$%tl188271188294%_
                                         (##cdr _%$%e188269188289%_)))
                                    (let* ((_%hd188297%_ _%$%hd188270188292%_)
                                           (_%body188299%_
                                            _%$%tl188271188294%_))
                                      (if (and (gx#stx-list? _%hd188297%_)
                                               (gx#stx-list? _%body188299%_)
                                               (not (gx#stx-null?
                                                     _%body188299%_)))
                                          (gx#core-cons*
                                           _%form188260%_
                                           (gx#stx-map1
                                            _%generate188262%_
                                            _%hd188297%_)
                                           _%body188299%_)
                                          (_%$%E188265188277%_)))))
                                (_%$%E188265188277%_))))
                        (_%$%E188265188277%_)))))
            (_%$%E188264188301%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx188351%_)
        (let ((_%form188353%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx188351%_ _%form188353%_))))
    (define gx#macro-expand-let-values
      (lambda _g191029_
        (let ((_g191030_ (##length _g191029_)))
          (cond ((##fx= _g191030_ 1)
                 (apply gx#macro-expand-let-values__0 _g191029_))
                ((##fx= _g191030_ 2)
                 (apply gx#macro-expand-let-values__% _g191029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g191029_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx188256%_)
        (gx#macro-expand-let-values__% _%stx188256%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx188254%_)
        (gx#macro-expand-let-values__% _%stx188254%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx188145%_)
        (let* ((_%$%e188146188172%_ _%stx188145%_)
               (_%$%E188158188176%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188146188172%_)))
               (_%$%E188148188218%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188146188172%_)
                      (let ((_%$%e188159188180%_
                             (gx#syntax-e _%$%e188146188172%_)))
                        (let ((_%$%hd188160188183%_
                               (##car _%$%e188159188180%_))
                              (_%$%tl188161188185%_
                               (##cdr _%$%e188159188180%_)))
                          (if (gx#stx-pair? _%$%tl188161188185%_)
                              (let ((_%$%e188162188188%_
                                     (gx#syntax-e _%$%tl188161188185%_)))
                                (let ((_%$%hd188163188191%_
                                       (##car _%$%e188162188188%_))
                                      (_%$%tl188164188193%_
                                       (##cdr _%$%e188162188188%_)))
                                  (let ((_%test188196%_ _%$%hd188163188191%_))
                                    (if (gx#stx-pair? _%$%tl188164188193%_)
                                        (let ((_%$%e188165188198%_
                                               (gx#syntax-e
                                                _%$%tl188164188193%_)))
                                          (let ((_%$%hd188166188201%_
                                                 (##car _%$%e188165188198%_))
                                                (_%$%tl188167188203%_
                                                 (##cdr _%$%e188165188198%_)))
                                            (let ((_%K188206%_
                                                   _%$%hd188166188201%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl188167188203%_)
                                                  (let ((_%$%e188168188208%_
                                                         (gx#syntax-e
                                                          _%$%tl188167188203%_)))
                                                    (let ((_%$%hd188169188211%_
                                                           (##car _%$%e188168188208%_))
                                                          (_%$%tl188170188213%_
                                                           (##cdr _%$%e188168188208%_)))
                                                      (let ((_%E188216%_
                                                             _%$%hd188169188211%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl188170188213%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test188196%_
                                                             _%K188206%_
                                                             _%E188216%_)
                                                            (_%$%E188158188176%_)))))
                                                  (_%$%E188158188176%_)))))
                                        (_%$%E188158188176%_)))))
                              (_%$%E188158188176%_))))
                      (_%$%E188158188176%_))))
               (_%$%E188147188250%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188146188172%_)
                      (let ((_%$%e188149188222%_
                             (gx#syntax-e _%$%e188146188172%_)))
                        (let ((_%$%hd188150188225%_
                               (##car _%$%e188149188222%_))
                              (_%$%tl188151188227%_
                               (##cdr _%$%e188149188222%_)))
                          (if (gx#stx-pair? _%$%tl188151188227%_)
                              (let ((_%$%e188152188230%_
                                     (gx#syntax-e _%$%tl188151188227%_)))
                                (let ((_%$%hd188153188233%_
                                       (##car _%$%e188152188230%_))
                                      (_%$%tl188154188235%_
                                       (##cdr _%$%e188152188230%_)))
                                  (let ((_%test188238%_ _%$%hd188153188233%_))
                                    (if (gx#stx-pair? _%$%tl188154188235%_)
                                        (let ((_%$%e188155188240%_
                                               (gx#syntax-e
                                                _%$%tl188154188235%_)))
                                          (let ((_%$%hd188156188243%_
                                                 (##car _%$%e188155188240%_))
                                                (_%$%tl188157188245%_
                                                 (##cdr _%$%e188155188240%_)))
                                            (let ((_%K188248%_
                                                   _%$%hd188156188243%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188157188245%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test188238%_
                                                   _%K188248%_
                                                   '#!void)
                                                  (_%$%E188148188218%_)))))
                                        (_%$%E188148188218%_)))))
                              (_%$%E188148188218%_))))
                      (_%$%E188148188218%_)))))
          (_%$%E188147188250%_))))
    (define gx#free-identifier=?
      (lambda (_%xid188130%_ _%yid188131%_)
        (let ((_%xe188133%_ (gx#resolve-identifier__0 _%xid188130%_))
              (_%ye188134%_ (gx#resolve-identifier__0 _%yid188131%_)))
          (if (and _%xe188133%_ _%ye188134%_)
              (let ((_%$e188137%_ (eq? _%xe188133%_ _%ye188134%_)))
                (if _%$e188137%_
                    _%$e188137%_
                    (if (##structure-instance-of? _%xe188133%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye188134%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe188133%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye188134%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe188133%_ _%ye188134%_)
                  '#f
                  (gx#stx-eq? _%xid188130%_ _%yid188131%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid188111%_ _%yid188112%_)
        (letrec ((_%context188114%_
                  (lambda (_%e188128%_)
                    (if (##structure-direct-instance-of?
                         _%e188128%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e188128%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks188115%_
                  (lambda (_%e188123%_)
                    (if (symbol? _%e188123%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e188123%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e188123%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e188123%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap188116%_
                  (lambda (_%e188121%_)
                    (if (symbol? _%e188121%_)
                        _%e188121%_
                        (gx#syntax-local-unwrap _%e188121%_)))))
          (let ((_%x188118%_ (_%unwrap188116%_ _%xid188111%_))
                (_%y188119%_ (_%unwrap188116%_ _%yid188112%_)))
            (if (gx#stx-eq? _%x188118%_ _%y188119%_)
                (if (eq? (_%context188114%_ _%x188118%_)
                         (_%context188114%_ _%y188119%_))
                    (equal? (_%marks188115%_ _%x188118%_)
                            (_%marks188115%_ _%y188119%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx188109%_)
        (if (gx#identifier? _%stx188109%_)
            (gx#core-identifier=? _%stx188109%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx188107%_)
        (if (gx#identifier? _%stx188107%_)
            (gx#core-identifier=? _%stx188107%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx188050%_ _%where188051%_)
        (let _%lp188053%_ ((_%rest188055%_ (gx#syntax->list _%stx188050%_)))
          (let* ((_%$%rest188056188064%_ _%rest188055%_)
                 (_%$%else188058188072%_ (lambda () '#t))
                 (_%$%K188060188085%_
                  (lambda (_%rest188075%_ _%hd188076%_)
                    (if (gx#identifier? _%hd188076%_)
                        (if (__find (lambda (_%$%g188078188080%_)
                                      (gx#bound-identifier=?
                                       _%$%g188078188080%_
                                       _%hd188076%_))
                                    _%rest188075%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where188051%_
                             _%hd188076%_)
                            (_%lp188053%_ _%rest188075%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where188051%_
                         _%hd188076%_)))))
            (if (pair? _%$%rest188056188064%_)
                (let ((_%$%hd188061188088%_ (##car _%$%rest188056188064%_))
                      (_%$%tl188062188090%_ (##cdr _%$%rest188056188064%_)))
                  (let* ((_%hd188093%_ _%$%hd188061188088%_)
                         (_%rest188095%_ _%$%tl188062188090%_))
                    (_%$%K188060188085%_ _%rest188095%_ _%hd188093%_)))
                (_%$%else188058188072%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx188100%_)
        (let ((_%where188102%_ _%stx188100%_))
          (gx#check-duplicate-identifiers__% _%stx188100%_ _%where188102%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g191031_
        (let ((_g191032_ (##length _g191031_)))
          (cond ((##fx= _g191032_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g191031_))
                ((##fx= _g191032_ 2)
                 (apply gx#check-duplicate-identifiers__% _g191031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g191031_))))))
    (define gx#core-bind-values?
      (lambda (_%stx188042%_)
        (gx#stx-andmap
         (lambda (_%x188044%_)
           (let ((_%$e188046%_ (gx#identifier? _%x188044%_)))
             (if _%$e188046%_ _%$e188046%_ (gx#stx-false? _%x188044%_))))
         _%stx188042%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx188006%_ _%rebind?188007%_ _%phi188008%_ _%ctx188009%_)
        (gx#stx-for-each1
         (lambda (_%id188011%_)
           (if (gx#identifier? _%id188011%_)
               (gx#core-bind-runtime!__%
                _%id188011%_
                _%rebind?188007%_
                _%phi188008%_
                _%ctx188009%_)
               '#!void))
         _%stx188006%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx188016%_)
        (let* ((_%rebind?188018%_ '#f)
               (_%phi188020%_ (gx#current-expander-phi))
               (_%ctx188022%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188016%_
           _%rebind?188018%_
           _%phi188020%_
           _%ctx188022%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx188024%_ _%rebind?188025%_)
        (let* ((_%phi188027%_ (gx#current-expander-phi))
               (_%ctx188029%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188024%_
           _%rebind?188025%_
           _%phi188027%_
           _%ctx188029%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx188031%_ _%rebind?188032%_ _%phi188033%_)
        (let ((_%ctx188035%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188031%_
           _%rebind?188032%_
           _%phi188033%_
           _%ctx188035%_))))
    (define gx#core-bind-values!
      (lambda _g191033_
        (let ((_g191034_ (##length _g191033_)))
          (cond ((##fx= _g191034_ 1) (apply gx#core-bind-values!__0 _g191033_))
                ((##fx= _g191034_ 2) (apply gx#core-bind-values!__1 _g191033_))
                ((##fx= _g191034_ 3) (apply gx#core-bind-values!__2 _g191033_))
                ((##fx= _g191034_ 4) (apply gx#core-bind-values!__% _g191033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g191033_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx188001%_)
        (gx#stx-map1
         (lambda (_%x188003%_)
           (if (gx#identifier? _%x188003%_)
               (gx#core-quote-syntax__0 _%x188003%_)
               '#f))
         _%stx188001%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx187994%_)
        (if (gx#identifier? _%stx187994%_)
            (let* ((_%bind187996%_ (gx#resolve-identifier__0 _%stx187994%_))
                   (_%$e187998%_ (not _%bind187996%_)))
              (if _%$e187998%_
                  _%$e187998%_
                  (##structure-instance-of?
                   _%bind187996%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id187983%_ _%form187984%_)
        (let ((_%bind187986%_ (gx#resolve-identifier__0 _%id187983%_)))
          (if (##structure-instance-of? _%bind187986%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id187983%_)
              (if (not _%bind187986%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id187983%_)))
                      (gx#core-quote-syntax__0 _%id187983%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form187984%_
                       _%id187983%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form187984%_
                   _%id187983%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id187938%_ _%rebind?187939%_ _%phi187940%_ _%ctx187941%_)
        (let* ((_%key187943%_ (gx#core-identifier-key _%id187938%_))
               (_%eid187945%_
                (gx#make-binding-id__%
                 _%key187943%_
                 '#f
                 _%phi187940%_
                 _%ctx187941%_))
               (_%bind187951%_
                (if (##structure-instance-of?
                     _%ctx187941%_
                     'gx#module-context::t)
                    (let ((__obj191010
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
                       __obj191010
                       _%eid187945%_
                       _%key187943%_
                       _%phi187940%_
                       _%ctx187941%_)
                      __obj191010)
                    (if (##structure-instance-of?
                         _%ctx187941%_
                         'gx#top-context::t)
                        (let ((__obj191009
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj191009
                           _%eid187945%_
                           _%key187943%_
                           _%phi187940%_)
                          __obj191009)
                        (if (##structure-instance-of?
                             _%ctx187941%_
                             'gx#local-context::t)
                            (let ((__obj191008
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj191008
                               _%eid187945%_
                               _%key187943%_
                               _%phi187940%_)
                              __obj191008)
                            (let ((__obj191007
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj191007
                               _%eid187945%_
                               _%key187943%_
                               _%phi187940%_)
                              __obj191007))))))
          (gx#bind-identifier!__%
           _%id187938%_
           _%bind187951%_
           _%rebind?187939%_
           _%phi187940%_
           _%ctx187941%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id187957%_)
        (let* ((_%rebind?187959%_ '#f)
               (_%phi187961%_ (gx#current-expander-phi))
               (_%ctx187963%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id187957%_
           _%rebind?187959%_
           _%phi187961%_
           _%ctx187963%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id187965%_ _%rebind?187966%_)
        (let* ((_%phi187968%_ (gx#current-expander-phi))
               (_%ctx187970%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id187965%_
           _%rebind?187966%_
           _%phi187968%_
           _%ctx187970%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id187972%_ _%rebind?187973%_ _%phi187974%_)
        (let ((_%ctx187976%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id187972%_
           _%rebind?187973%_
           _%phi187974%_
           _%ctx187976%_))))
    (define gx#core-bind-runtime!
      (lambda _g191035_
        (let ((_g191036_ (##length _g191035_)))
          (cond ((##fx= _g191036_ 1)
                 (apply gx#core-bind-runtime!__0 _g191035_))
                ((##fx= _g191036_ 2)
                 (apply gx#core-bind-runtime!__1 _g191035_))
                ((##fx= _g191036_ 3)
                 (apply gx#core-bind-runtime!__2 _g191035_))
                ((##fx= _g191036_ 4)
                 (apply gx#core-bind-runtime!__% _g191035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g191035_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id187890%_
               _%eid187891%_
               _%rebind?187892%_
               _%phi187893%_
               _%ctx187894%_)
        (let* ((_%key187896%_ (gx#core-identifier-key _%id187890%_))
               (_%bind187901%_
                (if (##structure-instance-of?
                     _%ctx187894%_
                     'gx#module-context::t)
                    (let ((__obj191013
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
                       __obj191013
                       _%eid187891%_
                       _%key187896%_
                       _%phi187893%_
                       _%ctx187894%_)
                      __obj191013)
                    (if (##structure-instance-of?
                         _%ctx187894%_
                         'gx#top-context::t)
                        (let ((__obj191012
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj191012
                           _%eid187891%_
                           _%key187896%_
                           _%phi187893%_)
                          __obj191012)
                        (let ((__obj191011
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj191011
                           _%eid187891%_
                           _%key187896%_
                           _%phi187893%_)
                          __obj191011)))))
          (gx#bind-identifier!__%
           _%id187890%_
           _%bind187901%_
           _%rebind?187892%_
           _%phi187893%_
           _%ctx187894%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id187907%_ _%eid187908%_)
        (let* ((_%rebind?187910%_ '#f)
               (_%phi187912%_ (gx#current-expander-phi))
               (_%ctx187914%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id187907%_
           _%eid187908%_
           _%rebind?187910%_
           _%phi187912%_
           _%ctx187914%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id187916%_ _%eid187917%_ _%rebind?187918%_)
        (let* ((_%phi187920%_ (gx#current-expander-phi))
               (_%ctx187922%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id187916%_
           _%eid187917%_
           _%rebind?187918%_
           _%phi187920%_
           _%ctx187922%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id187924%_ _%eid187925%_ _%rebind?187926%_ _%phi187927%_)
        (let ((_%ctx187929%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id187924%_
           _%eid187925%_
           _%rebind?187926%_
           _%phi187927%_
           _%ctx187929%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g191037_
        (let ((_g191038_ (##length _g191037_)))
          (cond ((##fx= _g191038_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g191037_))
                ((##fx= _g191038_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g191037_))
                ((##fx= _g191038_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g191037_))
                ((##fx= _g191038_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g191037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g191037_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id187850%_
               _%eid187851%_
               _%rebind?187852%_
               _%phi187853%_
               _%ctx187854%_)
        (gx#bind-identifier!__%
         _%id187850%_
         (let ((__obj191014
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj191014
            _%eid187851%_
            (gx#core-identifier-key _%id187850%_)
            _%phi187853%_)
           __obj191014)
         _%rebind?187852%_
         _%phi187853%_
         _%ctx187854%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id187859%_ _%eid187860%_)
        (let* ((_%rebind?187862%_ '#f)
               (_%phi187864%_ (gx#current-expander-phi))
               (_%ctx187866%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id187859%_
           _%eid187860%_
           _%rebind?187862%_
           _%phi187864%_
           _%ctx187866%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id187868%_ _%eid187869%_ _%rebind?187870%_)
        (let* ((_%phi187872%_ (gx#current-expander-phi))
               (_%ctx187874%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id187868%_
           _%eid187869%_
           _%rebind?187870%_
           _%phi187872%_
           _%ctx187874%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id187876%_ _%eid187877%_ _%rebind?187878%_ _%phi187879%_)
        (let ((_%ctx187881%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id187876%_
           _%eid187877%_
           _%rebind?187878%_
           _%phi187879%_
           _%ctx187881%_))))
    (define gx#core-bind-extern!
      (lambda _g191039_
        (let ((_g191040_ (##length _g191039_)))
          (cond ((##fx= _g191040_ 2) (apply gx#core-bind-extern!__0 _g191039_))
                ((##fx= _g191040_ 3) (apply gx#core-bind-extern!__1 _g191039_))
                ((##fx= _g191040_ 4) (apply gx#core-bind-extern!__2 _g191039_))
                ((##fx= _g191040_ 5) (apply gx#core-bind-extern!__% _g191039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g191039_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id187804%_
               _%e187805%_
               _%rebind?187806%_
               _%phi187807%_
               _%ctx187808%_)
        (gx#bind-identifier!__%
         _%id187804%_
         (let ((_%key187813%_ (gx#core-identifier-key _%id187804%_))
               (_%e187814%_
                (if (or (##structure-instance-of? _%e187805%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e187805%_
                         'gx#expander-context::t))
                    _%e187805%_
                    (##structure
                     gx#user-expander::t
                     _%e187805%_
                     _%ctx187808%_
                     _%phi187807%_))))
           (let ((__obj191015
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj191015
              (gx#make-binding-id__%
               _%key187813%_
               '#t
               _%phi187807%_
               _%ctx187808%_)
              _%key187813%_
              _%phi187807%_
              _%e187814%_)
             __obj191015))
         _%rebind?187806%_
         _%phi187807%_
         _%ctx187808%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id187819%_ _%e187820%_)
        (let* ((_%rebind?187822%_ '#f)
               (_%phi187824%_ (gx#current-expander-phi))
               (_%ctx187826%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id187819%_
           _%e187820%_
           _%rebind?187822%_
           _%phi187824%_
           _%ctx187826%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id187828%_ _%e187829%_ _%rebind?187830%_)
        (let* ((_%phi187832%_ (gx#current-expander-phi))
               (_%ctx187834%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id187828%_
           _%e187829%_
           _%rebind?187830%_
           _%phi187832%_
           _%ctx187834%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id187836%_ _%e187837%_ _%rebind?187838%_ _%phi187839%_)
        (let ((_%ctx187841%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id187836%_
           _%e187837%_
           _%rebind?187838%_
           _%phi187839%_
           _%ctx187841%_))))
    (define gx#core-bind-syntax!
      (lambda _g191041_
        (let ((_g191042_ (##length _g191041_)))
          (cond ((##fx= _g191042_ 2) (apply gx#core-bind-syntax!__0 _g191041_))
                ((##fx= _g191042_ 3) (apply gx#core-bind-syntax!__1 _g191041_))
                ((##fx= _g191042_ 4) (apply gx#core-bind-syntax!__2 _g191041_))
                ((##fx= _g191042_ 5) (apply gx#core-bind-syntax!__% _g191041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g191041_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id187787%_ _%e187788%_ _%rebind?187789%_)
        (gx#core-bind-syntax!__%
         _%id187787%_
         _%e187788%_
         _%rebind?187789%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id187794%_ _%e187795%_)
        (let ((_%rebind?187797%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id187794%_
           _%e187795%_
           _%rebind?187797%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g191043_
        (let ((_g191044_ (##length _g191043_)))
          (cond ((##fx= _g191044_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g191043_))
                ((##fx= _g191044_ 3)
                 (apply gx#core-bind-root-syntax!__% _g191043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g191043_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id187745%_
               _%alias-id187746%_
               _%rebind?187747%_
               _%phi187748%_
               _%ctx187749%_)
        (gx#bind-identifier!__%
         _%id187745%_
         (let* ((_%key187751%_ (gx#core-identifier-key _%id187745%_))
                (__obj191016
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj191016
            (gx#make-binding-id__%
             _%key187751%_
             '#t
             _%phi187748%_
             _%ctx187749%_)
            _%key187751%_
            _%phi187748%_
            _%alias-id187746%_)
           __obj191016)
         _%rebind?187747%_
         _%phi187748%_
         _%ctx187749%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id187756%_ _%alias-id187757%_)
        (let* ((_%rebind?187759%_ '#f)
               (_%phi187761%_ (gx#current-expander-phi))
               (_%ctx187763%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id187756%_
           _%alias-id187757%_
           _%rebind?187759%_
           _%phi187761%_
           _%ctx187763%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id187765%_ _%alias-id187766%_ _%rebind?187767%_)
        (let* ((_%phi187769%_ (gx#current-expander-phi))
               (_%ctx187771%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id187765%_
           _%alias-id187766%_
           _%rebind?187767%_
           _%phi187769%_
           _%ctx187771%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id187773%_ _%alias-id187774%_ _%rebind?187775%_ _%phi187776%_)
        (let ((_%ctx187778%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id187773%_
           _%alias-id187774%_
           _%rebind?187775%_
           _%phi187776%_
           _%ctx187778%_))))
    (define gx#core-bind-alias!
      (lambda _g191045_
        (let ((_g191046_ (##length _g191045_)))
          (cond ((##fx= _g191046_ 2) (apply gx#core-bind-alias!__0 _g191045_))
                ((##fx= _g191046_ 3) (apply gx#core-bind-alias!__1 _g191045_))
                ((##fx= _g191046_ 4) (apply gx#core-bind-alias!__2 _g191045_))
                ((##fx= _g191046_ 5) (apply gx#core-bind-alias!__% _g191045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g191045_))))))
    (define gx#make-binding-id__%
      (lambda (_%key187695%_ _%syntax?187696%_ _%phi187697%_ _%ctx187698%_)
        (if (uninterned-symbol? _%key187695%_)
            (##gensym 'L)
            (if (pair? _%key187695%_)
                (gensym (##car _%key187695%_))
                (if (##structure-instance-of? _%ctx187698%_ 'gx#top-context::t)
                    (let ((_%ns187703%_
                           (gx#core-context-namespace__% _%ctx187698%_)))
                      (if (and (fxzero? _%phi187697%_) (not _%syntax?187696%_))
                          (if _%ns187703%_
                              (make-symbol__1 _%ns187703%_ '"#" _%key187695%_)
                              _%key187695%_)
                          (if _%syntax?187696%_
                              (make-symbol__1
                               (let ((_%$e187707%_ _%ns187703%_))
                                 (if _%$e187707%_ _%$e187707%_ '""))
                               '"[:"
                               (number->string _%phi187697%_)
                               '":]#"
                               _%key187695%_)
                              (make-symbol__1
                               (let ((_%$e187711%_ _%ns187703%_))
                                 (if _%$e187711%_ _%$e187711%_ '""))
                               '"["
                               (number->string _%phi187697%_)
                               '"]#"
                               _%key187695%_))))
                    (gensym _%key187695%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key187718%_)
        (let* ((_%syntax?187720%_ '#f)
               (_%phi187722%_ (gx#current-expander-phi))
               (_%ctx187724%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key187718%_
           _%syntax?187720%_
           _%phi187722%_
           _%ctx187724%_))))
    (define gx#make-binding-id__1
      (lambda (_%key187726%_ _%syntax?187727%_)
        (let* ((_%phi187729%_ (gx#current-expander-phi))
               (_%ctx187731%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key187726%_
           _%syntax?187727%_
           _%phi187729%_
           _%ctx187731%_))))
    (define gx#make-binding-id__2
      (lambda (_%key187733%_ _%syntax?187734%_ _%phi187735%_)
        (let ((_%ctx187737%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key187733%_
           _%syntax?187734%_
           _%phi187735%_
           _%ctx187737%_))))
    (define gx#make-binding-id
      (lambda _g191047_
        (let ((_g191048_ (##length _g191047_)))
          (cond ((##fx= _g191048_ 1) (apply gx#make-binding-id__0 _g191047_))
                ((##fx= _g191048_ 2) (apply gx#make-binding-id__1 _g191047_))
                ((##fx= _g191048_ 3) (apply gx#make-binding-id__2 _g191047_))
                ((##fx= _g191048_ 4) (apply gx#make-binding-id__% _g191047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g191047_))))))))
