(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1779274771)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx183147%_)
        (letrec ((_%expand-special183149%_
                  (lambda (_%hd183151%_ _%K183152%_ _%rest183153%_ _%r183154%_)
                    (_%K183152%_
                     _%rest183153%_
                     (cons (gx#core-expand-top _%hd183151%_) _%r183154%_)))))
          (gx#core-expand-block__0 _%stx183147%_ _%expand-special183149%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx182841%_)
        (letrec ((_%expand-special182843%_
                  (lambda (_%hd182965%_ _%K182966%_ _%rest182967%_ _%r182968%_)
                    (let* ((_%K182972%_
                            (lambda (_%e182970%_)
                              (_%K182966%_
                               _%rest182967%_
                               (cons _%e182970%_ _%r182968%_))))
                           (_%e182973183015%_ _%hd182965%_)
                           (_%E183010183019%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182973183015%_)))
                           (_%E183006183031%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182973183015%_)
                                  (let ((_%e183011183023%_
                                         (gx#syntax-e _%e182973183015%_)))
                                    (let ((_%hd183012183026%_
                                           (##car _%e183011183023%_))
                                          (_%tl183013183028%_
                                           (##cdr _%e183011183023%_)))
                                      (if (and (gx#identifier?
                                                _%hd183012183026%_)
                                               (gx#core-identifier=?
                                                _%hd183012183026%_
                                                '%#define-runtime))
                                          (_%K182972%_
                                           (gx#core-expand-define-runtime%
                                            _%hd182965%_))
                                          (_%E183010183019%_))))
                                  (_%E183010183019%_))))
                           (_%E183002183043%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182973183015%_)
                                  (let ((_%e183007183035%_
                                         (gx#syntax-e _%e182973183015%_)))
                                    (let ((_%hd183008183038%_
                                           (##car _%e183007183035%_))
                                          (_%tl183009183040%_
                                           (##cdr _%e183007183035%_)))
                                      (if (and (gx#identifier?
                                                _%hd183008183038%_)
                                               (gx#core-identifier=?
                                                _%hd183008183038%_
                                                '%#define-alias))
                                          (_%K182972%_
                                           (gx#core-expand-define-alias%
                                            _%hd182965%_))
                                          (_%E183006183031%_))))
                                  (_%E183006183031%_))))
                           (_%E182992183055%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182973183015%_)
                                  (let ((_%e183003183047%_
                                         (gx#syntax-e _%e182973183015%_)))
                                    (let ((_%hd183004183050%_
                                           (##car _%e183003183047%_))
                                          (_%tl183005183052%_
                                           (##cdr _%e183003183047%_)))
                                      (if (and (gx#identifier?
                                                _%hd183004183050%_)
                                               (gx#core-identifier=?
                                                _%hd183004183050%_
                                                '%#define-syntax))
                                          (_%K182972%_
                                           (gx#core-expand-define-syntax%
                                            _%hd182965%_))
                                          (_%E183002183043%_))))
                                  (_%E183002183043%_))))
                           (_%E182979183087%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182973183015%_)
                                  (let ((_%e182993183059%_
                                         (gx#syntax-e _%e182973183015%_)))
                                    (let ((_%hd182994183062%_
                                           (##car _%e182993183059%_))
                                          (_%tl182995183064%_
                                           (##cdr _%e182993183059%_)))
                                      (if (and (gx#identifier?
                                                _%hd182994183062%_)
                                               (gx#core-identifier=?
                                                _%hd182994183062%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182995183064%_)
                                              (let ((_%e182996183067%_
                                                     (gx#syntax-e
                                                      _%tl182995183064%_)))
                                                (let ((_%hd182997183070%_
                                                       (##car _%e182996183067%_))
                                                      (_%tl182998183072%_
                                                       (##cdr _%e182996183067%_)))
                                                  (let ((_%hd-bind183075%_
                                                         _%hd182997183070%_))
                                                    (if (gx#stx-pair?
                                                         _%tl182998183072%_)
                                                        (let ((_%e182999183077%_
                                                               (gx#syntax-e
                                                                _%tl182998183072%_)))
                                                          (let ((_%hd183000183080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e182999183077%_))
                        (_%tl183001183082%_ (##cdr _%e182999183077%_)))
                    (let ((_%expr183085%_ _%hd183000183080%_))
                      (if (gx#stx-null? _%tl183001183082%_)
                          (if (gx#core-bind-values? _%hd-bind183075%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind183075%_)
                                (_%K182972%_ _%hd182965%_))
                              (_%E182992183055%_))
                          (_%E182992183055%_)))))
                (_%E182992183055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182992183055%_))
                                          (_%E182992183055%_))))
                                  (_%E182992183055%_))))
                           (_%E182975183131%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182973183015%_)
                                  (let ((_%e182980183091%_
                                         (gx#syntax-e _%e182973183015%_)))
                                    (let ((_%hd182981183094%_
                                           (##car _%e182980183091%_))
                                          (_%tl182982183096%_
                                           (##cdr _%e182980183091%_)))
                                      (if (and (gx#identifier?
                                                _%hd182981183094%_)
                                               (gx#core-identifier=?
                                                _%hd182981183094%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182982183096%_)
                                              (let ((_%e182983183099%_
                                                     (gx#syntax-e
                                                      _%tl182982183096%_)))
                                                (let ((_%hd182984183102%_
                                                       (##car _%e182983183099%_))
                                                      (_%tl182985183104%_
                                                       (##cdr _%e182983183099%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd182984183102%_)
                                                      (let ((_%e182989183107%_
                                                             (gx#syntax-e
                                                              _%hd182984183102%_)))
                                                        (let ((_%hd182990183110%_
                                                               (##car _%e182989183107%_))
                                                              (_%tl182991183112%_
                                                               (##cdr _%e182989183107%_)))
                                                          (let ((_%id183115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd182990183110%_))
                    (if (gx#stx-null? _%tl182991183112%_)
                        (if (gx#stx-pair? _%tl182985183104%_)
                            (let ((_%e182986183117%_
                                   (gx#syntax-e _%tl182985183104%_)))
                              (let ((_%hd182987183120%_
                                     (##car _%e182986183117%_))
                                    (_%tl182988183122%_
                                     (##cdr _%e182986183117%_)))
                                (let* ((_%expr183125%_ _%hd182987183120%_)
                                       (_%props183127%_ _%tl182988183122%_))
                                  (if (gx#identifier? _%id183115%_)
                                      (let ((_%bind183129%_
                                             (gx#core-bind-runtime!__0
                                              _%id183115%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind183129%_
                                         _%props183127%_)
                                        (_%K182972%_ _%hd182965%_))
                                      (_%E182979183087%_)))))
                            (_%E182979183087%_))
                        (_%E182979183087%_)))))
              (_%E182979183087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182979183087%_))
                                          (_%E182979183087%_))))
                                  (_%E182979183087%_))))
                           (_%E182974183143%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182973183015%_)
                                  (let ((_%e182976183135%_
                                         (gx#syntax-e _%e182973183015%_)))
                                    (let ((_%hd182977183138%_
                                           (##car _%e182976183135%_))
                                          (_%tl182978183140%_
                                           (##cdr _%e182976183135%_)))
                                      (if (and (gx#identifier?
                                                _%hd182977183138%_)
                                               (gx#core-identifier=?
                                                _%hd182977183138%_
                                                '%#begin-syntax))
                                          (_%K182972%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd182965%_))
                                          (_%E182975183131%_))))
                                  (_%E182975183131%_)))))
                      (_%E182974183143%_))))
                 (_%eval-body182844%_
                  (lambda (_%rbody182852%_)
                    (let _%lp182854%_ ((_%rest182856%_ _%rbody182852%_)
                                       (_%body182857%_ '())
                                       (_%ebody182858%_ '()))
                      (let* ((_%rest182859182867%_ _%rest182856%_)
                             (_%else182861182875%_
                              (lambda ()
                                (values _%body182857%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody182858%_)
                                          (gx#stx-source _%stx182841%_))))))
                             (_%K182863182953%_
                              (lambda (_%rest182878%_ _%hd182879%_)
                                (let* ((_%e182880182897%_ _%hd182879%_)
                                       (_%E182892182901%_
                                        (lambda ()
                                          (_%lp182854%_
                                           _%rest182878%_
                                           (cons _%hd182879%_ _%body182857%_)
                                           (cons _%hd182879%_
                                                 _%ebody182858%_))))
                                       (_%E182882182913%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182880182897%_)
                                              (let ((_%e182893182905%_
                                                     (gx#syntax-e
                                                      _%e182880182897%_)))
                                                (let ((_%hd182894182908%_
                                                       (##car _%e182893182905%_))
                                                      (_%tl182895182910%_
                                                       (##cdr _%e182893182905%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182894182908%_)
                                                           (gx#core-identifier=?
                                                            _%hd182894182908%_
                                                            '%#begin-syntax))
                                                      (_%lp182854%_
                                                       _%rest182878%_
                                                       (cons _%hd182879%_
                                                             _%body182857%_)
                                                       _%ebody182858%_)
                                                      (_%E182892182901%_))))
                                              (_%E182892182901%_))))
                                       (_%E182881182949%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182880182897%_)
                                              (let ((_%e182883182917%_
                                                     (gx#syntax-e
                                                      _%e182880182897%_)))
                                                (let ((_%hd182884182920%_
                                                       (##car _%e182883182917%_))
                                                      (_%tl182885182922%_
                                                       (##cdr _%e182883182917%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182884182920%_)
                                                           (gx#core-identifier=?
                                                            _%hd182884182920%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl182885182922%_)
                                                          (let ((_%e182886182925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl182885182922%_)))
                    (let ((_%hd182887182928%_ (##car _%e182886182925%_))
                          (_%tl182888182930%_ (##cdr _%e182886182925%_)))
                      (let ((_%hd-bind182933%_ _%hd182887182928%_))
                        (if (gx#stx-pair? _%tl182888182930%_)
                            (let ((_%e182889182935%_
                                   (gx#syntax-e _%tl182888182930%_)))
                              (let ((_%hd182890182938%_
                                     (##car _%e182889182935%_))
                                    (_%tl182891182940%_
                                     (##cdr _%e182889182935%_)))
                                (let* ((_%expr182943%_ _%hd182890182938%_)
                                       (_%ignore-props182945%_
                                        _%tl182891182940%_)
                                       (_%ehd182947%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind182933%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr182943%_)
                                                           '())))
                                         (gx#stx-source _%hd182879%_))))
                                  (_%lp182854%_
                                   _%rest182878%_
                                   (cons _%ehd182947%_ _%body182857%_)
                                   (cons _%ehd182947%_ _%ebody182858%_)))))
                            (_%E182882182913%_)))))
                  (_%E182882182913%_))
              (_%E182882182913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182882182913%_)))))
                                  (_%E182881182949%_)))))
                        (if (pair? _%rest182859182867%_)
                            (let ((_%hd182864182956%_
                                   (##car _%rest182859182867%_))
                                  (_%tl182865182958%_
                                   (##cdr _%rest182859182867%_)))
                              (let* ((_%hd182961%_ _%hd182864182956%_)
                                     (_%rest182963%_ _%tl182865182958%_))
                                (_%K182863182953%_
                                 _%rest182963%_
                                 _%hd182961%_)))
                            (_%else182861182875%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody182847%_
                     (gx#core-expand-block__1
                      _%stx182841%_
                      _%expand-special182843%_
                      '#f))
                    (_g183180_ (_%eval-body182844%_ _%rbody182847%_)))
               (begin
                 (let ((_g183181_
                        (if (##values? _g183180_)
                            (##values-length _g183180_)
                            1)))
                   (if (not (##fx= _g183181_ 2))
                       (error "Context expects 2 values" _g183181_)))
                 (let ((_%expanded-body182849%_ (##values-ref _g183180_ 0))
                       (_%value182850%_ (##values-ref _g183180_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body182849%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value182850%_ '())))
                    (gx#stx-source _%stx182841%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx182811%_)
        (let* ((_%e182812182819%_ _%stx182811%_)
               (_%E182814182823%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182812182819%_)))
               (_%E182813182837%_
                (lambda ()
                  (if (gx#stx-pair? _%e182812182819%_)
                      (let ((_%e182815182827%_
                             (gx#syntax-e _%e182812182819%_)))
                        (let ((_%hd182816182830%_ (##car _%e182815182827%_))
                              (_%tl182817182832%_ (##cdr _%e182815182827%_)))
                          (let ((_%body182835%_ _%tl182817182832%_))
                            (if (gx#stx-list? _%body182835%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body182835%_)
                                 (gx#stx-source _%stx182811%_))
                                (_%E182814182823%_)))))
                      (_%E182814182823%_)))))
          (_%E182813182837%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx182809%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx182809%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx182755%_)
        (let* ((_%e182756182769%_ _%stx182755%_)
               (_%E182758182773%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182756182769%_)))
               (_%E182757182805%_
                (lambda ()
                  (if (gx#stx-pair? _%e182756182769%_)
                      (let ((_%e182759182777%_
                             (gx#syntax-e _%e182756182769%_)))
                        (let ((_%hd182760182780%_ (##car _%e182759182777%_))
                              (_%tl182761182782%_ (##cdr _%e182759182777%_)))
                          (if (gx#stx-pair? _%tl182761182782%_)
                              (let ((_%e182762182785%_
                                     (gx#syntax-e _%tl182761182782%_)))
                                (let ((_%hd182763182788%_
                                       (##car _%e182762182785%_))
                                      (_%tl182764182790%_
                                       (##cdr _%e182762182785%_)))
                                  (let ((_%ann182793%_ _%hd182763182788%_))
                                    (if (gx#stx-pair? _%tl182764182790%_)
                                        (let ((_%e182765182795%_
                                               (gx#syntax-e
                                                _%tl182764182790%_)))
                                          (let ((_%hd182766182798%_
                                                 (##car _%e182765182795%_))
                                                (_%tl182767182800%_
                                                 (##cdr _%e182765182795%_)))
                                            (let ((_%expr182803%_
                                                   _%hd182766182798%_))
                                              (if (gx#stx-null?
                                                   _%tl182767182800%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann182793%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr182803%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx182755%_))
                                                  (_%E182758182773%_)))))
                                        (_%E182758182773%_)))))
                              (_%E182758182773%_))))
                      (_%E182758182773%_)))))
          (_%E182757182805%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx182420%_ _%body182421%_)
        (letrec ((_%expand-special182423%_
                  (lambda (_%hd182750%_ _%K182751%_ _%rest182752%_ _%r182753%_)
                    (_%K182751%_
                     '()
                     (cons (_%expand-internal182424%_
                            _%hd182750%_
                            _%rest182752%_)
                           _%r182753%_))))
                 (_%expand-internal182424%_
                  (lambda (_%hd182746%_ _%rest182747%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal182426%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd182746%_ _%rest182747%_))
                          (gx#stx-source _%stx182420%_))
                         _%expand-internal-special182425%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj183164
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj183164)
                       __obj183164))))
                 (_%expand-internal-special182425%_
                  (lambda (_%hd182584%_ _%K182585%_ _%rest182586%_ _%r182587%_)
                    (let* ((_%e182588182626%_ _%hd182584%_)
                           (_%E182621182630%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182588182626%_)))
                           (_%E182617182642%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182588182626%_)
                                  (let ((_%e182622182634%_
                                         (gx#syntax-e _%e182588182626%_)))
                                    (let ((_%hd182623182637%_
                                           (##car _%e182622182634%_))
                                          (_%tl182624182639%_
                                           (##cdr _%e182622182634%_)))
                                      (if (and (gx#identifier?
                                                _%hd182623182637%_)
                                               (gx#core-identifier=?
                                                _%hd182623182637%_
                                                '%#declare))
                                          (_%K182585%_
                                           _%rest182586%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd182584%_)
                                                 _%r182587%_))
                                          (_%E182621182630%_))))
                                  (_%E182621182630%_))))
                           (_%E182613182654%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182588182626%_)
                                  (let ((_%e182618182646%_
                                         (gx#syntax-e _%e182588182626%_)))
                                    (let ((_%hd182619182649%_
                                           (##car _%e182618182646%_))
                                          (_%tl182620182651%_
                                           (##cdr _%e182618182646%_)))
                                      (if (and (gx#identifier?
                                                _%hd182619182649%_)
                                               (gx#core-identifier=?
                                                _%hd182619182649%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd182584%_)
                                            (_%K182585%_
                                             _%rest182586%_
                                             _%r182587%_))
                                          (_%E182617182642%_))))
                                  (_%E182617182642%_))))
                           (_%E182603182666%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182588182626%_)
                                  (let ((_%e182614182658%_
                                         (gx#syntax-e _%e182588182626%_)))
                                    (let ((_%hd182615182661%_
                                           (##car _%e182614182658%_))
                                          (_%tl182616182663%_
                                           (##cdr _%e182614182658%_)))
                                      (if (and (gx#identifier?
                                                _%hd182615182661%_)
                                               (gx#core-identifier=?
                                                _%hd182615182661%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd182584%_)
                                            (_%K182585%_
                                             _%rest182586%_
                                             _%r182587%_))
                                          (_%E182613182654%_))))
                                  (_%E182613182654%_))))
                           (_%E182590182698%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182588182626%_)
                                  (let ((_%e182604182670%_
                                         (gx#syntax-e _%e182588182626%_)))
                                    (let ((_%hd182605182673%_
                                           (##car _%e182604182670%_))
                                          (_%tl182606182675%_
                                           (##cdr _%e182604182670%_)))
                                      (if (and (gx#identifier?
                                                _%hd182605182673%_)
                                               (gx#core-identifier=?
                                                _%hd182605182673%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182606182675%_)
                                              (let ((_%e182607182678%_
                                                     (gx#syntax-e
                                                      _%tl182606182675%_)))
                                                (let ((_%hd182608182681%_
                                                       (##car _%e182607182678%_))
                                                      (_%tl182609182683%_
                                                       (##cdr _%e182607182678%_)))
                                                  (let ((_%hd-bind182686%_
                                                         _%hd182608182681%_))
                                                    (if (gx#stx-pair?
                                                         _%tl182609182683%_)
                                                        (let ((_%e182610182688%_
                                                               (gx#syntax-e
                                                                _%tl182609182683%_)))
                                                          (let ((_%hd182611182691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e182610182688%_))
                        (_%tl182612182693%_ (##cdr _%e182610182688%_)))
                    (let ((_%expr182696%_ _%hd182611182691%_))
                      (if (gx#stx-null? _%tl182612182693%_)
                          (if (gx#core-bind-values? _%hd-bind182686%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind182686%_)
                                (_%K182585%_
                                 _%rest182586%_
                                 (cons _%hd182584%_ _%r182587%_)))
                              (_%E182603182666%_))
                          (_%E182603182666%_)))))
                (_%E182603182666%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182603182666%_))
                                          (_%E182603182666%_))))
                                  (_%E182603182666%_))))
                           (_%E182589182742%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182588182626%_)
                                  (let ((_%e182591182702%_
                                         (gx#syntax-e _%e182588182626%_)))
                                    (let ((_%hd182592182705%_
                                           (##car _%e182591182702%_))
                                          (_%tl182593182707%_
                                           (##cdr _%e182591182702%_)))
                                      (if (and (gx#identifier?
                                                _%hd182592182705%_)
                                               (gx#core-identifier=?
                                                _%hd182592182705%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182593182707%_)
                                              (let ((_%e182594182710%_
                                                     (gx#syntax-e
                                                      _%tl182593182707%_)))
                                                (let ((_%hd182595182713%_
                                                       (##car _%e182594182710%_))
                                                      (_%tl182596182715%_
                                                       (##cdr _%e182594182710%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd182595182713%_)
                                                      (let ((_%e182600182718%_
                                                             (gx#syntax-e
                                                              _%hd182595182713%_)))
                                                        (let ((_%hd182601182721%_
                                                               (##car _%e182600182718%_))
                                                              (_%tl182602182723%_
                                                               (##cdr _%e182600182718%_)))
                                                          (let ((_%id182726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd182601182721%_))
                    (if (gx#stx-null? _%tl182602182723%_)
                        (if (gx#stx-pair? _%tl182596182715%_)
                            (let ((_%e182597182728%_
                                   (gx#syntax-e _%tl182596182715%_)))
                              (let ((_%hd182598182731%_
                                     (##car _%e182597182728%_))
                                    (_%tl182599182733%_
                                     (##cdr _%e182597182728%_)))
                                (let* ((_%expr182736%_ _%hd182598182731%_)
                                       (_%props182738%_ _%tl182599182733%_))
                                  (if (gx#identifier? _%id182726%_)
                                      (let ((_%bind182740%_
                                             (gx#core-bind-runtime!__0
                                              _%id182726%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind182740%_
                                         _%props182738%_)
                                        (_%K182585%_
                                         _%rest182586%_
                                         (cons _%hd182584%_ _%r182587%_)))
                                      (_%E182590182698%_)))))
                            (_%E182590182698%_))
                        (_%E182590182698%_)))))
              (_%E182590182698%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182590182698%_))
                                          (_%E182590182698%_))))
                                  (_%E182590182698%_)))))
                      (_%E182589182742%_))))
                 (_%wrap-internal182426%_
                  (lambda (_%rbody182428%_)
                    (let _%lp182430%_ ((_%rest182432%_ _%rbody182428%_)
                                       (_%decls182433%_ '())
                                       (_%bind182434%_ '())
                                       (_%body182435%_ '()))
                      (let* ((_%e182436182443%_ _%rest182432%_)
                             (_%E182438182492%_
                              (lambda ()
                                (let* ((_%body182487%_
                                        (let* ((_%body182446182456%_
                                                _%body182435%_)
                                               (_%else182449182464%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body182435%_)
                                                   (gx#stx-source
                                                    _%stx182420%_)))))
                                          (let ((_%K182454182484%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx182420%_)))
                                                (_%K182451182470%_
                                                 (lambda (_%expr182468%_)
                                                   _%expr182468%_)))
                                            (let ((_%try-match182448182480%_
                                                   (lambda ()
                                                     (if (pair? _%body182446182456%_)
                                                         (let ((_%tl182453182475%_
                                                                (##cdr _%body182446182456%_))
                                                               (_%hd182452182473%_
                                                                (##car _%body182446182456%_)))
                                                           (if (null? _%tl182453182475%_)
                                                               (let ((_%expr182478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd182452182473%_))
                         (_%K182451182470%_ _%expr182478%_))
                       (_%else182449182464%_)))
                 (_%else182449182464%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body182446182456%_)
                                                  (_%K182454182484%_)
                                                  (_%try-match182448182480%_))))))
                                       (_%body182489%_
                                        (if (null? _%bind182434%_)
                                            _%body182487%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind182434%_
                                                         (cons _%body182487%_
                                                               '())))
                                             (gx#stx-source _%stx182420%_)))))
                                  (if (null? _%decls182433%_)
                                      _%body182489%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls182433%_
                                                   (cons _%body182489%_ '())))
                                       (gx#stx-source _%stx182420%_))))))
                             (_%E182437182580%_
                              (lambda ()
                                (if (gx#stx-pair? _%e182436182443%_)
                                    (let ((_%e182439182496%_
                                           (gx#syntax-e _%e182436182443%_)))
                                      (let ((_%hd182440182499%_
                                             (##car _%e182439182496%_))
                                            (_%tl182441182501%_
                                             (##cdr _%e182439182496%_)))
                                        (let* ((_%hd182504%_
                                                _%hd182440182499%_)
                                               (_%rest182506%_
                                                _%tl182441182501%_)
                                               (_%e182507182524%_ _%hd182504%_)
                                               (_%E182519182528%_
                                                (lambda ()
                                                  (if (null? _%bind182434%_)
                                                      (_%lp182430%_
                                                       _%rest182506%_
                                                       _%decls182433%_
                                                       _%bind182434%_
                                                       (cons _%hd182504%_
                                                             _%body182435%_))
                                                      (_%lp182430%_
                                                       _%rest182506%_
                                                       _%decls182433%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd182504%_ '()))
                     _%bind182434%_)
               _%body182435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182509182542%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e182507182524%_)
                                                      (let ((_%e182520182532%_
                                                             (gx#syntax-e
                                                              _%e182507182524%_)))
                                                        (let ((_%hd182521182535%_
                                                               (##car _%e182520182532%_))
                                                              (_%tl182522182537%_
                                                               (##cdr _%e182520182532%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd182521182535%_)
                           (gx#core-identifier=?
                            _%hd182521182535%_
                            '%#declare))
                      (let ((_%xdecls182540%_ _%tl182522182537%_))
                        (_%lp182430%_
                         _%rest182506%_
                         (gx#stx-foldr cons _%decls182433%_ _%xdecls182540%_)
                         _%bind182434%_
                         _%body182435%_))
                      (_%E182519182528%_))))
              (_%E182519182528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182508182576%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e182507182524%_)
                                                      (let ((_%e182510182546%_
                                                             (gx#syntax-e
                                                              _%e182507182524%_)))
                                                        (let ((_%hd182511182549%_
                                                               (##car _%e182510182546%_))
                                                              (_%tl182512182551%_
                                                               (##cdr _%e182510182546%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd182511182549%_)
                           (gx#core-identifier=?
                            _%hd182511182549%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl182512182551%_)
                          (let ((_%e182513182554%_
                                 (gx#syntax-e _%tl182512182551%_)))
                            (let ((_%hd182514182557%_
                                   (##car _%e182513182554%_))
                                  (_%tl182515182559%_
                                   (##cdr _%e182513182554%_)))
                              (let ((_%hd-bind182562%_ _%hd182514182557%_))
                                (if (gx#stx-pair? _%tl182515182559%_)
                                    (let ((_%e182516182564%_
                                           (gx#syntax-e _%tl182515182559%_)))
                                      (let ((_%hd182517182567%_
                                             (##car _%e182516182564%_))
                                            (_%tl182518182569%_
                                             (##cdr _%e182516182564%_)))
                                        (let* ((_%expr182572%_
                                                _%hd182517182567%_)
                                               (_%ignore-props182574%_
                                                _%tl182518182569%_))
                                          (_%lp182430%_
                                           _%rest182506%_
                                           _%decls182433%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind182562%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr182572%_)
                                                             '()))
                                                 _%bind182434%_)
                                           _%body182435%_))))
                                    (_%E182509182542%_)))))
                          (_%E182509182542%_))
                      (_%E182509182542%_))))
              (_%E182509182542%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E182508182576%_))))
                                    (_%E182438182492%_)))))
                        (_%E182437182580%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body182421%_)
            (gx#stx-source _%stx182420%_))
           _%expand-special182423%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx182358%_)
        (let* ((_%e182359182366%_ _%stx182358%_)
               (_%E182361182370%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182359182366%_)))
               (_%E182360182416%_
                (lambda ()
                  (if (gx#stx-pair? _%e182359182366%_)
                      (let ((_%e182362182374%_
                             (gx#syntax-e _%e182359182366%_)))
                        (let ((_%hd182363182377%_ (##car _%e182362182374%_))
                              (_%tl182364182379%_ (##cdr _%e182362182374%_)))
                          (let ((_%body182382%_ _%tl182364182379%_))
                            (if (gx#stx-list? _%body182382%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl182384%_)
                                     (let* ((_%e182385182392%_ _%decl182384%_)
                                            (_%E182387182396%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e182385182392%_)))
                                            (_%E182386182412%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e182385182392%_)
                                                   (let ((_%e182388182400%_
                                                          (gx#syntax-e
                                                           _%e182385182392%_)))
                                                     (let ((_%hd182389182403%_
                                                            (##car _%e182388182400%_))
                                                           (_%tl182390182405%_
                                                            (##cdr _%e182388182400%_)))
                                                       (let* ((_%head182408%_
                                                               _%hd182389182403%_)
                                                              (_%args182410%_
                                                               _%tl182390182405%_))
                                                         (if (gx#stx-list?
                                                              _%args182410%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl182384%_)
                                                             (_%E182387182396%_)))))
                                                   (_%E182387182396%_)))))
                                       (_%E182386182412%_)))
                                   _%body182382%_))
                                 (gx#stx-source _%stx182358%_))
                                (_%E182361182370%_)))))
                      (_%E182361182370%_)))))
          (_%E182360182416%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx182262%_)
        (let* ((_%e182263182270%_ _%stx182262%_)
               (_%E182265182274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182263182270%_)))
               (_%E182264182354%_
                (lambda ()
                  (if (gx#stx-pair? _%e182263182270%_)
                      (let ((_%e182266182278%_
                             (gx#syntax-e _%e182263182270%_)))
                        (let ((_%hd182267182281%_ (##car _%e182266182278%_))
                              (_%tl182268182283%_ (##cdr _%e182266182278%_)))
                          (let ((_%body182286%_ _%tl182268182283%_))
                            (let _%lp182288%_ ((_%rest182290%_ _%body182286%_)
                                               (_%r182291%_ '()))
                              (let* ((_%e182292182306%_ _%rest182290%_)
                                     (_%E182304182310%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx182262%_)))
                                     (_%E182294182314%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e182292182306%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r182291%_))
                                             (gx#stx-source _%stx182262%_))
                                            (_%E182304182310%_))))
                                     (_%E182293182350%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e182292182306%_)
                                            (let ((_%e182295182318%_
                                                   (gx#syntax-e
                                                    _%e182292182306%_)))
                                              (let ((_%hd182296182321%_
                                                     (##car _%e182295182318%_))
                                                    (_%tl182297182323%_
                                                     (##cdr _%e182295182318%_)))
                                                (if (gx#stx-pair?
                                                     _%hd182296182321%_)
                                                    (let ((_%e182298182326%_
                                                           (gx#syntax-e
                                                            _%hd182296182321%_)))
                                                      (let ((_%hd182299182329%_
                                                             (##car _%e182298182326%_))
                                                            (_%tl182300182331%_
                                                             (##cdr _%e182298182326%_)))
                                                        (let ((_%id182334%_
                                                               _%hd182299182329%_))
                                                          (if (gx#stx-pair?
                                                               _%tl182300182331%_)
                                                              (let ((_%e182301182336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl182300182331%_)))
                        (let ((_%hd182302182339%_ (##car _%e182301182336%_))
                              (_%tl182303182341%_ (##cdr _%e182301182336%_)))
                          (let ((_%eid182344%_ _%hd182302182339%_))
                            (if (gx#stx-null? _%tl182303182341%_)
                                (let ((_%rest182346%_ _%tl182297182323%_))
                                  (if (and (gx#identifier? _%id182334%_)
                                           (gx#identifier? _%eid182344%_))
                                      (let ((_%eid182348%_
                                             (gx#stx-e _%eid182344%_)))
                                        (gx#core-bind-extern!__0
                                         _%id182334%_
                                         _%eid182348%_)
                                        (_%lp182288%_
                                         _%rest182346%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id182334%_)
                                                     (cons _%eid182348%_ '()))
                                               _%r182291%_)))
                                      (_%E182294182314%_)))
                                (_%E182294182314%_)))))
                      (_%E182294182314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E182294182314%_))))
                                            (_%E182294182314%_)))))
                                (_%E182293182350%_))))))
                      (_%E182265182274%_)))))
          (_%E182264182354%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx182151%_)
        (let* ((_%e182152182178%_ _%stx182151%_)
               (_%E182167182182%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182152182178%_)))
               (_%E182154182214%_
                (lambda ()
                  (if (gx#stx-pair? _%e182152182178%_)
                      (let ((_%e182168182186%_
                             (gx#syntax-e _%e182152182178%_)))
                        (let ((_%hd182169182189%_ (##car _%e182168182186%_))
                              (_%tl182170182191%_ (##cdr _%e182168182186%_)))
                          (if (gx#stx-pair? _%tl182170182191%_)
                              (let ((_%e182171182194%_
                                     (gx#syntax-e _%tl182170182191%_)))
                                (let ((_%hd182172182197%_
                                       (##car _%e182171182194%_))
                                      (_%tl182173182199%_
                                       (##cdr _%e182171182194%_)))
                                  (let ((_%hd182202%_ _%hd182172182197%_))
                                    (if (gx#stx-pair? _%tl182173182199%_)
                                        (let ((_%e182174182204%_
                                               (gx#syntax-e
                                                _%tl182173182199%_)))
                                          (let ((_%hd182175182207%_
                                                 (##car _%e182174182204%_))
                                                (_%tl182176182209%_
                                                 (##cdr _%e182174182204%_)))
                                            (let ((_%expr182212%_
                                                   _%hd182175182207%_))
                                              (if (gx#stx-null?
                                                   _%tl182176182209%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd182202%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd182202%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd182202%_)
                             (cons (gx#core-expand-expression _%expr182212%_)
                                   '())))
                 (gx#stx-source _%stx182151%_)))
              (_%E182167182182%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182167182182%_)))))
                                        (_%E182167182182%_)))))
                              (_%E182167182182%_))))
                      (_%E182167182182%_))))
               (_%E182153182258%_
                (lambda ()
                  (if (gx#stx-pair? _%e182152182178%_)
                      (let ((_%e182155182218%_
                             (gx#syntax-e _%e182152182178%_)))
                        (let ((_%hd182156182221%_ (##car _%e182155182218%_))
                              (_%tl182157182223%_ (##cdr _%e182155182218%_)))
                          (if (gx#stx-pair? _%tl182157182223%_)
                              (let ((_%e182158182226%_
                                     (gx#syntax-e _%tl182157182223%_)))
                                (let ((_%hd182159182229%_
                                       (##car _%e182158182226%_))
                                      (_%tl182160182231%_
                                       (##cdr _%e182158182226%_)))
                                  (if (gx#stx-pair? _%hd182159182229%_)
                                      (let ((_%e182164182234%_
                                             (gx#syntax-e _%hd182159182229%_)))
                                        (let ((_%hd182165182237%_
                                               (##car _%e182164182234%_))
                                              (_%tl182166182239%_
                                               (##cdr _%e182164182234%_)))
                                          (let ((_%id182242%_
                                                 _%hd182165182237%_))
                                            (if (gx#stx-null?
                                                 _%tl182166182239%_)
                                                (if (gx#stx-pair?
                                                     _%tl182160182231%_)
                                                    (let ((_%e182161182244%_
                                                           (gx#syntax-e
                                                            _%tl182160182231%_)))
                                                      (let ((_%hd182162182247%_
                                                             (##car _%e182161182244%_))
                                                            (_%tl182163182249%_
                                                             (##cdr _%e182161182244%_)))
                                                        (let* ((_%expr182252%_
                                                                _%hd182162182247%_)
                                                               (_%props182254%_
                                                                _%tl182163182249%_))
                                                          (if (gx#identifier?
                                                               _%id182242%_)
                                                              (let ((_%bind182256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id182242%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind182256%_
                         _%props182254%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id182242%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr182252%_)
                                           '())))
                         (gx#stx-source _%stx182151%_)))
                      (_%E182154182214%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E182154182214%_))
                                                (_%E182154182214%_)))))
                                      (_%E182154182214%_))))
                              (_%E182154182214%_))))
                      (_%E182154182214%_)))))
          (_%E182153182258%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx182090%_)
        (let* ((_%e182091182104%_ _%stx182090%_)
               (_%E182093182108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182091182104%_)))
               (_%E182092182147%_
                (lambda ()
                  (if (gx#stx-pair? _%e182091182104%_)
                      (let ((_%e182094182112%_
                             (gx#syntax-e _%e182091182104%_)))
                        (let ((_%hd182095182115%_ (##car _%e182094182112%_))
                              (_%tl182096182117%_ (##cdr _%e182094182112%_)))
                          (if (gx#stx-pair? _%tl182096182117%_)
                              (let ((_%e182097182120%_
                                     (gx#syntax-e _%tl182096182117%_)))
                                (let ((_%hd182098182123%_
                                       (##car _%e182097182120%_))
                                      (_%tl182099182125%_
                                       (##cdr _%e182097182120%_)))
                                  (let ((_%id182128%_ _%hd182098182123%_))
                                    (if (gx#stx-pair? _%tl182099182125%_)
                                        (let ((_%e182100182130%_
                                               (gx#syntax-e
                                                _%tl182099182125%_)))
                                          (let ((_%hd182101182133%_
                                                 (##car _%e182100182130%_))
                                                (_%tl182102182135%_
                                                 (##cdr _%e182100182130%_)))
                                            (let* ((_%binding-id182138%_
                                                    _%hd182101182133%_)
                                                   (_%props182140%_
                                                    _%tl182102182135%_))
                                              (if (and (gx#identifier?
                                                        _%id182128%_)
                                                       (gx#identifier?
                                                        _%binding-id182138%_)
                                                       (gx#stx-list?
                                                        _%props182140%_))
                                                  (let* ((_%eid182142%_
                                                          (gx#stx-e
                                                           _%binding-id182138%_))
                                                         (_%bind182144%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id182128%_
                                                           _%eid182142%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind182144%_
                                                     _%props182140%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id182128%_)
                         (cons _%eid182142%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E182093182108%_)))))
                                        (_%E182093182108%_)))))
                              (_%E182093182108%_))))
                      (_%E182093182108%_)))))
          (_%E182092182147%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind182025%_ _%props182026%_)
        (letrec ((_%eval-prop182028%_
                  (lambda (_%prop182088%_)
                    (gx#eval-expression+1 _%prop182088%_))))
          (let _%loop182030%_ ((_%rest182032%_ _%props182026%_)
                               (_%props182033%_ '()))
            (let* ((_%e182034182045%_ _%rest182032%_)
                   (_%E182043182049%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e182034182045%_)))
                   (_%E182036182053%_
                    (lambda ()
                      (if (gx#stx-null? _%e182034182045%_)
                          (if (null? _%props182033%_)
                              '#!void
                              (##structure-set!
                               _%bind182025%_
                               (reverse! _%props182033%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E182043182049%_))))
                   (_%E182035182084%_
                    (lambda ()
                      (if (gx#stx-pair? _%e182034182045%_)
                          (let ((_%e182037182057%_
                                 (gx#syntax-e _%e182034182045%_)))
                            (let ((_%hd182038182060%_
                                   (##car _%e182037182057%_))
                                  (_%tl182039182062%_
                                   (##cdr _%e182037182057%_)))
                              (let ((_%key182065%_ _%hd182038182060%_))
                                (if (gx#stx-pair? _%tl182039182062%_)
                                    (let ((_%e182040182067%_
                                           (gx#syntax-e _%tl182039182062%_)))
                                      (let ((_%hd182041182070%_
                                             (##car _%e182040182067%_))
                                            (_%tl182042182072%_
                                             (##cdr _%e182040182067%_)))
                                        (let* ((_%prop182075%_
                                                _%hd182041182070%_)
                                               (_%rest182077%_
                                                _%tl182042182072%_))
                                          (if (gx#stx-keyword? _%key182065%_)
                                              (let* ((_%key182079%_
                                                      (gx#stx-e _%key182065%_))
                                                     (_%$e182081%_
                                                      _%key182079%_))
                                                (if (eq? 'macro: _%$e182081%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind182025%_
                                                       (if (gx#identifier?
                                                            _%prop182075%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop182075%_)
                                                           (gx#eval-expression+1
                                                            _%prop182075%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop182030%_
                                                       _%rest182077%_
                                                       _%props182033%_))
                                                    (if (eq? 'type:
                                                             _%$e182081%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind182025%_
                                                           (gx#eval-expression+1
                                                            _%prop182075%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop182030%_
                                                           _%rest182077%_
                                                           _%props182033%_))
                                                        (_%loop182030%_
                                                         _%rest182077%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop182075%_)
                                                               (cons _%key182079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props182033%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182036182053%_)))))
                                    (_%E182036182053%_)))))
                          (_%E182036182053%_)))))
              (_%E182035182084%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx181968%_)
        (let* ((_%e181969181982%_ _%stx181968%_)
               (_%E181971181986%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181969181982%_)))
               (_%E181970182021%_
                (lambda ()
                  (if (gx#stx-pair? _%e181969181982%_)
                      (let ((_%e181972181990%_
                             (gx#syntax-e _%e181969181982%_)))
                        (let ((_%hd181973181993%_ (##car _%e181972181990%_))
                              (_%tl181974181995%_ (##cdr _%e181972181990%_)))
                          (if (gx#stx-pair? _%tl181974181995%_)
                              (let ((_%e181975181998%_
                                     (gx#syntax-e _%tl181974181995%_)))
                                (let ((_%hd181976182001%_
                                       (##car _%e181975181998%_))
                                      (_%tl181977182003%_
                                       (##cdr _%e181975181998%_)))
                                  (let ((_%id182006%_ _%hd181976182001%_))
                                    (if (gx#stx-pair? _%tl181977182003%_)
                                        (let ((_%e181978182008%_
                                               (gx#syntax-e
                                                _%tl181977182003%_)))
                                          (let ((_%hd181979182011%_
                                                 (##car _%e181978182008%_))
                                                (_%tl181980182013%_
                                                 (##cdr _%e181978182008%_)))
                                            (let ((_%expr182016%_
                                                   _%hd181979182011%_))
                                              (if (gx#stx-null?
                                                   _%tl181980182013%_)
                                                  (if (gx#identifier?
                                                       _%id182006%_)
                                                      (let ((_g183182_
                                                             (gx#core-expand-expression+1
                                                              _%expr182016%_)))
                                                        (begin
                                                          (let ((_g183183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g183182_)
                             (##values-length _g183182_)
                             1)))
                    (if (not (##fx= _g183183_ 2))
                        (error "Context expects 2 values" _g183183_)))
                  (let ((_%e-stx182018%_ (##values-ref _g183182_ 0))
                        (_%e182019%_ (##values-ref _g183182_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id182006%_ _%e182019%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id182006%_)
                                   (cons _%e-stx182018%_ '())))
                       (gx#stx-source _%stx181968%_))))))
              (_%E181971181986%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181971181986%_)))))
                                        (_%E181971181986%_)))))
                              (_%E181971181986%_))))
                      (_%E181971181986%_)))))
          (_%E181970182021%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx181912%_)
        (let* ((_%e181913181926%_ _%stx181912%_)
               (_%E181915181930%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181913181926%_)))
               (_%E181914181964%_
                (lambda ()
                  (if (gx#stx-pair? _%e181913181926%_)
                      (let ((_%e181916181934%_
                             (gx#syntax-e _%e181913181926%_)))
                        (let ((_%hd181917181937%_ (##car _%e181916181934%_))
                              (_%tl181918181939%_ (##cdr _%e181916181934%_)))
                          (if (gx#stx-pair? _%tl181918181939%_)
                              (let ((_%e181919181942%_
                                     (gx#syntax-e _%tl181918181939%_)))
                                (let ((_%hd181920181945%_
                                       (##car _%e181919181942%_))
                                      (_%tl181921181947%_
                                       (##cdr _%e181919181942%_)))
                                  (let ((_%id181950%_ _%hd181920181945%_))
                                    (if (gx#stx-pair? _%tl181921181947%_)
                                        (let ((_%e181922181952%_
                                               (gx#syntax-e
                                                _%tl181921181947%_)))
                                          (let ((_%hd181923181955%_
                                                 (##car _%e181922181952%_))
                                                (_%tl181924181957%_
                                                 (##cdr _%e181922181952%_)))
                                            (let ((_%alias-id181960%_
                                                   _%hd181923181955%_))
                                              (if (gx#stx-null?
                                                   _%tl181924181957%_)
                                                  (if (and (gx#identifier?
                                                            _%id181950%_)
                                                           (gx#identifier?
                                                            _%alias-id181960%_))
                                                      (let ((_%alias-id181962%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id181960%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id181950%_
                                                         _%alias-id181962%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id181950%_)
                             (cons _%alias-id181962%_ '())))))
              (_%E181915181930%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181915181930%_)))))
                                        (_%E181915181930%_)))))
                              (_%E181915181930%_))))
                      (_%E181915181930%_)))))
          (_%E181914181964%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx181855%_ _%wrap?181856%_)
        (let* ((_%e181857181867%_ _%stx181855%_)
               (_%E181859181871%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181857181867%_)))
               (_%E181858181898%_
                (lambda ()
                  (if (gx#stx-pair? _%e181857181867%_)
                      (let ((_%e181860181875%_
                             (gx#syntax-e _%e181857181867%_)))
                        (let ((_%hd181861181878%_ (##car _%e181860181875%_))
                              (_%tl181862181880%_ (##cdr _%e181860181875%_)))
                          (if (gx#stx-pair? _%tl181862181880%_)
                              (let ((_%e181863181883%_
                                     (gx#syntax-e _%tl181862181880%_)))
                                (let ((_%hd181864181886%_
                                       (##car _%e181863181883%_))
                                      (_%tl181865181888%_
                                       (##cdr _%e181863181883%_)))
                                  (let* ((_%hd181891%_ _%hd181864181886%_)
                                         (_%body181893%_ _%tl181865181888%_))
                                    (if (gx#core-bind-values? _%hd181891%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd181891%_)
                                           (let ((_%body181896%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd181891%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx181855%_
                                                               _%body181893%_)
                                                              '()))))
                                             (if _%wrap?181856%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body181896%_)
                                                  (gx#stx-source
                                                   _%stx181855%_))
                                                 _%body181896%_)))
                                         gx#current-expander-context
                                         (let ((__obj183165
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj183165)
                                           __obj183165))
                                        (_%E181859181871%_)))))
                              (_%E181859181871%_))))
                      (_%E181859181871%_)))))
          (_%E181858181898%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx181905%_)
        (let ((_%wrap?181907%_ '#t))
          (gx#core-expand-lambda%__% _%stx181905%_ _%wrap?181907%_))))
    (define gx#core-expand-lambda%
      (lambda _g183184_
        (let ((_g183185_ (##length _g183184_)))
          (cond ((##fx= _g183185_ 1)
                 (apply gx#core-expand-lambda%__0 _g183184_))
                ((##fx= _g183185_ 2)
                 (apply gx#core-expand-lambda%__% _g183184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g183184_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx181819%_)
        (let* ((_%e181820181827%_ _%stx181819%_)
               (_%E181822181831%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181820181827%_)))
               (_%E181821181850%_
                (lambda ()
                  (if (gx#stx-pair? _%e181820181827%_)
                      (let ((_%e181823181835%_
                             (gx#syntax-e _%e181820181827%_)))
                        (let ((_%hd181824181838%_ (##car _%e181823181835%_))
                              (_%tl181825181840%_ (##cdr _%e181823181835%_)))
                          (let ((_%clauses181843%_ _%tl181825181840%_))
                            (if (gx#stx-list? _%clauses181843%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause181845%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause181845%_)
                                       (let ((_%$e181847%_
                                              (gx#stx-source
                                               _%clause181845%_)))
                                         (if _%$e181847%_
                                             _%$e181847%_
                                             (gx#stx-source _%stx181819%_))))
                                      '#f))
                                   _%clauses181843%_))
                                 (gx#stx-source _%stx181819%_))
                                (_%E181822181831%_)))))
                      (_%E181822181831%_)))))
          (_%E181821181850%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx181773%_)
        (let* ((_%e181774181784%_ _%stx181773%_)
               (_%E181776181788%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181774181784%_)))
               (_%E181775181815%_
                (lambda ()
                  (if (gx#stx-pair? _%e181774181784%_)
                      (let ((_%e181777181792%_
                             (gx#syntax-e _%e181774181784%_)))
                        (let ((_%hd181778181795%_ (##car _%e181777181792%_))
                              (_%tl181779181797%_ (##cdr _%e181777181792%_)))
                          (if (gx#stx-pair? _%tl181779181797%_)
                              (let ((_%e181780181800%_
                                     (gx#syntax-e _%tl181779181797%_)))
                                (let ((_%hd181781181803%_
                                       (##car _%e181780181800%_))
                                      (_%tl181782181805%_
                                       (##cdr _%e181780181800%_)))
                                  (let* ((_%hd181808%_ _%hd181781181803%_)
                                         (_%body181810%_ _%tl181782181805%_))
                                    (if (gx#core-expand-let-bind? _%hd181808%_)
                                        (let ((_%expressions181812%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd181808%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd181808%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd181808%_
                                                           _%expressions181812%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx181773%_
                         _%body181810%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx181773%_)))
                                           gx#current-expander-context
                                           (let ((__obj183166
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj183166)
                                             __obj183166)))
                                        (_%E181776181788%_)))))
                              (_%E181776181788%_))))
                      (_%E181776181788%_)))))
          (_%E181775181815%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx181718%_ _%form181719%_)
        (let* ((_%e181720181730%_ _%stx181718%_)
               (_%E181722181734%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181720181730%_)))
               (_%E181721181759%_
                (lambda ()
                  (if (gx#stx-pair? _%e181720181730%_)
                      (let ((_%e181723181738%_
                             (gx#syntax-e _%e181720181730%_)))
                        (let ((_%hd181724181741%_ (##car _%e181723181738%_))
                              (_%tl181725181743%_ (##cdr _%e181723181738%_)))
                          (if (gx#stx-pair? _%tl181725181743%_)
                              (let ((_%e181726181746%_
                                     (gx#syntax-e _%tl181725181743%_)))
                                (let ((_%hd181727181749%_
                                       (##car _%e181726181746%_))
                                      (_%tl181728181751%_
                                       (##cdr _%e181726181746%_)))
                                  (let* ((_%hd181754%_ _%hd181727181749%_)
                                         (_%body181756%_ _%tl181728181751%_))
                                    (if (gx#core-expand-let-bind? _%hd181754%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd181754%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form181719%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd181754%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd181754%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx181718%_
                                                               _%body181756%_)
                                                              '())))
                                            (gx#stx-source _%stx181718%_)))
                                         gx#current-expander-context
                                         (let ((__obj183167
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj183167)
                                           __obj183167))
                                        (_%E181722181734%_)))))
                              (_%E181722181734%_))))
                      (_%E181722181734%_)))))
          (_%E181721181759%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx181766%_)
        (let ((_%form181768%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx181766%_ _%form181768%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g183186_
        (let ((_g183187_ (##length _g183186_)))
          (cond ((##fx= _g183187_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g183186_))
                ((##fx= _g183187_ 2)
                 (apply gx#core-expand-letrec-values%__% _g183186_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g183186_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx181715%_)
        (gx#core-expand-letrec-values%__% _%stx181715%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx181672%_)
        (if (gx#stx-list? _%stx181672%_)
            (gx#stx-andmap
             (lambda (_%bind181674%_)
               (let* ((_%e181675181685%_ _%bind181674%_)
                      (_%E181677181689%_ (lambda () '#f))
                      (_%E181676181711%_
                       (lambda ()
                         (if (gx#stx-pair? _%e181675181685%_)
                             (let ((_%e181678181693%_
                                    (gx#syntax-e _%e181675181685%_)))
                               (let ((_%hd181679181696%_
                                      (##car _%e181678181693%_))
                                     (_%tl181680181698%_
                                      (##cdr _%e181678181693%_)))
                                 (let ((_%hd181701%_ _%hd181679181696%_))
                                   (if (gx#stx-pair? _%tl181680181698%_)
                                       (let ((_%e181681181703%_
                                              (gx#syntax-e
                                               _%tl181680181698%_)))
                                         (let ((_%hd181682181706%_
                                                (##car _%e181681181703%_))
                                               (_%tl181683181708%_
                                                (##cdr _%e181681181703%_)))
                                           (if (gx#stx-null?
                                                _%tl181683181708%_)
                                               (gx#core-bind-values?
                                                _%hd181701%_)
                                               (_%E181677181689%_))))
                                       (_%E181677181689%_)))))
                             (_%E181677181689%_)))))
                 (_%E181676181711%_)))
             _%stx181672%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind181631%_)
        (let* ((_%e181632181642%_ _%bind181631%_)
               (_%E181634181646%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181632181642%_)))
               (_%E181633181668%_
                (lambda ()
                  (if (gx#stx-pair? _%e181632181642%_)
                      (let ((_%e181635181650%_
                             (gx#syntax-e _%e181632181642%_)))
                        (let ((_%hd181636181653%_ (##car _%e181635181650%_))
                              (_%tl181637181655%_ (##cdr _%e181635181650%_)))
                          (if (gx#stx-pair? _%tl181637181655%_)
                              (let ((_%e181638181658%_
                                     (gx#syntax-e _%tl181637181655%_)))
                                (let ((_%hd181639181661%_
                                       (##car _%e181638181658%_))
                                      (_%tl181640181663%_
                                       (##cdr _%e181638181658%_)))
                                  (let ((_%expr181666%_ _%hd181639181661%_))
                                    (if (gx#stx-null? _%tl181640181663%_)
                                        (gx#core-expand-expression
                                         _%expr181666%_)
                                        (_%E181634181646%_)))))
                              (_%E181634181646%_))))
                      (_%E181634181646%_)))))
          (_%E181633181668%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind181590%_)
        (let* ((_%e181591181601%_ _%bind181590%_)
               (_%E181593181605%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181591181601%_)))
               (_%E181592181627%_
                (lambda ()
                  (if (gx#stx-pair? _%e181591181601%_)
                      (let ((_%e181594181609%_
                             (gx#syntax-e _%e181591181601%_)))
                        (let ((_%hd181595181612%_ (##car _%e181594181609%_))
                              (_%tl181596181614%_ (##cdr _%e181594181609%_)))
                          (let ((_%hd181617%_ _%hd181595181612%_))
                            (if (gx#stx-pair? _%tl181596181614%_)
                                (let ((_%e181597181619%_
                                       (gx#syntax-e _%tl181596181614%_)))
                                  (let ((_%hd181598181622%_
                                         (##car _%e181597181619%_))
                                        (_%tl181599181624%_
                                         (##cdr _%e181597181619%_)))
                                    (if (gx#stx-null? _%tl181599181624%_)
                                        (gx#core-bind-values!__0 _%hd181617%_)
                                        (_%E181593181605%_))))
                                (_%E181593181605%_)))))
                      (_%E181593181605%_)))))
          (_%E181592181627%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind181548%_ _%expr181549%_)
        (let* ((_%e181550181560%_ _%bind181548%_)
               (_%E181552181564%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181550181560%_)))
               (_%E181551181586%_
                (lambda ()
                  (if (gx#stx-pair? _%e181550181560%_)
                      (let ((_%e181553181568%_
                             (gx#syntax-e _%e181550181560%_)))
                        (let ((_%hd181554181571%_ (##car _%e181553181568%_))
                              (_%tl181555181573%_ (##cdr _%e181553181568%_)))
                          (let ((_%hd181576%_ _%hd181554181571%_))
                            (if (gx#stx-pair? _%tl181555181573%_)
                                (let ((_%e181556181578%_
                                       (gx#syntax-e _%tl181555181573%_)))
                                  (let ((_%hd181557181581%_
                                         (##car _%e181556181578%_))
                                        (_%tl181558181583%_
                                         (##cdr _%e181556181578%_)))
                                    (if (gx#stx-null? _%tl181558181583%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd181576%_)
                                              (cons _%expr181549%_ '()))
                                        (_%E181552181564%_))))
                                (_%E181552181564%_)))))
                      (_%E181552181564%_)))))
          (_%E181551181586%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx181502%_)
        (let* ((_%e181503181513%_ _%stx181502%_)
               (_%E181505181517%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181503181513%_)))
               (_%E181504181544%_
                (lambda ()
                  (if (gx#stx-pair? _%e181503181513%_)
                      (let ((_%e181506181521%_
                             (gx#syntax-e _%e181503181513%_)))
                        (let ((_%hd181507181524%_ (##car _%e181506181521%_))
                              (_%tl181508181526%_ (##cdr _%e181506181521%_)))
                          (if (gx#stx-pair? _%tl181508181526%_)
                              (let ((_%e181509181529%_
                                     (gx#syntax-e _%tl181508181526%_)))
                                (let ((_%hd181510181532%_
                                       (##car _%e181509181529%_))
                                      (_%tl181511181534%_
                                       (##cdr _%e181509181529%_)))
                                  (let* ((_%hd181537%_ _%hd181510181532%_)
                                         (_%body181539%_ _%tl181511181534%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd181537%_)
                                        (let ((_%expanders181541%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd181537%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd181537%_
                                              _%expanders181541%_)
                                             (gx#core-expand-local-block
                                              _%stx181502%_
                                              _%body181539%_))
                                           gx#current-expander-context
                                           (let ((__obj183168
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj183168)
                                             __obj183168)))
                                        (_%E181505181517%_)))))
                              (_%E181505181517%_))))
                      (_%E181505181517%_)))))
          (_%E181504181544%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx181451%_)
        (let* ((_%e181452181462%_ _%stx181451%_)
               (_%E181454181466%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181452181462%_)))
               (_%E181453181498%_
                (lambda ()
                  (if (gx#stx-pair? _%e181452181462%_)
                      (let ((_%e181455181470%_
                             (gx#syntax-e _%e181452181462%_)))
                        (let ((_%hd181456181473%_ (##car _%e181455181470%_))
                              (_%tl181457181475%_ (##cdr _%e181455181470%_)))
                          (if (gx#stx-pair? _%tl181457181475%_)
                              (let ((_%e181458181478%_
                                     (gx#syntax-e _%tl181457181475%_)))
                                (let ((_%hd181459181481%_
                                       (##car _%e181458181478%_))
                                      (_%tl181460181483%_
                                       (##cdr _%e181458181478%_)))
                                  (let* ((_%hd181486%_ _%hd181459181481%_)
                                         (_%body181488%_ _%tl181460181483%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd181486%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd181486%_
                                            (make-list
                                             (gx#stx-length _%hd181486%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g181490181493%_
                                                     _%g181491181495%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g181490181493%_
                                               _%g181491181495%_
                                               '#t))
                                            _%hd181486%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd181486%_))
                                           (gx#core-expand-local-block
                                            _%stx181451%_
                                            _%body181488%_))
                                         gx#current-expander-context
                                         (let ((__obj183169
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj183169)
                                           __obj183169))
                                        (_%E181454181466%_)))))
                              (_%E181454181466%_))))
                      (_%E181454181466%_)))))
          (_%E181453181498%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx181408%_)
        (if (gx#stx-list? _%stx181408%_)
            (gx#stx-andmap
             (lambda (_%bind181410%_)
               (let* ((_%e181411181421%_ _%bind181410%_)
                      (_%E181413181425%_ (lambda () '#f))
                      (_%E181412181447%_
                       (lambda ()
                         (if (gx#stx-pair? _%e181411181421%_)
                             (let ((_%e181414181429%_
                                    (gx#syntax-e _%e181411181421%_)))
                               (let ((_%hd181415181432%_
                                      (##car _%e181414181429%_))
                                     (_%tl181416181434%_
                                      (##cdr _%e181414181429%_)))
                                 (let ((_%hd181437%_ _%hd181415181432%_))
                                   (if (gx#stx-pair? _%tl181416181434%_)
                                       (let ((_%e181417181439%_
                                              (gx#syntax-e
                                               _%tl181416181434%_)))
                                         (let ((_%hd181418181442%_
                                                (##car _%e181417181439%_))
                                               (_%tl181419181444%_
                                                (##cdr _%e181417181439%_)))
                                           (if (gx#stx-null?
                                                _%tl181419181444%_)
                                               (gx#identifier? _%hd181437%_)
                                               (_%E181413181425%_))))
                                       (_%E181413181425%_)))))
                             (_%E181413181425%_)))))
                 (_%E181412181447%_)))
             _%stx181408%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind181364%_)
        (let* ((_%e181365181375%_ _%bind181364%_)
               (_%E181367181379%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181365181375%_)))
               (_%E181366181404%_
                (lambda ()
                  (if (gx#stx-pair? _%e181365181375%_)
                      (let ((_%e181368181383%_
                             (gx#syntax-e _%e181365181375%_)))
                        (let ((_%hd181369181386%_ (##car _%e181368181383%_))
                              (_%tl181370181388%_ (##cdr _%e181368181383%_)))
                          (if (gx#stx-pair? _%tl181370181388%_)
                              (let ((_%e181371181391%_
                                     (gx#syntax-e _%tl181370181388%_)))
                                (let ((_%hd181372181394%_
                                       (##car _%e181371181391%_))
                                      (_%tl181373181396%_
                                       (##cdr _%e181371181391%_)))
                                  (let ((_%expr181399%_ _%hd181372181394%_))
                                    (if (gx#stx-null? _%tl181373181396%_)
                                        (let ((_g183188_
                                               (gx#core-expand-expression+1
                                                _%expr181399%_)))
                                          (begin
                                            (let ((_g183189_
                                                   (if (##values? _g183188_)
                                                       (##values-length
                                                        _g183188_)
                                                       1)))
                                              (if (not (##fx= _g183189_ 2))
                                                  (error "Context expects 2 values"
                                                         _g183189_)))
                                            (let ((_%_181401%_
                                                   (##values-ref _g183188_ 0))
                                                  (_%e181402%_
                                                   (##values-ref _g183188_ 1)))
                                              _%e181402%_)))
                                        (_%E181367181379%_)))))
                              (_%E181367181379%_))))
                      (_%E181367181379%_)))))
          (_%E181366181404%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind181309%_ _%e181310%_ _%rebind?181311%_)
        (let* ((_%e181312181322%_ _%bind181309%_)
               (_%E181314181326%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181312181322%_)))
               (_%E181313181348%_
                (lambda ()
                  (if (gx#stx-pair? _%e181312181322%_)
                      (let ((_%e181315181330%_
                             (gx#syntax-e _%e181312181322%_)))
                        (let ((_%hd181316181333%_ (##car _%e181315181330%_))
                              (_%tl181317181335%_ (##cdr _%e181315181330%_)))
                          (let ((_%id181338%_ _%hd181316181333%_))
                            (if (gx#stx-pair? _%tl181317181335%_)
                                (let ((_%e181318181340%_
                                       (gx#syntax-e _%tl181317181335%_)))
                                  (let ((_%hd181319181343%_
                                         (##car _%e181318181340%_))
                                        (_%tl181320181345%_
                                         (##cdr _%e181318181340%_)))
                                    (if (gx#stx-null? _%tl181320181345%_)
                                        (gx#core-bind-syntax!__1
                                         _%id181338%_
                                         _%e181310%_
                                         _%rebind?181311%_)
                                        (_%E181314181326%_))))
                                (_%E181314181326%_)))))
                      (_%E181314181326%_)))))
          (_%E181313181348%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind181355%_ _%e181356%_)
        (let ((_%rebind?181358%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind181355%_
           _%e181356%_
           _%rebind?181358%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g183190_
        (let ((_g183191_ (##length _g183190_)))
          (cond ((##fx= _g183191_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g183190_))
                ((##fx= _g183191_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g183190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g183190_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx181267%_)
        (let* ((_%e181268181278%_ _%stx181267%_)
               (_%E181270181282%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181268181278%_)))
               (_%E181269181304%_
                (lambda ()
                  (if (gx#stx-pair? _%e181268181278%_)
                      (let ((_%e181271181286%_
                             (gx#syntax-e _%e181268181278%_)))
                        (let ((_%hd181272181289%_ (##car _%e181271181286%_))
                              (_%tl181273181291%_ (##cdr _%e181271181286%_)))
                          (if (gx#stx-pair? _%tl181273181291%_)
                              (let ((_%e181274181294%_
                                     (gx#syntax-e _%tl181273181291%_)))
                                (let ((_%hd181275181297%_
                                       (##car _%e181274181294%_))
                                      (_%tl181276181299%_
                                       (##cdr _%e181274181294%_)))
                                  (let ((_%expr181302%_ _%hd181275181297%_))
                                    (if (gx#stx-null? _%tl181276181299%_)
                                        (gx#core-expand-expression
                                         _%expr181302%_)
                                        (_%E181270181282%_)))))
                              (_%E181270181282%_))))
                      (_%E181270181282%_)))))
          (_%E181269181304%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx181226%_)
        (let* ((_%e181227181237%_ _%stx181226%_)
               (_%E181229181241%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181227181237%_)))
               (_%E181228181263%_
                (lambda ()
                  (if (gx#stx-pair? _%e181227181237%_)
                      (let ((_%e181230181245%_
                             (gx#syntax-e _%e181227181237%_)))
                        (let ((_%hd181231181248%_ (##car _%e181230181245%_))
                              (_%tl181232181250%_ (##cdr _%e181230181245%_)))
                          (if (gx#stx-pair? _%tl181232181250%_)
                              (let ((_%e181233181253%_
                                     (gx#syntax-e _%tl181232181250%_)))
                                (let ((_%hd181234181256%_
                                       (##car _%e181233181253%_))
                                      (_%tl181235181258%_
                                       (##cdr _%e181233181253%_)))
                                  (let ((_%e181261%_ _%hd181234181256%_))
                                    (if (gx#stx-null? _%tl181235181258%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e181261%_)
                                                     '()))
                                         (gx#stx-source _%stx181226%_))
                                        (_%E181229181241%_)))))
                              (_%E181229181241%_))))
                      (_%E181229181241%_)))))
          (_%E181228181263%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx181185%_)
        (let* ((_%e181186181196%_ _%stx181185%_)
               (_%E181188181200%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181186181196%_)))
               (_%E181187181222%_
                (lambda ()
                  (if (gx#stx-pair? _%e181186181196%_)
                      (let ((_%e181189181204%_
                             (gx#syntax-e _%e181186181196%_)))
                        (let ((_%hd181190181207%_ (##car _%e181189181204%_))
                              (_%tl181191181209%_ (##cdr _%e181189181204%_)))
                          (if (gx#stx-pair? _%tl181191181209%_)
                              (let ((_%e181192181212%_
                                     (gx#syntax-e _%tl181191181209%_)))
                                (let ((_%hd181193181215%_
                                       (##car _%e181192181212%_))
                                      (_%tl181194181217%_
                                       (##cdr _%e181192181212%_)))
                                  (let ((_%e181220%_ _%hd181193181215%_))
                                    (if (gx#stx-null? _%tl181194181217%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e181220%_)
                                                     '()))
                                         (gx#stx-source _%stx181185%_))
                                        (_%E181188181200%_)))))
                              (_%E181188181200%_))))
                      (_%E181188181200%_)))))
          (_%E181187181222%_))))
    (define gx#core-expand-call%
      (lambda (_%stx181079%_)
        (letrec ((_%expand-runtime-call181081%_
                  (lambda (_%rator-expr181182%_ _%args181183%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr181182%_
                      (gx#stx-map1 gx#core-expand-expression _%args181183%_))
                     (gx#stx-source _%stx181079%_)))))
          (let* ((_%e181082181092%_ _%stx181079%_)
                 (_%E181084181096%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e181082181092%_)))
                 (_%E181083181178%_
                  (lambda ()
                    (if (gx#stx-pair? _%e181082181092%_)
                        (let ((_%e181085181100%_
                               (gx#syntax-e _%e181082181092%_)))
                          (let ((_%hd181086181103%_ (##car _%e181085181100%_))
                                (_%tl181087181105%_ (##cdr _%e181085181100%_)))
                            (if (gx#stx-pair? _%tl181087181105%_)
                                (let ((_%e181088181108%_
                                       (gx#syntax-e _%tl181087181105%_)))
                                  (let ((_%hd181089181111%_
                                         (##car _%e181088181108%_))
                                        (_%tl181090181113%_
                                         (##cdr _%e181088181108%_)))
                                    (let* ((_%rator181116%_ _%hd181089181111%_)
                                           (_%args181118%_ _%tl181090181113%_))
                                      (if (gx#stx-list? _%args181118%_)
                                          (let* ((_%rator-expr181120%_
                                                  (gx#core-expand-expression
                                                   _%rator181116%_))
                                                 (_%e181121181131%_
                                                  _%rator-expr181120%_)
                                                 (_%E181123181135%_
                                                  (lambda ()
                                                    (_%expand-runtime-call181081%_
                                                     _%rator-expr181120%_
                                                     _%args181118%_)))
                                                 (_%E181122181174%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e181121181131%_)
                                                        (let ((_%e181124181139%_
                                                               (gx#syntax-e
                                                                _%e181121181131%_)))
                                                          (let ((_%hd181125181142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e181124181139%_))
                        (_%tl181126181144%_ (##cdr _%e181124181139%_)))
                    (if (and (gx#identifier? _%hd181125181142%_)
                             (gx#core-identifier=? _%hd181125181142%_ '%#ref))
                        (if (gx#stx-pair? _%tl181126181144%_)
                            (let ((_%e181127181147%_
                                   (gx#syntax-e _%tl181126181144%_)))
                              (let ((_%hd181128181150%_
                                     (##car _%e181127181147%_))
                                    (_%tl181129181152%_
                                     (##cdr _%e181127181147%_)))
                                (let ((_%id181155%_ _%hd181128181150%_))
                                  (if (gx#stx-null? _%tl181129181152%_)
                                      (let ((_%$e181157%_
                                             (gx#resolve-identifier__0
                                              _%id181155%_)))
                                        (if _%$e181157%_
                                            ((lambda (_%bind181160%_)
                                               (let _%again181162%_ ((_%bind181164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind181160%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e181166%_
                                                        (if (##structure-instance-of?
                                                             _%bind181164%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind181164%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e181166%_
                                                       ((lambda (_%macro181169%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro181169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args181118%_)
                    (gx#stx-source _%stx181079%_))))
                _%$e181166%_)
               (if (##structure-direct-instance-of?
                    _%bind181164%_
                    'gx#import-binding::t)
                   (_%again181162%_
                    (##unchecked-structure-ref _%bind181164%_ '5 '#f '#f))
                   (_%expand-runtime-call181081%_
                    _%rator-expr181120%_
                    _%args181118%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e181157%_)
                                            (_%expand-runtime-call181081%_
                                             _%rator-expr181120%_
                                             _%args181118%_)))
                                      (_%E181123181135%_)))))
                            (_%E181123181135%_))
                        (_%E181123181135%_))))
                (_%E181123181135%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E181122181174%_))
                                          (_%E181084181096%_)))))
                                (_%E181084181096%_))))
                        (_%E181084181096%_)))))
            (_%E181083181178%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx181012%_)
        (let* ((_%e181013181029%_ _%stx181012%_)
               (_%E181015181033%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181013181029%_)))
               (_%E181014181075%_
                (lambda ()
                  (if (gx#stx-pair? _%e181013181029%_)
                      (let ((_%e181016181037%_
                             (gx#syntax-e _%e181013181029%_)))
                        (let ((_%hd181017181040%_ (##car _%e181016181037%_))
                              (_%tl181018181042%_ (##cdr _%e181016181037%_)))
                          (if (gx#stx-pair? _%tl181018181042%_)
                              (let ((_%e181019181045%_
                                     (gx#syntax-e _%tl181018181042%_)))
                                (let ((_%hd181020181048%_
                                       (##car _%e181019181045%_))
                                      (_%tl181021181050%_
                                       (##cdr _%e181019181045%_)))
                                  (let ((_%test181053%_ _%hd181020181048%_))
                                    (if (gx#stx-pair? _%tl181021181050%_)
                                        (let ((_%e181022181055%_
                                               (gx#syntax-e
                                                _%tl181021181050%_)))
                                          (let ((_%hd181023181058%_
                                                 (##car _%e181022181055%_))
                                                (_%tl181024181060%_
                                                 (##cdr _%e181022181055%_)))
                                            (let ((_%K181063%_
                                                   _%hd181023181058%_))
                                              (if (gx#stx-pair?
                                                   _%tl181024181060%_)
                                                  (let ((_%e181025181065%_
                                                         (gx#syntax-e
                                                          _%tl181024181060%_)))
                                                    (let ((_%hd181026181068%_
                                                           (##car _%e181025181065%_))
                                                          (_%tl181027181070%_
                                                           (##cdr _%e181025181065%_)))
                                                      (let ((_%E181073%_
                                                             _%hd181026181068%_))
                                                        (if (gx#stx-null?
                                                             _%tl181027181070%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test181053%_)
                                 (cons (gx#core-expand-expression _%K181063%_)
                                       (cons (gx#core-expand-expression
                                              _%E181073%_)
                                             '()))))
                     (gx#stx-source _%stx181012%_))
                    (_%E181015181033%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181015181033%_)))))
                                        (_%E181015181033%_)))))
                              (_%E181015181033%_))))
                      (_%E181015181033%_)))))
          (_%E181014181075%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx180971%_)
        (let* ((_%e180972180982%_ _%stx180971%_)
               (_%E180974180986%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180972180982%_)))
               (_%E180973181008%_
                (lambda ()
                  (if (gx#stx-pair? _%e180972180982%_)
                      (let ((_%e180975180990%_
                             (gx#syntax-e _%e180972180982%_)))
                        (let ((_%hd180976180993%_ (##car _%e180975180990%_))
                              (_%tl180977180995%_ (##cdr _%e180975180990%_)))
                          (if (gx#stx-pair? _%tl180977180995%_)
                              (let ((_%e180978180998%_
                                     (gx#syntax-e _%tl180977180995%_)))
                                (let ((_%hd180979181001%_
                                       (##car _%e180978180998%_))
                                      (_%tl180980181003%_
                                       (##cdr _%e180978180998%_)))
                                  (let ((_%id181006%_ _%hd180979181001%_))
                                    (if (gx#stx-null? _%tl180980181003%_)
                                        (if (gx#identifier? _%id181006%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id181006%_
                                                          _%stx180971%_)
                                                         '()))
                                             (gx#stx-source _%stx180971%_))
                                            (_%E180974180986%_))
                                        (_%E180974180986%_)))))
                              (_%E180974180986%_))))
                      (_%E180974180986%_)))))
          (_%E180973181008%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx180917%_)
        (let* ((_%e180918180931%_ _%stx180917%_)
               (_%E180920180935%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180918180931%_)))
               (_%E180919180967%_
                (lambda ()
                  (if (gx#stx-pair? _%e180918180931%_)
                      (let ((_%e180921180939%_
                             (gx#syntax-e _%e180918180931%_)))
                        (let ((_%hd180922180942%_ (##car _%e180921180939%_))
                              (_%tl180923180944%_ (##cdr _%e180921180939%_)))
                          (if (gx#stx-pair? _%tl180923180944%_)
                              (let ((_%e180924180947%_
                                     (gx#syntax-e _%tl180923180944%_)))
                                (let ((_%hd180925180950%_
                                       (##car _%e180924180947%_))
                                      (_%tl180926180952%_
                                       (##cdr _%e180924180947%_)))
                                  (let ((_%id180955%_ _%hd180925180950%_))
                                    (if (gx#stx-pair? _%tl180926180952%_)
                                        (let ((_%e180927180957%_
                                               (gx#syntax-e
                                                _%tl180926180952%_)))
                                          (let ((_%hd180928180960%_
                                                 (##car _%e180927180957%_))
                                                (_%tl180929180962%_
                                                 (##cdr _%e180927180957%_)))
                                            (let ((_%expr180965%_
                                                   _%hd180928180960%_))
                                              (if (gx#stx-null?
                                                   _%tl180929180962%_)
                                                  (if (gx#identifier?
                                                       _%id180955%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id180955%_
                            _%stx180917%_)
                           (cons (gx#core-expand-expression _%expr180965%_)
                                 '())))
               (gx#stx-source _%stx180917%_))
              (_%E180920180935%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180920180935%_)))))
                                        (_%E180920180935%_)))))
                              (_%E180920180935%_))))
                      (_%E180920180935%_)))))
          (_%E180919180967%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx180762%_)
        (letrec ((_%generate180764%_
                  (lambda (_%body180794%_)
                    (let _%lp180796%_ ((_%rest180798%_ _%body180794%_)
                                       (_%ns180799%_
                                        (gx#core-context-namespace__0))
                                       (_%r180800%_ '()))
                      (let* ((_%e180801180816%_ _%rest180798%_)
                             (_%E180814180820%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e180801180816%_)))
                             (_%E180810180824%_
                              (lambda ()
                                (if (gx#stx-null? _%e180801180816%_)
                                    (reverse _%r180800%_)
                                    (_%E180814180820%_))))
                             (_%E180803180881%_
                              (lambda ()
                                (if (gx#stx-pair? _%e180801180816%_)
                                    (let ((_%e180811180828%_
                                           (gx#syntax-e _%e180801180816%_)))
                                      (let ((_%hd180812180831%_
                                             (##car _%e180811180828%_))
                                            (_%tl180813180833%_
                                             (##cdr _%e180811180828%_)))
                                        (let* ((_%hd180836%_
                                                _%hd180812180831%_)
                                               (_%rest180838%_
                                                _%tl180813180833%_))
                                          (if (gx#identifier? _%hd180836%_)
                                              (_%lp180796%_
                                               _%rest180838%_
                                               _%ns180799%_
                                               (cons (cons _%hd180836%_
                                                           (cons (if _%ns180799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd180836%_
                              _%ns180799%_
                              '"#"
                              _%hd180836%_)
                             _%hd180836%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r180800%_))
                                              (let* ((_%e180839180849%_
                                                      _%hd180836%_)
                                                     (_%E180841180853%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e180839180849%_)))
                                                     (_%E180840180877%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e180839180849%_)
                                                            (let ((_%e180842180857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e180839180849%_)))
                      (let ((_%hd180843180860%_ (##car _%e180842180857%_))
                            (_%tl180844180862%_ (##cdr _%e180842180857%_)))
                        (let ((_%id180865%_ _%hd180843180860%_))
                          (if (gx#stx-pair? _%tl180844180862%_)
                              (let ((_%e180845180867%_
                                     (gx#syntax-e _%tl180844180862%_)))
                                (let ((_%hd180846180870%_
                                       (##car _%e180845180867%_))
                                      (_%tl180847180872%_
                                       (##cdr _%e180845180867%_)))
                                  (let ((_%eid180875%_ _%hd180846180870%_))
                                    (if (gx#stx-null? _%tl180847180872%_)
                                        (if (and (gx#identifier? _%id180865%_)
                                                 (gx#identifier?
                                                  _%eid180875%_))
                                            (_%lp180796%_
                                             _%rest180838%_
                                             _%ns180799%_
                                             (cons (cons _%id180865%_
                                                         (cons _%eid180875%_
                                                               '()))
                                                   _%r180800%_))
                                            (_%E180841180853%_))
                                        (_%E180841180853%_)))))
                              (_%E180841180853%_)))))
                    (_%E180841180853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E180840180877%_))))))
                                    (_%E180810180824%_))))
                             (_%E180802180913%_
                              (lambda ()
                                (if (gx#stx-pair? _%e180801180816%_)
                                    (let ((_%e180804180885%_
                                           (gx#syntax-e _%e180801180816%_)))
                                      (let ((_%hd180805180888%_
                                             (##car _%e180804180885%_))
                                            (_%tl180806180890%_
                                             (##cdr _%e180804180885%_)))
                                        (if (eq? (gx#stx-e _%hd180805180888%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl180806180890%_)
                                                (let ((_%e180807180893%_
                                                       (gx#syntax-e
                                                        _%tl180806180890%_)))
                                                  (let ((_%hd180808180896%_
                                                         (##car _%e180807180893%_))
                                                        (_%tl180809180898%_
                                                         (##cdr _%e180807180893%_)))
                                                    (let* ((_%ns180901%_
                                                            _%hd180808180896%_)
                                                           (_%rest180903%_
                                                            _%tl180809180898%_)
                                                           (_%ns180911%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns180901%_)
                        (symbol->string (gx#stx-e _%ns180901%_))
                        (if (or (gx#stx-string? _%ns180901%_)
                                (gx#stx-false? _%ns180901%_))
                            (gx#stx-e _%ns180901%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx180762%_
                             _%ns180901%_)))))
              (_%lp180796%_ _%rest180903%_ _%ns180911%_ _%r180800%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E180803180881%_))
                                            (_%E180803180881%_))))
                                    (_%E180803180881%_)))))
                        (_%E180802180913%_))))))
          (let* ((_%e180765180772%_ _%stx180762%_)
                 (_%E180767180776%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180765180772%_)))
                 (_%E180766180790%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180765180772%_)
                        (let ((_%e180768180780%_
                               (gx#syntax-e _%e180765180772%_)))
                          (let ((_%hd180769180783%_ (##car _%e180768180780%_))
                                (_%tl180770180785%_ (##cdr _%e180768180780%_)))
                            (let ((_%body180788%_ _%tl180770180785%_))
                              (if (gx#stx-list? _%body180788%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate180764%_ _%body180788%_))
                                  (_%E180767180776%_)))))
                        (_%E180767180776%_)))))
            (_%E180766180790%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx180719%_)
        (let* ((_%e180720180730%_ _%stx180719%_)
               (_%E180722180734%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180720180730%_)))
               (_%E180721180758%_
                (lambda ()
                  (if (gx#stx-pair? _%e180720180730%_)
                      (let ((_%e180723180738%_
                             (gx#syntax-e _%e180720180730%_)))
                        (let ((_%hd180724180741%_ (##car _%e180723180738%_))
                              (_%tl180725180743%_ (##cdr _%e180723180738%_)))
                          (if (gx#stx-pair? _%tl180725180743%_)
                              (let ((_%e180726180746%_
                                     (gx#syntax-e _%tl180725180743%_)))
                                (let ((_%hd180727180749%_
                                       (##car _%e180726180746%_))
                                      (_%tl180728180751%_
                                       (##cdr _%e180726180746%_)))
                                  (let* ((_%hd180754%_ _%hd180727180749%_)
                                         (_%body180756%_ _%tl180728180751%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd180754%_)
                                             (gx#stx-list? _%body180756%_)
                                             (not (gx#stx-null?
                                                   _%body180756%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd180754%_)
                                         _%body180756%_)
                                        (_%E180722180734%_)))))
                              (_%E180722180734%_))))
                      (_%E180722180734%_)))))
          (_%E180721180758%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx180655%_)
        (letrec ((_%generate180657%_
                  (lambda (_%clause180687%_)
                    (let* ((_%e180688180695%_ _%clause180687%_)
                           (_%E180690180699%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx180655%_
                               _%clause180687%_)))
                           (_%E180689180715%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180688180695%_)
                                  (let ((_%e180691180703%_
                                         (gx#syntax-e _%e180688180695%_)))
                                    (let ((_%hd180692180706%_
                                           (##car _%e180691180703%_))
                                          (_%tl180693180708%_
                                           (##cdr _%e180691180703%_)))
                                      (let* ((_%hd180711%_ _%hd180692180706%_)
                                             (_%body180713%_
                                              _%tl180693180708%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd180711%_)
                                                 (gx#stx-list? _%body180713%_)
                                                 (not (gx#stx-null?
                                                       _%body180713%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd180711%_)
                                                   _%body180713%_)
                                             (gx#stx-source _%clause180687%_))
                                            (_%E180690180699%_)))))
                                  (_%E180690180699%_)))))
                      (_%E180689180715%_)))))
          (let* ((_%e180658180665%_ _%stx180655%_)
                 (_%E180660180669%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180658180665%_)))
                 (_%E180659180683%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180658180665%_)
                        (let ((_%e180661180673%_
                               (gx#syntax-e _%e180658180665%_)))
                          (let ((_%hd180662180676%_ (##car _%e180661180673%_))
                                (_%tl180663180678%_ (##cdr _%e180661180673%_)))
                            (let ((_%clauses180681%_ _%tl180663180678%_))
                              (if (gx#stx-list? _%clauses180681%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate180657%_
                                    _%clauses180681%_))
                                  (_%E180660180669%_)))))
                        (_%E180660180669%_)))))
            (_%E180659180683%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx180556%_ _%form180557%_)
        (letrec ((_%generate180559%_
                  (lambda (_%bind180602%_)
                    (let* ((_%e180603180613%_ _%bind180602%_)
                           (_%E180605180617%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx180556%_
                               _%bind180602%_)))
                           (_%E180604180641%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180603180613%_)
                                  (let ((_%e180606180621%_
                                         (gx#syntax-e _%e180603180613%_)))
                                    (let ((_%hd180607180624%_
                                           (##car _%e180606180621%_))
                                          (_%tl180608180626%_
                                           (##cdr _%e180606180621%_)))
                                      (let ((_%ids180629%_ _%hd180607180624%_))
                                        (if (gx#stx-pair? _%tl180608180626%_)
                                            (let ((_%e180609180631%_
                                                   (gx#syntax-e
                                                    _%tl180608180626%_)))
                                              (let ((_%hd180610180634%_
                                                     (##car _%e180609180631%_))
                                                    (_%tl180611180636%_
                                                     (##cdr _%e180609180631%_)))
                                                (let ((_%expr180639%_
                                                       _%hd180610180634%_))
                                                  (if (gx#stx-null?
                                                       _%tl180611180636%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids180629%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids180629%_)
                        (cons _%expr180639%_ '()))
                  (_%E180605180617%_))
              (_%E180605180617%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E180605180617%_)))))
                                  (_%E180605180617%_)))))
                      (_%E180604180641%_)))))
          (let* ((_%e180560180570%_ _%stx180556%_)
                 (_%E180562180574%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180560180570%_)))
                 (_%E180561180598%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180560180570%_)
                        (let ((_%e180563180578%_
                               (gx#syntax-e _%e180560180570%_)))
                          (let ((_%hd180564180581%_ (##car _%e180563180578%_))
                                (_%tl180565180583%_ (##cdr _%e180563180578%_)))
                            (if (gx#stx-pair? _%tl180565180583%_)
                                (let ((_%e180566180586%_
                                       (gx#syntax-e _%tl180565180583%_)))
                                  (let ((_%hd180567180589%_
                                         (##car _%e180566180586%_))
                                        (_%tl180568180591%_
                                         (##cdr _%e180566180586%_)))
                                    (let* ((_%hd180594%_ _%hd180567180589%_)
                                           (_%body180596%_ _%tl180568180591%_))
                                      (if (and (gx#stx-list? _%hd180594%_)
                                               (gx#stx-list? _%body180596%_)
                                               (not (gx#stx-null?
                                                     _%body180596%_)))
                                          (gx#core-cons*
                                           _%form180557%_
                                           (gx#stx-map1
                                            _%generate180559%_
                                            _%hd180594%_)
                                           _%body180596%_)
                                          (_%E180562180574%_)))))
                                (_%E180562180574%_))))
                        (_%E180562180574%_)))))
            (_%E180561180598%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx180648%_)
        (let ((_%form180650%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx180648%_ _%form180650%_))))
    (define gx#macro-expand-let-values
      (lambda _g183192_
        (let ((_g183193_ (##length _g183192_)))
          (cond ((##fx= _g183193_ 1)
                 (apply gx#macro-expand-let-values__0 _g183192_))
                ((##fx= _g183193_ 2)
                 (apply gx#macro-expand-let-values__% _g183192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g183192_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx180553%_)
        (gx#macro-expand-let-values__% _%stx180553%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx180551%_)
        (gx#macro-expand-let-values__% _%stx180551%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx180442%_)
        (let* ((_%e180443180469%_ _%stx180442%_)
               (_%E180455180473%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180443180469%_)))
               (_%E180445180515%_
                (lambda ()
                  (if (gx#stx-pair? _%e180443180469%_)
                      (let ((_%e180456180477%_
                             (gx#syntax-e _%e180443180469%_)))
                        (let ((_%hd180457180480%_ (##car _%e180456180477%_))
                              (_%tl180458180482%_ (##cdr _%e180456180477%_)))
                          (if (gx#stx-pair? _%tl180458180482%_)
                              (let ((_%e180459180485%_
                                     (gx#syntax-e _%tl180458180482%_)))
                                (let ((_%hd180460180488%_
                                       (##car _%e180459180485%_))
                                      (_%tl180461180490%_
                                       (##cdr _%e180459180485%_)))
                                  (let ((_%test180493%_ _%hd180460180488%_))
                                    (if (gx#stx-pair? _%tl180461180490%_)
                                        (let ((_%e180462180495%_
                                               (gx#syntax-e
                                                _%tl180461180490%_)))
                                          (let ((_%hd180463180498%_
                                                 (##car _%e180462180495%_))
                                                (_%tl180464180500%_
                                                 (##cdr _%e180462180495%_)))
                                            (let ((_%K180503%_
                                                   _%hd180463180498%_))
                                              (if (gx#stx-pair?
                                                   _%tl180464180500%_)
                                                  (let ((_%e180465180505%_
                                                         (gx#syntax-e
                                                          _%tl180464180500%_)))
                                                    (let ((_%hd180466180508%_
                                                           (##car _%e180465180505%_))
                                                          (_%tl180467180510%_
                                                           (##cdr _%e180465180505%_)))
                                                      (let ((_%E180513%_
                                                             _%hd180466180508%_))
                                                        (if (gx#stx-null?
                                                             _%tl180467180510%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test180493%_
                                                             _%K180503%_
                                                             _%E180513%_)
                                                            (_%E180455180473%_)))))
                                                  (_%E180455180473%_)))))
                                        (_%E180455180473%_)))))
                              (_%E180455180473%_))))
                      (_%E180455180473%_))))
               (_%E180444180547%_
                (lambda ()
                  (if (gx#stx-pair? _%e180443180469%_)
                      (let ((_%e180446180519%_
                             (gx#syntax-e _%e180443180469%_)))
                        (let ((_%hd180447180522%_ (##car _%e180446180519%_))
                              (_%tl180448180524%_ (##cdr _%e180446180519%_)))
                          (if (gx#stx-pair? _%tl180448180524%_)
                              (let ((_%e180449180527%_
                                     (gx#syntax-e _%tl180448180524%_)))
                                (let ((_%hd180450180530%_
                                       (##car _%e180449180527%_))
                                      (_%tl180451180532%_
                                       (##cdr _%e180449180527%_)))
                                  (let ((_%test180535%_ _%hd180450180530%_))
                                    (if (gx#stx-pair? _%tl180451180532%_)
                                        (let ((_%e180452180537%_
                                               (gx#syntax-e
                                                _%tl180451180532%_)))
                                          (let ((_%hd180453180540%_
                                                 (##car _%e180452180537%_))
                                                (_%tl180454180542%_
                                                 (##cdr _%e180452180537%_)))
                                            (let ((_%K180545%_
                                                   _%hd180453180540%_))
                                              (if (gx#stx-null?
                                                   _%tl180454180542%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test180535%_
                                                   _%K180545%_
                                                   '#!void)
                                                  (_%E180445180515%_)))))
                                        (_%E180445180515%_)))))
                              (_%E180445180515%_))))
                      (_%E180445180515%_)))))
          (_%E180444180547%_))))
    (define gx#free-identifier=?
      (lambda (_%xid180427%_ _%yid180428%_)
        (let ((_%xe180430%_ (gx#resolve-identifier__0 _%xid180427%_))
              (_%ye180431%_ (gx#resolve-identifier__0 _%yid180428%_)))
          (if (and _%xe180430%_ _%ye180431%_)
              (let ((_%$e180434%_ (eq? _%xe180430%_ _%ye180431%_)))
                (if _%$e180434%_
                    _%$e180434%_
                    (if (##structure-instance-of? _%xe180430%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye180431%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe180430%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye180431%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe180430%_ _%ye180431%_)
                  '#f
                  (gx#stx-eq? _%xid180427%_ _%yid180428%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid180408%_ _%yid180409%_)
        (letrec ((_%context180411%_
                  (lambda (_%e180425%_)
                    (if (##structure-direct-instance-of?
                         _%e180425%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e180425%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks180412%_
                  (lambda (_%e180420%_)
                    (if (symbol? _%e180420%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e180420%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e180420%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e180420%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap180413%_
                  (lambda (_%e180418%_)
                    (if (symbol? _%e180418%_)
                        _%e180418%_
                        (gx#syntax-local-unwrap _%e180418%_)))))
          (let ((_%x180415%_ (_%unwrap180413%_ _%xid180408%_))
                (_%y180416%_ (_%unwrap180413%_ _%yid180409%_)))
            (if (gx#stx-eq? _%x180415%_ _%y180416%_)
                (if (eq? (_%context180411%_ _%x180415%_)
                         (_%context180411%_ _%y180416%_))
                    (equal? (_%marks180412%_ _%x180415%_)
                            (_%marks180412%_ _%y180416%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx180406%_)
        (if (gx#identifier? _%stx180406%_)
            (gx#core-identifier=? _%stx180406%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx180404%_)
        (if (gx#identifier? _%stx180404%_)
            (gx#core-identifier=? _%stx180404%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx180347%_ _%where180348%_)
        (let _%lp180350%_ ((_%rest180352%_ (gx#syntax->list _%stx180347%_)))
          (let* ((_%rest180353180361%_ _%rest180352%_)
                 (_%else180355180369%_ (lambda () '#t))
                 (_%K180357180382%_
                  (lambda (_%rest180372%_ _%hd180373%_)
                    (if (gx#identifier? _%hd180373%_)
                        (if (__find (lambda (_%g180375180377%_)
                                      (gx#bound-identifier=?
                                       _%g180375180377%_
                                       _%hd180373%_))
                                    _%rest180372%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where180348%_
                             _%hd180373%_)
                            (_%lp180350%_ _%rest180372%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where180348%_
                         _%hd180373%_)))))
            (if (pair? _%rest180353180361%_)
                (let ((_%hd180358180385%_ (##car _%rest180353180361%_))
                      (_%tl180359180387%_ (##cdr _%rest180353180361%_)))
                  (let* ((_%hd180390%_ _%hd180358180385%_)
                         (_%rest180392%_ _%tl180359180387%_))
                    (_%K180357180382%_ _%rest180392%_ _%hd180390%_)))
                (_%else180355180369%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx180397%_)
        (let ((_%where180399%_ _%stx180397%_))
          (gx#check-duplicate-identifiers__% _%stx180397%_ _%where180399%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g183194_
        (let ((_g183195_ (##length _g183194_)))
          (cond ((##fx= _g183195_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g183194_))
                ((##fx= _g183195_ 2)
                 (apply gx#check-duplicate-identifiers__% _g183194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g183194_))))))
    (define gx#core-bind-values?
      (lambda (_%stx180339%_)
        (gx#stx-andmap
         (lambda (_%x180341%_)
           (let ((_%$e180343%_ (gx#identifier? _%x180341%_)))
             (if _%$e180343%_ _%$e180343%_ (gx#stx-false? _%x180341%_))))
         _%stx180339%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx180303%_ _%rebind?180304%_ _%phi180305%_ _%ctx180306%_)
        (gx#stx-for-each1
         (lambda (_%id180308%_)
           (if (gx#identifier? _%id180308%_)
               (gx#core-bind-runtime!__%
                _%id180308%_
                _%rebind?180304%_
                _%phi180305%_
                _%ctx180306%_)
               '#!void))
         _%stx180303%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx180313%_)
        (let* ((_%rebind?180315%_ '#f)
               (_%phi180317%_ (gx#current-expander-phi))
               (_%ctx180319%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180313%_
           _%rebind?180315%_
           _%phi180317%_
           _%ctx180319%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx180321%_ _%rebind?180322%_)
        (let* ((_%phi180324%_ (gx#current-expander-phi))
               (_%ctx180326%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180321%_
           _%rebind?180322%_
           _%phi180324%_
           _%ctx180326%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx180328%_ _%rebind?180329%_ _%phi180330%_)
        (let ((_%ctx180332%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180328%_
           _%rebind?180329%_
           _%phi180330%_
           _%ctx180332%_))))
    (define gx#core-bind-values!
      (lambda _g183196_
        (let ((_g183197_ (##length _g183196_)))
          (cond ((##fx= _g183197_ 1) (apply gx#core-bind-values!__0 _g183196_))
                ((##fx= _g183197_ 2) (apply gx#core-bind-values!__1 _g183196_))
                ((##fx= _g183197_ 3) (apply gx#core-bind-values!__2 _g183196_))
                ((##fx= _g183197_ 4) (apply gx#core-bind-values!__% _g183196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g183196_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx180298%_)
        (gx#stx-map1
         (lambda (_%x180300%_)
           (if (gx#identifier? _%x180300%_)
               (gx#core-quote-syntax__0 _%x180300%_)
               '#f))
         _%stx180298%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx180291%_)
        (if (gx#identifier? _%stx180291%_)
            (let* ((_%bind180293%_ (gx#resolve-identifier__0 _%stx180291%_))
                   (_%$e180295%_ (not _%bind180293%_)))
              (if _%$e180295%_
                  _%$e180295%_
                  (##structure-instance-of?
                   _%bind180293%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id180280%_ _%form180281%_)
        (let ((_%bind180283%_ (gx#resolve-identifier__0 _%id180280%_)))
          (if (##structure-instance-of? _%bind180283%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id180280%_)
              (if (not _%bind180283%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id180280%_)))
                      (gx#core-quote-syntax__0 _%id180280%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form180281%_
                       _%id180280%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form180281%_
                   _%id180280%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id180235%_ _%rebind?180236%_ _%phi180237%_ _%ctx180238%_)
        (let* ((_%key180240%_ (gx#core-identifier-key _%id180235%_))
               (_%eid180242%_
                (gx#make-binding-id__%
                 _%key180240%_
                 '#f
                 _%phi180237%_
                 _%ctx180238%_))
               (_%bind180248%_
                (if (##structure-instance-of?
                     _%ctx180238%_
                     'gx#module-context::t)
                    (let ((__obj183173
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
                       __obj183173
                       _%eid180242%_
                       _%key180240%_
                       _%phi180237%_
                       _%ctx180238%_)
                      __obj183173)
                    (if (##structure-instance-of?
                         _%ctx180238%_
                         'gx#top-context::t)
                        (let ((__obj183172
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj183172
                           _%eid180242%_
                           _%key180240%_
                           _%phi180237%_)
                          __obj183172)
                        (if (##structure-instance-of?
                             _%ctx180238%_
                             'gx#local-context::t)
                            (let ((__obj183171
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj183171
                               _%eid180242%_
                               _%key180240%_
                               _%phi180237%_)
                              __obj183171)
                            (let ((__obj183170
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj183170
                               _%eid180242%_
                               _%key180240%_
                               _%phi180237%_)
                              __obj183170))))))
          (gx#bind-identifier!__%
           _%id180235%_
           _%bind180248%_
           _%rebind?180236%_
           _%phi180237%_
           _%ctx180238%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id180254%_)
        (let* ((_%rebind?180256%_ '#f)
               (_%phi180258%_ (gx#current-expander-phi))
               (_%ctx180260%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id180254%_
           _%rebind?180256%_
           _%phi180258%_
           _%ctx180260%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id180262%_ _%rebind?180263%_)
        (let* ((_%phi180265%_ (gx#current-expander-phi))
               (_%ctx180267%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id180262%_
           _%rebind?180263%_
           _%phi180265%_
           _%ctx180267%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id180269%_ _%rebind?180270%_ _%phi180271%_)
        (let ((_%ctx180273%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id180269%_
           _%rebind?180270%_
           _%phi180271%_
           _%ctx180273%_))))
    (define gx#core-bind-runtime!
      (lambda _g183198_
        (let ((_g183199_ (##length _g183198_)))
          (cond ((##fx= _g183199_ 1)
                 (apply gx#core-bind-runtime!__0 _g183198_))
                ((##fx= _g183199_ 2)
                 (apply gx#core-bind-runtime!__1 _g183198_))
                ((##fx= _g183199_ 3)
                 (apply gx#core-bind-runtime!__2 _g183198_))
                ((##fx= _g183199_ 4)
                 (apply gx#core-bind-runtime!__% _g183198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g183198_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id180187%_
               _%eid180188%_
               _%rebind?180189%_
               _%phi180190%_
               _%ctx180191%_)
        (let* ((_%key180193%_ (gx#core-identifier-key _%id180187%_))
               (_%bind180198%_
                (if (##structure-instance-of?
                     _%ctx180191%_
                     'gx#module-context::t)
                    (let ((__obj183176
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
                       __obj183176
                       _%eid180188%_
                       _%key180193%_
                       _%phi180190%_
                       _%ctx180191%_)
                      __obj183176)
                    (if (##structure-instance-of?
                         _%ctx180191%_
                         'gx#top-context::t)
                        (let ((__obj183175
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj183175
                           _%eid180188%_
                           _%key180193%_
                           _%phi180190%_)
                          __obj183175)
                        (let ((__obj183174
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj183174
                           _%eid180188%_
                           _%key180193%_
                           _%phi180190%_)
                          __obj183174)))))
          (gx#bind-identifier!__%
           _%id180187%_
           _%bind180198%_
           _%rebind?180189%_
           _%phi180190%_
           _%ctx180191%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id180204%_ _%eid180205%_)
        (let* ((_%rebind?180207%_ '#f)
               (_%phi180209%_ (gx#current-expander-phi))
               (_%ctx180211%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id180204%_
           _%eid180205%_
           _%rebind?180207%_
           _%phi180209%_
           _%ctx180211%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id180213%_ _%eid180214%_ _%rebind?180215%_)
        (let* ((_%phi180217%_ (gx#current-expander-phi))
               (_%ctx180219%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id180213%_
           _%eid180214%_
           _%rebind?180215%_
           _%phi180217%_
           _%ctx180219%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id180221%_ _%eid180222%_ _%rebind?180223%_ _%phi180224%_)
        (let ((_%ctx180226%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id180221%_
           _%eid180222%_
           _%rebind?180223%_
           _%phi180224%_
           _%ctx180226%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g183200_
        (let ((_g183201_ (##length _g183200_)))
          (cond ((##fx= _g183201_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g183200_))
                ((##fx= _g183201_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g183200_))
                ((##fx= _g183201_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g183200_))
                ((##fx= _g183201_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g183200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g183200_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id180147%_
               _%eid180148%_
               _%rebind?180149%_
               _%phi180150%_
               _%ctx180151%_)
        (gx#bind-identifier!__%
         _%id180147%_
         (let ((__obj183177
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj183177
            _%eid180148%_
            (gx#core-identifier-key _%id180147%_)
            _%phi180150%_)
           __obj183177)
         _%rebind?180149%_
         _%phi180150%_
         _%ctx180151%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id180156%_ _%eid180157%_)
        (let* ((_%rebind?180159%_ '#f)
               (_%phi180161%_ (gx#current-expander-phi))
               (_%ctx180163%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id180156%_
           _%eid180157%_
           _%rebind?180159%_
           _%phi180161%_
           _%ctx180163%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id180165%_ _%eid180166%_ _%rebind?180167%_)
        (let* ((_%phi180169%_ (gx#current-expander-phi))
               (_%ctx180171%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id180165%_
           _%eid180166%_
           _%rebind?180167%_
           _%phi180169%_
           _%ctx180171%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id180173%_ _%eid180174%_ _%rebind?180175%_ _%phi180176%_)
        (let ((_%ctx180178%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id180173%_
           _%eid180174%_
           _%rebind?180175%_
           _%phi180176%_
           _%ctx180178%_))))
    (define gx#core-bind-extern!
      (lambda _g183202_
        (let ((_g183203_ (##length _g183202_)))
          (cond ((##fx= _g183203_ 2) (apply gx#core-bind-extern!__0 _g183202_))
                ((##fx= _g183203_ 3) (apply gx#core-bind-extern!__1 _g183202_))
                ((##fx= _g183203_ 4) (apply gx#core-bind-extern!__2 _g183202_))
                ((##fx= _g183203_ 5) (apply gx#core-bind-extern!__% _g183202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g183202_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id180101%_
               _%e180102%_
               _%rebind?180103%_
               _%phi180104%_
               _%ctx180105%_)
        (gx#bind-identifier!__%
         _%id180101%_
         (let ((_%key180110%_ (gx#core-identifier-key _%id180101%_))
               (_%e180111%_
                (if (or (##structure-instance-of? _%e180102%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e180102%_
                         'gx#expander-context::t))
                    _%e180102%_
                    (##structure
                     gx#user-expander::t
                     _%e180102%_
                     _%ctx180105%_
                     _%phi180104%_))))
           (let ((__obj183178
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj183178
              (gx#make-binding-id__%
               _%key180110%_
               '#t
               _%phi180104%_
               _%ctx180105%_)
              _%key180110%_
              _%phi180104%_
              _%e180111%_)
             __obj183178))
         _%rebind?180103%_
         _%phi180104%_
         _%ctx180105%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id180116%_ _%e180117%_)
        (let* ((_%rebind?180119%_ '#f)
               (_%phi180121%_ (gx#current-expander-phi))
               (_%ctx180123%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id180116%_
           _%e180117%_
           _%rebind?180119%_
           _%phi180121%_
           _%ctx180123%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id180125%_ _%e180126%_ _%rebind?180127%_)
        (let* ((_%phi180129%_ (gx#current-expander-phi))
               (_%ctx180131%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id180125%_
           _%e180126%_
           _%rebind?180127%_
           _%phi180129%_
           _%ctx180131%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id180133%_ _%e180134%_ _%rebind?180135%_ _%phi180136%_)
        (let ((_%ctx180138%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id180133%_
           _%e180134%_
           _%rebind?180135%_
           _%phi180136%_
           _%ctx180138%_))))
    (define gx#core-bind-syntax!
      (lambda _g183204_
        (let ((_g183205_ (##length _g183204_)))
          (cond ((##fx= _g183205_ 2) (apply gx#core-bind-syntax!__0 _g183204_))
                ((##fx= _g183205_ 3) (apply gx#core-bind-syntax!__1 _g183204_))
                ((##fx= _g183205_ 4) (apply gx#core-bind-syntax!__2 _g183204_))
                ((##fx= _g183205_ 5) (apply gx#core-bind-syntax!__% _g183204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g183204_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id180084%_ _%e180085%_ _%rebind?180086%_)
        (gx#core-bind-syntax!__%
         _%id180084%_
         _%e180085%_
         _%rebind?180086%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id180091%_ _%e180092%_)
        (let ((_%rebind?180094%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id180091%_
           _%e180092%_
           _%rebind?180094%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g183206_
        (let ((_g183207_ (##length _g183206_)))
          (cond ((##fx= _g183207_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g183206_))
                ((##fx= _g183207_ 3)
                 (apply gx#core-bind-root-syntax!__% _g183206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g183206_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id180042%_
               _%alias-id180043%_
               _%rebind?180044%_
               _%phi180045%_
               _%ctx180046%_)
        (gx#bind-identifier!__%
         _%id180042%_
         (let* ((_%key180048%_ (gx#core-identifier-key _%id180042%_))
                (__obj183179
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj183179
            (gx#make-binding-id__%
             _%key180048%_
             '#t
             _%phi180045%_
             _%ctx180046%_)
            _%key180048%_
            _%phi180045%_
            _%alias-id180043%_)
           __obj183179)
         _%rebind?180044%_
         _%phi180045%_
         _%ctx180046%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id180053%_ _%alias-id180054%_)
        (let* ((_%rebind?180056%_ '#f)
               (_%phi180058%_ (gx#current-expander-phi))
               (_%ctx180060%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180053%_
           _%alias-id180054%_
           _%rebind?180056%_
           _%phi180058%_
           _%ctx180060%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id180062%_ _%alias-id180063%_ _%rebind?180064%_)
        (let* ((_%phi180066%_ (gx#current-expander-phi))
               (_%ctx180068%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180062%_
           _%alias-id180063%_
           _%rebind?180064%_
           _%phi180066%_
           _%ctx180068%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id180070%_ _%alias-id180071%_ _%rebind?180072%_ _%phi180073%_)
        (let ((_%ctx180075%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id180070%_
           _%alias-id180071%_
           _%rebind?180072%_
           _%phi180073%_
           _%ctx180075%_))))
    (define gx#core-bind-alias!
      (lambda _g183208_
        (let ((_g183209_ (##length _g183208_)))
          (cond ((##fx= _g183209_ 2) (apply gx#core-bind-alias!__0 _g183208_))
                ((##fx= _g183209_ 3) (apply gx#core-bind-alias!__1 _g183208_))
                ((##fx= _g183209_ 4) (apply gx#core-bind-alias!__2 _g183208_))
                ((##fx= _g183209_ 5) (apply gx#core-bind-alias!__% _g183208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g183208_))))))
    (define gx#make-binding-id__%
      (lambda (_%key179992%_ _%syntax?179993%_ _%phi179994%_ _%ctx179995%_)
        (if (uninterned-symbol? _%key179992%_)
            (##gensym 'L)
            (if (pair? _%key179992%_)
                (gensym (##car _%key179992%_))
                (if (##structure-instance-of? _%ctx179995%_ 'gx#top-context::t)
                    (let ((_%ns180000%_
                           (gx#core-context-namespace__% _%ctx179995%_)))
                      (if (and (fxzero? _%phi179994%_) (not _%syntax?179993%_))
                          (if _%ns180000%_
                              (make-symbol__1 _%ns180000%_ '"#" _%key179992%_)
                              _%key179992%_)
                          (if _%syntax?179993%_
                              (make-symbol__1
                               (let ((_%$e180004%_ _%ns180000%_))
                                 (if _%$e180004%_ _%$e180004%_ '""))
                               '"[:"
                               (number->string _%phi179994%_)
                               '":]#"
                               _%key179992%_)
                              (make-symbol__1
                               (let ((_%$e180008%_ _%ns180000%_))
                                 (if _%$e180008%_ _%$e180008%_ '""))
                               '"["
                               (number->string _%phi179994%_)
                               '"]#"
                               _%key179992%_))))
                    (gensym _%key179992%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key180015%_)
        (let* ((_%syntax?180017%_ '#f)
               (_%phi180019%_ (gx#current-expander-phi))
               (_%ctx180021%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180015%_
           _%syntax?180017%_
           _%phi180019%_
           _%ctx180021%_))))
    (define gx#make-binding-id__1
      (lambda (_%key180023%_ _%syntax?180024%_)
        (let* ((_%phi180026%_ (gx#current-expander-phi))
               (_%ctx180028%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180023%_
           _%syntax?180024%_
           _%phi180026%_
           _%ctx180028%_))))
    (define gx#make-binding-id__2
      (lambda (_%key180030%_ _%syntax?180031%_ _%phi180032%_)
        (let ((_%ctx180034%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key180030%_
           _%syntax?180031%_
           _%phi180032%_
           _%ctx180034%_))))
    (define gx#make-binding-id
      (lambda _g183210_
        (let ((_g183211_ (##length _g183210_)))
          (cond ((##fx= _g183211_ 1) (apply gx#make-binding-id__0 _g183210_))
                ((##fx= _g183211_ 2) (apply gx#make-binding-id__1 _g183210_))
                ((##fx= _g183211_ 3) (apply gx#make-binding-id__2 _g183210_))
                ((##fx= _g183211_ 4) (apply gx#make-binding-id__% _g183210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g183210_))))))))
