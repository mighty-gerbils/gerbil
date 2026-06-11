(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1781138354)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx184156%_)
        (letrec ((_%expand-special184158%_
                  (lambda (_%hd184160%_ _%K184161%_ _%rest184162%_ _%r184163%_)
                    (_%K184161%_
                     _%rest184162%_
                     (cons (gx#core-expand-top _%hd184160%_) _%r184163%_)))))
          (gx#core-expand-block__0 _%stx184156%_ _%expand-special184158%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx183810%_)
        (letrec ((_%expand-special183812%_
                  (lambda (_%hd183932%_ _%K183933%_ _%rest183934%_ _%r183935%_)
                    (let* ((_%K*183939%_
                            (lambda (_%e183937%_)
                              (_%K183933%_
                               _%rest183934%_
                               (cons _%e183937%_ _%r183935%_))))
                           (_%$%e183940183992%_ _%hd183932%_)
                           (_%$%E183978183996%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e183940183992%_)))
                           (_%$%E183974184038%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183940183992%_)
                                  (let ((_%$%e183979184000%_
                                         (gx#syntax-e _%$%e183940183992%_)))
                                    (let ((_%$%hd183980184003%_
                                           (##car _%$%e183979184000%_))
                                          (_%$%tl183981184005%_
                                           (##cdr _%$%e183979184000%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183980184003%_)
                                               (gx#core-identifier=?
                                                _%$%hd183980184003%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl183981184005%_)
                                              (let ((_%$%e183982184008%_
                                                     (gx#syntax-e
                                                      _%$%tl183981184005%_)))
                                                (let ((_%$%hd183983184011%_
                                                       (##car _%$%e183982184008%_))
                                                      (_%$%tl183984184013%_
                                                       (##cdr _%$%e183982184008%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd183983184011%_)
                                                      (let ((_%$%e183988184016%_
                                                             (gx#syntax-e
                                                              _%$%hd183983184011%_)))
                                                        (let ((_%$%hd183989184019%_
                                                               (##car _%$%e183988184016%_))
                                                              (_%$%tl183990184021%_
                                                               (##cdr _%$%e183988184016%_)))
                                                          (let ((_%id184024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd183989184019%_))
                    (if (gx#stx-null? _%$%tl183990184021%_)
                        (if (gx#stx-pair? _%$%tl183984184013%_)
                            (let ((_%$%e183985184026%_
                                   (gx#syntax-e _%$%tl183984184013%_)))
                              (let ((_%$%hd183986184029%_
                                     (##car _%$%e183985184026%_))
                                    (_%$%tl183987184031%_
                                     (##cdr _%$%e183985184026%_)))
                                (let ((_%props184034%_ _%$%hd183986184029%_))
                                  (if (gx#stx-null? _%$%tl183987184031%_)
                                      (let ((_%bind184036%_
                                             (gx#resolve-identifier__0
                                              _%id184024%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind184036%_
                                         _%props184034%_)
                                        (_%K183933%_
                                         _%rest183934%_
                                         _%r183935%_))
                                      (_%$%E183978183996%_)))))
                            (_%$%E183978183996%_))
                        (_%$%E183978183996%_)))))
              (_%$%E183978183996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E183978183996%_))
                                          (_%$%E183978183996%_))))
                                  (_%$%E183978183996%_))))
                           (_%$%E183970184050%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183940183992%_)
                                  (let ((_%$%e183975184042%_
                                         (gx#syntax-e _%$%e183940183992%_)))
                                    (let ((_%$%hd183976184045%_
                                           (##car _%$%e183975184042%_))
                                          (_%$%tl183977184047%_
                                           (##cdr _%$%e183975184042%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183976184045%_)
                                               (gx#core-identifier=?
                                                _%$%hd183976184045%_
                                                '%#define-runtime))
                                          (_%K*183939%_
                                           (gx#core-expand-define-runtime%
                                            _%hd183932%_))
                                          (_%$%E183974184038%_))))
                                  (_%$%E183974184038%_))))
                           (_%$%E183966184062%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183940183992%_)
                                  (let ((_%$%e183971184054%_
                                         (gx#syntax-e _%$%e183940183992%_)))
                                    (let ((_%$%hd183972184057%_
                                           (##car _%$%e183971184054%_))
                                          (_%$%tl183973184059%_
                                           (##cdr _%$%e183971184054%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183972184057%_)
                                               (gx#core-identifier=?
                                                _%$%hd183972184057%_
                                                '%#define-alias))
                                          (_%K*183939%_
                                           (gx#core-expand-define-alias%
                                            _%hd183932%_))
                                          (_%$%E183970184050%_))))
                                  (_%$%E183970184050%_))))
                           (_%$%E183956184074%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183940183992%_)
                                  (let ((_%$%e183967184066%_
                                         (gx#syntax-e _%$%e183940183992%_)))
                                    (let ((_%$%hd183968184069%_
                                           (##car _%$%e183967184066%_))
                                          (_%$%tl183969184071%_
                                           (##cdr _%$%e183967184066%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183968184069%_)
                                               (gx#core-identifier=?
                                                _%$%hd183968184069%_
                                                '%#define-syntax))
                                          (_%K*183939%_
                                           (gx#core-expand-define-syntax%
                                            _%hd183932%_))
                                          (_%$%E183966184062%_))))
                                  (_%$%E183966184062%_))))
                           (_%$%E183946184106%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183940183992%_)
                                  (let ((_%$%e183957184078%_
                                         (gx#syntax-e _%$%e183940183992%_)))
                                    (let ((_%$%hd183958184081%_
                                           (##car _%$%e183957184078%_))
                                          (_%$%tl183959184083%_
                                           (##cdr _%$%e183957184078%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183958184081%_)
                                               (gx#core-identifier=?
                                                _%$%hd183958184081%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl183959184083%_)
                                              (let ((_%$%e183960184086%_
                                                     (gx#syntax-e
                                                      _%$%tl183959184083%_)))
                                                (let ((_%$%hd183961184089%_
                                                       (##car _%$%e183960184086%_))
                                                      (_%$%tl183962184091%_
                                                       (##cdr _%$%e183960184086%_)))
                                                  (let ((_%hd-bind184094%_
                                                         _%$%hd183961184089%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl183962184091%_)
                                                        (let ((_%$%e183963184096%_
                                                               (gx#syntax-e
                                                                _%$%tl183962184091%_)))
                                                          (let ((_%$%hd183964184099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e183963184096%_))
                        (_%$%tl183965184101%_ (##cdr _%$%e183963184096%_)))
                    (let ((_%expr184104%_ _%$%hd183964184099%_))
                      (if (gx#stx-null? _%$%tl183965184101%_)
                          (if (gx#core-bind-values? _%hd-bind184094%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind184094%_)
                                (_%K*183939%_ _%hd183932%_))
                              (_%$%E183956184074%_))
                          (_%$%E183956184074%_)))))
                (_%$%E183956184074%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E183956184074%_))
                                          (_%$%E183956184074%_))))
                                  (_%$%E183956184074%_))))
                           (_%$%E183942184140%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183940183992%_)
                                  (let ((_%$%e183947184110%_
                                         (gx#syntax-e _%$%e183940183992%_)))
                                    (let ((_%$%hd183948184113%_
                                           (##car _%$%e183947184110%_))
                                          (_%$%tl183949184115%_
                                           (##cdr _%$%e183947184110%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183948184113%_)
                                               (gx#core-identifier=?
                                                _%$%hd183948184113%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl183949184115%_)
                                              (let ((_%$%e183950184118%_
                                                     (gx#syntax-e
                                                      _%$%tl183949184115%_)))
                                                (let ((_%$%hd183951184121%_
                                                       (##car _%$%e183950184118%_))
                                                      (_%$%tl183952184123%_
                                                       (##cdr _%$%e183950184118%_)))
                                                  (let ((_%hd-bind184126%_
                                                         _%$%hd183951184121%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl183952184123%_)
                                                        (let ((_%$%e183953184128%_
                                                               (gx#syntax-e
                                                                _%$%tl183952184123%_)))
                                                          (let ((_%$%hd183954184131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e183953184128%_))
                        (_%$%tl183955184133%_ (##cdr _%$%e183953184128%_)))
                    (let* ((_%expr184136%_ _%$%hd183954184131%_)
                           (_%props184138%_ _%$%tl183955184133%_))
                      (if (and (gx#core-bind-values? _%hd-bind184126%_)
                               (gx#stx-list? _%props184138%_)
                               (not (gx#stx-null? _%props184138%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind184126%_)
                            (_%K183933%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind184126%_
                                          (cons _%props184138%_ '())))
                                   _%rest183934%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind184126%_
                                          (cons _%expr184136%_ '())))
                                   _%r183935%_)))
                          (_%$%E183946184106%_)))))
                (_%$%E183946184106%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E183946184106%_))
                                          (_%$%E183946184106%_))))
                                  (_%$%E183946184106%_))))
                           (_%$%E183941184152%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183940183992%_)
                                  (let ((_%$%e183943184144%_
                                         (gx#syntax-e _%$%e183940183992%_)))
                                    (let ((_%$%hd183944184147%_
                                           (##car _%$%e183943184144%_))
                                          (_%$%tl183945184149%_
                                           (##cdr _%$%e183943184144%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183944184147%_)
                                               (gx#core-identifier=?
                                                _%$%hd183944184147%_
                                                '%#begin-syntax))
                                          (_%K*183939%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd183932%_))
                                          (_%$%E183942184140%_))))
                                  (_%$%E183942184140%_)))))
                      (_%$%E183941184152%_))))
                 (_%eval-body183813%_
                  (lambda (_%rbody183821%_)
                    (let _%lp183823%_ ((_%rest183825%_ _%rbody183821%_)
                                       (_%body183826%_ '())
                                       (_%ebody183827%_ '()))
                      (let* ((_%$%rest183828183836%_ _%rest183825%_)
                             (_%$%else183830183844%_
                              (lambda ()
                                (values _%body183826%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody183827%_)
                                          (gx#stx-source _%stx183810%_))))))
                             (_%$%K183832183920%_
                              (lambda (_%rest183847%_ _%hd183848%_)
                                (let* ((_%$%e183849183866%_ _%hd183848%_)
                                       (_%$%E183861183870%_
                                        (lambda ()
                                          (_%lp183823%_
                                           _%rest183847%_
                                           (cons _%hd183848%_ _%body183826%_)
                                           (cons _%hd183848%_
                                                 _%ebody183827%_))))
                                       (_%$%E183851183882%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e183849183866%_)
                                              (let ((_%$%e183862183874%_
                                                     (gx#syntax-e
                                                      _%$%e183849183866%_)))
                                                (let ((_%$%hd183863183877%_
                                                       (##car _%$%e183862183874%_))
                                                      (_%$%tl183864183879%_
                                                       (##cdr _%$%e183862183874%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd183863183877%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd183863183877%_
                                                            '%#begin-syntax))
                                                      (_%lp183823%_
                                                       _%rest183847%_
                                                       (cons _%hd183848%_
                                                             _%body183826%_)
                                                       _%ebody183827%_)
                                                      (_%$%E183861183870%_))))
                                              (_%$%E183861183870%_))))
                                       (_%$%E183850183916%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e183849183866%_)
                                              (let ((_%$%e183852183886%_
                                                     (gx#syntax-e
                                                      _%$%e183849183866%_)))
                                                (let ((_%$%hd183853183889%_
                                                       (##car _%$%e183852183886%_))
                                                      (_%$%tl183854183891%_
                                                       (##cdr _%$%e183852183886%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd183853183889%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd183853183889%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl183854183891%_)
                                                          (let ((_%$%e183855183894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl183854183891%_)))
                    (let ((_%$%hd183856183897%_ (##car _%$%e183855183894%_))
                          (_%$%tl183857183899%_ (##cdr _%$%e183855183894%_)))
                      (let ((_%hd-bind183902%_ _%$%hd183856183897%_))
                        (if (gx#stx-pair? _%$%tl183857183899%_)
                            (let ((_%$%e183858183904%_
                                   (gx#syntax-e _%$%tl183857183899%_)))
                              (let ((_%$%hd183859183907%_
                                     (##car _%$%e183858183904%_))
                                    (_%$%tl183860183909%_
                                     (##cdr _%$%e183858183904%_)))
                                (let ((_%expr183912%_ _%$%hd183859183907%_))
                                  (if (gx#stx-null? _%$%tl183860183909%_)
                                      (let ((_%ehd183914%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind183902%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr183912%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd183848%_))))
                                        (_%lp183823%_
                                         _%rest183847%_
                                         (cons _%ehd183914%_ _%body183826%_)
                                         (cons _%ehd183914%_ _%ebody183827%_)))
                                      (_%$%E183851183882%_)))))
                            (_%$%E183851183882%_)))))
                  (_%$%E183851183882%_))
              (_%$%E183851183882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E183851183882%_)))))
                                  (_%$%E183850183916%_)))))
                        (if (pair? _%$%rest183828183836%_)
                            (let ((_%$%hd183833183923%_
                                   (##car _%$%rest183828183836%_))
                                  (_%$%tl183834183925%_
                                   (##cdr _%$%rest183828183836%_)))
                              (let* ((_%hd183928%_ _%$%hd183833183923%_)
                                     (_%rest183930%_ _%$%tl183834183925%_))
                                (_%$%K183832183920%_
                                 _%rest183930%_
                                 _%hd183928%_)))
                            (_%$%else183830183844%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody183816%_
                     (gx#core-expand-block__1
                      _%stx183810%_
                      _%expand-special183812%_
                      '#f))
                    (_g184189_ (_%eval-body183813%_ _%rbody183816%_)))
               (begin
                 (let ((_g184190_
                        (if (##values? _g184189_)
                            (##values-length _g184189_)
                            1)))
                   (if (not (##fx= _g184190_ 2))
                       (error "Context expects 2 values" _g184190_)))
                 (let ((_%expanded-body183818%_ (##values-ref _g184189_ 0))
                       (_%value183819%_ (##values-ref _g184189_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body183818%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value183819%_ '())))
                    (gx#stx-source _%stx183810%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx183780%_)
        (let* ((_%$%e183781183788%_ _%stx183780%_)
               (_%$%E183783183792%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e183781183788%_)))
               (_%$%E183782183806%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e183781183788%_)
                      (let ((_%$%e183784183796%_
                             (gx#syntax-e _%$%e183781183788%_)))
                        (let ((_%$%hd183785183799%_
                               (##car _%$%e183784183796%_))
                              (_%$%tl183786183801%_
                               (##cdr _%$%e183784183796%_)))
                          (let ((_%body183804%_ _%$%tl183786183801%_))
                            (if (gx#stx-list? _%body183804%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body183804%_)
                                 (gx#stx-source _%stx183780%_))
                                (_%$%E183783183792%_)))))
                      (_%$%E183783183792%_)))))
          (_%$%E183782183806%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx183778%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx183778%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx183724%_)
        (let* ((_%$%e183725183738%_ _%stx183724%_)
               (_%$%E183727183742%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e183725183738%_)))
               (_%$%E183726183774%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e183725183738%_)
                      (let ((_%$%e183728183746%_
                             (gx#syntax-e _%$%e183725183738%_)))
                        (let ((_%$%hd183729183749%_
                               (##car _%$%e183728183746%_))
                              (_%$%tl183730183751%_
                               (##cdr _%$%e183728183746%_)))
                          (if (gx#stx-pair? _%$%tl183730183751%_)
                              (let ((_%$%e183731183754%_
                                     (gx#syntax-e _%$%tl183730183751%_)))
                                (let ((_%$%hd183732183757%_
                                       (##car _%$%e183731183754%_))
                                      (_%$%tl183733183759%_
                                       (##cdr _%$%e183731183754%_)))
                                  (let ((_%ann183762%_ _%$%hd183732183757%_))
                                    (if (gx#stx-pair? _%$%tl183733183759%_)
                                        (let ((_%$%e183734183764%_
                                               (gx#syntax-e
                                                _%$%tl183733183759%_)))
                                          (let ((_%$%hd183735183767%_
                                                 (##car _%$%e183734183764%_))
                                                (_%$%tl183736183769%_
                                                 (##cdr _%$%e183734183764%_)))
                                            (let ((_%expr183772%_
                                                   _%$%hd183735183767%_))
                                              (if (gx#stx-null?
                                                   _%$%tl183736183769%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann183762%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr183772%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx183724%_))
                                                  (_%$%E183727183742%_)))))
                                        (_%$%E183727183742%_)))))
                              (_%$%E183727183742%_))))
                      (_%$%E183727183742%_)))))
          (_%$%E183726183774%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx183349%_ _%body183350%_)
        (letrec ((_%expand-special183352%_
                  (lambda (_%hd183719%_ _%K183720%_ _%rest183721%_ _%r183722%_)
                    (_%K183720%_
                     '()
                     (cons (_%expand-internal183353%_
                            _%hd183719%_
                            _%rest183721%_)
                           _%r183722%_))))
                 (_%expand-internal183353%_
                  (lambda (_%hd183715%_ _%rest183716%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal183355%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd183715%_ _%rest183716%_))
                          (gx#stx-source _%stx183349%_))
                         _%expand-internal-special183354%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj184173
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj184173)
                       __obj184173))))
                 (_%expand-internal-special183354%_
                  (lambda (_%hd183511%_ _%K183512%_ _%rest183513%_ _%r183514%_)
                    (let* ((_%$%e183515183563%_ _%hd183511%_)
                           (_%$%E183558183567%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e183515183563%_)))
                           (_%$%E183545183579%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183515183563%_)
                                  (let ((_%$%e183559183571%_
                                         (gx#syntax-e _%$%e183515183563%_)))
                                    (let ((_%$%hd183560183574%_
                                           (##car _%$%e183559183571%_))
                                          (_%$%tl183561183576%_
                                           (##cdr _%$%e183559183571%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183560183574%_)
                                               (gx#core-identifier=?
                                                _%$%hd183560183574%_
                                                '%#declare))
                                          (_%K183512%_
                                           _%rest183513%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd183511%_)
                                                 _%r183514%_))
                                          (_%$%E183558183567%_))))
                                  (_%$%E183558183567%_))))
                           (_%$%E183541183621%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183515183563%_)
                                  (let ((_%$%e183546183583%_
                                         (gx#syntax-e _%$%e183515183563%_)))
                                    (let ((_%$%hd183547183586%_
                                           (##car _%$%e183546183583%_))
                                          (_%$%tl183548183588%_
                                           (##cdr _%$%e183546183583%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183547183586%_)
                                               (gx#core-identifier=?
                                                _%$%hd183547183586%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl183548183588%_)
                                              (let ((_%$%e183549183591%_
                                                     (gx#syntax-e
                                                      _%$%tl183548183588%_)))
                                                (let ((_%$%hd183550183594%_
                                                       (##car _%$%e183549183591%_))
                                                      (_%$%tl183551183596%_
                                                       (##cdr _%$%e183549183591%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd183550183594%_)
                                                      (let ((_%$%e183555183599%_
                                                             (gx#syntax-e
                                                              _%$%hd183550183594%_)))
                                                        (let ((_%$%hd183556183602%_
                                                               (##car _%$%e183555183599%_))
                                                              (_%$%tl183557183604%_
                                                               (##cdr _%$%e183555183599%_)))
                                                          (let ((_%id183607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd183556183602%_))
                    (if (gx#stx-null? _%$%tl183557183604%_)
                        (if (gx#stx-pair? _%$%tl183551183596%_)
                            (let ((_%$%e183552183609%_
                                   (gx#syntax-e _%$%tl183551183596%_)))
                              (let ((_%$%hd183553183612%_
                                     (##car _%$%e183552183609%_))
                                    (_%$%tl183554183614%_
                                     (##cdr _%$%e183552183609%_)))
                                (let ((_%props183617%_ _%$%hd183553183612%_))
                                  (if (gx#stx-null? _%$%tl183554183614%_)
                                      (let ((_%bind183619%_
                                             (gx#resolve-identifier__0
                                              _%id183607%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind183619%_
                                         _%props183617%_)
                                        (_%K183512%_
                                         _%rest183513%_
                                         _%r183514%_))
                                      (_%$%E183545183579%_)))))
                            (_%$%E183545183579%_))
                        (_%$%E183545183579%_)))))
              (_%$%E183545183579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E183545183579%_))
                                          (_%$%E183545183579%_))))
                                  (_%$%E183545183579%_))))
                           (_%$%E183537183633%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183515183563%_)
                                  (let ((_%$%e183542183625%_
                                         (gx#syntax-e _%$%e183515183563%_)))
                                    (let ((_%$%hd183543183628%_
                                           (##car _%$%e183542183625%_))
                                          (_%$%tl183544183630%_
                                           (##cdr _%$%e183542183625%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183543183628%_)
                                               (gx#core-identifier=?
                                                _%$%hd183543183628%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd183511%_)
                                            (_%K183512%_
                                             _%rest183513%_
                                             _%r183514%_))
                                          (_%$%E183541183621%_))))
                                  (_%$%E183541183621%_))))
                           (_%$%E183527183645%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183515183563%_)
                                  (let ((_%$%e183538183637%_
                                         (gx#syntax-e _%$%e183515183563%_)))
                                    (let ((_%$%hd183539183640%_
                                           (##car _%$%e183538183637%_))
                                          (_%$%tl183540183642%_
                                           (##cdr _%$%e183538183637%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183539183640%_)
                                               (gx#core-identifier=?
                                                _%$%hd183539183640%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd183511%_)
                                            (_%K183512%_
                                             _%rest183513%_
                                             _%r183514%_))
                                          (_%$%E183537183633%_))))
                                  (_%$%E183537183633%_))))
                           (_%$%E183517183677%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183515183563%_)
                                  (let ((_%$%e183528183649%_
                                         (gx#syntax-e _%$%e183515183563%_)))
                                    (let ((_%$%hd183529183652%_
                                           (##car _%$%e183528183649%_))
                                          (_%$%tl183530183654%_
                                           (##cdr _%$%e183528183649%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183529183652%_)
                                               (gx#core-identifier=?
                                                _%$%hd183529183652%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl183530183654%_)
                                              (let ((_%$%e183531183657%_
                                                     (gx#syntax-e
                                                      _%$%tl183530183654%_)))
                                                (let ((_%$%hd183532183660%_
                                                       (##car _%$%e183531183657%_))
                                                      (_%$%tl183533183662%_
                                                       (##cdr _%$%e183531183657%_)))
                                                  (let ((_%hd-bind183665%_
                                                         _%$%hd183532183660%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl183533183662%_)
                                                        (let ((_%$%e183534183667%_
                                                               (gx#syntax-e
                                                                _%$%tl183533183662%_)))
                                                          (let ((_%$%hd183535183670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e183534183667%_))
                        (_%$%tl183536183672%_ (##cdr _%$%e183534183667%_)))
                    (let ((_%expr183675%_ _%$%hd183535183670%_))
                      (if (gx#stx-null? _%$%tl183536183672%_)
                          (if (gx#core-bind-values? _%hd-bind183665%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183665%_)
                                (_%K183512%_
                                 _%rest183513%_
                                 (cons _%hd183511%_ _%r183514%_)))
                              (_%$%E183527183645%_))
                          (_%$%E183527183645%_)))))
                (_%$%E183527183645%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E183527183645%_))
                                          (_%$%E183527183645%_))))
                                  (_%$%E183527183645%_))))
                           (_%$%E183516183711%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e183515183563%_)
                                  (let ((_%$%e183518183681%_
                                         (gx#syntax-e _%$%e183515183563%_)))
                                    (let ((_%$%hd183519183684%_
                                           (##car _%$%e183518183681%_))
                                          (_%$%tl183520183686%_
                                           (##cdr _%$%e183518183681%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd183519183684%_)
                                               (gx#core-identifier=?
                                                _%$%hd183519183684%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl183520183686%_)
                                              (let ((_%$%e183521183689%_
                                                     (gx#syntax-e
                                                      _%$%tl183520183686%_)))
                                                (let ((_%$%hd183522183692%_
                                                       (##car _%$%e183521183689%_))
                                                      (_%$%tl183523183694%_
                                                       (##cdr _%$%e183521183689%_)))
                                                  (let ((_%hd-bind183697%_
                                                         _%$%hd183522183692%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl183523183694%_)
                                                        (let ((_%$%e183524183699%_
                                                               (gx#syntax-e
                                                                _%$%tl183523183694%_)))
                                                          (let ((_%$%hd183525183702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e183524183699%_))
                        (_%$%tl183526183704%_ (##cdr _%$%e183524183699%_)))
                    (let* ((_%expr183707%_ _%$%hd183525183702%_)
                           (_%props183709%_ _%$%tl183526183704%_))
                      (if (and (gx#core-bind-values? _%hd-bind183697%_)
                               (gx#stx-list? _%props183709%_)
                               (not (gx#stx-null? _%props183709%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind183697%_)
                            (_%K183512%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind183697%_
                                          (cons _%props183709%_ '())))
                                   _%rest183513%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind183697%_
                                          (cons _%expr183707%_ '())))
                                   _%r183514%_)))
                          (_%$%E183517183677%_)))))
                (_%$%E183517183677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E183517183677%_))
                                          (_%$%E183517183677%_))))
                                  (_%$%E183517183677%_)))))
                      (_%$%E183516183711%_))))
                 (_%wrap-internal183355%_
                  (lambda (_%rbody183357%_)
                    (let _%lp183359%_ ((_%rest183361%_ _%rbody183357%_)
                                       (_%decls183362%_ '())
                                       (_%bind183363%_ '())
                                       (_%body183364%_ '()))
                      (let* ((_%$%e183365183372%_ _%rest183361%_)
                             (_%$%E183367183421%_
                              (lambda ()
                                (let* ((_%body183416%_
                                        (let* ((_%$%body183375183385%_
                                                _%body183364%_)
                                               (_%$%else183378183393%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body183364%_)
                                                   (gx#stx-source
                                                    _%stx183349%_)))))
                                          (let ((_%$%K183383183413%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx183349%_)))
                                                (_%$%K183380183399%_
                                                 (lambda (_%expr183397%_)
                                                   _%expr183397%_)))
                                            (let ((_%$%try-match183377183409%_
                                                   (lambda ()
                                                     (if (pair? _%$%body183375183385%_)
                                                         (let ((_%$%tl183382183404%_
                                                                (##cdr _%$%body183375183385%_))
                                                               (_%$%hd183381183402%_
                                                                (##car _%$%body183375183385%_)))
                                                           (if (null? _%$%tl183382183404%_)
                                                               (let ((_%expr183407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd183381183402%_))
                         (_%$%K183380183399%_ _%expr183407%_))
                       (_%$%else183378183393%_)))
                 (_%$%else183378183393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body183375183385%_)
                                                  (_%$%K183383183413%_)
                                                  (_%$%try-match183377183409%_))))))
                                       (_%body183418%_
                                        (if (null? _%bind183363%_)
                                            _%body183416%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind183363%_
                                                         (cons _%body183416%_
                                                               '())))
                                             (gx#stx-source _%stx183349%_)))))
                                  (if (null? _%decls183362%_)
                                      _%body183418%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls183362%_
                                                   (cons _%body183418%_ '())))
                                       (gx#stx-source _%stx183349%_))))))
                             (_%$%E183366183507%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e183365183372%_)
                                    (let ((_%$%e183368183425%_
                                           (gx#syntax-e _%$%e183365183372%_)))
                                      (let ((_%$%hd183369183428%_
                                             (##car _%$%e183368183425%_))
                                            (_%$%tl183370183430%_
                                             (##cdr _%$%e183368183425%_)))
                                        (let* ((_%hd183433%_
                                                _%$%hd183369183428%_)
                                               (_%rest183435%_
                                                _%$%tl183370183430%_)
                                               (_%$%e183436183453%_
                                                _%hd183433%_)
                                               (_%$%E183448183457%_
                                                (lambda ()
                                                  (if (null? _%bind183363%_)
                                                      (_%lp183359%_
                                                       _%rest183435%_
                                                       _%decls183362%_
                                                       _%bind183363%_
                                                       (cons _%hd183433%_
                                                             _%body183364%_))
                                                      (_%lp183359%_
                                                       _%rest183435%_
                                                       _%decls183362%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd183433%_ '()))
                     _%bind183363%_)
               _%body183364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E183438183471%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e183436183453%_)
                                                      (let ((_%$%e183449183461%_
                                                             (gx#syntax-e
                                                              _%$%e183436183453%_)))
                                                        (let ((_%$%hd183450183464%_
                                                               (##car _%$%e183449183461%_))
                                                              (_%$%tl183451183466%_
                                                               (##cdr _%$%e183449183461%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd183450183464%_)
                           (gx#core-identifier=?
                            _%$%hd183450183464%_
                            '%#declare))
                      (let ((_%xdecls183469%_ _%$%tl183451183466%_))
                        (_%lp183359%_
                         _%rest183435%_
                         (gx#stx-foldr cons _%decls183362%_ _%xdecls183469%_)
                         _%bind183363%_
                         _%body183364%_))
                      (_%$%E183448183457%_))))
              (_%$%E183448183457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E183437183503%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e183436183453%_)
                                                      (let ((_%$%e183439183475%_
                                                             (gx#syntax-e
                                                              _%$%e183436183453%_)))
                                                        (let ((_%$%hd183440183478%_
                                                               (##car _%$%e183439183475%_))
                                                              (_%$%tl183441183480%_
                                                               (##cdr _%$%e183439183475%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd183440183478%_)
                           (gx#core-identifier=?
                            _%$%hd183440183478%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl183441183480%_)
                          (let ((_%$%e183442183483%_
                                 (gx#syntax-e _%$%tl183441183480%_)))
                            (let ((_%$%hd183443183486%_
                                   (##car _%$%e183442183483%_))
                                  (_%$%tl183444183488%_
                                   (##cdr _%$%e183442183483%_)))
                              (let ((_%hd-bind183491%_ _%$%hd183443183486%_))
                                (if (gx#stx-pair? _%$%tl183444183488%_)
                                    (let ((_%$%e183445183493%_
                                           (gx#syntax-e _%$%tl183444183488%_)))
                                      (let ((_%$%hd183446183496%_
                                             (##car _%$%e183445183493%_))
                                            (_%$%tl183447183498%_
                                             (##cdr _%$%e183445183493%_)))
                                        (let ((_%expr183501%_
                                               _%$%hd183446183496%_))
                                          (if (gx#stx-null?
                                               _%$%tl183447183498%_)
                                              (_%lp183359%_
                                               _%rest183435%_
                                               _%decls183362%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind183491%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr183501%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind183363%_)
                                               _%body183364%_)
                                              (_%$%E183438183471%_)))))
                                    (_%$%E183438183471%_)))))
                          (_%$%E183438183471%_))
                      (_%$%E183438183471%_))))
              (_%$%E183438183471%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E183437183503%_))))
                                    (_%$%E183367183421%_)))))
                        (_%$%E183366183507%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body183350%_)
            (gx#stx-source _%stx183349%_))
           _%expand-special183352%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx183287%_)
        (let* ((_%$%e183288183295%_ _%stx183287%_)
               (_%$%E183290183299%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e183288183295%_)))
               (_%$%E183289183345%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e183288183295%_)
                      (let ((_%$%e183291183303%_
                             (gx#syntax-e _%$%e183288183295%_)))
                        (let ((_%$%hd183292183306%_
                               (##car _%$%e183291183303%_))
                              (_%$%tl183293183308%_
                               (##cdr _%$%e183291183303%_)))
                          (let ((_%body183311%_ _%$%tl183293183308%_))
                            (if (gx#stx-list? _%body183311%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl183313%_)
                                     (let* ((_%$%e183314183321%_
                                             _%decl183313%_)
                                            (_%$%E183316183325%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e183314183321%_)))
                                            (_%$%E183315183341%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e183314183321%_)
                                                   (let ((_%$%e183317183329%_
                                                          (gx#syntax-e
                                                           _%$%e183314183321%_)))
                                                     (let ((_%$%hd183318183332%_
                                                            (##car _%$%e183317183329%_))
                                                           (_%$%tl183319183334%_
                                                            (##cdr _%$%e183317183329%_)))
                                                       (let* ((_%head183337%_
                                                               _%$%hd183318183332%_)
                                                              (_%args183339%_
                                                               _%$%tl183319183334%_))
                                                         (if (gx#stx-list?
                                                              _%args183339%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl183313%_)
                                                             (_%$%E183316183325%_)))))
                                                   (_%$%E183316183325%_)))))
                                       (_%$%E183315183341%_)))
                                   _%body183311%_))
                                 (gx#stx-source _%stx183287%_))
                                (_%$%E183290183299%_)))))
                      (_%$%E183290183299%_)))))
          (_%$%E183289183345%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx183191%_)
        (let* ((_%$%e183192183199%_ _%stx183191%_)
               (_%$%E183194183203%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e183192183199%_)))
               (_%$%E183193183283%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e183192183199%_)
                      (let ((_%$%e183195183207%_
                             (gx#syntax-e _%$%e183192183199%_)))
                        (let ((_%$%hd183196183210%_
                               (##car _%$%e183195183207%_))
                              (_%$%tl183197183212%_
                               (##cdr _%$%e183195183207%_)))
                          (let ((_%body183215%_ _%$%tl183197183212%_))
                            (let _%lp183217%_ ((_%rest183219%_ _%body183215%_)
                                               (_%r183220%_ '()))
                              (let* ((_%$%e183221183235%_ _%rest183219%_)
                                     (_%$%E183233183239%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx183191%_)))
                                     (_%$%E183223183243%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e183221183235%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r183220%_))
                                             (gx#stx-source _%stx183191%_))
                                            (_%$%E183233183239%_))))
                                     (_%$%E183222183279%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e183221183235%_)
                                            (let ((_%$%e183224183247%_
                                                   (gx#syntax-e
                                                    _%$%e183221183235%_)))
                                              (let ((_%$%hd183225183250%_
                                                     (##car _%$%e183224183247%_))
                                                    (_%$%tl183226183252%_
                                                     (##cdr _%$%e183224183247%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd183225183250%_)
                                                    (let ((_%$%e183227183255%_
                                                           (gx#syntax-e
                                                            _%$%hd183225183250%_)))
                                                      (let ((_%$%hd183228183258%_
                                                             (##car _%$%e183227183255%_))
                                                            (_%$%tl183229183260%_
                                                             (##cdr _%$%e183227183255%_)))
                                                        (let ((_%id183263%_
                                                               _%$%hd183228183258%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl183229183260%_)
                                                              (let ((_%$%e183230183265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl183229183260%_)))
                        (let ((_%$%hd183231183268%_
                               (##car _%$%e183230183265%_))
                              (_%$%tl183232183270%_
                               (##cdr _%$%e183230183265%_)))
                          (let ((_%eid183273%_ _%$%hd183231183268%_))
                            (if (gx#stx-null? _%$%tl183232183270%_)
                                (let ((_%rest183275%_ _%$%tl183226183252%_))
                                  (if (and (gx#identifier? _%id183263%_)
                                           (gx#identifier? _%eid183273%_))
                                      (let ((_%eid183277%_
                                             (gx#stx-e _%eid183273%_)))
                                        (gx#core-bind-extern!__0
                                         _%id183263%_
                                         _%eid183277%_)
                                        (_%lp183217%_
                                         _%rest183275%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id183263%_)
                                                     (cons _%eid183277%_ '()))
                                               _%r183220%_)))
                                      (_%$%E183223183243%_)))
                                (_%$%E183223183243%_)))))
                      (_%$%E183223183243%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E183223183243%_))))
                                            (_%$%E183223183243%_)))))
                                (_%$%E183222183279%_))))))
                      (_%$%E183194183203%_)))))
          (_%$%E183193183283%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx183093%_)
        (let* ((_%$%e183094183117%_ _%stx183093%_)
               (_%$%E183106183121%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e183094183117%_)))
               (_%$%E183096183153%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e183094183117%_)
                      (let ((_%$%e183107183125%_
                             (gx#syntax-e _%$%e183094183117%_)))
                        (let ((_%$%hd183108183128%_
                               (##car _%$%e183107183125%_))
                              (_%$%tl183109183130%_
                               (##cdr _%$%e183107183125%_)))
                          (if (gx#stx-pair? _%$%tl183109183130%_)
                              (let ((_%$%e183110183133%_
                                     (gx#syntax-e _%$%tl183109183130%_)))
                                (let ((_%$%hd183111183136%_
                                       (##car _%$%e183110183133%_))
                                      (_%$%tl183112183138%_
                                       (##cdr _%$%e183110183133%_)))
                                  (let ((_%hd183141%_ _%$%hd183111183136%_))
                                    (if (gx#stx-pair? _%$%tl183112183138%_)
                                        (let ((_%$%e183113183143%_
                                               (gx#syntax-e
                                                _%$%tl183112183138%_)))
                                          (let ((_%$%hd183114183146%_
                                                 (##car _%$%e183113183143%_))
                                                (_%$%tl183115183148%_
                                                 (##cdr _%$%e183113183143%_)))
                                            (let ((_%expr183151%_
                                                   _%$%hd183114183146%_))
                                              (if (gx#stx-null?
                                                   _%$%tl183115183148%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd183141%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd183141%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd183141%_)
                             (cons (gx#core-expand-expression _%expr183151%_)
                                   '())))
                 (gx#stx-source _%stx183093%_)))
              (_%$%E183106183121%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E183106183121%_)))))
                                        (_%$%E183106183121%_)))))
                              (_%$%E183106183121%_))))
                      (_%$%E183106183121%_))))
               (_%$%E183095183187%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e183094183117%_)
                      (let ((_%$%e183097183157%_
                             (gx#syntax-e _%$%e183094183117%_)))
                        (let ((_%$%hd183098183160%_
                               (##car _%$%e183097183157%_))
                              (_%$%tl183099183162%_
                               (##cdr _%$%e183097183157%_)))
                          (if (gx#stx-pair? _%$%tl183099183162%_)
                              (let ((_%$%e183100183165%_
                                     (gx#syntax-e _%$%tl183099183162%_)))
                                (let ((_%$%hd183101183168%_
                                       (##car _%$%e183100183165%_))
                                      (_%$%tl183102183170%_
                                       (##cdr _%$%e183100183165%_)))
                                  (let ((_%hd183173%_ _%$%hd183101183168%_))
                                    (if (gx#stx-pair? _%$%tl183102183170%_)
                                        (let ((_%$%e183103183175%_
                                               (gx#syntax-e
                                                _%$%tl183102183170%_)))
                                          (let ((_%$%hd183104183178%_
                                                 (##car _%$%e183103183175%_))
                                                (_%$%tl183105183180%_
                                                 (##cdr _%$%e183103183175%_)))
                                            (let* ((_%expr183183%_
                                                    _%$%hd183104183178%_)
                                                   (_%props183185%_
                                                    _%$%tl183105183180%_))
                                              (if (and (gx#stx-list?
                                                        _%props183185%_)
                                                       (not (gx#stx-null?
                                                             _%props183185%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd183173%_
                                                                (cons _%expr183183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd183173%_ (cons _%props183185%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E183096183153%_)))))
                                        (_%$%E183096183153%_)))))
                              (_%$%E183096183153%_))))
                      (_%$%E183096183153%_)))))
          (_%$%E183095183187%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx183032%_)
        (let* ((_%$%e183033183046%_ _%stx183032%_)
               (_%$%E183035183050%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e183033183046%_)))
               (_%$%E183034183089%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e183033183046%_)
                      (let ((_%$%e183036183054%_
                             (gx#syntax-e _%$%e183033183046%_)))
                        (let ((_%$%hd183037183057%_
                               (##car _%$%e183036183054%_))
                              (_%$%tl183038183059%_
                               (##cdr _%$%e183036183054%_)))
                          (if (gx#stx-pair? _%$%tl183038183059%_)
                              (let ((_%$%e183039183062%_
                                     (gx#syntax-e _%$%tl183038183059%_)))
                                (let ((_%$%hd183040183065%_
                                       (##car _%$%e183039183062%_))
                                      (_%$%tl183041183067%_
                                       (##cdr _%$%e183039183062%_)))
                                  (let ((_%id183070%_ _%$%hd183040183065%_))
                                    (if (gx#stx-pair? _%$%tl183041183067%_)
                                        (let ((_%$%e183042183072%_
                                               (gx#syntax-e
                                                _%$%tl183041183067%_)))
                                          (let ((_%$%hd183043183075%_
                                                 (##car _%$%e183042183072%_))
                                                (_%$%tl183044183077%_
                                                 (##cdr _%$%e183042183072%_)))
                                            (let* ((_%binding-id183080%_
                                                    _%$%hd183043183075%_)
                                                   (_%props183082%_
                                                    _%$%tl183044183077%_))
                                              (if (and (gx#identifier?
                                                        _%id183070%_)
                                                       (gx#identifier?
                                                        _%binding-id183080%_)
                                                       (gx#stx-list?
                                                        _%props183082%_))
                                                  (let* ((_%eid183084%_
                                                          (gx#stx-e
                                                           _%binding-id183080%_))
                                                         (_%bind183086%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id183070%_
                                                           _%eid183084%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind183086%_
                                                     _%props183082%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id183070%_)
                         (cons _%eid183084%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E183035183050%_)))))
                                        (_%$%E183035183050%_)))))
                              (_%$%E183035183050%_))))
                      (_%$%E183035183050%_)))))
          (_%$%E183034183089%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx182965%_)
        (let* ((_%$%e182966182982%_ _%stx182965%_)
               (_%$%E182968182986%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182966182982%_)))
               (_%$%E182967183028%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182966182982%_)
                      (let ((_%$%e182969182990%_
                             (gx#syntax-e _%$%e182966182982%_)))
                        (let ((_%$%hd182970182993%_
                               (##car _%$%e182969182990%_))
                              (_%$%tl182971182995%_
                               (##cdr _%$%e182969182990%_)))
                          (if (gx#stx-pair? _%$%tl182971182995%_)
                              (let ((_%$%e182972182998%_
                                     (gx#syntax-e _%$%tl182971182995%_)))
                                (let ((_%$%hd182973183001%_
                                       (##car _%$%e182972182998%_))
                                      (_%$%tl182974183003%_
                                       (##cdr _%$%e182972182998%_)))
                                  (if (gx#stx-pair? _%$%hd182973183001%_)
                                      (let ((_%$%e182978183006%_
                                             (gx#syntax-e
                                              _%$%hd182973183001%_)))
                                        (let ((_%$%hd182979183009%_
                                               (##car _%$%e182978183006%_))
                                              (_%$%tl182980183011%_
                                               (##cdr _%$%e182978183006%_)))
                                          (let ((_%id183014%_
                                                 _%$%hd182979183009%_))
                                            (if (gx#stx-null?
                                                 _%$%tl182980183011%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl182974183003%_)
                                                    (let ((_%$%e182975183016%_
                                                           (gx#syntax-e
                                                            _%$%tl182974183003%_)))
                                                      (let ((_%$%hd182976183019%_
                                                             (##car _%$%e182975183016%_))
                                                            (_%$%tl182977183021%_
                                                             (##cdr _%$%e182975183016%_)))
                                                        (let ((_%props183024%_
                                                               _%$%hd182976183019%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl182977183021%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id183014%_)
                               (gx#stx-list? _%props183024%_))
                          (let ((_%bind183026%_
                                 (gx#resolve-identifier__0 _%id183014%_)))
                            (if (##structure-instance-of?
                                 _%bind183026%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx182965%_
                                 _%id183014%_
                                 _%bind183026%_))
                            (gx#core-bind-runtime-properties!
                             _%bind183026%_
                             _%props183024%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E182968182986%_))
                      (_%$%E182968182986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E182968182986%_))
                                                (_%$%E182968182986%_)))))
                                      (_%$%E182968182986%_))))
                              (_%$%E182968182986%_))))
                      (_%$%E182968182986%_)))))
          (_%$%E182967183028%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind182900%_ _%props182901%_)
        (letrec ((_%eval-prop182903%_
                  (lambda (_%prop182963%_)
                    (gx#eval-expression+1 _%prop182963%_))))
          (let _%loop182905%_ ((_%rest182907%_ _%props182901%_)
                               (_%props182908%_ '()))
            (let* ((_%$%e182909182920%_ _%rest182907%_)
                   (_%$%E182918182924%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e182909182920%_)))
                   (_%$%E182911182928%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e182909182920%_)
                          (if (null? _%props182908%_)
                              '#!void
                              (##structure-set!
                               _%bind182900%_
                               (reverse! _%props182908%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E182918182924%_))))
                   (_%$%E182910182959%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e182909182920%_)
                          (let ((_%$%e182912182932%_
                                 (gx#syntax-e _%$%e182909182920%_)))
                            (let ((_%$%hd182913182935%_
                                   (##car _%$%e182912182932%_))
                                  (_%$%tl182914182937%_
                                   (##cdr _%$%e182912182932%_)))
                              (let ((_%key182940%_ _%$%hd182913182935%_))
                                (if (gx#stx-pair? _%$%tl182914182937%_)
                                    (let ((_%$%e182915182942%_
                                           (gx#syntax-e _%$%tl182914182937%_)))
                                      (let ((_%$%hd182916182945%_
                                             (##car _%$%e182915182942%_))
                                            (_%$%tl182917182947%_
                                             (##cdr _%$%e182915182942%_)))
                                        (let* ((_%prop182950%_
                                                _%$%hd182916182945%_)
                                               (_%rest182952%_
                                                _%$%tl182917182947%_))
                                          (if (gx#stx-keyword? _%key182940%_)
                                              (let* ((_%key182954%_
                                                      (gx#stx-e _%key182940%_))
                                                     (_%$e182956%_
                                                      _%key182954%_))
                                                (if (eq? 'macro: _%$e182956%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind182900%_
                                                       (if (gx#identifier?
                                                            _%prop182950%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop182950%_)
                                                           (gx#eval-expression+1
                                                            _%prop182950%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop182905%_
                                                       _%rest182952%_
                                                       _%props182908%_))
                                                    (if (eq? 'type:
                                                             _%$e182956%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind182900%_
                                                           (gx#eval-expression+1
                                                            _%prop182950%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop182905%_
                                                           _%rest182952%_
                                                           _%props182908%_))
                                                        (_%loop182905%_
                                                         _%rest182952%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop182950%_)
                                                               (cons _%key182954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props182908%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E182911182928%_)))))
                                    (_%$%E182911182928%_)))))
                          (_%$%E182911182928%_)))))
              (_%$%E182910182959%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx182843%_)
        (let* ((_%$%e182844182857%_ _%stx182843%_)
               (_%$%E182846182861%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182844182857%_)))
               (_%$%E182845182896%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182844182857%_)
                      (let ((_%$%e182847182865%_
                             (gx#syntax-e _%$%e182844182857%_)))
                        (let ((_%$%hd182848182868%_
                               (##car _%$%e182847182865%_))
                              (_%$%tl182849182870%_
                               (##cdr _%$%e182847182865%_)))
                          (if (gx#stx-pair? _%$%tl182849182870%_)
                              (let ((_%$%e182850182873%_
                                     (gx#syntax-e _%$%tl182849182870%_)))
                                (let ((_%$%hd182851182876%_
                                       (##car _%$%e182850182873%_))
                                      (_%$%tl182852182878%_
                                       (##cdr _%$%e182850182873%_)))
                                  (let ((_%id182881%_ _%$%hd182851182876%_))
                                    (if (gx#stx-pair? _%$%tl182852182878%_)
                                        (let ((_%$%e182853182883%_
                                               (gx#syntax-e
                                                _%$%tl182852182878%_)))
                                          (let ((_%$%hd182854182886%_
                                                 (##car _%$%e182853182883%_))
                                                (_%$%tl182855182888%_
                                                 (##cdr _%$%e182853182883%_)))
                                            (let ((_%expr182891%_
                                                   _%$%hd182854182886%_))
                                              (if (gx#stx-null?
                                                   _%$%tl182855182888%_)
                                                  (if (gx#identifier?
                                                       _%id182881%_)
                                                      (let ((_g184191_
                                                             (gx#core-expand-expression+1
                                                              _%expr182891%_)))
                                                        (begin
                                                          (let ((_g184192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g184191_)
                             (##values-length _g184191_)
                             1)))
                    (if (not (##fx= _g184192_ 2))
                        (error "Context expects 2 values" _g184192_)))
                  (let ((_%e-stx182893%_ (##values-ref _g184191_ 0))
                        (_%e182894%_ (##values-ref _g184191_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id182881%_ _%e182894%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id182881%_)
                                   (cons _%e-stx182893%_ '())))
                       (gx#stx-source _%stx182843%_))))))
              (_%$%E182846182861%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E182846182861%_)))))
                                        (_%$%E182846182861%_)))))
                              (_%$%E182846182861%_))))
                      (_%$%E182846182861%_)))))
          (_%$%E182845182896%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx182787%_)
        (let* ((_%$%e182788182801%_ _%stx182787%_)
               (_%$%E182790182805%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182788182801%_)))
               (_%$%E182789182839%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182788182801%_)
                      (let ((_%$%e182791182809%_
                             (gx#syntax-e _%$%e182788182801%_)))
                        (let ((_%$%hd182792182812%_
                               (##car _%$%e182791182809%_))
                              (_%$%tl182793182814%_
                               (##cdr _%$%e182791182809%_)))
                          (if (gx#stx-pair? _%$%tl182793182814%_)
                              (let ((_%$%e182794182817%_
                                     (gx#syntax-e _%$%tl182793182814%_)))
                                (let ((_%$%hd182795182820%_
                                       (##car _%$%e182794182817%_))
                                      (_%$%tl182796182822%_
                                       (##cdr _%$%e182794182817%_)))
                                  (let ((_%id182825%_ _%$%hd182795182820%_))
                                    (if (gx#stx-pair? _%$%tl182796182822%_)
                                        (let ((_%$%e182797182827%_
                                               (gx#syntax-e
                                                _%$%tl182796182822%_)))
                                          (let ((_%$%hd182798182830%_
                                                 (##car _%$%e182797182827%_))
                                                (_%$%tl182799182832%_
                                                 (##cdr _%$%e182797182827%_)))
                                            (let ((_%alias-id182835%_
                                                   _%$%hd182798182830%_))
                                              (if (gx#stx-null?
                                                   _%$%tl182799182832%_)
                                                  (if (and (gx#identifier?
                                                            _%id182825%_)
                                                           (gx#identifier?
                                                            _%alias-id182835%_))
                                                      (let ((_%alias-id182837%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id182835%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id182825%_
                                                         _%alias-id182837%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id182825%_)
                             (cons _%alias-id182837%_ '())))))
              (_%$%E182790182805%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E182790182805%_)))))
                                        (_%$%E182790182805%_)))))
                              (_%$%E182790182805%_))))
                      (_%$%E182790182805%_)))))
          (_%$%E182789182839%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx182730%_ _%wrap?182731%_)
        (let* ((_%$%e182732182742%_ _%stx182730%_)
               (_%$%E182734182746%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182732182742%_)))
               (_%$%E182733182773%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182732182742%_)
                      (let ((_%$%e182735182750%_
                             (gx#syntax-e _%$%e182732182742%_)))
                        (let ((_%$%hd182736182753%_
                               (##car _%$%e182735182750%_))
                              (_%$%tl182737182755%_
                               (##cdr _%$%e182735182750%_)))
                          (if (gx#stx-pair? _%$%tl182737182755%_)
                              (let ((_%$%e182738182758%_
                                     (gx#syntax-e _%$%tl182737182755%_)))
                                (let ((_%$%hd182739182761%_
                                       (##car _%$%e182738182758%_))
                                      (_%$%tl182740182763%_
                                       (##cdr _%$%e182738182758%_)))
                                  (let* ((_%hd182766%_ _%$%hd182739182761%_)
                                         (_%body182768%_ _%$%tl182740182763%_))
                                    (if (gx#core-bind-values? _%hd182766%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd182766%_)
                                           (let ((_%body182771%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd182766%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx182730%_
                                                               _%body182768%_)
                                                              '()))))
                                             (if _%wrap?182731%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body182771%_)
                                                  (gx#stx-source
                                                   _%stx182730%_))
                                                 _%body182771%_)))
                                         gx#current-expander-context
                                         (let ((__obj184174
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj184174)
                                           __obj184174))
                                        (_%$%E182734182746%_)))))
                              (_%$%E182734182746%_))))
                      (_%$%E182734182746%_)))))
          (_%$%E182733182773%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx182780%_)
        (let ((_%wrap?182782%_ '#t))
          (gx#core-expand-lambda%__% _%stx182780%_ _%wrap?182782%_))))
    (define gx#core-expand-lambda%
      (lambda _g184193_
        (let ((_g184194_ (##length _g184193_)))
          (cond ((##fx= _g184194_ 1)
                 (apply gx#core-expand-lambda%__0 _g184193_))
                ((##fx= _g184194_ 2)
                 (apply gx#core-expand-lambda%__% _g184193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g184193_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx182694%_)
        (let* ((_%$%e182695182702%_ _%stx182694%_)
               (_%$%E182697182706%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182695182702%_)))
               (_%$%E182696182725%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182695182702%_)
                      (let ((_%$%e182698182710%_
                             (gx#syntax-e _%$%e182695182702%_)))
                        (let ((_%$%hd182699182713%_
                               (##car _%$%e182698182710%_))
                              (_%$%tl182700182715%_
                               (##cdr _%$%e182698182710%_)))
                          (let ((_%clauses182718%_ _%$%tl182700182715%_))
                            (if (gx#stx-list? _%clauses182718%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause182720%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause182720%_)
                                       (let ((_%$e182722%_
                                              (gx#stx-source
                                               _%clause182720%_)))
                                         (if _%$e182722%_
                                             _%$e182722%_
                                             (gx#stx-source _%stx182694%_))))
                                      '#f))
                                   _%clauses182718%_))
                                 (gx#stx-source _%stx182694%_))
                                (_%$%E182697182706%_)))))
                      (_%$%E182697182706%_)))))
          (_%$%E182696182725%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx182648%_)
        (let* ((_%$%e182649182659%_ _%stx182648%_)
               (_%$%E182651182663%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182649182659%_)))
               (_%$%E182650182690%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182649182659%_)
                      (let ((_%$%e182652182667%_
                             (gx#syntax-e _%$%e182649182659%_)))
                        (let ((_%$%hd182653182670%_
                               (##car _%$%e182652182667%_))
                              (_%$%tl182654182672%_
                               (##cdr _%$%e182652182667%_)))
                          (if (gx#stx-pair? _%$%tl182654182672%_)
                              (let ((_%$%e182655182675%_
                                     (gx#syntax-e _%$%tl182654182672%_)))
                                (let ((_%$%hd182656182678%_
                                       (##car _%$%e182655182675%_))
                                      (_%$%tl182657182680%_
                                       (##cdr _%$%e182655182675%_)))
                                  (let* ((_%hd182683%_ _%$%hd182656182678%_)
                                         (_%body182685%_ _%$%tl182657182680%_))
                                    (if (gx#core-expand-let-bind? _%hd182683%_)
                                        (let ((_%expressions182687%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd182683%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd182683%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd182683%_
                                                           _%expressions182687%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx182648%_
                         _%body182685%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx182648%_)))
                                           gx#current-expander-context
                                           (let ((__obj184175
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj184175)
                                             __obj184175)))
                                        (_%$%E182651182663%_)))))
                              (_%$%E182651182663%_))))
                      (_%$%E182651182663%_)))))
          (_%$%E182650182690%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx182593%_ _%form182594%_)
        (let* ((_%$%e182595182605%_ _%stx182593%_)
               (_%$%E182597182609%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182595182605%_)))
               (_%$%E182596182634%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182595182605%_)
                      (let ((_%$%e182598182613%_
                             (gx#syntax-e _%$%e182595182605%_)))
                        (let ((_%$%hd182599182616%_
                               (##car _%$%e182598182613%_))
                              (_%$%tl182600182618%_
                               (##cdr _%$%e182598182613%_)))
                          (if (gx#stx-pair? _%$%tl182600182618%_)
                              (let ((_%$%e182601182621%_
                                     (gx#syntax-e _%$%tl182600182618%_)))
                                (let ((_%$%hd182602182624%_
                                       (##car _%$%e182601182621%_))
                                      (_%$%tl182603182626%_
                                       (##cdr _%$%e182601182621%_)))
                                  (let* ((_%hd182629%_ _%$%hd182602182624%_)
                                         (_%body182631%_ _%$%tl182603182626%_))
                                    (if (gx#core-expand-let-bind? _%hd182629%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd182629%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form182594%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd182629%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd182629%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx182593%_
                                                               _%body182631%_)
                                                              '())))
                                            (gx#stx-source _%stx182593%_)))
                                         gx#current-expander-context
                                         (let ((__obj184176
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj184176)
                                           __obj184176))
                                        (_%$%E182597182609%_)))))
                              (_%$%E182597182609%_))))
                      (_%$%E182597182609%_)))))
          (_%$%E182596182634%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx182641%_)
        (let ((_%form182643%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx182641%_ _%form182643%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g184195_
        (let ((_g184196_ (##length _g184195_)))
          (cond ((##fx= _g184196_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g184195_))
                ((##fx= _g184196_ 2)
                 (apply gx#core-expand-letrec-values%__% _g184195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g184195_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx182590%_)
        (gx#core-expand-letrec-values%__% _%stx182590%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx182547%_)
        (if (gx#stx-list? _%stx182547%_)
            (gx#stx-andmap
             (lambda (_%bind182549%_)
               (let* ((_%$%e182550182560%_ _%bind182549%_)
                      (_%$%E182552182564%_ (lambda () '#f))
                      (_%$%E182551182586%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e182550182560%_)
                             (let ((_%$%e182553182568%_
                                    (gx#syntax-e _%$%e182550182560%_)))
                               (let ((_%$%hd182554182571%_
                                      (##car _%$%e182553182568%_))
                                     (_%$%tl182555182573%_
                                      (##cdr _%$%e182553182568%_)))
                                 (let ((_%hd182576%_ _%$%hd182554182571%_))
                                   (if (gx#stx-pair? _%$%tl182555182573%_)
                                       (let ((_%$%e182556182578%_
                                              (gx#syntax-e
                                               _%$%tl182555182573%_)))
                                         (let ((_%$%hd182557182581%_
                                                (##car _%$%e182556182578%_))
                                               (_%$%tl182558182583%_
                                                (##cdr _%$%e182556182578%_)))
                                           (if (gx#stx-null?
                                                _%$%tl182558182583%_)
                                               (gx#core-bind-values?
                                                _%hd182576%_)
                                               (_%$%E182552182564%_))))
                                       (_%$%E182552182564%_)))))
                             (_%$%E182552182564%_)))))
                 (_%$%E182551182586%_)))
             _%stx182547%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind182506%_)
        (let* ((_%$%e182507182517%_ _%bind182506%_)
               (_%$%E182509182521%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182507182517%_)))
               (_%$%E182508182543%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182507182517%_)
                      (let ((_%$%e182510182525%_
                             (gx#syntax-e _%$%e182507182517%_)))
                        (let ((_%$%hd182511182528%_
                               (##car _%$%e182510182525%_))
                              (_%$%tl182512182530%_
                               (##cdr _%$%e182510182525%_)))
                          (if (gx#stx-pair? _%$%tl182512182530%_)
                              (let ((_%$%e182513182533%_
                                     (gx#syntax-e _%$%tl182512182530%_)))
                                (let ((_%$%hd182514182536%_
                                       (##car _%$%e182513182533%_))
                                      (_%$%tl182515182538%_
                                       (##cdr _%$%e182513182533%_)))
                                  (let ((_%expr182541%_ _%$%hd182514182536%_))
                                    (if (gx#stx-null? _%$%tl182515182538%_)
                                        (gx#core-expand-expression
                                         _%expr182541%_)
                                        (_%$%E182509182521%_)))))
                              (_%$%E182509182521%_))))
                      (_%$%E182509182521%_)))))
          (_%$%E182508182543%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind182465%_)
        (let* ((_%$%e182466182476%_ _%bind182465%_)
               (_%$%E182468182480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182466182476%_)))
               (_%$%E182467182502%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182466182476%_)
                      (let ((_%$%e182469182484%_
                             (gx#syntax-e _%$%e182466182476%_)))
                        (let ((_%$%hd182470182487%_
                               (##car _%$%e182469182484%_))
                              (_%$%tl182471182489%_
                               (##cdr _%$%e182469182484%_)))
                          (let ((_%hd182492%_ _%$%hd182470182487%_))
                            (if (gx#stx-pair? _%$%tl182471182489%_)
                                (let ((_%$%e182472182494%_
                                       (gx#syntax-e _%$%tl182471182489%_)))
                                  (let ((_%$%hd182473182497%_
                                         (##car _%$%e182472182494%_))
                                        (_%$%tl182474182499%_
                                         (##cdr _%$%e182472182494%_)))
                                    (if (gx#stx-null? _%$%tl182474182499%_)
                                        (gx#core-bind-values!__0 _%hd182492%_)
                                        (_%$%E182468182480%_))))
                                (_%$%E182468182480%_)))))
                      (_%$%E182468182480%_)))))
          (_%$%E182467182502%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind182423%_ _%expr182424%_)
        (let* ((_%$%e182425182435%_ _%bind182423%_)
               (_%$%E182427182439%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182425182435%_)))
               (_%$%E182426182461%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182425182435%_)
                      (let ((_%$%e182428182443%_
                             (gx#syntax-e _%$%e182425182435%_)))
                        (let ((_%$%hd182429182446%_
                               (##car _%$%e182428182443%_))
                              (_%$%tl182430182448%_
                               (##cdr _%$%e182428182443%_)))
                          (let ((_%hd182451%_ _%$%hd182429182446%_))
                            (if (gx#stx-pair? _%$%tl182430182448%_)
                                (let ((_%$%e182431182453%_
                                       (gx#syntax-e _%$%tl182430182448%_)))
                                  (let ((_%$%hd182432182456%_
                                         (##car _%$%e182431182453%_))
                                        (_%$%tl182433182458%_
                                         (##cdr _%$%e182431182453%_)))
                                    (if (gx#stx-null? _%$%tl182433182458%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd182451%_)
                                              (cons _%expr182424%_ '()))
                                        (_%$%E182427182439%_))))
                                (_%$%E182427182439%_)))))
                      (_%$%E182427182439%_)))))
          (_%$%E182426182461%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx182377%_)
        (let* ((_%$%e182378182388%_ _%stx182377%_)
               (_%$%E182380182392%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182378182388%_)))
               (_%$%E182379182419%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182378182388%_)
                      (let ((_%$%e182381182396%_
                             (gx#syntax-e _%$%e182378182388%_)))
                        (let ((_%$%hd182382182399%_
                               (##car _%$%e182381182396%_))
                              (_%$%tl182383182401%_
                               (##cdr _%$%e182381182396%_)))
                          (if (gx#stx-pair? _%$%tl182383182401%_)
                              (let ((_%$%e182384182404%_
                                     (gx#syntax-e _%$%tl182383182401%_)))
                                (let ((_%$%hd182385182407%_
                                       (##car _%$%e182384182404%_))
                                      (_%$%tl182386182409%_
                                       (##cdr _%$%e182384182404%_)))
                                  (let* ((_%hd182412%_ _%$%hd182385182407%_)
                                         (_%body182414%_ _%$%tl182386182409%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd182412%_)
                                        (let ((_%expanders182416%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd182412%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd182412%_
                                              _%expanders182416%_)
                                             (gx#core-expand-local-block
                                              _%stx182377%_
                                              _%body182414%_))
                                           gx#current-expander-context
                                           (let ((__obj184177
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj184177)
                                             __obj184177)))
                                        (_%$%E182380182392%_)))))
                              (_%$%E182380182392%_))))
                      (_%$%E182380182392%_)))))
          (_%$%E182379182419%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx182326%_)
        (let* ((_%$%e182327182337%_ _%stx182326%_)
               (_%$%E182329182341%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182327182337%_)))
               (_%$%E182328182373%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182327182337%_)
                      (let ((_%$%e182330182345%_
                             (gx#syntax-e _%$%e182327182337%_)))
                        (let ((_%$%hd182331182348%_
                               (##car _%$%e182330182345%_))
                              (_%$%tl182332182350%_
                               (##cdr _%$%e182330182345%_)))
                          (if (gx#stx-pair? _%$%tl182332182350%_)
                              (let ((_%$%e182333182353%_
                                     (gx#syntax-e _%$%tl182332182350%_)))
                                (let ((_%$%hd182334182356%_
                                       (##car _%$%e182333182353%_))
                                      (_%$%tl182335182358%_
                                       (##cdr _%$%e182333182353%_)))
                                  (let* ((_%hd182361%_ _%$%hd182334182356%_)
                                         (_%body182363%_ _%$%tl182335182358%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd182361%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd182361%_
                                            (make-list
                                             (gx#stx-length _%hd182361%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g182365182368%_
                                                     _%$%g182366182370%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g182365182368%_
                                               _%$%g182366182370%_
                                               '#t))
                                            _%hd182361%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd182361%_))
                                           (gx#core-expand-local-block
                                            _%stx182326%_
                                            _%body182363%_))
                                         gx#current-expander-context
                                         (let ((__obj184178
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj184178)
                                           __obj184178))
                                        (_%$%E182329182341%_)))))
                              (_%$%E182329182341%_))))
                      (_%$%E182329182341%_)))))
          (_%$%E182328182373%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx182283%_)
        (if (gx#stx-list? _%stx182283%_)
            (gx#stx-andmap
             (lambda (_%bind182285%_)
               (let* ((_%$%e182286182296%_ _%bind182285%_)
                      (_%$%E182288182300%_ (lambda () '#f))
                      (_%$%E182287182322%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e182286182296%_)
                             (let ((_%$%e182289182304%_
                                    (gx#syntax-e _%$%e182286182296%_)))
                               (let ((_%$%hd182290182307%_
                                      (##car _%$%e182289182304%_))
                                     (_%$%tl182291182309%_
                                      (##cdr _%$%e182289182304%_)))
                                 (let ((_%hd182312%_ _%$%hd182290182307%_))
                                   (if (gx#stx-pair? _%$%tl182291182309%_)
                                       (let ((_%$%e182292182314%_
                                              (gx#syntax-e
                                               _%$%tl182291182309%_)))
                                         (let ((_%$%hd182293182317%_
                                                (##car _%$%e182292182314%_))
                                               (_%$%tl182294182319%_
                                                (##cdr _%$%e182292182314%_)))
                                           (if (gx#stx-null?
                                                _%$%tl182294182319%_)
                                               (gx#identifier? _%hd182312%_)
                                               (_%$%E182288182300%_))))
                                       (_%$%E182288182300%_)))))
                             (_%$%E182288182300%_)))))
                 (_%$%E182287182322%_)))
             _%stx182283%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind182239%_)
        (let* ((_%$%e182240182250%_ _%bind182239%_)
               (_%$%E182242182254%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182240182250%_)))
               (_%$%E182241182279%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182240182250%_)
                      (let ((_%$%e182243182258%_
                             (gx#syntax-e _%$%e182240182250%_)))
                        (let ((_%$%hd182244182261%_
                               (##car _%$%e182243182258%_))
                              (_%$%tl182245182263%_
                               (##cdr _%$%e182243182258%_)))
                          (if (gx#stx-pair? _%$%tl182245182263%_)
                              (let ((_%$%e182246182266%_
                                     (gx#syntax-e _%$%tl182245182263%_)))
                                (let ((_%$%hd182247182269%_
                                       (##car _%$%e182246182266%_))
                                      (_%$%tl182248182271%_
                                       (##cdr _%$%e182246182266%_)))
                                  (let ((_%expr182274%_ _%$%hd182247182269%_))
                                    (if (gx#stx-null? _%$%tl182248182271%_)
                                        (let ((_g184197_
                                               (gx#core-expand-expression+1
                                                _%expr182274%_)))
                                          (begin
                                            (let ((_g184198_
                                                   (if (##values? _g184197_)
                                                       (##values-length
                                                        _g184197_)
                                                       1)))
                                              (if (not (##fx= _g184198_ 2))
                                                  (error "Context expects 2 values"
                                                         _g184198_)))
                                            (let ((_%_182276%_
                                                   (##values-ref _g184197_ 0))
                                                  (_%e182277%_
                                                   (##values-ref _g184197_ 1)))
                                              _%e182277%_)))
                                        (_%$%E182242182254%_)))))
                              (_%$%E182242182254%_))))
                      (_%$%E182242182254%_)))))
          (_%$%E182241182279%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind182184%_ _%e182185%_ _%rebind?182186%_)
        (let* ((_%$%e182187182197%_ _%bind182184%_)
               (_%$%E182189182201%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182187182197%_)))
               (_%$%E182188182223%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182187182197%_)
                      (let ((_%$%e182190182205%_
                             (gx#syntax-e _%$%e182187182197%_)))
                        (let ((_%$%hd182191182208%_
                               (##car _%$%e182190182205%_))
                              (_%$%tl182192182210%_
                               (##cdr _%$%e182190182205%_)))
                          (let ((_%id182213%_ _%$%hd182191182208%_))
                            (if (gx#stx-pair? _%$%tl182192182210%_)
                                (let ((_%$%e182193182215%_
                                       (gx#syntax-e _%$%tl182192182210%_)))
                                  (let ((_%$%hd182194182218%_
                                         (##car _%$%e182193182215%_))
                                        (_%$%tl182195182220%_
                                         (##cdr _%$%e182193182215%_)))
                                    (if (gx#stx-null? _%$%tl182195182220%_)
                                        (gx#core-bind-syntax!__1
                                         _%id182213%_
                                         _%e182185%_
                                         _%rebind?182186%_)
                                        (_%$%E182189182201%_))))
                                (_%$%E182189182201%_)))))
                      (_%$%E182189182201%_)))))
          (_%$%E182188182223%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind182230%_ _%e182231%_)
        (let ((_%rebind?182233%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind182230%_
           _%e182231%_
           _%rebind?182233%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g184199_
        (let ((_g184200_ (##length _g184199_)))
          (cond ((##fx= _g184200_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g184199_))
                ((##fx= _g184200_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g184199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g184199_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx182142%_)
        (let* ((_%$%e182143182153%_ _%stx182142%_)
               (_%$%E182145182157%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182143182153%_)))
               (_%$%E182144182179%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182143182153%_)
                      (let ((_%$%e182146182161%_
                             (gx#syntax-e _%$%e182143182153%_)))
                        (let ((_%$%hd182147182164%_
                               (##car _%$%e182146182161%_))
                              (_%$%tl182148182166%_
                               (##cdr _%$%e182146182161%_)))
                          (if (gx#stx-pair? _%$%tl182148182166%_)
                              (let ((_%$%e182149182169%_
                                     (gx#syntax-e _%$%tl182148182166%_)))
                                (let ((_%$%hd182150182172%_
                                       (##car _%$%e182149182169%_))
                                      (_%$%tl182151182174%_
                                       (##cdr _%$%e182149182169%_)))
                                  (let ((_%expr182177%_ _%$%hd182150182172%_))
                                    (if (gx#stx-null? _%$%tl182151182174%_)
                                        (gx#core-expand-expression
                                         _%expr182177%_)
                                        (_%$%E182145182157%_)))))
                              (_%$%E182145182157%_))))
                      (_%$%E182145182157%_)))))
          (_%$%E182144182179%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx182101%_)
        (let* ((_%$%e182102182112%_ _%stx182101%_)
               (_%$%E182104182116%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182102182112%_)))
               (_%$%E182103182138%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182102182112%_)
                      (let ((_%$%e182105182120%_
                             (gx#syntax-e _%$%e182102182112%_)))
                        (let ((_%$%hd182106182123%_
                               (##car _%$%e182105182120%_))
                              (_%$%tl182107182125%_
                               (##cdr _%$%e182105182120%_)))
                          (if (gx#stx-pair? _%$%tl182107182125%_)
                              (let ((_%$%e182108182128%_
                                     (gx#syntax-e _%$%tl182107182125%_)))
                                (let ((_%$%hd182109182131%_
                                       (##car _%$%e182108182128%_))
                                      (_%$%tl182110182133%_
                                       (##cdr _%$%e182108182128%_)))
                                  (let ((_%e182136%_ _%$%hd182109182131%_))
                                    (if (gx#stx-null? _%$%tl182110182133%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e182136%_)
                                                     '()))
                                         (gx#stx-source _%stx182101%_))
                                        (_%$%E182104182116%_)))))
                              (_%$%E182104182116%_))))
                      (_%$%E182104182116%_)))))
          (_%$%E182103182138%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx182060%_)
        (let* ((_%$%e182061182071%_ _%stx182060%_)
               (_%$%E182063182075%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e182061182071%_)))
               (_%$%E182062182097%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e182061182071%_)
                      (let ((_%$%e182064182079%_
                             (gx#syntax-e _%$%e182061182071%_)))
                        (let ((_%$%hd182065182082%_
                               (##car _%$%e182064182079%_))
                              (_%$%tl182066182084%_
                               (##cdr _%$%e182064182079%_)))
                          (if (gx#stx-pair? _%$%tl182066182084%_)
                              (let ((_%$%e182067182087%_
                                     (gx#syntax-e _%$%tl182066182084%_)))
                                (let ((_%$%hd182068182090%_
                                       (##car _%$%e182067182087%_))
                                      (_%$%tl182069182092%_
                                       (##cdr _%$%e182067182087%_)))
                                  (let ((_%e182095%_ _%$%hd182068182090%_))
                                    (if (gx#stx-null? _%$%tl182069182092%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e182095%_)
                                                     '()))
                                         (gx#stx-source _%stx182060%_))
                                        (_%$%E182063182075%_)))))
                              (_%$%E182063182075%_))))
                      (_%$%E182063182075%_)))))
          (_%$%E182062182097%_))))
    (define gx#core-expand-call%
      (lambda (_%stx181954%_)
        (letrec ((_%expand-runtime-call181956%_
                  (lambda (_%rator-expr182057%_ _%args182058%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr182057%_
                      (gx#stx-map1 gx#core-expand-expression _%args182058%_))
                     (gx#stx-source _%stx181954%_)))))
          (let* ((_%$%e181957181967%_ _%stx181954%_)
                 (_%$%E181959181971%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e181957181967%_)))
                 (_%$%E181958182053%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e181957181967%_)
                        (let ((_%$%e181960181975%_
                               (gx#syntax-e _%$%e181957181967%_)))
                          (let ((_%$%hd181961181978%_
                                 (##car _%$%e181960181975%_))
                                (_%$%tl181962181980%_
                                 (##cdr _%$%e181960181975%_)))
                            (if (gx#stx-pair? _%$%tl181962181980%_)
                                (let ((_%$%e181963181983%_
                                       (gx#syntax-e _%$%tl181962181980%_)))
                                  (let ((_%$%hd181964181986%_
                                         (##car _%$%e181963181983%_))
                                        (_%$%tl181965181988%_
                                         (##cdr _%$%e181963181983%_)))
                                    (let* ((_%rator181991%_
                                            _%$%hd181964181986%_)
                                           (_%args181993%_
                                            _%$%tl181965181988%_))
                                      (if (gx#stx-list? _%args181993%_)
                                          (let* ((_%rator-expr181995%_
                                                  (gx#core-expand-expression
                                                   _%rator181991%_))
                                                 (_%$%e181996182006%_
                                                  _%rator-expr181995%_)
                                                 (_%$%E181998182010%_
                                                  (lambda ()
                                                    (_%expand-runtime-call181956%_
                                                     _%rator-expr181995%_
                                                     _%args181993%_)))
                                                 (_%$%E181997182049%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e181996182006%_)
                                                        (let ((_%$%e181999182014%_
                                                               (gx#syntax-e
                                                                _%$%e181996182006%_)))
                                                          (let ((_%$%hd182000182017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e181999182014%_))
                        (_%$%tl182001182019%_ (##cdr _%$%e181999182014%_)))
                    (if (and (gx#identifier? _%$%hd182000182017%_)
                             (gx#core-identifier=?
                              _%$%hd182000182017%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl182001182019%_)
                            (let ((_%$%e182002182022%_
                                   (gx#syntax-e _%$%tl182001182019%_)))
                              (let ((_%$%hd182003182025%_
                                     (##car _%$%e182002182022%_))
                                    (_%$%tl182004182027%_
                                     (##cdr _%$%e182002182022%_)))
                                (let ((_%id182030%_ _%$%hd182003182025%_))
                                  (if (gx#stx-null? _%$%tl182004182027%_)
                                      (let ((_%$e182032%_
                                             (gx#resolve-identifier__0
                                              _%id182030%_)))
                                        (if _%$e182032%_
                                            (let _%again182037%_ ((_%bind182039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e182032%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e182041%_
                                                     (if (##structure-instance-of?
                                                          _%bind182039%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind182039%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e182041%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e182041%_
                                                            _%args181993%_)
                                                      (gx#stx-source
                                                       _%stx181954%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind182039%_
                                                         'gx#import-binding::t)
                                                        (_%again182037%_
                                                         (##unchecked-structure-ref
                                                          _%bind182039%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call181956%_
                                                         _%rator-expr181995%_
                                                         _%args181993%_)))))
                                            (_%expand-runtime-call181956%_
                                             _%rator-expr181995%_
                                             _%args181993%_)))
                                      (_%$%E181998182010%_)))))
                            (_%$%E181998182010%_))
                        (_%$%E181998182010%_))))
                (_%$%E181998182010%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E181997182049%_))
                                          (_%$%E181959181971%_)))))
                                (_%$%E181959181971%_))))
                        (_%$%E181959181971%_)))))
            (_%$%E181958182053%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx181887%_)
        (let* ((_%$%e181888181904%_ _%stx181887%_)
               (_%$%E181890181908%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e181888181904%_)))
               (_%$%E181889181950%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e181888181904%_)
                      (let ((_%$%e181891181912%_
                             (gx#syntax-e _%$%e181888181904%_)))
                        (let ((_%$%hd181892181915%_
                               (##car _%$%e181891181912%_))
                              (_%$%tl181893181917%_
                               (##cdr _%$%e181891181912%_)))
                          (if (gx#stx-pair? _%$%tl181893181917%_)
                              (let ((_%$%e181894181920%_
                                     (gx#syntax-e _%$%tl181893181917%_)))
                                (let ((_%$%hd181895181923%_
                                       (##car _%$%e181894181920%_))
                                      (_%$%tl181896181925%_
                                       (##cdr _%$%e181894181920%_)))
                                  (let ((_%test181928%_ _%$%hd181895181923%_))
                                    (if (gx#stx-pair? _%$%tl181896181925%_)
                                        (let ((_%$%e181897181930%_
                                               (gx#syntax-e
                                                _%$%tl181896181925%_)))
                                          (let ((_%$%hd181898181933%_
                                                 (##car _%$%e181897181930%_))
                                                (_%$%tl181899181935%_
                                                 (##cdr _%$%e181897181930%_)))
                                            (let ((_%K181938%_
                                                   _%$%hd181898181933%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl181899181935%_)
                                                  (let ((_%$%e181900181940%_
                                                         (gx#syntax-e
                                                          _%$%tl181899181935%_)))
                                                    (let ((_%$%hd181901181943%_
                                                           (##car _%$%e181900181940%_))
                                                          (_%$%tl181902181945%_
                                                           (##cdr _%$%e181900181940%_)))
                                                      (let ((_%E181948%_
                                                             _%$%hd181901181943%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl181902181945%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test181928%_)
                                 (cons (gx#core-expand-expression _%K181938%_)
                                       (cons (gx#core-expand-expression
                                              _%E181948%_)
                                             '()))))
                     (gx#stx-source _%stx181887%_))
                    (_%$%E181890181908%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E181890181908%_)))))
                                        (_%$%E181890181908%_)))))
                              (_%$%E181890181908%_))))
                      (_%$%E181890181908%_)))))
          (_%$%E181889181950%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx181846%_)
        (let* ((_%$%e181847181857%_ _%stx181846%_)
               (_%$%E181849181861%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e181847181857%_)))
               (_%$%E181848181883%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e181847181857%_)
                      (let ((_%$%e181850181865%_
                             (gx#syntax-e _%$%e181847181857%_)))
                        (let ((_%$%hd181851181868%_
                               (##car _%$%e181850181865%_))
                              (_%$%tl181852181870%_
                               (##cdr _%$%e181850181865%_)))
                          (if (gx#stx-pair? _%$%tl181852181870%_)
                              (let ((_%$%e181853181873%_
                                     (gx#syntax-e _%$%tl181852181870%_)))
                                (let ((_%$%hd181854181876%_
                                       (##car _%$%e181853181873%_))
                                      (_%$%tl181855181878%_
                                       (##cdr _%$%e181853181873%_)))
                                  (let ((_%id181881%_ _%$%hd181854181876%_))
                                    (if (gx#stx-null? _%$%tl181855181878%_)
                                        (if (gx#identifier? _%id181881%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id181881%_
                                                          _%stx181846%_)
                                                         '()))
                                             (gx#stx-source _%stx181846%_))
                                            (_%$%E181849181861%_))
                                        (_%$%E181849181861%_)))))
                              (_%$%E181849181861%_))))
                      (_%$%E181849181861%_)))))
          (_%$%E181848181883%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx181792%_)
        (let* ((_%$%e181793181806%_ _%stx181792%_)
               (_%$%E181795181810%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e181793181806%_)))
               (_%$%E181794181842%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e181793181806%_)
                      (let ((_%$%e181796181814%_
                             (gx#syntax-e _%$%e181793181806%_)))
                        (let ((_%$%hd181797181817%_
                               (##car _%$%e181796181814%_))
                              (_%$%tl181798181819%_
                               (##cdr _%$%e181796181814%_)))
                          (if (gx#stx-pair? _%$%tl181798181819%_)
                              (let ((_%$%e181799181822%_
                                     (gx#syntax-e _%$%tl181798181819%_)))
                                (let ((_%$%hd181800181825%_
                                       (##car _%$%e181799181822%_))
                                      (_%$%tl181801181827%_
                                       (##cdr _%$%e181799181822%_)))
                                  (let ((_%id181830%_ _%$%hd181800181825%_))
                                    (if (gx#stx-pair? _%$%tl181801181827%_)
                                        (let ((_%$%e181802181832%_
                                               (gx#syntax-e
                                                _%$%tl181801181827%_)))
                                          (let ((_%$%hd181803181835%_
                                                 (##car _%$%e181802181832%_))
                                                (_%$%tl181804181837%_
                                                 (##cdr _%$%e181802181832%_)))
                                            (let ((_%expr181840%_
                                                   _%$%hd181803181835%_))
                                              (if (gx#stx-null?
                                                   _%$%tl181804181837%_)
                                                  (if (gx#identifier?
                                                       _%id181830%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id181830%_
                            _%stx181792%_)
                           (cons (gx#core-expand-expression _%expr181840%_)
                                 '())))
               (gx#stx-source _%stx181792%_))
              (_%$%E181795181810%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E181795181810%_)))))
                                        (_%$%E181795181810%_)))))
                              (_%$%E181795181810%_))))
                      (_%$%E181795181810%_)))))
          (_%$%E181794181842%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx181637%_)
        (letrec ((_%generate181639%_
                  (lambda (_%body181669%_)
                    (let _%lp181671%_ ((_%rest181673%_ _%body181669%_)
                                       (_%ns181674%_
                                        (gx#core-context-namespace__0))
                                       (_%r181675%_ '()))
                      (let* ((_%$%e181676181691%_ _%rest181673%_)
                             (_%$%E181689181695%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e181676181691%_)))
                             (_%$%E181685181699%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e181676181691%_)
                                    (reverse _%r181675%_)
                                    (_%$%E181689181695%_))))
                             (_%$%E181678181756%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e181676181691%_)
                                    (let ((_%$%e181686181703%_
                                           (gx#syntax-e _%$%e181676181691%_)))
                                      (let ((_%$%hd181687181706%_
                                             (##car _%$%e181686181703%_))
                                            (_%$%tl181688181708%_
                                             (##cdr _%$%e181686181703%_)))
                                        (let* ((_%hd181711%_
                                                _%$%hd181687181706%_)
                                               (_%rest181713%_
                                                _%$%tl181688181708%_))
                                          (if (gx#identifier? _%hd181711%_)
                                              (_%lp181671%_
                                               _%rest181713%_
                                               _%ns181674%_
                                               (cons (cons _%hd181711%_
                                                           (cons (if _%ns181674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd181711%_
                              _%ns181674%_
                              '"#"
                              _%hd181711%_)
                             _%hd181711%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r181675%_))
                                              (let* ((_%$%e181714181724%_
                                                      _%hd181711%_)
                                                     (_%$%E181716181728%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e181714181724%_)))
                                                     (_%$%E181715181752%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e181714181724%_)
                                                            (let ((_%$%e181717181732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e181714181724%_)))
                      (let ((_%$%hd181718181735%_ (##car _%$%e181717181732%_))
                            (_%$%tl181719181737%_ (##cdr _%$%e181717181732%_)))
                        (let ((_%id181740%_ _%$%hd181718181735%_))
                          (if (gx#stx-pair? _%$%tl181719181737%_)
                              (let ((_%$%e181720181742%_
                                     (gx#syntax-e _%$%tl181719181737%_)))
                                (let ((_%$%hd181721181745%_
                                       (##car _%$%e181720181742%_))
                                      (_%$%tl181722181747%_
                                       (##cdr _%$%e181720181742%_)))
                                  (let ((_%eid181750%_ _%$%hd181721181745%_))
                                    (if (gx#stx-null? _%$%tl181722181747%_)
                                        (if (and (gx#identifier? _%id181740%_)
                                                 (gx#identifier?
                                                  _%eid181750%_))
                                            (_%lp181671%_
                                             _%rest181713%_
                                             _%ns181674%_
                                             (cons (cons _%id181740%_
                                                         (cons _%eid181750%_
                                                               '()))
                                                   _%r181675%_))
                                            (_%$%E181716181728%_))
                                        (_%$%E181716181728%_)))))
                              (_%$%E181716181728%_)))))
                    (_%$%E181716181728%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E181715181752%_))))))
                                    (_%$%E181685181699%_))))
                             (_%$%E181677181788%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e181676181691%_)
                                    (let ((_%$%e181679181760%_
                                           (gx#syntax-e _%$%e181676181691%_)))
                                      (let ((_%$%hd181680181763%_
                                             (##car _%$%e181679181760%_))
                                            (_%$%tl181681181765%_
                                             (##cdr _%$%e181679181760%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd181680181763%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl181681181765%_)
                                                (let ((_%$%e181682181768%_
                                                       (gx#syntax-e
                                                        _%$%tl181681181765%_)))
                                                  (let ((_%$%hd181683181771%_
                                                         (##car _%$%e181682181768%_))
                                                        (_%$%tl181684181773%_
                                                         (##cdr _%$%e181682181768%_)))
                                                    (let* ((_%ns181776%_
                                                            _%$%hd181683181771%_)
                                                           (_%rest181778%_
                                                            _%$%tl181684181773%_)
                                                           (_%ns181786%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns181776%_)
                        (symbol->string (gx#stx-e _%ns181776%_))
                        (if (or (gx#stx-string? _%ns181776%_)
                                (gx#stx-false? _%ns181776%_))
                            (gx#stx-e _%ns181776%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx181637%_
                             _%ns181776%_)))))
              (_%lp181671%_ _%rest181778%_ _%ns181786%_ _%r181675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E181678181756%_))
                                            (_%$%E181678181756%_))))
                                    (_%$%E181678181756%_)))))
                        (_%$%E181677181788%_))))))
          (let* ((_%$%e181640181647%_ _%stx181637%_)
                 (_%$%E181642181651%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e181640181647%_)))
                 (_%$%E181641181665%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e181640181647%_)
                        (let ((_%$%e181643181655%_
                               (gx#syntax-e _%$%e181640181647%_)))
                          (let ((_%$%hd181644181658%_
                                 (##car _%$%e181643181655%_))
                                (_%$%tl181645181660%_
                                 (##cdr _%$%e181643181655%_)))
                            (let ((_%body181663%_ _%$%tl181645181660%_))
                              (if (gx#stx-list? _%body181663%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate181639%_ _%body181663%_))
                                  (_%$%E181642181651%_)))))
                        (_%$%E181642181651%_)))))
            (_%$%E181641181665%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx181594%_)
        (let* ((_%$%e181595181605%_ _%stx181594%_)
               (_%$%E181597181609%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e181595181605%_)))
               (_%$%E181596181633%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e181595181605%_)
                      (let ((_%$%e181598181613%_
                             (gx#syntax-e _%$%e181595181605%_)))
                        (let ((_%$%hd181599181616%_
                               (##car _%$%e181598181613%_))
                              (_%$%tl181600181618%_
                               (##cdr _%$%e181598181613%_)))
                          (if (gx#stx-pair? _%$%tl181600181618%_)
                              (let ((_%$%e181601181621%_
                                     (gx#syntax-e _%$%tl181600181618%_)))
                                (let ((_%$%hd181602181624%_
                                       (##car _%$%e181601181621%_))
                                      (_%$%tl181603181626%_
                                       (##cdr _%$%e181601181621%_)))
                                  (let* ((_%hd181629%_ _%$%hd181602181624%_)
                                         (_%body181631%_ _%$%tl181603181626%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd181629%_)
                                             (gx#stx-list? _%body181631%_)
                                             (not (gx#stx-null?
                                                   _%body181631%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd181629%_)
                                         _%body181631%_)
                                        (_%$%E181597181609%_)))))
                              (_%$%E181597181609%_))))
                      (_%$%E181597181609%_)))))
          (_%$%E181596181633%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx181530%_)
        (letrec ((_%generate181532%_
                  (lambda (_%clause181562%_)
                    (let* ((_%$%e181563181570%_ _%clause181562%_)
                           (_%$%E181565181574%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx181530%_
                               _%clause181562%_)))
                           (_%$%E181564181590%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e181563181570%_)
                                  (let ((_%$%e181566181578%_
                                         (gx#syntax-e _%$%e181563181570%_)))
                                    (let ((_%$%hd181567181581%_
                                           (##car _%$%e181566181578%_))
                                          (_%$%tl181568181583%_
                                           (##cdr _%$%e181566181578%_)))
                                      (let* ((_%hd181586%_
                                              _%$%hd181567181581%_)
                                             (_%body181588%_
                                              _%$%tl181568181583%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd181586%_)
                                                 (gx#stx-list? _%body181588%_)
                                                 (not (gx#stx-null?
                                                       _%body181588%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd181586%_)
                                                   _%body181588%_)
                                             (gx#stx-source _%clause181562%_))
                                            (_%$%E181565181574%_)))))
                                  (_%$%E181565181574%_)))))
                      (_%$%E181564181590%_)))))
          (let* ((_%$%e181533181540%_ _%stx181530%_)
                 (_%$%E181535181544%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e181533181540%_)))
                 (_%$%E181534181558%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e181533181540%_)
                        (let ((_%$%e181536181548%_
                               (gx#syntax-e _%$%e181533181540%_)))
                          (let ((_%$%hd181537181551%_
                                 (##car _%$%e181536181548%_))
                                (_%$%tl181538181553%_
                                 (##cdr _%$%e181536181548%_)))
                            (let ((_%clauses181556%_ _%$%tl181538181553%_))
                              (if (gx#stx-list? _%clauses181556%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate181532%_
                                    _%clauses181556%_))
                                  (_%$%E181535181544%_)))))
                        (_%$%E181535181544%_)))))
            (_%$%E181534181558%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx181431%_ _%form181432%_)
        (letrec ((_%generate181434%_
                  (lambda (_%bind181477%_)
                    (let* ((_%$%e181478181488%_ _%bind181477%_)
                           (_%$%E181480181492%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx181431%_
                               _%bind181477%_)))
                           (_%$%E181479181516%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e181478181488%_)
                                  (let ((_%$%e181481181496%_
                                         (gx#syntax-e _%$%e181478181488%_)))
                                    (let ((_%$%hd181482181499%_
                                           (##car _%$%e181481181496%_))
                                          (_%$%tl181483181501%_
                                           (##cdr _%$%e181481181496%_)))
                                      (let ((_%ids181504%_
                                             _%$%hd181482181499%_))
                                        (if (gx#stx-pair? _%$%tl181483181501%_)
                                            (let ((_%$%e181484181506%_
                                                   (gx#syntax-e
                                                    _%$%tl181483181501%_)))
                                              (let ((_%$%hd181485181509%_
                                                     (##car _%$%e181484181506%_))
                                                    (_%$%tl181486181511%_
                                                     (##cdr _%$%e181484181506%_)))
                                                (let ((_%expr181514%_
                                                       _%$%hd181485181509%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl181486181511%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids181504%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids181504%_)
                        (cons _%expr181514%_ '()))
                  (_%$%E181480181492%_))
              (_%$%E181480181492%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E181480181492%_)))))
                                  (_%$%E181480181492%_)))))
                      (_%$%E181479181516%_)))))
          (let* ((_%$%e181435181445%_ _%stx181431%_)
                 (_%$%E181437181449%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e181435181445%_)))
                 (_%$%E181436181473%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e181435181445%_)
                        (let ((_%$%e181438181453%_
                               (gx#syntax-e _%$%e181435181445%_)))
                          (let ((_%$%hd181439181456%_
                                 (##car _%$%e181438181453%_))
                                (_%$%tl181440181458%_
                                 (##cdr _%$%e181438181453%_)))
                            (if (gx#stx-pair? _%$%tl181440181458%_)
                                (let ((_%$%e181441181461%_
                                       (gx#syntax-e _%$%tl181440181458%_)))
                                  (let ((_%$%hd181442181464%_
                                         (##car _%$%e181441181461%_))
                                        (_%$%tl181443181466%_
                                         (##cdr _%$%e181441181461%_)))
                                    (let* ((_%hd181469%_ _%$%hd181442181464%_)
                                           (_%body181471%_
                                            _%$%tl181443181466%_))
                                      (if (and (gx#stx-list? _%hd181469%_)
                                               (gx#stx-list? _%body181471%_)
                                               (not (gx#stx-null?
                                                     _%body181471%_)))
                                          (gx#core-cons*
                                           _%form181432%_
                                           (gx#stx-map1
                                            _%generate181434%_
                                            _%hd181469%_)
                                           _%body181471%_)
                                          (_%$%E181437181449%_)))))
                                (_%$%E181437181449%_))))
                        (_%$%E181437181449%_)))))
            (_%$%E181436181473%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx181523%_)
        (let ((_%form181525%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx181523%_ _%form181525%_))))
    (define gx#macro-expand-let-values
      (lambda _g184201_
        (let ((_g184202_ (##length _g184201_)))
          (cond ((##fx= _g184202_ 1)
                 (apply gx#macro-expand-let-values__0 _g184201_))
                ((##fx= _g184202_ 2)
                 (apply gx#macro-expand-let-values__% _g184201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g184201_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx181428%_)
        (gx#macro-expand-let-values__% _%stx181428%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx181426%_)
        (gx#macro-expand-let-values__% _%stx181426%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx181317%_)
        (let* ((_%$%e181318181344%_ _%stx181317%_)
               (_%$%E181330181348%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e181318181344%_)))
               (_%$%E181320181390%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e181318181344%_)
                      (let ((_%$%e181331181352%_
                             (gx#syntax-e _%$%e181318181344%_)))
                        (let ((_%$%hd181332181355%_
                               (##car _%$%e181331181352%_))
                              (_%$%tl181333181357%_
                               (##cdr _%$%e181331181352%_)))
                          (if (gx#stx-pair? _%$%tl181333181357%_)
                              (let ((_%$%e181334181360%_
                                     (gx#syntax-e _%$%tl181333181357%_)))
                                (let ((_%$%hd181335181363%_
                                       (##car _%$%e181334181360%_))
                                      (_%$%tl181336181365%_
                                       (##cdr _%$%e181334181360%_)))
                                  (let ((_%test181368%_ _%$%hd181335181363%_))
                                    (if (gx#stx-pair? _%$%tl181336181365%_)
                                        (let ((_%$%e181337181370%_
                                               (gx#syntax-e
                                                _%$%tl181336181365%_)))
                                          (let ((_%$%hd181338181373%_
                                                 (##car _%$%e181337181370%_))
                                                (_%$%tl181339181375%_
                                                 (##cdr _%$%e181337181370%_)))
                                            (let ((_%K181378%_
                                                   _%$%hd181338181373%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl181339181375%_)
                                                  (let ((_%$%e181340181380%_
                                                         (gx#syntax-e
                                                          _%$%tl181339181375%_)))
                                                    (let ((_%$%hd181341181383%_
                                                           (##car _%$%e181340181380%_))
                                                          (_%$%tl181342181385%_
                                                           (##cdr _%$%e181340181380%_)))
                                                      (let ((_%E181388%_
                                                             _%$%hd181341181383%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl181342181385%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test181368%_
                                                             _%K181378%_
                                                             _%E181388%_)
                                                            (_%$%E181330181348%_)))))
                                                  (_%$%E181330181348%_)))))
                                        (_%$%E181330181348%_)))))
                              (_%$%E181330181348%_))))
                      (_%$%E181330181348%_))))
               (_%$%E181319181422%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e181318181344%_)
                      (let ((_%$%e181321181394%_
                             (gx#syntax-e _%$%e181318181344%_)))
                        (let ((_%$%hd181322181397%_
                               (##car _%$%e181321181394%_))
                              (_%$%tl181323181399%_
                               (##cdr _%$%e181321181394%_)))
                          (if (gx#stx-pair? _%$%tl181323181399%_)
                              (let ((_%$%e181324181402%_
                                     (gx#syntax-e _%$%tl181323181399%_)))
                                (let ((_%$%hd181325181405%_
                                       (##car _%$%e181324181402%_))
                                      (_%$%tl181326181407%_
                                       (##cdr _%$%e181324181402%_)))
                                  (let ((_%test181410%_ _%$%hd181325181405%_))
                                    (if (gx#stx-pair? _%$%tl181326181407%_)
                                        (let ((_%$%e181327181412%_
                                               (gx#syntax-e
                                                _%$%tl181326181407%_)))
                                          (let ((_%$%hd181328181415%_
                                                 (##car _%$%e181327181412%_))
                                                (_%$%tl181329181417%_
                                                 (##cdr _%$%e181327181412%_)))
                                            (let ((_%K181420%_
                                                   _%$%hd181328181415%_))
                                              (if (gx#stx-null?
                                                   _%$%tl181329181417%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test181410%_
                                                   _%K181420%_
                                                   '#!void)
                                                  (_%$%E181320181390%_)))))
                                        (_%$%E181320181390%_)))))
                              (_%$%E181320181390%_))))
                      (_%$%E181320181390%_)))))
          (_%$%E181319181422%_))))
    (define gx#free-identifier=?
      (lambda (_%xid181302%_ _%yid181303%_)
        (let ((_%xe181305%_ (gx#resolve-identifier__0 _%xid181302%_))
              (_%ye181306%_ (gx#resolve-identifier__0 _%yid181303%_)))
          (if (and _%xe181305%_ _%ye181306%_)
              (let ((_%$e181309%_ (eq? _%xe181305%_ _%ye181306%_)))
                (if _%$e181309%_
                    _%$e181309%_
                    (if (##structure-instance-of? _%xe181305%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye181306%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe181305%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye181306%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe181305%_ _%ye181306%_)
                  '#f
                  (gx#stx-eq? _%xid181302%_ _%yid181303%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid181283%_ _%yid181284%_)
        (letrec ((_%context181286%_
                  (lambda (_%e181300%_)
                    (if (##structure-direct-instance-of?
                         _%e181300%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e181300%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks181287%_
                  (lambda (_%e181295%_)
                    (if (symbol? _%e181295%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e181295%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e181295%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e181295%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap181288%_
                  (lambda (_%e181293%_)
                    (if (symbol? _%e181293%_)
                        _%e181293%_
                        (gx#syntax-local-unwrap _%e181293%_)))))
          (let ((_%x181290%_ (_%unwrap181288%_ _%xid181283%_))
                (_%y181291%_ (_%unwrap181288%_ _%yid181284%_)))
            (if (gx#stx-eq? _%x181290%_ _%y181291%_)
                (if (eq? (_%context181286%_ _%x181290%_)
                         (_%context181286%_ _%y181291%_))
                    (equal? (_%marks181287%_ _%x181290%_)
                            (_%marks181287%_ _%y181291%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx181281%_)
        (if (gx#identifier? _%stx181281%_)
            (gx#core-identifier=? _%stx181281%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx181279%_)
        (if (gx#identifier? _%stx181279%_)
            (gx#core-identifier=? _%stx181279%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx181222%_ _%where181223%_)
        (let _%lp181225%_ ((_%rest181227%_ (gx#syntax->list _%stx181222%_)))
          (let* ((_%$%rest181228181236%_ _%rest181227%_)
                 (_%$%else181230181244%_ (lambda () '#t))
                 (_%$%K181232181257%_
                  (lambda (_%rest181247%_ _%hd181248%_)
                    (if (gx#identifier? _%hd181248%_)
                        (if (__find (lambda (_%$%g181250181252%_)
                                      (gx#bound-identifier=?
                                       _%$%g181250181252%_
                                       _%hd181248%_))
                                    _%rest181247%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where181223%_
                             _%hd181248%_)
                            (_%lp181225%_ _%rest181247%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where181223%_
                         _%hd181248%_)))))
            (if (pair? _%$%rest181228181236%_)
                (let ((_%$%hd181233181260%_ (##car _%$%rest181228181236%_))
                      (_%$%tl181234181262%_ (##cdr _%$%rest181228181236%_)))
                  (let* ((_%hd181265%_ _%$%hd181233181260%_)
                         (_%rest181267%_ _%$%tl181234181262%_))
                    (_%$%K181232181257%_ _%rest181267%_ _%hd181265%_)))
                (_%$%else181230181244%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx181272%_)
        (let ((_%where181274%_ _%stx181272%_))
          (gx#check-duplicate-identifiers__% _%stx181272%_ _%where181274%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g184203_
        (let ((_g184204_ (##length _g184203_)))
          (cond ((##fx= _g184204_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g184203_))
                ((##fx= _g184204_ 2)
                 (apply gx#check-duplicate-identifiers__% _g184203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g184203_))))))
    (define gx#core-bind-values?
      (lambda (_%stx181214%_)
        (gx#stx-andmap
         (lambda (_%x181216%_)
           (let ((_%$e181218%_ (gx#identifier? _%x181216%_)))
             (if _%$e181218%_ _%$e181218%_ (gx#stx-false? _%x181216%_))))
         _%stx181214%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx181178%_ _%rebind?181179%_ _%phi181180%_ _%ctx181181%_)
        (gx#stx-for-each1
         (lambda (_%id181183%_)
           (if (gx#identifier? _%id181183%_)
               (gx#core-bind-runtime!__%
                _%id181183%_
                _%rebind?181179%_
                _%phi181180%_
                _%ctx181181%_)
               '#!void))
         _%stx181178%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx181188%_)
        (let* ((_%rebind?181190%_ '#f)
               (_%phi181192%_ (gx#current-expander-phi))
               (_%ctx181194%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx181188%_
           _%rebind?181190%_
           _%phi181192%_
           _%ctx181194%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx181196%_ _%rebind?181197%_)
        (let* ((_%phi181199%_ (gx#current-expander-phi))
               (_%ctx181201%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx181196%_
           _%rebind?181197%_
           _%phi181199%_
           _%ctx181201%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx181203%_ _%rebind?181204%_ _%phi181205%_)
        (let ((_%ctx181207%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx181203%_
           _%rebind?181204%_
           _%phi181205%_
           _%ctx181207%_))))
    (define gx#core-bind-values!
      (lambda _g184205_
        (let ((_g184206_ (##length _g184205_)))
          (cond ((##fx= _g184206_ 1) (apply gx#core-bind-values!__0 _g184205_))
                ((##fx= _g184206_ 2) (apply gx#core-bind-values!__1 _g184205_))
                ((##fx= _g184206_ 3) (apply gx#core-bind-values!__2 _g184205_))
                ((##fx= _g184206_ 4) (apply gx#core-bind-values!__% _g184205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g184205_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx181173%_)
        (gx#stx-map1
         (lambda (_%x181175%_)
           (if (gx#identifier? _%x181175%_)
               (gx#core-quote-syntax__0 _%x181175%_)
               '#f))
         _%stx181173%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx181166%_)
        (if (gx#identifier? _%stx181166%_)
            (let* ((_%bind181168%_ (gx#resolve-identifier__0 _%stx181166%_))
                   (_%$e181170%_ (not _%bind181168%_)))
              (if _%$e181170%_
                  _%$e181170%_
                  (##structure-instance-of?
                   _%bind181168%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id181155%_ _%form181156%_)
        (let ((_%bind181158%_ (gx#resolve-identifier__0 _%id181155%_)))
          (if (##structure-instance-of? _%bind181158%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id181155%_)
              (if (not _%bind181158%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id181155%_)))
                      (gx#core-quote-syntax__0 _%id181155%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form181156%_
                       _%id181155%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form181156%_
                   _%id181155%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id181110%_ _%rebind?181111%_ _%phi181112%_ _%ctx181113%_)
        (let* ((_%key181115%_ (gx#core-identifier-key _%id181110%_))
               (_%eid181117%_
                (gx#make-binding-id__%
                 _%key181115%_
                 '#f
                 _%phi181112%_
                 _%ctx181113%_))
               (_%bind181123%_
                (if (##structure-instance-of?
                     _%ctx181113%_
                     'gx#module-context::t)
                    (let ((__obj184182
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
                       __obj184182
                       _%eid181117%_
                       _%key181115%_
                       _%phi181112%_
                       _%ctx181113%_)
                      __obj184182)
                    (if (##structure-instance-of?
                         _%ctx181113%_
                         'gx#top-context::t)
                        (let ((__obj184181
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj184181
                           _%eid181117%_
                           _%key181115%_
                           _%phi181112%_)
                          __obj184181)
                        (if (##structure-instance-of?
                             _%ctx181113%_
                             'gx#local-context::t)
                            (let ((__obj184180
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj184180
                               _%eid181117%_
                               _%key181115%_
                               _%phi181112%_)
                              __obj184180)
                            (let ((__obj184179
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj184179
                               _%eid181117%_
                               _%key181115%_
                               _%phi181112%_)
                              __obj184179))))))
          (gx#bind-identifier!__%
           _%id181110%_
           _%bind181123%_
           _%rebind?181111%_
           _%phi181112%_
           _%ctx181113%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id181129%_)
        (let* ((_%rebind?181131%_ '#f)
               (_%phi181133%_ (gx#current-expander-phi))
               (_%ctx181135%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id181129%_
           _%rebind?181131%_
           _%phi181133%_
           _%ctx181135%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id181137%_ _%rebind?181138%_)
        (let* ((_%phi181140%_ (gx#current-expander-phi))
               (_%ctx181142%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id181137%_
           _%rebind?181138%_
           _%phi181140%_
           _%ctx181142%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id181144%_ _%rebind?181145%_ _%phi181146%_)
        (let ((_%ctx181148%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id181144%_
           _%rebind?181145%_
           _%phi181146%_
           _%ctx181148%_))))
    (define gx#core-bind-runtime!
      (lambda _g184207_
        (let ((_g184208_ (##length _g184207_)))
          (cond ((##fx= _g184208_ 1)
                 (apply gx#core-bind-runtime!__0 _g184207_))
                ((##fx= _g184208_ 2)
                 (apply gx#core-bind-runtime!__1 _g184207_))
                ((##fx= _g184208_ 3)
                 (apply gx#core-bind-runtime!__2 _g184207_))
                ((##fx= _g184208_ 4)
                 (apply gx#core-bind-runtime!__% _g184207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g184207_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id181062%_
               _%eid181063%_
               _%rebind?181064%_
               _%phi181065%_
               _%ctx181066%_)
        (let* ((_%key181068%_ (gx#core-identifier-key _%id181062%_))
               (_%bind181073%_
                (if (##structure-instance-of?
                     _%ctx181066%_
                     'gx#module-context::t)
                    (let ((__obj184185
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
                       __obj184185
                       _%eid181063%_
                       _%key181068%_
                       _%phi181065%_
                       _%ctx181066%_)
                      __obj184185)
                    (if (##structure-instance-of?
                         _%ctx181066%_
                         'gx#top-context::t)
                        (let ((__obj184184
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj184184
                           _%eid181063%_
                           _%key181068%_
                           _%phi181065%_)
                          __obj184184)
                        (let ((__obj184183
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj184183
                           _%eid181063%_
                           _%key181068%_
                           _%phi181065%_)
                          __obj184183)))))
          (gx#bind-identifier!__%
           _%id181062%_
           _%bind181073%_
           _%rebind?181064%_
           _%phi181065%_
           _%ctx181066%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id181079%_ _%eid181080%_)
        (let* ((_%rebind?181082%_ '#f)
               (_%phi181084%_ (gx#current-expander-phi))
               (_%ctx181086%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id181079%_
           _%eid181080%_
           _%rebind?181082%_
           _%phi181084%_
           _%ctx181086%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id181088%_ _%eid181089%_ _%rebind?181090%_)
        (let* ((_%phi181092%_ (gx#current-expander-phi))
               (_%ctx181094%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id181088%_
           _%eid181089%_
           _%rebind?181090%_
           _%phi181092%_
           _%ctx181094%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id181096%_ _%eid181097%_ _%rebind?181098%_ _%phi181099%_)
        (let ((_%ctx181101%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id181096%_
           _%eid181097%_
           _%rebind?181098%_
           _%phi181099%_
           _%ctx181101%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g184209_
        (let ((_g184210_ (##length _g184209_)))
          (cond ((##fx= _g184210_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g184209_))
                ((##fx= _g184210_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g184209_))
                ((##fx= _g184210_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g184209_))
                ((##fx= _g184210_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g184209_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g184209_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id181022%_
               _%eid181023%_
               _%rebind?181024%_
               _%phi181025%_
               _%ctx181026%_)
        (gx#bind-identifier!__%
         _%id181022%_
         (let ((__obj184186
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj184186
            _%eid181023%_
            (gx#core-identifier-key _%id181022%_)
            _%phi181025%_)
           __obj184186)
         _%rebind?181024%_
         _%phi181025%_
         _%ctx181026%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id181031%_ _%eid181032%_)
        (let* ((_%rebind?181034%_ '#f)
               (_%phi181036%_ (gx#current-expander-phi))
               (_%ctx181038%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id181031%_
           _%eid181032%_
           _%rebind?181034%_
           _%phi181036%_
           _%ctx181038%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id181040%_ _%eid181041%_ _%rebind?181042%_)
        (let* ((_%phi181044%_ (gx#current-expander-phi))
               (_%ctx181046%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id181040%_
           _%eid181041%_
           _%rebind?181042%_
           _%phi181044%_
           _%ctx181046%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id181048%_ _%eid181049%_ _%rebind?181050%_ _%phi181051%_)
        (let ((_%ctx181053%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id181048%_
           _%eid181049%_
           _%rebind?181050%_
           _%phi181051%_
           _%ctx181053%_))))
    (define gx#core-bind-extern!
      (lambda _g184211_
        (let ((_g184212_ (##length _g184211_)))
          (cond ((##fx= _g184212_ 2) (apply gx#core-bind-extern!__0 _g184211_))
                ((##fx= _g184212_ 3) (apply gx#core-bind-extern!__1 _g184211_))
                ((##fx= _g184212_ 4) (apply gx#core-bind-extern!__2 _g184211_))
                ((##fx= _g184212_ 5) (apply gx#core-bind-extern!__% _g184211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g184211_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id180976%_
               _%e180977%_
               _%rebind?180978%_
               _%phi180979%_
               _%ctx180980%_)
        (gx#bind-identifier!__%
         _%id180976%_
         (let ((_%key180985%_ (gx#core-identifier-key _%id180976%_))
               (_%e180986%_
                (if (or (##structure-instance-of? _%e180977%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e180977%_
                         'gx#expander-context::t))
                    _%e180977%_
                    (##structure
                     gx#user-expander::t
                     _%e180977%_
                     _%ctx180980%_
                     _%phi180979%_))))
           (let ((__obj184187
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj184187
              (gx#make-binding-id__%
               _%key180985%_
               '#t
               _%phi180979%_
               _%ctx180980%_)
              _%key180985%_
              _%phi180979%_
              _%e180986%_)
             __obj184187))
         _%rebind?180978%_
         _%phi180979%_
         _%ctx180980%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id180991%_ _%e180992%_)
        (let* ((_%rebind?180994%_ '#f)
               (_%phi180996%_ (gx#current-expander-phi))
               (_%ctx180998%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id180991%_
           _%e180992%_
           _%rebind?180994%_
           _%phi180996%_
           _%ctx180998%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id181000%_ _%e181001%_ _%rebind?181002%_)
        (let* ((_%phi181004%_ (gx#current-expander-phi))
               (_%ctx181006%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id181000%_
           _%e181001%_
           _%rebind?181002%_
           _%phi181004%_
           _%ctx181006%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id181008%_ _%e181009%_ _%rebind?181010%_ _%phi181011%_)
        (let ((_%ctx181013%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id181008%_
           _%e181009%_
           _%rebind?181010%_
           _%phi181011%_
           _%ctx181013%_))))
    (define gx#core-bind-syntax!
      (lambda _g184213_
        (let ((_g184214_ (##length _g184213_)))
          (cond ((##fx= _g184214_ 2) (apply gx#core-bind-syntax!__0 _g184213_))
                ((##fx= _g184214_ 3) (apply gx#core-bind-syntax!__1 _g184213_))
                ((##fx= _g184214_ 4) (apply gx#core-bind-syntax!__2 _g184213_))
                ((##fx= _g184214_ 5) (apply gx#core-bind-syntax!__% _g184213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g184213_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id180959%_ _%e180960%_ _%rebind?180961%_)
        (gx#core-bind-syntax!__%
         _%id180959%_
         _%e180960%_
         _%rebind?180961%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id180966%_ _%e180967%_)
        (let ((_%rebind?180969%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id180966%_
           _%e180967%_
           _%rebind?180969%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g184215_
        (let ((_g184216_ (##length _g184215_)))
          (cond ((##fx= _g184216_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g184215_))
                ((##fx= _g184216_ 3)
                 (apply gx#core-bind-root-syntax!__% _g184215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g184215_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id180917%_
               _%alias-id180918%_
               _%rebind?180919%_
               _%phi180920%_
               _%ctx180921%_)
        (gx#bind-identifier!__%
         _%id180917%_
         (let* ((_%key180923%_ (gx#core-identifier-key _%id180917%_))
                (__obj184188
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj184188
            (gx#make-binding-id__%
             _%key180923%_
             '#t
             _%phi180920%_
             _%ctx180921%_)
            _%key180923%_
            _%phi180920%_
            _%alias-id180918%_)
           __obj184188)
         _%rebind?180919%_
         _%phi180920%_
         _%ctx180921%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id180928%_ _%alias-id180929%_)
        (let* ((_%rebind?180931%_ '#f)
               (_%phi180933%_ (gx#current-expander-phi))
               (_%ctx180935%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180928%_
           _%alias-id180929%_
           _%rebind?180931%_
           _%phi180933%_
           _%ctx180935%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id180937%_ _%alias-id180938%_ _%rebind?180939%_)
        (let* ((_%phi180941%_ (gx#current-expander-phi))
               (_%ctx180943%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180937%_
           _%alias-id180938%_
           _%rebind?180939%_
           _%phi180941%_
           _%ctx180943%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id180945%_ _%alias-id180946%_ _%rebind?180947%_ _%phi180948%_)
        (let ((_%ctx180950%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180945%_
           _%alias-id180946%_
           _%rebind?180947%_
           _%phi180948%_
           _%ctx180950%_))))
    (define gx#core-bind-alias!
      (lambda _g184217_
        (let ((_g184218_ (##length _g184217_)))
          (cond ((##fx= _g184218_ 2) (apply gx#core-bind-alias!__0 _g184217_))
                ((##fx= _g184218_ 3) (apply gx#core-bind-alias!__1 _g184217_))
                ((##fx= _g184218_ 4) (apply gx#core-bind-alias!__2 _g184217_))
                ((##fx= _g184218_ 5) (apply gx#core-bind-alias!__% _g184217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g184217_))))))
    (define gx#make-binding-id__%
      (lambda (_%key180867%_ _%syntax?180868%_ _%phi180869%_ _%ctx180870%_)
        (if (uninterned-symbol? _%key180867%_)
            (##gensym 'L)
            (if (pair? _%key180867%_)
                (gensym (##car _%key180867%_))
                (if (##structure-instance-of? _%ctx180870%_ 'gx#top-context::t)
                    (let ((_%ns180875%_
                           (gx#core-context-namespace__% _%ctx180870%_)))
                      (if (and (fxzero? _%phi180869%_) (not _%syntax?180868%_))
                          (if _%ns180875%_
                              (make-symbol__1 _%ns180875%_ '"#" _%key180867%_)
                              _%key180867%_)
                          (if _%syntax?180868%_
                              (make-symbol__1
                               (let ((_%$e180879%_ _%ns180875%_))
                                 (if _%$e180879%_ _%$e180879%_ '""))
                               '"[:"
                               (number->string _%phi180869%_)
                               '":]#"
                               _%key180867%_)
                              (make-symbol__1
                               (let ((_%$e180883%_ _%ns180875%_))
                                 (if _%$e180883%_ _%$e180883%_ '""))
                               '"["
                               (number->string _%phi180869%_)
                               '"]#"
                               _%key180867%_))))
                    (gensym _%key180867%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key180890%_)
        (let* ((_%syntax?180892%_ '#f)
               (_%phi180894%_ (gx#current-expander-phi))
               (_%ctx180896%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180890%_
           _%syntax?180892%_
           _%phi180894%_
           _%ctx180896%_))))
    (define gx#make-binding-id__1
      (lambda (_%key180898%_ _%syntax?180899%_)
        (let* ((_%phi180901%_ (gx#current-expander-phi))
               (_%ctx180903%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180898%_
           _%syntax?180899%_
           _%phi180901%_
           _%ctx180903%_))))
    (define gx#make-binding-id__2
      (lambda (_%key180905%_ _%syntax?180906%_ _%phi180907%_)
        (let ((_%ctx180909%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180905%_
           _%syntax?180906%_
           _%phi180907%_
           _%ctx180909%_))))
    (define gx#make-binding-id
      (lambda _g184219_
        (let ((_g184220_ (##length _g184219_)))
          (cond ((##fx= _g184220_ 1) (apply gx#make-binding-id__0 _g184219_))
                ((##fx= _g184220_ 2) (apply gx#make-binding-id__1 _g184219_))
                ((##fx= _g184220_ 3) (apply gx#make-binding-id__2 _g184219_))
                ((##fx= _g184220_ 4) (apply gx#make-binding-id__% _g184219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g184219_))))))))
