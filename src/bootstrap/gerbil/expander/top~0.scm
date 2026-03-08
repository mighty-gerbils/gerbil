(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1773009268)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx182858%_)
        (letrec ((_%expand-special182860%_
                  (lambda (_%hd182862%_ _%K182863%_ _%rest182864%_ _%r182865%_)
                    (_%K182863%_
                     _%rest182864%_
                     (cons (gx#core-expand-top _%hd182862%_) _%r182865%_)))))
          (gx#core-expand-block__0 _%stx182858%_ _%expand-special182860%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx182552%_)
        (letrec ((_%expand-special182554%_
                  (lambda (_%hd182676%_ _%K182677%_ _%rest182678%_ _%r182679%_)
                    (let* ((_%K182683%_
                            (lambda (_%e182681%_)
                              (_%K182677%_
                               _%rest182678%_
                               (cons _%e182681%_ _%r182679%_))))
                           (_%e182684182726%_ _%hd182676%_)
                           (_%E182721182730%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182684182726%_)))
                           (_%E182717182742%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182684182726%_)
                                  (let ((_%e182722182734%_
                                         (gx#syntax-e _%e182684182726%_)))
                                    (let ((_%hd182723182737%_
                                           (##car _%e182722182734%_))
                                          (_%tl182724182739%_
                                           (##cdr _%e182722182734%_)))
                                      (if (and (gx#identifier?
                                                _%hd182723182737%_)
                                               (gx#core-identifier=?
                                                _%hd182723182737%_
                                                '%#define-runtime))
                                          (_%K182683%_
                                           (gx#core-expand-define-runtime%
                                            _%hd182676%_))
                                          (_%E182721182730%_))))
                                  (_%E182721182730%_))))
                           (_%E182713182754%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182684182726%_)
                                  (let ((_%e182718182746%_
                                         (gx#syntax-e _%e182684182726%_)))
                                    (let ((_%hd182719182749%_
                                           (##car _%e182718182746%_))
                                          (_%tl182720182751%_
                                           (##cdr _%e182718182746%_)))
                                      (if (and (gx#identifier?
                                                _%hd182719182749%_)
                                               (gx#core-identifier=?
                                                _%hd182719182749%_
                                                '%#define-alias))
                                          (_%K182683%_
                                           (gx#core-expand-define-alias%
                                            _%hd182676%_))
                                          (_%E182717182742%_))))
                                  (_%E182717182742%_))))
                           (_%E182703182766%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182684182726%_)
                                  (let ((_%e182714182758%_
                                         (gx#syntax-e _%e182684182726%_)))
                                    (let ((_%hd182715182761%_
                                           (##car _%e182714182758%_))
                                          (_%tl182716182763%_
                                           (##cdr _%e182714182758%_)))
                                      (if (and (gx#identifier?
                                                _%hd182715182761%_)
                                               (gx#core-identifier=?
                                                _%hd182715182761%_
                                                '%#define-syntax))
                                          (_%K182683%_
                                           (gx#core-expand-define-syntax%
                                            _%hd182676%_))
                                          (_%E182713182754%_))))
                                  (_%E182713182754%_))))
                           (_%E182690182798%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182684182726%_)
                                  (let ((_%e182704182770%_
                                         (gx#syntax-e _%e182684182726%_)))
                                    (let ((_%hd182705182773%_
                                           (##car _%e182704182770%_))
                                          (_%tl182706182775%_
                                           (##cdr _%e182704182770%_)))
                                      (if (and (gx#identifier?
                                                _%hd182705182773%_)
                                               (gx#core-identifier=?
                                                _%hd182705182773%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182706182775%_)
                                              (let ((_%e182707182778%_
                                                     (gx#syntax-e
                                                      _%tl182706182775%_)))
                                                (let ((_%hd182708182781%_
                                                       (##car _%e182707182778%_))
                                                      (_%tl182709182783%_
                                                       (##cdr _%e182707182778%_)))
                                                  (let ((_%hd-bind182786%_
                                                         _%hd182708182781%_))
                                                    (if (gx#stx-pair?
                                                         _%tl182709182783%_)
                                                        (let ((_%e182710182788%_
                                                               (gx#syntax-e
                                                                _%tl182709182783%_)))
                                                          (let ((_%hd182711182791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e182710182788%_))
                        (_%tl182712182793%_ (##cdr _%e182710182788%_)))
                    (let ((_%expr182796%_ _%hd182711182791%_))
                      (if (gx#stx-null? _%tl182712182793%_)
                          (if (gx#core-bind-values? _%hd-bind182786%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind182786%_)
                                (_%K182683%_ _%hd182676%_))
                              (_%E182703182766%_))
                          (_%E182703182766%_)))))
                (_%E182703182766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182703182766%_))
                                          (_%E182703182766%_))))
                                  (_%E182703182766%_))))
                           (_%E182686182842%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182684182726%_)
                                  (let ((_%e182691182802%_
                                         (gx#syntax-e _%e182684182726%_)))
                                    (let ((_%hd182692182805%_
                                           (##car _%e182691182802%_))
                                          (_%tl182693182807%_
                                           (##cdr _%e182691182802%_)))
                                      (if (and (gx#identifier?
                                                _%hd182692182805%_)
                                               (gx#core-identifier=?
                                                _%hd182692182805%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182693182807%_)
                                              (let ((_%e182694182810%_
                                                     (gx#syntax-e
                                                      _%tl182693182807%_)))
                                                (let ((_%hd182695182813%_
                                                       (##car _%e182694182810%_))
                                                      (_%tl182696182815%_
                                                       (##cdr _%e182694182810%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd182695182813%_)
                                                      (let ((_%e182700182818%_
                                                             (gx#syntax-e
                                                              _%hd182695182813%_)))
                                                        (let ((_%hd182701182821%_
                                                               (##car _%e182700182818%_))
                                                              (_%tl182702182823%_
                                                               (##cdr _%e182700182818%_)))
                                                          (let ((_%id182826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd182701182821%_))
                    (if (gx#stx-null? _%tl182702182823%_)
                        (if (gx#stx-pair? _%tl182696182815%_)
                            (let ((_%e182697182828%_
                                   (gx#syntax-e _%tl182696182815%_)))
                              (let ((_%hd182698182831%_
                                     (##car _%e182697182828%_))
                                    (_%tl182699182833%_
                                     (##cdr _%e182697182828%_)))
                                (let* ((_%expr182836%_ _%hd182698182831%_)
                                       (_%props182838%_ _%tl182699182833%_))
                                  (if (gx#identifier? _%id182826%_)
                                      (let ((_%bind182840%_
                                             (gx#core-bind-runtime!__0
                                              _%id182826%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind182840%_
                                         _%props182838%_)
                                        (_%K182683%_ _%hd182676%_))
                                      (_%E182690182798%_)))))
                            (_%E182690182798%_))
                        (_%E182690182798%_)))))
              (_%E182690182798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182690182798%_))
                                          (_%E182690182798%_))))
                                  (_%E182690182798%_))))
                           (_%E182685182854%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182684182726%_)
                                  (let ((_%e182687182846%_
                                         (gx#syntax-e _%e182684182726%_)))
                                    (let ((_%hd182688182849%_
                                           (##car _%e182687182846%_))
                                          (_%tl182689182851%_
                                           (##cdr _%e182687182846%_)))
                                      (if (and (gx#identifier?
                                                _%hd182688182849%_)
                                               (gx#core-identifier=?
                                                _%hd182688182849%_
                                                '%#begin-syntax))
                                          (_%K182683%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd182676%_))
                                          (_%E182686182842%_))))
                                  (_%E182686182842%_)))))
                      (_%E182685182854%_))))
                 (_%eval-body182555%_
                  (lambda (_%rbody182563%_)
                    (let _%lp182565%_ ((_%rest182567%_ _%rbody182563%_)
                                       (_%body182568%_ '())
                                       (_%ebody182569%_ '()))
                      (let* ((_%rest182570182578%_ _%rest182567%_)
                             (_%else182572182586%_
                              (lambda ()
                                (values _%body182568%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody182569%_)
                                          (gx#stx-source _%stx182552%_))))))
                             (_%K182574182664%_
                              (lambda (_%rest182589%_ _%hd182590%_)
                                (let* ((_%e182591182608%_ _%hd182590%_)
                                       (_%E182603182612%_
                                        (lambda ()
                                          (_%lp182565%_
                                           _%rest182589%_
                                           (cons _%hd182590%_ _%body182568%_)
                                           (cons _%hd182590%_
                                                 _%ebody182569%_))))
                                       (_%E182593182624%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182591182608%_)
                                              (let ((_%e182604182616%_
                                                     (gx#syntax-e
                                                      _%e182591182608%_)))
                                                (let ((_%hd182605182619%_
                                                       (##car _%e182604182616%_))
                                                      (_%tl182606182621%_
                                                       (##cdr _%e182604182616%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182605182619%_)
                                                           (gx#core-identifier=?
                                                            _%hd182605182619%_
                                                            '%#begin-syntax))
                                                      (_%lp182565%_
                                                       _%rest182589%_
                                                       (cons _%hd182590%_
                                                             _%body182568%_)
                                                       _%ebody182569%_)
                                                      (_%E182603182612%_))))
                                              (_%E182603182612%_))))
                                       (_%E182592182660%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182591182608%_)
                                              (let ((_%e182594182628%_
                                                     (gx#syntax-e
                                                      _%e182591182608%_)))
                                                (let ((_%hd182595182631%_
                                                       (##car _%e182594182628%_))
                                                      (_%tl182596182633%_
                                                       (##cdr _%e182594182628%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182595182631%_)
                                                           (gx#core-identifier=?
                                                            _%hd182595182631%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl182596182633%_)
                                                          (let ((_%e182597182636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl182596182633%_)))
                    (let ((_%hd182598182639%_ (##car _%e182597182636%_))
                          (_%tl182599182641%_ (##cdr _%e182597182636%_)))
                      (let ((_%hd-bind182644%_ _%hd182598182639%_))
                        (if (gx#stx-pair? _%tl182599182641%_)
                            (let ((_%e182600182646%_
                                   (gx#syntax-e _%tl182599182641%_)))
                              (let ((_%hd182601182649%_
                                     (##car _%e182600182646%_))
                                    (_%tl182602182651%_
                                     (##cdr _%e182600182646%_)))
                                (let* ((_%expr182654%_ _%hd182601182649%_)
                                       (_%ignore-props182656%_
                                        _%tl182602182651%_)
                                       (_%ehd182658%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind182644%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr182654%_)
                                                           '())))
                                         (gx#stx-source _%hd182590%_))))
                                  (_%lp182565%_
                                   _%rest182589%_
                                   (cons _%ehd182658%_ _%body182568%_)
                                   (cons _%ehd182658%_ _%ebody182569%_)))))
                            (_%E182593182624%_)))))
                  (_%E182593182624%_))
              (_%E182593182624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182593182624%_)))))
                                  (_%E182592182660%_)))))
                        (if (pair? _%rest182570182578%_)
                            (let ((_%hd182575182667%_
                                   (##car _%rest182570182578%_))
                                  (_%tl182576182669%_
                                   (##cdr _%rest182570182578%_)))
                              (let* ((_%hd182672%_ _%hd182575182667%_)
                                     (_%rest182674%_ _%tl182576182669%_))
                                (_%K182574182664%_
                                 _%rest182674%_
                                 _%hd182672%_)))
                            (_%else182572182586%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody182558%_
                     (gx#core-expand-block__1
                      _%stx182552%_
                      _%expand-special182554%_
                      '#f))
                    (_g182891_ (_%eval-body182555%_ _%rbody182558%_)))
               (begin
                 (let ((_g182892_
                        (if (##values? _g182891_)
                            (##values-length _g182891_)
                            1)))
                   (if (not (##fx= _g182892_ 2))
                       (error "Context expects 2 values" _g182892_)))
                 (let ((_%expanded-body182560%_ (##values-ref _g182891_ 0))
                       (_%value182561%_ (##values-ref _g182891_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body182560%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value182561%_ '())))
                    (gx#stx-source _%stx182552%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx182522%_)
        (let* ((_%e182523182530%_ _%stx182522%_)
               (_%E182525182534%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182523182530%_)))
               (_%E182524182548%_
                (lambda ()
                  (if (gx#stx-pair? _%e182523182530%_)
                      (let ((_%e182526182538%_
                             (gx#syntax-e _%e182523182530%_)))
                        (let ((_%hd182527182541%_ (##car _%e182526182538%_))
                              (_%tl182528182543%_ (##cdr _%e182526182538%_)))
                          (let ((_%body182546%_ _%tl182528182543%_))
                            (if (gx#stx-list? _%body182546%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body182546%_)
                                 (gx#stx-source _%stx182522%_))
                                (_%E182525182534%_)))))
                      (_%E182525182534%_)))))
          (_%E182524182548%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx182520%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx182520%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx182466%_)
        (let* ((_%e182467182480%_ _%stx182466%_)
               (_%E182469182484%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182467182480%_)))
               (_%E182468182516%_
                (lambda ()
                  (if (gx#stx-pair? _%e182467182480%_)
                      (let ((_%e182470182488%_
                             (gx#syntax-e _%e182467182480%_)))
                        (let ((_%hd182471182491%_ (##car _%e182470182488%_))
                              (_%tl182472182493%_ (##cdr _%e182470182488%_)))
                          (if (gx#stx-pair? _%tl182472182493%_)
                              (let ((_%e182473182496%_
                                     (gx#syntax-e _%tl182472182493%_)))
                                (let ((_%hd182474182499%_
                                       (##car _%e182473182496%_))
                                      (_%tl182475182501%_
                                       (##cdr _%e182473182496%_)))
                                  (let ((_%ann182504%_ _%hd182474182499%_))
                                    (if (gx#stx-pair? _%tl182475182501%_)
                                        (let ((_%e182476182506%_
                                               (gx#syntax-e
                                                _%tl182475182501%_)))
                                          (let ((_%hd182477182509%_
                                                 (##car _%e182476182506%_))
                                                (_%tl182478182511%_
                                                 (##cdr _%e182476182506%_)))
                                            (let ((_%expr182514%_
                                                   _%hd182477182509%_))
                                              (if (gx#stx-null?
                                                   _%tl182478182511%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann182504%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr182514%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx182466%_))
                                                  (_%E182469182484%_)))))
                                        (_%E182469182484%_)))))
                              (_%E182469182484%_))))
                      (_%E182469182484%_)))))
          (_%E182468182516%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx182131%_ _%body182132%_)
        (letrec ((_%expand-special182134%_
                  (lambda (_%hd182461%_ _%K182462%_ _%rest182463%_ _%r182464%_)
                    (_%K182462%_
                     '()
                     (cons (_%expand-internal182135%_
                            _%hd182461%_
                            _%rest182463%_)
                           _%r182464%_))))
                 (_%expand-internal182135%_
                  (lambda (_%hd182457%_ _%rest182458%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal182137%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd182457%_ _%rest182458%_))
                          (gx#stx-source _%stx182131%_))
                         _%expand-internal-special182136%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj182875
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj182875)
                       __obj182875))))
                 (_%expand-internal-special182136%_
                  (lambda (_%hd182295%_ _%K182296%_ _%rest182297%_ _%r182298%_)
                    (let* ((_%e182299182337%_ _%hd182295%_)
                           (_%E182332182341%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182299182337%_)))
                           (_%E182328182353%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182299182337%_)
                                  (let ((_%e182333182345%_
                                         (gx#syntax-e _%e182299182337%_)))
                                    (let ((_%hd182334182348%_
                                           (##car _%e182333182345%_))
                                          (_%tl182335182350%_
                                           (##cdr _%e182333182345%_)))
                                      (if (and (gx#identifier?
                                                _%hd182334182348%_)
                                               (gx#core-identifier=?
                                                _%hd182334182348%_
                                                '%#declare))
                                          (_%K182296%_
                                           _%rest182297%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd182295%_)
                                                 _%r182298%_))
                                          (_%E182332182341%_))))
                                  (_%E182332182341%_))))
                           (_%E182324182365%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182299182337%_)
                                  (let ((_%e182329182357%_
                                         (gx#syntax-e _%e182299182337%_)))
                                    (let ((_%hd182330182360%_
                                           (##car _%e182329182357%_))
                                          (_%tl182331182362%_
                                           (##cdr _%e182329182357%_)))
                                      (if (and (gx#identifier?
                                                _%hd182330182360%_)
                                               (gx#core-identifier=?
                                                _%hd182330182360%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd182295%_)
                                            (_%K182296%_
                                             _%rest182297%_
                                             _%r182298%_))
                                          (_%E182328182353%_))))
                                  (_%E182328182353%_))))
                           (_%E182314182377%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182299182337%_)
                                  (let ((_%e182325182369%_
                                         (gx#syntax-e _%e182299182337%_)))
                                    (let ((_%hd182326182372%_
                                           (##car _%e182325182369%_))
                                          (_%tl182327182374%_
                                           (##cdr _%e182325182369%_)))
                                      (if (and (gx#identifier?
                                                _%hd182326182372%_)
                                               (gx#core-identifier=?
                                                _%hd182326182372%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd182295%_)
                                            (_%K182296%_
                                             _%rest182297%_
                                             _%r182298%_))
                                          (_%E182324182365%_))))
                                  (_%E182324182365%_))))
                           (_%E182301182409%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182299182337%_)
                                  (let ((_%e182315182381%_
                                         (gx#syntax-e _%e182299182337%_)))
                                    (let ((_%hd182316182384%_
                                           (##car _%e182315182381%_))
                                          (_%tl182317182386%_
                                           (##cdr _%e182315182381%_)))
                                      (if (and (gx#identifier?
                                                _%hd182316182384%_)
                                               (gx#core-identifier=?
                                                _%hd182316182384%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182317182386%_)
                                              (let ((_%e182318182389%_
                                                     (gx#syntax-e
                                                      _%tl182317182386%_)))
                                                (let ((_%hd182319182392%_
                                                       (##car _%e182318182389%_))
                                                      (_%tl182320182394%_
                                                       (##cdr _%e182318182389%_)))
                                                  (let ((_%hd-bind182397%_
                                                         _%hd182319182392%_))
                                                    (if (gx#stx-pair?
                                                         _%tl182320182394%_)
                                                        (let ((_%e182321182399%_
                                                               (gx#syntax-e
                                                                _%tl182320182394%_)))
                                                          (let ((_%hd182322182402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e182321182399%_))
                        (_%tl182323182404%_ (##cdr _%e182321182399%_)))
                    (let ((_%expr182407%_ _%hd182322182402%_))
                      (if (gx#stx-null? _%tl182323182404%_)
                          (if (gx#core-bind-values? _%hd-bind182397%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind182397%_)
                                (_%K182296%_
                                 _%rest182297%_
                                 (cons _%hd182295%_ _%r182298%_)))
                              (_%E182314182377%_))
                          (_%E182314182377%_)))))
                (_%E182314182377%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182314182377%_))
                                          (_%E182314182377%_))))
                                  (_%E182314182377%_))))
                           (_%E182300182453%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182299182337%_)
                                  (let ((_%e182302182413%_
                                         (gx#syntax-e _%e182299182337%_)))
                                    (let ((_%hd182303182416%_
                                           (##car _%e182302182413%_))
                                          (_%tl182304182418%_
                                           (##cdr _%e182302182413%_)))
                                      (if (and (gx#identifier?
                                                _%hd182303182416%_)
                                               (gx#core-identifier=?
                                                _%hd182303182416%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182304182418%_)
                                              (let ((_%e182305182421%_
                                                     (gx#syntax-e
                                                      _%tl182304182418%_)))
                                                (let ((_%hd182306182424%_
                                                       (##car _%e182305182421%_))
                                                      (_%tl182307182426%_
                                                       (##cdr _%e182305182421%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd182306182424%_)
                                                      (let ((_%e182311182429%_
                                                             (gx#syntax-e
                                                              _%hd182306182424%_)))
                                                        (let ((_%hd182312182432%_
                                                               (##car _%e182311182429%_))
                                                              (_%tl182313182434%_
                                                               (##cdr _%e182311182429%_)))
                                                          (let ((_%id182437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd182312182432%_))
                    (if (gx#stx-null? _%tl182313182434%_)
                        (if (gx#stx-pair? _%tl182307182426%_)
                            (let ((_%e182308182439%_
                                   (gx#syntax-e _%tl182307182426%_)))
                              (let ((_%hd182309182442%_
                                     (##car _%e182308182439%_))
                                    (_%tl182310182444%_
                                     (##cdr _%e182308182439%_)))
                                (let* ((_%expr182447%_ _%hd182309182442%_)
                                       (_%props182449%_ _%tl182310182444%_))
                                  (if (gx#identifier? _%id182437%_)
                                      (let ((_%bind182451%_
                                             (gx#core-bind-runtime!__0
                                              _%id182437%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind182451%_
                                         _%props182449%_)
                                        (_%K182296%_
                                         _%rest182297%_
                                         (cons _%hd182295%_ _%r182298%_)))
                                      (_%E182301182409%_)))))
                            (_%E182301182409%_))
                        (_%E182301182409%_)))))
              (_%E182301182409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182301182409%_))
                                          (_%E182301182409%_))))
                                  (_%E182301182409%_)))))
                      (_%E182300182453%_))))
                 (_%wrap-internal182137%_
                  (lambda (_%rbody182139%_)
                    (let _%lp182141%_ ((_%rest182143%_ _%rbody182139%_)
                                       (_%decls182144%_ '())
                                       (_%bind182145%_ '())
                                       (_%body182146%_ '()))
                      (let* ((_%e182147182154%_ _%rest182143%_)
                             (_%E182149182203%_
                              (lambda ()
                                (let* ((_%body182198%_
                                        (let* ((_%body182157182167%_
                                                _%body182146%_)
                                               (_%else182160182175%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body182146%_)
                                                   (gx#stx-source
                                                    _%stx182131%_)))))
                                          (let ((_%K182165182195%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx182131%_)))
                                                (_%K182162182181%_
                                                 (lambda (_%expr182179%_)
                                                   _%expr182179%_)))
                                            (let ((_%try-match182159182191%_
                                                   (lambda ()
                                                     (if (pair? _%body182157182167%_)
                                                         (let ((_%tl182164182186%_
                                                                (##cdr _%body182157182167%_))
                                                               (_%hd182163182184%_
                                                                (##car _%body182157182167%_)))
                                                           (if (null? _%tl182164182186%_)
                                                               (let ((_%expr182189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd182163182184%_))
                         (_%K182162182181%_ _%expr182189%_))
                       (_%else182160182175%_)))
                 (_%else182160182175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body182157182167%_)
                                                  (_%K182165182195%_)
                                                  (_%try-match182159182191%_))))))
                                       (_%body182200%_
                                        (if (null? _%bind182145%_)
                                            _%body182198%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind182145%_
                                                         (cons _%body182198%_
                                                               '())))
                                             (gx#stx-source _%stx182131%_)))))
                                  (if (null? _%decls182144%_)
                                      _%body182200%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls182144%_
                                                   (cons _%body182200%_ '())))
                                       (gx#stx-source _%stx182131%_))))))
                             (_%E182148182291%_
                              (lambda ()
                                (if (gx#stx-pair? _%e182147182154%_)
                                    (let ((_%e182150182207%_
                                           (gx#syntax-e _%e182147182154%_)))
                                      (let ((_%hd182151182210%_
                                             (##car _%e182150182207%_))
                                            (_%tl182152182212%_
                                             (##cdr _%e182150182207%_)))
                                        (let* ((_%hd182215%_
                                                _%hd182151182210%_)
                                               (_%rest182217%_
                                                _%tl182152182212%_)
                                               (_%e182218182235%_ _%hd182215%_)
                                               (_%E182230182239%_
                                                (lambda ()
                                                  (if (null? _%bind182145%_)
                                                      (_%lp182141%_
                                                       _%rest182217%_
                                                       _%decls182144%_
                                                       _%bind182145%_
                                                       (cons _%hd182215%_
                                                             _%body182146%_))
                                                      (_%lp182141%_
                                                       _%rest182217%_
                                                       _%decls182144%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd182215%_ '()))
                     _%bind182145%_)
               _%body182146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182220182253%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e182218182235%_)
                                                      (let ((_%e182231182243%_
                                                             (gx#syntax-e
                                                              _%e182218182235%_)))
                                                        (let ((_%hd182232182246%_
                                                               (##car _%e182231182243%_))
                                                              (_%tl182233182248%_
                                                               (##cdr _%e182231182243%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd182232182246%_)
                           (gx#core-identifier=?
                            _%hd182232182246%_
                            '%#declare))
                      (let ((_%xdecls182251%_ _%tl182233182248%_))
                        (_%lp182141%_
                         _%rest182217%_
                         (gx#stx-foldr cons _%decls182144%_ _%xdecls182251%_)
                         _%bind182145%_
                         _%body182146%_))
                      (_%E182230182239%_))))
              (_%E182230182239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182219182287%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e182218182235%_)
                                                      (let ((_%e182221182257%_
                                                             (gx#syntax-e
                                                              _%e182218182235%_)))
                                                        (let ((_%hd182222182260%_
                                                               (##car _%e182221182257%_))
                                                              (_%tl182223182262%_
                                                               (##cdr _%e182221182257%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd182222182260%_)
                           (gx#core-identifier=?
                            _%hd182222182260%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl182223182262%_)
                          (let ((_%e182224182265%_
                                 (gx#syntax-e _%tl182223182262%_)))
                            (let ((_%hd182225182268%_
                                   (##car _%e182224182265%_))
                                  (_%tl182226182270%_
                                   (##cdr _%e182224182265%_)))
                              (let ((_%hd-bind182273%_ _%hd182225182268%_))
                                (if (gx#stx-pair? _%tl182226182270%_)
                                    (let ((_%e182227182275%_
                                           (gx#syntax-e _%tl182226182270%_)))
                                      (let ((_%hd182228182278%_
                                             (##car _%e182227182275%_))
                                            (_%tl182229182280%_
                                             (##cdr _%e182227182275%_)))
                                        (let* ((_%expr182283%_
                                                _%hd182228182278%_)
                                               (_%ignore-props182285%_
                                                _%tl182229182280%_))
                                          (_%lp182141%_
                                           _%rest182217%_
                                           _%decls182144%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind182273%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr182283%_)
                                                             '()))
                                                 _%bind182145%_)
                                           _%body182146%_))))
                                    (_%E182220182253%_)))))
                          (_%E182220182253%_))
                      (_%E182220182253%_))))
              (_%E182220182253%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E182219182287%_))))
                                    (_%E182149182203%_)))))
                        (_%E182148182291%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body182132%_)
            (gx#stx-source _%stx182131%_))
           _%expand-special182134%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx182069%_)
        (let* ((_%e182070182077%_ _%stx182069%_)
               (_%E182072182081%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182070182077%_)))
               (_%E182071182127%_
                (lambda ()
                  (if (gx#stx-pair? _%e182070182077%_)
                      (let ((_%e182073182085%_
                             (gx#syntax-e _%e182070182077%_)))
                        (let ((_%hd182074182088%_ (##car _%e182073182085%_))
                              (_%tl182075182090%_ (##cdr _%e182073182085%_)))
                          (let ((_%body182093%_ _%tl182075182090%_))
                            (if (gx#stx-list? _%body182093%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl182095%_)
                                     (let* ((_%e182096182103%_ _%decl182095%_)
                                            (_%E182098182107%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e182096182103%_)))
                                            (_%E182097182123%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e182096182103%_)
                                                   (let ((_%e182099182111%_
                                                          (gx#syntax-e
                                                           _%e182096182103%_)))
                                                     (let ((_%hd182100182114%_
                                                            (##car _%e182099182111%_))
                                                           (_%tl182101182116%_
                                                            (##cdr _%e182099182111%_)))
                                                       (let* ((_%head182119%_
                                                               _%hd182100182114%_)
                                                              (_%args182121%_
                                                               _%tl182101182116%_))
                                                         (if (gx#stx-list?
                                                              _%args182121%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl182095%_)
                                                             (_%E182098182107%_)))))
                                                   (_%E182098182107%_)))))
                                       (_%E182097182123%_)))
                                   _%body182093%_))
                                 (gx#stx-source _%stx182069%_))
                                (_%E182072182081%_)))))
                      (_%E182072182081%_)))))
          (_%E182071182127%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx181973%_)
        (let* ((_%e181974181981%_ _%stx181973%_)
               (_%E181976181985%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181974181981%_)))
               (_%E181975182065%_
                (lambda ()
                  (if (gx#stx-pair? _%e181974181981%_)
                      (let ((_%e181977181989%_
                             (gx#syntax-e _%e181974181981%_)))
                        (let ((_%hd181978181992%_ (##car _%e181977181989%_))
                              (_%tl181979181994%_ (##cdr _%e181977181989%_)))
                          (let ((_%body181997%_ _%tl181979181994%_))
                            (let _%lp181999%_ ((_%rest182001%_ _%body181997%_)
                                               (_%r182002%_ '()))
                              (let* ((_%e182003182017%_ _%rest182001%_)
                                     (_%E182015182021%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx181973%_)))
                                     (_%E182005182025%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e182003182017%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r182002%_))
                                             (gx#stx-source _%stx181973%_))
                                            (_%E182015182021%_))))
                                     (_%E182004182061%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e182003182017%_)
                                            (let ((_%e182006182029%_
                                                   (gx#syntax-e
                                                    _%e182003182017%_)))
                                              (let ((_%hd182007182032%_
                                                     (##car _%e182006182029%_))
                                                    (_%tl182008182034%_
                                                     (##cdr _%e182006182029%_)))
                                                (if (gx#stx-pair?
                                                     _%hd182007182032%_)
                                                    (let ((_%e182009182037%_
                                                           (gx#syntax-e
                                                            _%hd182007182032%_)))
                                                      (let ((_%hd182010182040%_
                                                             (##car _%e182009182037%_))
                                                            (_%tl182011182042%_
                                                             (##cdr _%e182009182037%_)))
                                                        (let ((_%id182045%_
                                                               _%hd182010182040%_))
                                                          (if (gx#stx-pair?
                                                               _%tl182011182042%_)
                                                              (let ((_%e182012182047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl182011182042%_)))
                        (let ((_%hd182013182050%_ (##car _%e182012182047%_))
                              (_%tl182014182052%_ (##cdr _%e182012182047%_)))
                          (let ((_%eid182055%_ _%hd182013182050%_))
                            (if (gx#stx-null? _%tl182014182052%_)
                                (let ((_%rest182057%_ _%tl182008182034%_))
                                  (if (and (gx#identifier? _%id182045%_)
                                           (gx#identifier? _%eid182055%_))
                                      (let ((_%eid182059%_
                                             (gx#stx-e _%eid182055%_)))
                                        (gx#core-bind-extern!__0
                                         _%id182045%_
                                         _%eid182059%_)
                                        (_%lp181999%_
                                         _%rest182057%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id182045%_)
                                                     (cons _%eid182059%_ '()))
                                               _%r182002%_)))
                                      (_%E182005182025%_)))
                                (_%E182005182025%_)))))
                      (_%E182005182025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E182005182025%_))))
                                            (_%E182005182025%_)))))
                                (_%E182004182061%_))))))
                      (_%E181976181985%_)))))
          (_%E181975182065%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx181862%_)
        (let* ((_%e181863181889%_ _%stx181862%_)
               (_%E181878181893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181863181889%_)))
               (_%E181865181925%_
                (lambda ()
                  (if (gx#stx-pair? _%e181863181889%_)
                      (let ((_%e181879181897%_
                             (gx#syntax-e _%e181863181889%_)))
                        (let ((_%hd181880181900%_ (##car _%e181879181897%_))
                              (_%tl181881181902%_ (##cdr _%e181879181897%_)))
                          (if (gx#stx-pair? _%tl181881181902%_)
                              (let ((_%e181882181905%_
                                     (gx#syntax-e _%tl181881181902%_)))
                                (let ((_%hd181883181908%_
                                       (##car _%e181882181905%_))
                                      (_%tl181884181910%_
                                       (##cdr _%e181882181905%_)))
                                  (let ((_%hd181913%_ _%hd181883181908%_))
                                    (if (gx#stx-pair? _%tl181884181910%_)
                                        (let ((_%e181885181915%_
                                               (gx#syntax-e
                                                _%tl181884181910%_)))
                                          (let ((_%hd181886181918%_
                                                 (##car _%e181885181915%_))
                                                (_%tl181887181920%_
                                                 (##cdr _%e181885181915%_)))
                                            (let ((_%expr181923%_
                                                   _%hd181886181918%_))
                                              (if (gx#stx-null?
                                                   _%tl181887181920%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd181913%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd181913%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd181913%_)
                             (cons (gx#core-expand-expression _%expr181923%_)
                                   '())))
                 (gx#stx-source _%stx181862%_)))
              (_%E181878181893%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181878181893%_)))))
                                        (_%E181878181893%_)))))
                              (_%E181878181893%_))))
                      (_%E181878181893%_))))
               (_%E181864181969%_
                (lambda ()
                  (if (gx#stx-pair? _%e181863181889%_)
                      (let ((_%e181866181929%_
                             (gx#syntax-e _%e181863181889%_)))
                        (let ((_%hd181867181932%_ (##car _%e181866181929%_))
                              (_%tl181868181934%_ (##cdr _%e181866181929%_)))
                          (if (gx#stx-pair? _%tl181868181934%_)
                              (let ((_%e181869181937%_
                                     (gx#syntax-e _%tl181868181934%_)))
                                (let ((_%hd181870181940%_
                                       (##car _%e181869181937%_))
                                      (_%tl181871181942%_
                                       (##cdr _%e181869181937%_)))
                                  (if (gx#stx-pair? _%hd181870181940%_)
                                      (let ((_%e181875181945%_
                                             (gx#syntax-e _%hd181870181940%_)))
                                        (let ((_%hd181876181948%_
                                               (##car _%e181875181945%_))
                                              (_%tl181877181950%_
                                               (##cdr _%e181875181945%_)))
                                          (let ((_%id181953%_
                                                 _%hd181876181948%_))
                                            (if (gx#stx-null?
                                                 _%tl181877181950%_)
                                                (if (gx#stx-pair?
                                                     _%tl181871181942%_)
                                                    (let ((_%e181872181955%_
                                                           (gx#syntax-e
                                                            _%tl181871181942%_)))
                                                      (let ((_%hd181873181958%_
                                                             (##car _%e181872181955%_))
                                                            (_%tl181874181960%_
                                                             (##cdr _%e181872181955%_)))
                                                        (let* ((_%expr181963%_
                                                                _%hd181873181958%_)
                                                               (_%props181965%_
                                                                _%tl181874181960%_))
                                                          (if (gx#identifier?
                                                               _%id181953%_)
                                                              (let ((_%bind181967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id181953%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind181967%_
                         _%props181965%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id181953%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr181963%_)
                                           '())))
                         (gx#stx-source _%stx181862%_)))
                      (_%E181865181925%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E181865181925%_))
                                                (_%E181865181925%_)))))
                                      (_%E181865181925%_))))
                              (_%E181865181925%_))))
                      (_%E181865181925%_)))))
          (_%E181864181969%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx181801%_)
        (let* ((_%e181802181815%_ _%stx181801%_)
               (_%E181804181819%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181802181815%_)))
               (_%E181803181858%_
                (lambda ()
                  (if (gx#stx-pair? _%e181802181815%_)
                      (let ((_%e181805181823%_
                             (gx#syntax-e _%e181802181815%_)))
                        (let ((_%hd181806181826%_ (##car _%e181805181823%_))
                              (_%tl181807181828%_ (##cdr _%e181805181823%_)))
                          (if (gx#stx-pair? _%tl181807181828%_)
                              (let ((_%e181808181831%_
                                     (gx#syntax-e _%tl181807181828%_)))
                                (let ((_%hd181809181834%_
                                       (##car _%e181808181831%_))
                                      (_%tl181810181836%_
                                       (##cdr _%e181808181831%_)))
                                  (let ((_%id181839%_ _%hd181809181834%_))
                                    (if (gx#stx-pair? _%tl181810181836%_)
                                        (let ((_%e181811181841%_
                                               (gx#syntax-e
                                                _%tl181810181836%_)))
                                          (let ((_%hd181812181844%_
                                                 (##car _%e181811181841%_))
                                                (_%tl181813181846%_
                                                 (##cdr _%e181811181841%_)))
                                            (let* ((_%binding-id181849%_
                                                    _%hd181812181844%_)
                                                   (_%props181851%_
                                                    _%tl181813181846%_))
                                              (if (and (gx#identifier?
                                                        _%id181839%_)
                                                       (gx#identifier?
                                                        _%binding-id181849%_)
                                                       (gx#stx-list?
                                                        _%props181851%_))
                                                  (let* ((_%eid181853%_
                                                          (gx#stx-e
                                                           _%binding-id181849%_))
                                                         (_%bind181855%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id181839%_
                                                           _%eid181853%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind181855%_
                                                     _%props181851%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id181839%_)
                         (cons _%eid181853%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181804181819%_)))))
                                        (_%E181804181819%_)))))
                              (_%E181804181819%_))))
                      (_%E181804181819%_)))))
          (_%E181803181858%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind181736%_ _%props181737%_)
        (letrec ((_%eval-prop181739%_
                  (lambda (_%prop181799%_)
                    (gx#eval-expression+1 _%prop181799%_))))
          (let _%loop181741%_ ((_%rest181743%_ _%props181737%_)
                               (_%props181744%_ '()))
            (let* ((_%e181745181756%_ _%rest181743%_)
                   (_%E181754181760%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e181745181756%_)))
                   (_%E181747181764%_
                    (lambda ()
                      (if (gx#stx-null? _%e181745181756%_)
                          (if (null? _%props181744%_)
                              '#!void
                              (##structure-set!
                               _%bind181736%_
                               (reverse! _%props181744%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E181754181760%_))))
                   (_%E181746181795%_
                    (lambda ()
                      (if (gx#stx-pair? _%e181745181756%_)
                          (let ((_%e181748181768%_
                                 (gx#syntax-e _%e181745181756%_)))
                            (let ((_%hd181749181771%_
                                   (##car _%e181748181768%_))
                                  (_%tl181750181773%_
                                   (##cdr _%e181748181768%_)))
                              (let ((_%key181776%_ _%hd181749181771%_))
                                (if (gx#stx-pair? _%tl181750181773%_)
                                    (let ((_%e181751181778%_
                                           (gx#syntax-e _%tl181750181773%_)))
                                      (let ((_%hd181752181781%_
                                             (##car _%e181751181778%_))
                                            (_%tl181753181783%_
                                             (##cdr _%e181751181778%_)))
                                        (let* ((_%prop181786%_
                                                _%hd181752181781%_)
                                               (_%rest181788%_
                                                _%tl181753181783%_))
                                          (if (gx#stx-keyword? _%key181776%_)
                                              (let* ((_%key181790%_
                                                      (gx#stx-e _%key181776%_))
                                                     (_%$e181792%_
                                                      _%key181790%_))
                                                (if (eq? 'macro: _%$e181792%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind181736%_
                                                       (if (gx#identifier?
                                                            _%prop181786%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop181786%_)
                                                           (gx#eval-expression+1
                                                            _%prop181786%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop181741%_
                                                       _%rest181788%_
                                                       _%props181744%_))
                                                    (if (eq? 'type:
                                                             _%$e181792%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind181736%_
                                                           (gx#eval-expression+1
                                                            _%prop181786%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop181741%_
                                                           _%rest181788%_
                                                           _%props181744%_))
                                                        (_%loop181741%_
                                                         _%rest181788%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop181786%_)
                                                               (cons _%key181790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props181744%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181747181764%_)))))
                                    (_%E181747181764%_)))))
                          (_%E181747181764%_)))))
              (_%E181746181795%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx181679%_)
        (let* ((_%e181680181693%_ _%stx181679%_)
               (_%E181682181697%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181680181693%_)))
               (_%E181681181732%_
                (lambda ()
                  (if (gx#stx-pair? _%e181680181693%_)
                      (let ((_%e181683181701%_
                             (gx#syntax-e _%e181680181693%_)))
                        (let ((_%hd181684181704%_ (##car _%e181683181701%_))
                              (_%tl181685181706%_ (##cdr _%e181683181701%_)))
                          (if (gx#stx-pair? _%tl181685181706%_)
                              (let ((_%e181686181709%_
                                     (gx#syntax-e _%tl181685181706%_)))
                                (let ((_%hd181687181712%_
                                       (##car _%e181686181709%_))
                                      (_%tl181688181714%_
                                       (##cdr _%e181686181709%_)))
                                  (let ((_%id181717%_ _%hd181687181712%_))
                                    (if (gx#stx-pair? _%tl181688181714%_)
                                        (let ((_%e181689181719%_
                                               (gx#syntax-e
                                                _%tl181688181714%_)))
                                          (let ((_%hd181690181722%_
                                                 (##car _%e181689181719%_))
                                                (_%tl181691181724%_
                                                 (##cdr _%e181689181719%_)))
                                            (let ((_%expr181727%_
                                                   _%hd181690181722%_))
                                              (if (gx#stx-null?
                                                   _%tl181691181724%_)
                                                  (if (gx#identifier?
                                                       _%id181717%_)
                                                      (let ((_g182893_
                                                             (gx#core-expand-expression+1
                                                              _%expr181727%_)))
                                                        (begin
                                                          (let ((_g182894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g182893_)
                             (##values-length _g182893_)
                             1)))
                    (if (not (##fx= _g182894_ 2))
                        (error "Context expects 2 values" _g182894_)))
                  (let ((_%e-stx181729%_ (##values-ref _g182893_ 0))
                        (_%e181730%_ (##values-ref _g182893_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id181717%_ _%e181730%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id181717%_)
                                   (cons _%e-stx181729%_ '())))
                       (gx#stx-source _%stx181679%_))))))
              (_%E181682181697%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181682181697%_)))))
                                        (_%E181682181697%_)))))
                              (_%E181682181697%_))))
                      (_%E181682181697%_)))))
          (_%E181681181732%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx181623%_)
        (let* ((_%e181624181637%_ _%stx181623%_)
               (_%E181626181641%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181624181637%_)))
               (_%E181625181675%_
                (lambda ()
                  (if (gx#stx-pair? _%e181624181637%_)
                      (let ((_%e181627181645%_
                             (gx#syntax-e _%e181624181637%_)))
                        (let ((_%hd181628181648%_ (##car _%e181627181645%_))
                              (_%tl181629181650%_ (##cdr _%e181627181645%_)))
                          (if (gx#stx-pair? _%tl181629181650%_)
                              (let ((_%e181630181653%_
                                     (gx#syntax-e _%tl181629181650%_)))
                                (let ((_%hd181631181656%_
                                       (##car _%e181630181653%_))
                                      (_%tl181632181658%_
                                       (##cdr _%e181630181653%_)))
                                  (let ((_%id181661%_ _%hd181631181656%_))
                                    (if (gx#stx-pair? _%tl181632181658%_)
                                        (let ((_%e181633181663%_
                                               (gx#syntax-e
                                                _%tl181632181658%_)))
                                          (let ((_%hd181634181666%_
                                                 (##car _%e181633181663%_))
                                                (_%tl181635181668%_
                                                 (##cdr _%e181633181663%_)))
                                            (let ((_%alias-id181671%_
                                                   _%hd181634181666%_))
                                              (if (gx#stx-null?
                                                   _%tl181635181668%_)
                                                  (if (and (gx#identifier?
                                                            _%id181661%_)
                                                           (gx#identifier?
                                                            _%alias-id181671%_))
                                                      (let ((_%alias-id181673%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id181671%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id181661%_
                                                         _%alias-id181673%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id181661%_)
                             (cons _%alias-id181673%_ '())))))
              (_%E181626181641%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181626181641%_)))))
                                        (_%E181626181641%_)))))
                              (_%E181626181641%_))))
                      (_%E181626181641%_)))))
          (_%E181625181675%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx181566%_ _%wrap?181567%_)
        (let* ((_%e181568181578%_ _%stx181566%_)
               (_%E181570181582%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181568181578%_)))
               (_%E181569181609%_
                (lambda ()
                  (if (gx#stx-pair? _%e181568181578%_)
                      (let ((_%e181571181586%_
                             (gx#syntax-e _%e181568181578%_)))
                        (let ((_%hd181572181589%_ (##car _%e181571181586%_))
                              (_%tl181573181591%_ (##cdr _%e181571181586%_)))
                          (if (gx#stx-pair? _%tl181573181591%_)
                              (let ((_%e181574181594%_
                                     (gx#syntax-e _%tl181573181591%_)))
                                (let ((_%hd181575181597%_
                                       (##car _%e181574181594%_))
                                      (_%tl181576181599%_
                                       (##cdr _%e181574181594%_)))
                                  (let* ((_%hd181602%_ _%hd181575181597%_)
                                         (_%body181604%_ _%tl181576181599%_))
                                    (if (gx#core-bind-values? _%hd181602%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd181602%_)
                                           (let ((_%body181607%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd181602%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx181566%_
                                                               _%body181604%_)
                                                              '()))))
                                             (if _%wrap?181567%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body181607%_)
                                                  (gx#stx-source
                                                   _%stx181566%_))
                                                 _%body181607%_)))
                                         gx#current-expander-context
                                         (let ((__obj182876
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182876)
                                           __obj182876))
                                        (_%E181570181582%_)))))
                              (_%E181570181582%_))))
                      (_%E181570181582%_)))))
          (_%E181569181609%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx181616%_)
        (let ((_%wrap?181618%_ '#t))
          (gx#core-expand-lambda%__% _%stx181616%_ _%wrap?181618%_))))
    (define gx#core-expand-lambda%
      (lambda _g182895_
        (let ((_g182896_ (##length _g182895_)))
          (cond ((##fx= _g182896_ 1)
                 (apply gx#core-expand-lambda%__0 _g182895_))
                ((##fx= _g182896_ 2)
                 (apply gx#core-expand-lambda%__% _g182895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g182895_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx181530%_)
        (let* ((_%e181531181538%_ _%stx181530%_)
               (_%E181533181542%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181531181538%_)))
               (_%E181532181561%_
                (lambda ()
                  (if (gx#stx-pair? _%e181531181538%_)
                      (let ((_%e181534181546%_
                             (gx#syntax-e _%e181531181538%_)))
                        (let ((_%hd181535181549%_ (##car _%e181534181546%_))
                              (_%tl181536181551%_ (##cdr _%e181534181546%_)))
                          (let ((_%clauses181554%_ _%tl181536181551%_))
                            (if (gx#stx-list? _%clauses181554%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause181556%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause181556%_)
                                       (let ((_%$e181558%_
                                              (gx#stx-source
                                               _%clause181556%_)))
                                         (if _%$e181558%_
                                             _%$e181558%_
                                             (gx#stx-source _%stx181530%_))))
                                      '#f))
                                   _%clauses181554%_))
                                 (gx#stx-source _%stx181530%_))
                                (_%E181533181542%_)))))
                      (_%E181533181542%_)))))
          (_%E181532181561%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx181484%_)
        (let* ((_%e181485181495%_ _%stx181484%_)
               (_%E181487181499%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181485181495%_)))
               (_%E181486181526%_
                (lambda ()
                  (if (gx#stx-pair? _%e181485181495%_)
                      (let ((_%e181488181503%_
                             (gx#syntax-e _%e181485181495%_)))
                        (let ((_%hd181489181506%_ (##car _%e181488181503%_))
                              (_%tl181490181508%_ (##cdr _%e181488181503%_)))
                          (if (gx#stx-pair? _%tl181490181508%_)
                              (let ((_%e181491181511%_
                                     (gx#syntax-e _%tl181490181508%_)))
                                (let ((_%hd181492181514%_
                                       (##car _%e181491181511%_))
                                      (_%tl181493181516%_
                                       (##cdr _%e181491181511%_)))
                                  (let* ((_%hd181519%_ _%hd181492181514%_)
                                         (_%body181521%_ _%tl181493181516%_))
                                    (if (gx#core-expand-let-bind? _%hd181519%_)
                                        (let ((_%expressions181523%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd181519%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd181519%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd181519%_
                                                           _%expressions181523%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx181484%_
                         _%body181521%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx181484%_)))
                                           gx#current-expander-context
                                           (let ((__obj182877
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj182877)
                                             __obj182877)))
                                        (_%E181487181499%_)))))
                              (_%E181487181499%_))))
                      (_%E181487181499%_)))))
          (_%E181486181526%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx181429%_ _%form181430%_)
        (let* ((_%e181431181441%_ _%stx181429%_)
               (_%E181433181445%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181431181441%_)))
               (_%E181432181470%_
                (lambda ()
                  (if (gx#stx-pair? _%e181431181441%_)
                      (let ((_%e181434181449%_
                             (gx#syntax-e _%e181431181441%_)))
                        (let ((_%hd181435181452%_ (##car _%e181434181449%_))
                              (_%tl181436181454%_ (##cdr _%e181434181449%_)))
                          (if (gx#stx-pair? _%tl181436181454%_)
                              (let ((_%e181437181457%_
                                     (gx#syntax-e _%tl181436181454%_)))
                                (let ((_%hd181438181460%_
                                       (##car _%e181437181457%_))
                                      (_%tl181439181462%_
                                       (##cdr _%e181437181457%_)))
                                  (let* ((_%hd181465%_ _%hd181438181460%_)
                                         (_%body181467%_ _%tl181439181462%_))
                                    (if (gx#core-expand-let-bind? _%hd181465%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd181465%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form181430%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd181465%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd181465%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx181429%_
                                                               _%body181467%_)
                                                              '())))
                                            (gx#stx-source _%stx181429%_)))
                                         gx#current-expander-context
                                         (let ((__obj182878
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182878)
                                           __obj182878))
                                        (_%E181433181445%_)))))
                              (_%E181433181445%_))))
                      (_%E181433181445%_)))))
          (_%E181432181470%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx181477%_)
        (let ((_%form181479%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx181477%_ _%form181479%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g182897_
        (let ((_g182898_ (##length _g182897_)))
          (cond ((##fx= _g182898_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g182897_))
                ((##fx= _g182898_ 2)
                 (apply gx#core-expand-letrec-values%__% _g182897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g182897_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx181426%_)
        (gx#core-expand-letrec-values%__% _%stx181426%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx181383%_)
        (if (gx#stx-list? _%stx181383%_)
            (gx#stx-andmap
             (lambda (_%bind181385%_)
               (let* ((_%e181386181396%_ _%bind181385%_)
                      (_%E181388181400%_ (lambda () '#f))
                      (_%E181387181422%_
                       (lambda ()
                         (if (gx#stx-pair? _%e181386181396%_)
                             (let ((_%e181389181404%_
                                    (gx#syntax-e _%e181386181396%_)))
                               (let ((_%hd181390181407%_
                                      (##car _%e181389181404%_))
                                     (_%tl181391181409%_
                                      (##cdr _%e181389181404%_)))
                                 (let ((_%hd181412%_ _%hd181390181407%_))
                                   (if (gx#stx-pair? _%tl181391181409%_)
                                       (let ((_%e181392181414%_
                                              (gx#syntax-e
                                               _%tl181391181409%_)))
                                         (let ((_%hd181393181417%_
                                                (##car _%e181392181414%_))
                                               (_%tl181394181419%_
                                                (##cdr _%e181392181414%_)))
                                           (if (gx#stx-null?
                                                _%tl181394181419%_)
                                               (gx#core-bind-values?
                                                _%hd181412%_)
                                               (_%E181388181400%_))))
                                       (_%E181388181400%_)))))
                             (_%E181388181400%_)))))
                 (_%E181387181422%_)))
             _%stx181383%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind181342%_)
        (let* ((_%e181343181353%_ _%bind181342%_)
               (_%E181345181357%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181343181353%_)))
               (_%E181344181379%_
                (lambda ()
                  (if (gx#stx-pair? _%e181343181353%_)
                      (let ((_%e181346181361%_
                             (gx#syntax-e _%e181343181353%_)))
                        (let ((_%hd181347181364%_ (##car _%e181346181361%_))
                              (_%tl181348181366%_ (##cdr _%e181346181361%_)))
                          (if (gx#stx-pair? _%tl181348181366%_)
                              (let ((_%e181349181369%_
                                     (gx#syntax-e _%tl181348181366%_)))
                                (let ((_%hd181350181372%_
                                       (##car _%e181349181369%_))
                                      (_%tl181351181374%_
                                       (##cdr _%e181349181369%_)))
                                  (let ((_%expr181377%_ _%hd181350181372%_))
                                    (if (gx#stx-null? _%tl181351181374%_)
                                        (gx#core-expand-expression
                                         _%expr181377%_)
                                        (_%E181345181357%_)))))
                              (_%E181345181357%_))))
                      (_%E181345181357%_)))))
          (_%E181344181379%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind181301%_)
        (let* ((_%e181302181312%_ _%bind181301%_)
               (_%E181304181316%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181302181312%_)))
               (_%E181303181338%_
                (lambda ()
                  (if (gx#stx-pair? _%e181302181312%_)
                      (let ((_%e181305181320%_
                             (gx#syntax-e _%e181302181312%_)))
                        (let ((_%hd181306181323%_ (##car _%e181305181320%_))
                              (_%tl181307181325%_ (##cdr _%e181305181320%_)))
                          (let ((_%hd181328%_ _%hd181306181323%_))
                            (if (gx#stx-pair? _%tl181307181325%_)
                                (let ((_%e181308181330%_
                                       (gx#syntax-e _%tl181307181325%_)))
                                  (let ((_%hd181309181333%_
                                         (##car _%e181308181330%_))
                                        (_%tl181310181335%_
                                         (##cdr _%e181308181330%_)))
                                    (if (gx#stx-null? _%tl181310181335%_)
                                        (gx#core-bind-values!__0 _%hd181328%_)
                                        (_%E181304181316%_))))
                                (_%E181304181316%_)))))
                      (_%E181304181316%_)))))
          (_%E181303181338%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind181259%_ _%expr181260%_)
        (let* ((_%e181261181271%_ _%bind181259%_)
               (_%E181263181275%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181261181271%_)))
               (_%E181262181297%_
                (lambda ()
                  (if (gx#stx-pair? _%e181261181271%_)
                      (let ((_%e181264181279%_
                             (gx#syntax-e _%e181261181271%_)))
                        (let ((_%hd181265181282%_ (##car _%e181264181279%_))
                              (_%tl181266181284%_ (##cdr _%e181264181279%_)))
                          (let ((_%hd181287%_ _%hd181265181282%_))
                            (if (gx#stx-pair? _%tl181266181284%_)
                                (let ((_%e181267181289%_
                                       (gx#syntax-e _%tl181266181284%_)))
                                  (let ((_%hd181268181292%_
                                         (##car _%e181267181289%_))
                                        (_%tl181269181294%_
                                         (##cdr _%e181267181289%_)))
                                    (if (gx#stx-null? _%tl181269181294%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd181287%_)
                                              (cons _%expr181260%_ '()))
                                        (_%E181263181275%_))))
                                (_%E181263181275%_)))))
                      (_%E181263181275%_)))))
          (_%E181262181297%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx181213%_)
        (let* ((_%e181214181224%_ _%stx181213%_)
               (_%E181216181228%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181214181224%_)))
               (_%E181215181255%_
                (lambda ()
                  (if (gx#stx-pair? _%e181214181224%_)
                      (let ((_%e181217181232%_
                             (gx#syntax-e _%e181214181224%_)))
                        (let ((_%hd181218181235%_ (##car _%e181217181232%_))
                              (_%tl181219181237%_ (##cdr _%e181217181232%_)))
                          (if (gx#stx-pair? _%tl181219181237%_)
                              (let ((_%e181220181240%_
                                     (gx#syntax-e _%tl181219181237%_)))
                                (let ((_%hd181221181243%_
                                       (##car _%e181220181240%_))
                                      (_%tl181222181245%_
                                       (##cdr _%e181220181240%_)))
                                  (let* ((_%hd181248%_ _%hd181221181243%_)
                                         (_%body181250%_ _%tl181222181245%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd181248%_)
                                        (let ((_%expanders181252%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd181248%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd181248%_
                                              _%expanders181252%_)
                                             (gx#core-expand-local-block
                                              _%stx181213%_
                                              _%body181250%_))
                                           gx#current-expander-context
                                           (let ((__obj182879
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj182879)
                                             __obj182879)))
                                        (_%E181216181228%_)))))
                              (_%E181216181228%_))))
                      (_%E181216181228%_)))))
          (_%E181215181255%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx181162%_)
        (let* ((_%e181163181173%_ _%stx181162%_)
               (_%E181165181177%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181163181173%_)))
               (_%E181164181209%_
                (lambda ()
                  (if (gx#stx-pair? _%e181163181173%_)
                      (let ((_%e181166181181%_
                             (gx#syntax-e _%e181163181173%_)))
                        (let ((_%hd181167181184%_ (##car _%e181166181181%_))
                              (_%tl181168181186%_ (##cdr _%e181166181181%_)))
                          (if (gx#stx-pair? _%tl181168181186%_)
                              (let ((_%e181169181189%_
                                     (gx#syntax-e _%tl181168181186%_)))
                                (let ((_%hd181170181192%_
                                       (##car _%e181169181189%_))
                                      (_%tl181171181194%_
                                       (##cdr _%e181169181189%_)))
                                  (let* ((_%hd181197%_ _%hd181170181192%_)
                                         (_%body181199%_ _%tl181171181194%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd181197%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd181197%_
                                            (make-list
                                             (gx#stx-length _%hd181197%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g181201181204%_
                                                     _%g181202181206%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g181201181204%_
                                               _%g181202181206%_
                                               '#t))
                                            _%hd181197%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd181197%_))
                                           (gx#core-expand-local-block
                                            _%stx181162%_
                                            _%body181199%_))
                                         gx#current-expander-context
                                         (let ((__obj182880
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182880)
                                           __obj182880))
                                        (_%E181165181177%_)))))
                              (_%E181165181177%_))))
                      (_%E181165181177%_)))))
          (_%E181164181209%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx181119%_)
        (if (gx#stx-list? _%stx181119%_)
            (gx#stx-andmap
             (lambda (_%bind181121%_)
               (let* ((_%e181122181132%_ _%bind181121%_)
                      (_%E181124181136%_ (lambda () '#f))
                      (_%E181123181158%_
                       (lambda ()
                         (if (gx#stx-pair? _%e181122181132%_)
                             (let ((_%e181125181140%_
                                    (gx#syntax-e _%e181122181132%_)))
                               (let ((_%hd181126181143%_
                                      (##car _%e181125181140%_))
                                     (_%tl181127181145%_
                                      (##cdr _%e181125181140%_)))
                                 (let ((_%hd181148%_ _%hd181126181143%_))
                                   (if (gx#stx-pair? _%tl181127181145%_)
                                       (let ((_%e181128181150%_
                                              (gx#syntax-e
                                               _%tl181127181145%_)))
                                         (let ((_%hd181129181153%_
                                                (##car _%e181128181150%_))
                                               (_%tl181130181155%_
                                                (##cdr _%e181128181150%_)))
                                           (if (gx#stx-null?
                                                _%tl181130181155%_)
                                               (gx#identifier? _%hd181148%_)
                                               (_%E181124181136%_))))
                                       (_%E181124181136%_)))))
                             (_%E181124181136%_)))))
                 (_%E181123181158%_)))
             _%stx181119%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind181075%_)
        (let* ((_%e181076181086%_ _%bind181075%_)
               (_%E181078181090%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181076181086%_)))
               (_%E181077181115%_
                (lambda ()
                  (if (gx#stx-pair? _%e181076181086%_)
                      (let ((_%e181079181094%_
                             (gx#syntax-e _%e181076181086%_)))
                        (let ((_%hd181080181097%_ (##car _%e181079181094%_))
                              (_%tl181081181099%_ (##cdr _%e181079181094%_)))
                          (if (gx#stx-pair? _%tl181081181099%_)
                              (let ((_%e181082181102%_
                                     (gx#syntax-e _%tl181081181099%_)))
                                (let ((_%hd181083181105%_
                                       (##car _%e181082181102%_))
                                      (_%tl181084181107%_
                                       (##cdr _%e181082181102%_)))
                                  (let ((_%expr181110%_ _%hd181083181105%_))
                                    (if (gx#stx-null? _%tl181084181107%_)
                                        (let ((_g182899_
                                               (gx#core-expand-expression+1
                                                _%expr181110%_)))
                                          (begin
                                            (let ((_g182900_
                                                   (if (##values? _g182899_)
                                                       (##values-length
                                                        _g182899_)
                                                       1)))
                                              (if (not (##fx= _g182900_ 2))
                                                  (error "Context expects 2 values"
                                                         _g182900_)))
                                            (let ((_%_181112%_
                                                   (##values-ref _g182899_ 0))
                                                  (_%e181113%_
                                                   (##values-ref _g182899_ 1)))
                                              _%e181113%_)))
                                        (_%E181078181090%_)))))
                              (_%E181078181090%_))))
                      (_%E181078181090%_)))))
          (_%E181077181115%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind181020%_ _%e181021%_ _%rebind?181022%_)
        (let* ((_%e181023181033%_ _%bind181020%_)
               (_%E181025181037%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181023181033%_)))
               (_%E181024181059%_
                (lambda ()
                  (if (gx#stx-pair? _%e181023181033%_)
                      (let ((_%e181026181041%_
                             (gx#syntax-e _%e181023181033%_)))
                        (let ((_%hd181027181044%_ (##car _%e181026181041%_))
                              (_%tl181028181046%_ (##cdr _%e181026181041%_)))
                          (let ((_%id181049%_ _%hd181027181044%_))
                            (if (gx#stx-pair? _%tl181028181046%_)
                                (let ((_%e181029181051%_
                                       (gx#syntax-e _%tl181028181046%_)))
                                  (let ((_%hd181030181054%_
                                         (##car _%e181029181051%_))
                                        (_%tl181031181056%_
                                         (##cdr _%e181029181051%_)))
                                    (if (gx#stx-null? _%tl181031181056%_)
                                        (gx#core-bind-syntax!__1
                                         _%id181049%_
                                         _%e181021%_
                                         _%rebind?181022%_)
                                        (_%E181025181037%_))))
                                (_%E181025181037%_)))))
                      (_%E181025181037%_)))))
          (_%E181024181059%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind181066%_ _%e181067%_)
        (let ((_%rebind?181069%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind181066%_
           _%e181067%_
           _%rebind?181069%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g182901_
        (let ((_g182902_ (##length _g182901_)))
          (cond ((##fx= _g182902_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g182901_))
                ((##fx= _g182902_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g182901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g182901_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx180978%_)
        (let* ((_%e180979180989%_ _%stx180978%_)
               (_%E180981180993%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180979180989%_)))
               (_%E180980181015%_
                (lambda ()
                  (if (gx#stx-pair? _%e180979180989%_)
                      (let ((_%e180982180997%_
                             (gx#syntax-e _%e180979180989%_)))
                        (let ((_%hd180983181000%_ (##car _%e180982180997%_))
                              (_%tl180984181002%_ (##cdr _%e180982180997%_)))
                          (if (gx#stx-pair? _%tl180984181002%_)
                              (let ((_%e180985181005%_
                                     (gx#syntax-e _%tl180984181002%_)))
                                (let ((_%hd180986181008%_
                                       (##car _%e180985181005%_))
                                      (_%tl180987181010%_
                                       (##cdr _%e180985181005%_)))
                                  (let ((_%expr181013%_ _%hd180986181008%_))
                                    (if (gx#stx-null? _%tl180987181010%_)
                                        (gx#core-expand-expression
                                         _%expr181013%_)
                                        (_%E180981180993%_)))))
                              (_%E180981180993%_))))
                      (_%E180981180993%_)))))
          (_%E180980181015%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx180937%_)
        (let* ((_%e180938180948%_ _%stx180937%_)
               (_%E180940180952%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180938180948%_)))
               (_%E180939180974%_
                (lambda ()
                  (if (gx#stx-pair? _%e180938180948%_)
                      (let ((_%e180941180956%_
                             (gx#syntax-e _%e180938180948%_)))
                        (let ((_%hd180942180959%_ (##car _%e180941180956%_))
                              (_%tl180943180961%_ (##cdr _%e180941180956%_)))
                          (if (gx#stx-pair? _%tl180943180961%_)
                              (let ((_%e180944180964%_
                                     (gx#syntax-e _%tl180943180961%_)))
                                (let ((_%hd180945180967%_
                                       (##car _%e180944180964%_))
                                      (_%tl180946180969%_
                                       (##cdr _%e180944180964%_)))
                                  (let ((_%e180972%_ _%hd180945180967%_))
                                    (if (gx#stx-null? _%tl180946180969%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e180972%_)
                                                     '()))
                                         (gx#stx-source _%stx180937%_))
                                        (_%E180940180952%_)))))
                              (_%E180940180952%_))))
                      (_%E180940180952%_)))))
          (_%E180939180974%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx180896%_)
        (let* ((_%e180897180907%_ _%stx180896%_)
               (_%E180899180911%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180897180907%_)))
               (_%E180898180933%_
                (lambda ()
                  (if (gx#stx-pair? _%e180897180907%_)
                      (let ((_%e180900180915%_
                             (gx#syntax-e _%e180897180907%_)))
                        (let ((_%hd180901180918%_ (##car _%e180900180915%_))
                              (_%tl180902180920%_ (##cdr _%e180900180915%_)))
                          (if (gx#stx-pair? _%tl180902180920%_)
                              (let ((_%e180903180923%_
                                     (gx#syntax-e _%tl180902180920%_)))
                                (let ((_%hd180904180926%_
                                       (##car _%e180903180923%_))
                                      (_%tl180905180928%_
                                       (##cdr _%e180903180923%_)))
                                  (let ((_%e180931%_ _%hd180904180926%_))
                                    (if (gx#stx-null? _%tl180905180928%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e180931%_)
                                                     '()))
                                         (gx#stx-source _%stx180896%_))
                                        (_%E180899180911%_)))))
                              (_%E180899180911%_))))
                      (_%E180899180911%_)))))
          (_%E180898180933%_))))
    (define gx#core-expand-call%
      (lambda (_%stx180790%_)
        (letrec ((_%expand-runtime-call180792%_
                  (lambda (_%rator-expr180893%_ _%args180894%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr180893%_
                      (gx#stx-map1 gx#core-expand-expression _%args180894%_))
                     (gx#stx-source _%stx180790%_)))))
          (let* ((_%e180793180803%_ _%stx180790%_)
                 (_%E180795180807%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180793180803%_)))
                 (_%E180794180889%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180793180803%_)
                        (let ((_%e180796180811%_
                               (gx#syntax-e _%e180793180803%_)))
                          (let ((_%hd180797180814%_ (##car _%e180796180811%_))
                                (_%tl180798180816%_ (##cdr _%e180796180811%_)))
                            (if (gx#stx-pair? _%tl180798180816%_)
                                (let ((_%e180799180819%_
                                       (gx#syntax-e _%tl180798180816%_)))
                                  (let ((_%hd180800180822%_
                                         (##car _%e180799180819%_))
                                        (_%tl180801180824%_
                                         (##cdr _%e180799180819%_)))
                                    (let* ((_%rator180827%_ _%hd180800180822%_)
                                           (_%args180829%_ _%tl180801180824%_))
                                      (if (gx#stx-list? _%args180829%_)
                                          (let* ((_%rator-expr180831%_
                                                  (gx#core-expand-expression
                                                   _%rator180827%_))
                                                 (_%e180832180842%_
                                                  _%rator-expr180831%_)
                                                 (_%E180834180846%_
                                                  (lambda ()
                                                    (_%expand-runtime-call180792%_
                                                     _%rator-expr180831%_
                                                     _%args180829%_)))
                                                 (_%E180833180885%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e180832180842%_)
                                                        (let ((_%e180835180850%_
                                                               (gx#syntax-e
                                                                _%e180832180842%_)))
                                                          (let ((_%hd180836180853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e180835180850%_))
                        (_%tl180837180855%_ (##cdr _%e180835180850%_)))
                    (if (and (gx#identifier? _%hd180836180853%_)
                             (gx#core-identifier=? _%hd180836180853%_ '%#ref))
                        (if (gx#stx-pair? _%tl180837180855%_)
                            (let ((_%e180838180858%_
                                   (gx#syntax-e _%tl180837180855%_)))
                              (let ((_%hd180839180861%_
                                     (##car _%e180838180858%_))
                                    (_%tl180840180863%_
                                     (##cdr _%e180838180858%_)))
                                (let ((_%id180866%_ _%hd180839180861%_))
                                  (if (gx#stx-null? _%tl180840180863%_)
                                      (let ((_%$e180868%_
                                             (gx#resolve-identifier__0
                                              _%id180866%_)))
                                        (if _%$e180868%_
                                            ((lambda (_%bind180871%_)
                                               (let _%again180873%_ ((_%bind180875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind180871%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e180877%_
                                                        (if (##structure-instance-of?
                                                             _%bind180875%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind180875%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e180877%_
                                                       ((lambda (_%macro180880%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro180880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args180829%_)
                    (gx#stx-source _%stx180790%_))))
                _%$e180877%_)
               (if (##structure-direct-instance-of?
                    _%bind180875%_
                    'gx#import-binding::t)
                   (_%again180873%_
                    (##unchecked-structure-ref _%bind180875%_ '5 '#f '#f))
                   (_%expand-runtime-call180792%_
                    _%rator-expr180831%_
                    _%args180829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e180868%_)
                                            (_%expand-runtime-call180792%_
                                             _%rator-expr180831%_
                                             _%args180829%_)))
                                      (_%E180834180846%_)))))
                            (_%E180834180846%_))
                        (_%E180834180846%_))))
                (_%E180834180846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E180833180885%_))
                                          (_%E180795180807%_)))))
                                (_%E180795180807%_))))
                        (_%E180795180807%_)))))
            (_%E180794180889%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx180723%_)
        (let* ((_%e180724180740%_ _%stx180723%_)
               (_%E180726180744%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180724180740%_)))
               (_%E180725180786%_
                (lambda ()
                  (if (gx#stx-pair? _%e180724180740%_)
                      (let ((_%e180727180748%_
                             (gx#syntax-e _%e180724180740%_)))
                        (let ((_%hd180728180751%_ (##car _%e180727180748%_))
                              (_%tl180729180753%_ (##cdr _%e180727180748%_)))
                          (if (gx#stx-pair? _%tl180729180753%_)
                              (let ((_%e180730180756%_
                                     (gx#syntax-e _%tl180729180753%_)))
                                (let ((_%hd180731180759%_
                                       (##car _%e180730180756%_))
                                      (_%tl180732180761%_
                                       (##cdr _%e180730180756%_)))
                                  (let ((_%test180764%_ _%hd180731180759%_))
                                    (if (gx#stx-pair? _%tl180732180761%_)
                                        (let ((_%e180733180766%_
                                               (gx#syntax-e
                                                _%tl180732180761%_)))
                                          (let ((_%hd180734180769%_
                                                 (##car _%e180733180766%_))
                                                (_%tl180735180771%_
                                                 (##cdr _%e180733180766%_)))
                                            (let ((_%K180774%_
                                                   _%hd180734180769%_))
                                              (if (gx#stx-pair?
                                                   _%tl180735180771%_)
                                                  (let ((_%e180736180776%_
                                                         (gx#syntax-e
                                                          _%tl180735180771%_)))
                                                    (let ((_%hd180737180779%_
                                                           (##car _%e180736180776%_))
                                                          (_%tl180738180781%_
                                                           (##cdr _%e180736180776%_)))
                                                      (let ((_%E180784%_
                                                             _%hd180737180779%_))
                                                        (if (gx#stx-null?
                                                             _%tl180738180781%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test180764%_)
                                 (cons (gx#core-expand-expression _%K180774%_)
                                       (cons (gx#core-expand-expression
                                              _%E180784%_)
                                             '()))))
                     (gx#stx-source _%stx180723%_))
                    (_%E180726180744%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180726180744%_)))))
                                        (_%E180726180744%_)))))
                              (_%E180726180744%_))))
                      (_%E180726180744%_)))))
          (_%E180725180786%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx180682%_)
        (let* ((_%e180683180693%_ _%stx180682%_)
               (_%E180685180697%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180683180693%_)))
               (_%E180684180719%_
                (lambda ()
                  (if (gx#stx-pair? _%e180683180693%_)
                      (let ((_%e180686180701%_
                             (gx#syntax-e _%e180683180693%_)))
                        (let ((_%hd180687180704%_ (##car _%e180686180701%_))
                              (_%tl180688180706%_ (##cdr _%e180686180701%_)))
                          (if (gx#stx-pair? _%tl180688180706%_)
                              (let ((_%e180689180709%_
                                     (gx#syntax-e _%tl180688180706%_)))
                                (let ((_%hd180690180712%_
                                       (##car _%e180689180709%_))
                                      (_%tl180691180714%_
                                       (##cdr _%e180689180709%_)))
                                  (let ((_%id180717%_ _%hd180690180712%_))
                                    (if (gx#stx-null? _%tl180691180714%_)
                                        (if (gx#identifier? _%id180717%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id180717%_
                                                          _%stx180682%_)
                                                         '()))
                                             (gx#stx-source _%stx180682%_))
                                            (_%E180685180697%_))
                                        (_%E180685180697%_)))))
                              (_%E180685180697%_))))
                      (_%E180685180697%_)))))
          (_%E180684180719%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx180628%_)
        (let* ((_%e180629180642%_ _%stx180628%_)
               (_%E180631180646%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180629180642%_)))
               (_%E180630180678%_
                (lambda ()
                  (if (gx#stx-pair? _%e180629180642%_)
                      (let ((_%e180632180650%_
                             (gx#syntax-e _%e180629180642%_)))
                        (let ((_%hd180633180653%_ (##car _%e180632180650%_))
                              (_%tl180634180655%_ (##cdr _%e180632180650%_)))
                          (if (gx#stx-pair? _%tl180634180655%_)
                              (let ((_%e180635180658%_
                                     (gx#syntax-e _%tl180634180655%_)))
                                (let ((_%hd180636180661%_
                                       (##car _%e180635180658%_))
                                      (_%tl180637180663%_
                                       (##cdr _%e180635180658%_)))
                                  (let ((_%id180666%_ _%hd180636180661%_))
                                    (if (gx#stx-pair? _%tl180637180663%_)
                                        (let ((_%e180638180668%_
                                               (gx#syntax-e
                                                _%tl180637180663%_)))
                                          (let ((_%hd180639180671%_
                                                 (##car _%e180638180668%_))
                                                (_%tl180640180673%_
                                                 (##cdr _%e180638180668%_)))
                                            (let ((_%expr180676%_
                                                   _%hd180639180671%_))
                                              (if (gx#stx-null?
                                                   _%tl180640180673%_)
                                                  (if (gx#identifier?
                                                       _%id180666%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id180666%_
                            _%stx180628%_)
                           (cons (gx#core-expand-expression _%expr180676%_)
                                 '())))
               (gx#stx-source _%stx180628%_))
              (_%E180631180646%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180631180646%_)))))
                                        (_%E180631180646%_)))))
                              (_%E180631180646%_))))
                      (_%E180631180646%_)))))
          (_%E180630180678%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx180473%_)
        (letrec ((_%generate180475%_
                  (lambda (_%body180505%_)
                    (let _%lp180507%_ ((_%rest180509%_ _%body180505%_)
                                       (_%ns180510%_
                                        (gx#core-context-namespace__0))
                                       (_%r180511%_ '()))
                      (let* ((_%e180512180527%_ _%rest180509%_)
                             (_%E180525180531%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e180512180527%_)))
                             (_%E180521180535%_
                              (lambda ()
                                (if (gx#stx-null? _%e180512180527%_)
                                    (reverse _%r180511%_)
                                    (_%E180525180531%_))))
                             (_%E180514180592%_
                              (lambda ()
                                (if (gx#stx-pair? _%e180512180527%_)
                                    (let ((_%e180522180539%_
                                           (gx#syntax-e _%e180512180527%_)))
                                      (let ((_%hd180523180542%_
                                             (##car _%e180522180539%_))
                                            (_%tl180524180544%_
                                             (##cdr _%e180522180539%_)))
                                        (let* ((_%hd180547%_
                                                _%hd180523180542%_)
                                               (_%rest180549%_
                                                _%tl180524180544%_))
                                          (if (gx#identifier? _%hd180547%_)
                                              (_%lp180507%_
                                               _%rest180549%_
                                               _%ns180510%_
                                               (cons (cons _%hd180547%_
                                                           (cons (if _%ns180510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd180547%_
                              _%ns180510%_
                              '"#"
                              _%hd180547%_)
                             _%hd180547%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r180511%_))
                                              (let* ((_%e180550180560%_
                                                      _%hd180547%_)
                                                     (_%E180552180564%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e180550180560%_)))
                                                     (_%E180551180588%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e180550180560%_)
                                                            (let ((_%e180553180568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e180550180560%_)))
                      (let ((_%hd180554180571%_ (##car _%e180553180568%_))
                            (_%tl180555180573%_ (##cdr _%e180553180568%_)))
                        (let ((_%id180576%_ _%hd180554180571%_))
                          (if (gx#stx-pair? _%tl180555180573%_)
                              (let ((_%e180556180578%_
                                     (gx#syntax-e _%tl180555180573%_)))
                                (let ((_%hd180557180581%_
                                       (##car _%e180556180578%_))
                                      (_%tl180558180583%_
                                       (##cdr _%e180556180578%_)))
                                  (let ((_%eid180586%_ _%hd180557180581%_))
                                    (if (gx#stx-null? _%tl180558180583%_)
                                        (if (and (gx#identifier? _%id180576%_)
                                                 (gx#identifier?
                                                  _%eid180586%_))
                                            (_%lp180507%_
                                             _%rest180549%_
                                             _%ns180510%_
                                             (cons (cons _%id180576%_
                                                         (cons _%eid180586%_
                                                               '()))
                                                   _%r180511%_))
                                            (_%E180552180564%_))
                                        (_%E180552180564%_)))))
                              (_%E180552180564%_)))))
                    (_%E180552180564%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E180551180588%_))))))
                                    (_%E180521180535%_))))
                             (_%E180513180624%_
                              (lambda ()
                                (if (gx#stx-pair? _%e180512180527%_)
                                    (let ((_%e180515180596%_
                                           (gx#syntax-e _%e180512180527%_)))
                                      (let ((_%hd180516180599%_
                                             (##car _%e180515180596%_))
                                            (_%tl180517180601%_
                                             (##cdr _%e180515180596%_)))
                                        (if (eq? (gx#stx-e _%hd180516180599%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl180517180601%_)
                                                (let ((_%e180518180604%_
                                                       (gx#syntax-e
                                                        _%tl180517180601%_)))
                                                  (let ((_%hd180519180607%_
                                                         (##car _%e180518180604%_))
                                                        (_%tl180520180609%_
                                                         (##cdr _%e180518180604%_)))
                                                    (let* ((_%ns180612%_
                                                            _%hd180519180607%_)
                                                           (_%rest180614%_
                                                            _%tl180520180609%_)
                                                           (_%ns180622%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns180612%_)
                        (symbol->string (gx#stx-e _%ns180612%_))
                        (if (or (gx#stx-string? _%ns180612%_)
                                (gx#stx-false? _%ns180612%_))
                            (gx#stx-e _%ns180612%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx180473%_
                             _%ns180612%_)))))
              (_%lp180507%_ _%rest180614%_ _%ns180622%_ _%r180511%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E180514180592%_))
                                            (_%E180514180592%_))))
                                    (_%E180514180592%_)))))
                        (_%E180513180624%_))))))
          (let* ((_%e180476180483%_ _%stx180473%_)
                 (_%E180478180487%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180476180483%_)))
                 (_%E180477180501%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180476180483%_)
                        (let ((_%e180479180491%_
                               (gx#syntax-e _%e180476180483%_)))
                          (let ((_%hd180480180494%_ (##car _%e180479180491%_))
                                (_%tl180481180496%_ (##cdr _%e180479180491%_)))
                            (let ((_%body180499%_ _%tl180481180496%_))
                              (if (gx#stx-list? _%body180499%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate180475%_ _%body180499%_))
                                  (_%E180478180487%_)))))
                        (_%E180478180487%_)))))
            (_%E180477180501%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx180430%_)
        (let* ((_%e180431180441%_ _%stx180430%_)
               (_%E180433180445%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180431180441%_)))
               (_%E180432180469%_
                (lambda ()
                  (if (gx#stx-pair? _%e180431180441%_)
                      (let ((_%e180434180449%_
                             (gx#syntax-e _%e180431180441%_)))
                        (let ((_%hd180435180452%_ (##car _%e180434180449%_))
                              (_%tl180436180454%_ (##cdr _%e180434180449%_)))
                          (if (gx#stx-pair? _%tl180436180454%_)
                              (let ((_%e180437180457%_
                                     (gx#syntax-e _%tl180436180454%_)))
                                (let ((_%hd180438180460%_
                                       (##car _%e180437180457%_))
                                      (_%tl180439180462%_
                                       (##cdr _%e180437180457%_)))
                                  (let* ((_%hd180465%_ _%hd180438180460%_)
                                         (_%body180467%_ _%tl180439180462%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd180465%_)
                                             (gx#stx-list? _%body180467%_)
                                             (not (gx#stx-null?
                                                   _%body180467%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd180465%_)
                                         _%body180467%_)
                                        (_%E180433180445%_)))))
                              (_%E180433180445%_))))
                      (_%E180433180445%_)))))
          (_%E180432180469%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx180366%_)
        (letrec ((_%generate180368%_
                  (lambda (_%clause180398%_)
                    (let* ((_%e180399180406%_ _%clause180398%_)
                           (_%E180401180410%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx180366%_
                               _%clause180398%_)))
                           (_%E180400180426%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180399180406%_)
                                  (let ((_%e180402180414%_
                                         (gx#syntax-e _%e180399180406%_)))
                                    (let ((_%hd180403180417%_
                                           (##car _%e180402180414%_))
                                          (_%tl180404180419%_
                                           (##cdr _%e180402180414%_)))
                                      (let* ((_%hd180422%_ _%hd180403180417%_)
                                             (_%body180424%_
                                              _%tl180404180419%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd180422%_)
                                                 (gx#stx-list? _%body180424%_)
                                                 (not (gx#stx-null?
                                                       _%body180424%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd180422%_)
                                                   _%body180424%_)
                                             (gx#stx-source _%clause180398%_))
                                            (_%E180401180410%_)))))
                                  (_%E180401180410%_)))))
                      (_%E180400180426%_)))))
          (let* ((_%e180369180376%_ _%stx180366%_)
                 (_%E180371180380%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180369180376%_)))
                 (_%E180370180394%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180369180376%_)
                        (let ((_%e180372180384%_
                               (gx#syntax-e _%e180369180376%_)))
                          (let ((_%hd180373180387%_ (##car _%e180372180384%_))
                                (_%tl180374180389%_ (##cdr _%e180372180384%_)))
                            (let ((_%clauses180392%_ _%tl180374180389%_))
                              (if (gx#stx-list? _%clauses180392%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate180368%_
                                    _%clauses180392%_))
                                  (_%E180371180380%_)))))
                        (_%E180371180380%_)))))
            (_%E180370180394%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx180267%_ _%form180268%_)
        (letrec ((_%generate180270%_
                  (lambda (_%bind180313%_)
                    (let* ((_%e180314180324%_ _%bind180313%_)
                           (_%E180316180328%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx180267%_
                               _%bind180313%_)))
                           (_%E180315180352%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180314180324%_)
                                  (let ((_%e180317180332%_
                                         (gx#syntax-e _%e180314180324%_)))
                                    (let ((_%hd180318180335%_
                                           (##car _%e180317180332%_))
                                          (_%tl180319180337%_
                                           (##cdr _%e180317180332%_)))
                                      (let ((_%ids180340%_ _%hd180318180335%_))
                                        (if (gx#stx-pair? _%tl180319180337%_)
                                            (let ((_%e180320180342%_
                                                   (gx#syntax-e
                                                    _%tl180319180337%_)))
                                              (let ((_%hd180321180345%_
                                                     (##car _%e180320180342%_))
                                                    (_%tl180322180347%_
                                                     (##cdr _%e180320180342%_)))
                                                (let ((_%expr180350%_
                                                       _%hd180321180345%_))
                                                  (if (gx#stx-null?
                                                       _%tl180322180347%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids180340%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids180340%_)
                        (cons _%expr180350%_ '()))
                  (_%E180316180328%_))
              (_%E180316180328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E180316180328%_)))))
                                  (_%E180316180328%_)))))
                      (_%E180315180352%_)))))
          (let* ((_%e180271180281%_ _%stx180267%_)
                 (_%E180273180285%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180271180281%_)))
                 (_%E180272180309%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180271180281%_)
                        (let ((_%e180274180289%_
                               (gx#syntax-e _%e180271180281%_)))
                          (let ((_%hd180275180292%_ (##car _%e180274180289%_))
                                (_%tl180276180294%_ (##cdr _%e180274180289%_)))
                            (if (gx#stx-pair? _%tl180276180294%_)
                                (let ((_%e180277180297%_
                                       (gx#syntax-e _%tl180276180294%_)))
                                  (let ((_%hd180278180300%_
                                         (##car _%e180277180297%_))
                                        (_%tl180279180302%_
                                         (##cdr _%e180277180297%_)))
                                    (let* ((_%hd180305%_ _%hd180278180300%_)
                                           (_%body180307%_ _%tl180279180302%_))
                                      (if (and (gx#stx-list? _%hd180305%_)
                                               (gx#stx-list? _%body180307%_)
                                               (not (gx#stx-null?
                                                     _%body180307%_)))
                                          (gx#core-cons*
                                           _%form180268%_
                                           (gx#stx-map1
                                            _%generate180270%_
                                            _%hd180305%_)
                                           _%body180307%_)
                                          (_%E180273180285%_)))))
                                (_%E180273180285%_))))
                        (_%E180273180285%_)))))
            (_%E180272180309%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx180359%_)
        (let ((_%form180361%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx180359%_ _%form180361%_))))
    (define gx#macro-expand-let-values
      (lambda _g182903_
        (let ((_g182904_ (##length _g182903_)))
          (cond ((##fx= _g182904_ 1)
                 (apply gx#macro-expand-let-values__0 _g182903_))
                ((##fx= _g182904_ 2)
                 (apply gx#macro-expand-let-values__% _g182903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g182903_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx180264%_)
        (gx#macro-expand-let-values__% _%stx180264%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx180262%_)
        (gx#macro-expand-let-values__% _%stx180262%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx180153%_)
        (let* ((_%e180154180180%_ _%stx180153%_)
               (_%E180166180184%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180154180180%_)))
               (_%E180156180226%_
                (lambda ()
                  (if (gx#stx-pair? _%e180154180180%_)
                      (let ((_%e180167180188%_
                             (gx#syntax-e _%e180154180180%_)))
                        (let ((_%hd180168180191%_ (##car _%e180167180188%_))
                              (_%tl180169180193%_ (##cdr _%e180167180188%_)))
                          (if (gx#stx-pair? _%tl180169180193%_)
                              (let ((_%e180170180196%_
                                     (gx#syntax-e _%tl180169180193%_)))
                                (let ((_%hd180171180199%_
                                       (##car _%e180170180196%_))
                                      (_%tl180172180201%_
                                       (##cdr _%e180170180196%_)))
                                  (let ((_%test180204%_ _%hd180171180199%_))
                                    (if (gx#stx-pair? _%tl180172180201%_)
                                        (let ((_%e180173180206%_
                                               (gx#syntax-e
                                                _%tl180172180201%_)))
                                          (let ((_%hd180174180209%_
                                                 (##car _%e180173180206%_))
                                                (_%tl180175180211%_
                                                 (##cdr _%e180173180206%_)))
                                            (let ((_%K180214%_
                                                   _%hd180174180209%_))
                                              (if (gx#stx-pair?
                                                   _%tl180175180211%_)
                                                  (let ((_%e180176180216%_
                                                         (gx#syntax-e
                                                          _%tl180175180211%_)))
                                                    (let ((_%hd180177180219%_
                                                           (##car _%e180176180216%_))
                                                          (_%tl180178180221%_
                                                           (##cdr _%e180176180216%_)))
                                                      (let ((_%E180224%_
                                                             _%hd180177180219%_))
                                                        (if (gx#stx-null?
                                                             _%tl180178180221%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test180204%_
                                                             _%K180214%_
                                                             _%E180224%_)
                                                            (_%E180166180184%_)))))
                                                  (_%E180166180184%_)))))
                                        (_%E180166180184%_)))))
                              (_%E180166180184%_))))
                      (_%E180166180184%_))))
               (_%E180155180258%_
                (lambda ()
                  (if (gx#stx-pair? _%e180154180180%_)
                      (let ((_%e180157180230%_
                             (gx#syntax-e _%e180154180180%_)))
                        (let ((_%hd180158180233%_ (##car _%e180157180230%_))
                              (_%tl180159180235%_ (##cdr _%e180157180230%_)))
                          (if (gx#stx-pair? _%tl180159180235%_)
                              (let ((_%e180160180238%_
                                     (gx#syntax-e _%tl180159180235%_)))
                                (let ((_%hd180161180241%_
                                       (##car _%e180160180238%_))
                                      (_%tl180162180243%_
                                       (##cdr _%e180160180238%_)))
                                  (let ((_%test180246%_ _%hd180161180241%_))
                                    (if (gx#stx-pair? _%tl180162180243%_)
                                        (let ((_%e180163180248%_
                                               (gx#syntax-e
                                                _%tl180162180243%_)))
                                          (let ((_%hd180164180251%_
                                                 (##car _%e180163180248%_))
                                                (_%tl180165180253%_
                                                 (##cdr _%e180163180248%_)))
                                            (let ((_%K180256%_
                                                   _%hd180164180251%_))
                                              (if (gx#stx-null?
                                                   _%tl180165180253%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test180246%_
                                                   _%K180256%_
                                                   '#!void)
                                                  (_%E180156180226%_)))))
                                        (_%E180156180226%_)))))
                              (_%E180156180226%_))))
                      (_%E180156180226%_)))))
          (_%E180155180258%_))))
    (define gx#free-identifier=?
      (lambda (_%xid180138%_ _%yid180139%_)
        (let ((_%xe180141%_ (gx#resolve-identifier__0 _%xid180138%_))
              (_%ye180142%_ (gx#resolve-identifier__0 _%yid180139%_)))
          (if (and _%xe180141%_ _%ye180142%_)
              (let ((_%$e180145%_ (eq? _%xe180141%_ _%ye180142%_)))
                (if _%$e180145%_
                    _%$e180145%_
                    (if (##structure-instance-of? _%xe180141%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye180142%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe180141%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye180142%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe180141%_ _%ye180142%_)
                  '#f
                  (gx#stx-eq? _%xid180138%_ _%yid180139%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid180119%_ _%yid180120%_)
        (letrec ((_%context180122%_
                  (lambda (_%e180136%_)
                    (if (##structure-direct-instance-of?
                         _%e180136%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e180136%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks180123%_
                  (lambda (_%e180131%_)
                    (if (symbol? _%e180131%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e180131%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e180131%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e180131%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap180124%_
                  (lambda (_%e180129%_)
                    (if (symbol? _%e180129%_)
                        _%e180129%_
                        (gx#syntax-local-unwrap _%e180129%_)))))
          (let ((_%x180126%_ (_%unwrap180124%_ _%xid180119%_))
                (_%y180127%_ (_%unwrap180124%_ _%yid180120%_)))
            (if (gx#stx-eq? _%x180126%_ _%y180127%_)
                (if (eq? (_%context180122%_ _%x180126%_)
                         (_%context180122%_ _%y180127%_))
                    (equal? (_%marks180123%_ _%x180126%_)
                            (_%marks180123%_ _%y180127%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx180117%_)
        (if (gx#identifier? _%stx180117%_)
            (gx#core-identifier=? _%stx180117%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx180115%_)
        (if (gx#identifier? _%stx180115%_)
            (gx#core-identifier=? _%stx180115%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx180058%_ _%where180059%_)
        (let _%lp180061%_ ((_%rest180063%_ (gx#syntax->list _%stx180058%_)))
          (let* ((_%rest180064180072%_ _%rest180063%_)
                 (_%else180066180080%_ (lambda () '#t))
                 (_%K180068180093%_
                  (lambda (_%rest180083%_ _%hd180084%_)
                    (if (gx#identifier? _%hd180084%_)
                        (if (__find (lambda (_%g180086180088%_)
                                      (gx#bound-identifier=?
                                       _%g180086180088%_
                                       _%hd180084%_))
                                    _%rest180083%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where180059%_
                             _%hd180084%_)
                            (_%lp180061%_ _%rest180083%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where180059%_
                         _%hd180084%_)))))
            (if (pair? _%rest180064180072%_)
                (let ((_%hd180069180096%_ (##car _%rest180064180072%_))
                      (_%tl180070180098%_ (##cdr _%rest180064180072%_)))
                  (let* ((_%hd180101%_ _%hd180069180096%_)
                         (_%rest180103%_ _%tl180070180098%_))
                    (_%K180068180093%_ _%rest180103%_ _%hd180101%_)))
                (_%else180066180080%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx180108%_)
        (let ((_%where180110%_ _%stx180108%_))
          (gx#check-duplicate-identifiers__% _%stx180108%_ _%where180110%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g182905_
        (let ((_g182906_ (##length _g182905_)))
          (cond ((##fx= _g182906_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g182905_))
                ((##fx= _g182906_ 2)
                 (apply gx#check-duplicate-identifiers__% _g182905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g182905_))))))
    (define gx#core-bind-values?
      (lambda (_%stx180050%_)
        (gx#stx-andmap
         (lambda (_%x180052%_)
           (let ((_%$e180054%_ (gx#identifier? _%x180052%_)))
             (if _%$e180054%_ _%$e180054%_ (gx#stx-false? _%x180052%_))))
         _%stx180050%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx180014%_ _%rebind?180015%_ _%phi180016%_ _%ctx180017%_)
        (gx#stx-for-each1
         (lambda (_%id180019%_)
           (if (gx#identifier? _%id180019%_)
               (gx#core-bind-runtime!__%
                _%id180019%_
                _%rebind?180015%_
                _%phi180016%_
                _%ctx180017%_)
               '#!void))
         _%stx180014%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx180024%_)
        (let* ((_%rebind?180026%_ '#f)
               (_%phi180028%_ (gx#current-expander-phi))
               (_%ctx180030%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180024%_
           _%rebind?180026%_
           _%phi180028%_
           _%ctx180030%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx180032%_ _%rebind?180033%_)
        (let* ((_%phi180035%_ (gx#current-expander-phi))
               (_%ctx180037%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180032%_
           _%rebind?180033%_
           _%phi180035%_
           _%ctx180037%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx180039%_ _%rebind?180040%_ _%phi180041%_)
        (let ((_%ctx180043%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180039%_
           _%rebind?180040%_
           _%phi180041%_
           _%ctx180043%_))))
    (define gx#core-bind-values!
      (lambda _g182907_
        (let ((_g182908_ (##length _g182907_)))
          (cond ((##fx= _g182908_ 1) (apply gx#core-bind-values!__0 _g182907_))
                ((##fx= _g182908_ 2) (apply gx#core-bind-values!__1 _g182907_))
                ((##fx= _g182908_ 3) (apply gx#core-bind-values!__2 _g182907_))
                ((##fx= _g182908_ 4) (apply gx#core-bind-values!__% _g182907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g182907_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx180009%_)
        (gx#stx-map1
         (lambda (_%x180011%_)
           (if (gx#identifier? _%x180011%_)
               (gx#core-quote-syntax__0 _%x180011%_)
               '#f))
         _%stx180009%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx180002%_)
        (if (gx#identifier? _%stx180002%_)
            (let* ((_%bind180004%_ (gx#resolve-identifier__0 _%stx180002%_))
                   (_%$e180006%_ (not _%bind180004%_)))
              (if _%$e180006%_
                  _%$e180006%_
                  (##structure-instance-of?
                   _%bind180004%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id179991%_ _%form179992%_)
        (let ((_%bind179994%_ (gx#resolve-identifier__0 _%id179991%_)))
          (if (##structure-instance-of? _%bind179994%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id179991%_)
              (if (not _%bind179994%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id179991%_)))
                      (gx#core-quote-syntax__0 _%id179991%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form179992%_
                       _%id179991%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form179992%_
                   _%id179991%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id179946%_ _%rebind?179947%_ _%phi179948%_ _%ctx179949%_)
        (let* ((_%key179951%_ (gx#core-identifier-key _%id179946%_))
               (_%eid179953%_
                (gx#make-binding-id__%
                 _%key179951%_
                 '#f
                 _%phi179948%_
                 _%ctx179949%_))
               (_%bind179959%_
                (if (##structure-instance-of?
                     _%ctx179949%_
                     'gx#module-context::t)
                    (let ((__obj182884
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
                       __obj182884
                       _%eid179953%_
                       _%key179951%_
                       _%phi179948%_
                       _%ctx179949%_)
                      __obj182884)
                    (if (##structure-instance-of?
                         _%ctx179949%_
                         'gx#top-context::t)
                        (let ((__obj182883
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj182883
                           _%eid179953%_
                           _%key179951%_
                           _%phi179948%_)
                          __obj182883)
                        (if (##structure-instance-of?
                             _%ctx179949%_
                             'gx#local-context::t)
                            (let ((__obj182882
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj182882
                               _%eid179953%_
                               _%key179951%_
                               _%phi179948%_)
                              __obj182882)
                            (let ((__obj182881
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj182881
                               _%eid179953%_
                               _%key179951%_
                               _%phi179948%_)
                              __obj182881))))))
          (gx#bind-identifier!__%
           _%id179946%_
           _%bind179959%_
           _%rebind?179947%_
           _%phi179948%_
           _%ctx179949%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id179965%_)
        (let* ((_%rebind?179967%_ '#f)
               (_%phi179969%_ (gx#current-expander-phi))
               (_%ctx179971%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179965%_
           _%rebind?179967%_
           _%phi179969%_
           _%ctx179971%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id179973%_ _%rebind?179974%_)
        (let* ((_%phi179976%_ (gx#current-expander-phi))
               (_%ctx179978%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179973%_
           _%rebind?179974%_
           _%phi179976%_
           _%ctx179978%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id179980%_ _%rebind?179981%_ _%phi179982%_)
        (let ((_%ctx179984%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179980%_
           _%rebind?179981%_
           _%phi179982%_
           _%ctx179984%_))))
    (define gx#core-bind-runtime!
      (lambda _g182909_
        (let ((_g182910_ (##length _g182909_)))
          (cond ((##fx= _g182910_ 1)
                 (apply gx#core-bind-runtime!__0 _g182909_))
                ((##fx= _g182910_ 2)
                 (apply gx#core-bind-runtime!__1 _g182909_))
                ((##fx= _g182910_ 3)
                 (apply gx#core-bind-runtime!__2 _g182909_))
                ((##fx= _g182910_ 4)
                 (apply gx#core-bind-runtime!__% _g182909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g182909_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id179898%_
               _%eid179899%_
               _%rebind?179900%_
               _%phi179901%_
               _%ctx179902%_)
        (let* ((_%key179904%_ (gx#core-identifier-key _%id179898%_))
               (_%bind179909%_
                (if (##structure-instance-of?
                     _%ctx179902%_
                     'gx#module-context::t)
                    (let ((__obj182887
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
                       __obj182887
                       _%eid179899%_
                       _%key179904%_
                       _%phi179901%_
                       _%ctx179902%_)
                      __obj182887)
                    (if (##structure-instance-of?
                         _%ctx179902%_
                         'gx#top-context::t)
                        (let ((__obj182886
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj182886
                           _%eid179899%_
                           _%key179904%_
                           _%phi179901%_)
                          __obj182886)
                        (let ((__obj182885
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj182885
                           _%eid179899%_
                           _%key179904%_
                           _%phi179901%_)
                          __obj182885)))))
          (gx#bind-identifier!__%
           _%id179898%_
           _%bind179909%_
           _%rebind?179900%_
           _%phi179901%_
           _%ctx179902%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id179915%_ _%eid179916%_)
        (let* ((_%rebind?179918%_ '#f)
               (_%phi179920%_ (gx#current-expander-phi))
               (_%ctx179922%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179915%_
           _%eid179916%_
           _%rebind?179918%_
           _%phi179920%_
           _%ctx179922%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id179924%_ _%eid179925%_ _%rebind?179926%_)
        (let* ((_%phi179928%_ (gx#current-expander-phi))
               (_%ctx179930%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179924%_
           _%eid179925%_
           _%rebind?179926%_
           _%phi179928%_
           _%ctx179930%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id179932%_ _%eid179933%_ _%rebind?179934%_ _%phi179935%_)
        (let ((_%ctx179937%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179932%_
           _%eid179933%_
           _%rebind?179934%_
           _%phi179935%_
           _%ctx179937%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g182911_
        (let ((_g182912_ (##length _g182911_)))
          (cond ((##fx= _g182912_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g182911_))
                ((##fx= _g182912_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g182911_))
                ((##fx= _g182912_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g182911_))
                ((##fx= _g182912_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g182911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g182911_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id179858%_
               _%eid179859%_
               _%rebind?179860%_
               _%phi179861%_
               _%ctx179862%_)
        (gx#bind-identifier!__%
         _%id179858%_
         (let ((__obj182888
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj182888
            _%eid179859%_
            (gx#core-identifier-key _%id179858%_)
            _%phi179861%_)
           __obj182888)
         _%rebind?179860%_
         _%phi179861%_
         _%ctx179862%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id179867%_ _%eid179868%_)
        (let* ((_%rebind?179870%_ '#f)
               (_%phi179872%_ (gx#current-expander-phi))
               (_%ctx179874%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179867%_
           _%eid179868%_
           _%rebind?179870%_
           _%phi179872%_
           _%ctx179874%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id179876%_ _%eid179877%_ _%rebind?179878%_)
        (let* ((_%phi179880%_ (gx#current-expander-phi))
               (_%ctx179882%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179876%_
           _%eid179877%_
           _%rebind?179878%_
           _%phi179880%_
           _%ctx179882%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id179884%_ _%eid179885%_ _%rebind?179886%_ _%phi179887%_)
        (let ((_%ctx179889%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179884%_
           _%eid179885%_
           _%rebind?179886%_
           _%phi179887%_
           _%ctx179889%_))))
    (define gx#core-bind-extern!
      (lambda _g182913_
        (let ((_g182914_ (##length _g182913_)))
          (cond ((##fx= _g182914_ 2) (apply gx#core-bind-extern!__0 _g182913_))
                ((##fx= _g182914_ 3) (apply gx#core-bind-extern!__1 _g182913_))
                ((##fx= _g182914_ 4) (apply gx#core-bind-extern!__2 _g182913_))
                ((##fx= _g182914_ 5) (apply gx#core-bind-extern!__% _g182913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g182913_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id179812%_
               _%e179813%_
               _%rebind?179814%_
               _%phi179815%_
               _%ctx179816%_)
        (gx#bind-identifier!__%
         _%id179812%_
         (let ((_%key179821%_ (gx#core-identifier-key _%id179812%_))
               (_%e179822%_
                (if (or (##structure-instance-of? _%e179813%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e179813%_
                         'gx#expander-context::t))
                    _%e179813%_
                    (##structure
                     gx#user-expander::t
                     _%e179813%_
                     _%ctx179816%_
                     _%phi179815%_))))
           (let ((__obj182889
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj182889
              (gx#make-binding-id__%
               _%key179821%_
               '#t
               _%phi179815%_
               _%ctx179816%_)
              _%key179821%_
              _%phi179815%_
              _%e179822%_)
             __obj182889))
         _%rebind?179814%_
         _%phi179815%_
         _%ctx179816%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id179827%_ _%e179828%_)
        (let* ((_%rebind?179830%_ '#f)
               (_%phi179832%_ (gx#current-expander-phi))
               (_%ctx179834%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179827%_
           _%e179828%_
           _%rebind?179830%_
           _%phi179832%_
           _%ctx179834%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id179836%_ _%e179837%_ _%rebind?179838%_)
        (let* ((_%phi179840%_ (gx#current-expander-phi))
               (_%ctx179842%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179836%_
           _%e179837%_
           _%rebind?179838%_
           _%phi179840%_
           _%ctx179842%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id179844%_ _%e179845%_ _%rebind?179846%_ _%phi179847%_)
        (let ((_%ctx179849%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179844%_
           _%e179845%_
           _%rebind?179846%_
           _%phi179847%_
           _%ctx179849%_))))
    (define gx#core-bind-syntax!
      (lambda _g182915_
        (let ((_g182916_ (##length _g182915_)))
          (cond ((##fx= _g182916_ 2) (apply gx#core-bind-syntax!__0 _g182915_))
                ((##fx= _g182916_ 3) (apply gx#core-bind-syntax!__1 _g182915_))
                ((##fx= _g182916_ 4) (apply gx#core-bind-syntax!__2 _g182915_))
                ((##fx= _g182916_ 5) (apply gx#core-bind-syntax!__% _g182915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g182915_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id179795%_ _%e179796%_ _%rebind?179797%_)
        (gx#core-bind-syntax!__%
         _%id179795%_
         _%e179796%_
         _%rebind?179797%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id179802%_ _%e179803%_)
        (let ((_%rebind?179805%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id179802%_
           _%e179803%_
           _%rebind?179805%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g182917_
        (let ((_g182918_ (##length _g182917_)))
          (cond ((##fx= _g182918_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g182917_))
                ((##fx= _g182918_ 3)
                 (apply gx#core-bind-root-syntax!__% _g182917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g182917_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id179753%_
               _%alias-id179754%_
               _%rebind?179755%_
               _%phi179756%_
               _%ctx179757%_)
        (gx#bind-identifier!__%
         _%id179753%_
         (let* ((_%key179759%_ (gx#core-identifier-key _%id179753%_))
                (__obj182890
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj182890
            (gx#make-binding-id__%
             _%key179759%_
             '#t
             _%phi179756%_
             _%ctx179757%_)
            _%key179759%_
            _%phi179756%_
            _%alias-id179754%_)
           __obj182890)
         _%rebind?179755%_
         _%phi179756%_
         _%ctx179757%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id179764%_ _%alias-id179765%_)
        (let* ((_%rebind?179767%_ '#f)
               (_%phi179769%_ (gx#current-expander-phi))
               (_%ctx179771%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179764%_
           _%alias-id179765%_
           _%rebind?179767%_
           _%phi179769%_
           _%ctx179771%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id179773%_ _%alias-id179774%_ _%rebind?179775%_)
        (let* ((_%phi179777%_ (gx#current-expander-phi))
               (_%ctx179779%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179773%_
           _%alias-id179774%_
           _%rebind?179775%_
           _%phi179777%_
           _%ctx179779%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id179781%_ _%alias-id179782%_ _%rebind?179783%_ _%phi179784%_)
        (let ((_%ctx179786%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179781%_
           _%alias-id179782%_
           _%rebind?179783%_
           _%phi179784%_
           _%ctx179786%_))))
    (define gx#core-bind-alias!
      (lambda _g182919_
        (let ((_g182920_ (##length _g182919_)))
          (cond ((##fx= _g182920_ 2) (apply gx#core-bind-alias!__0 _g182919_))
                ((##fx= _g182920_ 3) (apply gx#core-bind-alias!__1 _g182919_))
                ((##fx= _g182920_ 4) (apply gx#core-bind-alias!__2 _g182919_))
                ((##fx= _g182920_ 5) (apply gx#core-bind-alias!__% _g182919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g182919_))))))
    (define gx#make-binding-id__%
      (lambda (_%key179703%_ _%syntax?179704%_ _%phi179705%_ _%ctx179706%_)
        (if (uninterned-symbol? _%key179703%_)
            (##gensym 'L)
            (if (pair? _%key179703%_)
                (gensym (##car _%key179703%_))
                (if (##structure-instance-of? _%ctx179706%_ 'gx#top-context::t)
                    (let ((_%ns179711%_
                           (gx#core-context-namespace__% _%ctx179706%_)))
                      (if (and (fxzero? _%phi179705%_) (not _%syntax?179704%_))
                          (if _%ns179711%_
                              (make-symbol__1 _%ns179711%_ '"#" _%key179703%_)
                              _%key179703%_)
                          (if _%syntax?179704%_
                              (make-symbol__1
                               (let ((_%$e179715%_ _%ns179711%_))
                                 (if _%$e179715%_ _%$e179715%_ '""))
                               '"[:"
                               (number->string _%phi179705%_)
                               '":]#"
                               _%key179703%_)
                              (make-symbol__1
                               (let ((_%$e179719%_ _%ns179711%_))
                                 (if _%$e179719%_ _%$e179719%_ '""))
                               '"["
                               (number->string _%phi179705%_)
                               '"]#"
                               _%key179703%_))))
                    (gensym _%key179703%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key179726%_)
        (let* ((_%syntax?179728%_ '#f)
               (_%phi179730%_ (gx#current-expander-phi))
               (_%ctx179732%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179726%_
           _%syntax?179728%_
           _%phi179730%_
           _%ctx179732%_))))
    (define gx#make-binding-id__1
      (lambda (_%key179734%_ _%syntax?179735%_)
        (let* ((_%phi179737%_ (gx#current-expander-phi))
               (_%ctx179739%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179734%_
           _%syntax?179735%_
           _%phi179737%_
           _%ctx179739%_))))
    (define gx#make-binding-id__2
      (lambda (_%key179741%_ _%syntax?179742%_ _%phi179743%_)
        (let ((_%ctx179745%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179741%_
           _%syntax?179742%_
           _%phi179743%_
           _%ctx179745%_))))
    (define gx#make-binding-id
      (lambda _g182921_
        (let ((_g182922_ (##length _g182921_)))
          (cond ((##fx= _g182922_ 1) (apply gx#make-binding-id__0 _g182921_))
                ((##fx= _g182922_ 2) (apply gx#make-binding-id__1 _g182921_))
                ((##fx= _g182922_ 3) (apply gx#make-binding-id__2 _g182921_))
                ((##fx= _g182922_ 4) (apply gx#make-binding-id__% _g182921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g182921_))))))))
