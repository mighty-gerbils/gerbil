(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1773012985)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx182868%_)
        (letrec ((_%expand-special182870%_
                  (lambda (_%hd182872%_ _%K182873%_ _%rest182874%_ _%r182875%_)
                    (_%K182873%_
                     _%rest182874%_
                     (cons (gx#core-expand-top _%hd182872%_) _%r182875%_)))))
          (gx#core-expand-block__0 _%stx182868%_ _%expand-special182870%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx182562%_)
        (letrec ((_%expand-special182564%_
                  (lambda (_%hd182686%_ _%K182687%_ _%rest182688%_ _%r182689%_)
                    (let* ((_%K182693%_
                            (lambda (_%e182691%_)
                              (_%K182687%_
                               _%rest182688%_
                               (cons _%e182691%_ _%r182689%_))))
                           (_%e182694182736%_ _%hd182686%_)
                           (_%E182731182740%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182694182736%_)))
                           (_%E182727182752%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182694182736%_)
                                  (let ((_%e182732182744%_
                                         (gx#syntax-e _%e182694182736%_)))
                                    (let ((_%hd182733182747%_
                                           (##car _%e182732182744%_))
                                          (_%tl182734182749%_
                                           (##cdr _%e182732182744%_)))
                                      (if (and (gx#identifier?
                                                _%hd182733182747%_)
                                               (gx#core-identifier=?
                                                _%hd182733182747%_
                                                '%#define-runtime))
                                          (_%K182693%_
                                           (gx#core-expand-define-runtime%
                                            _%hd182686%_))
                                          (_%E182731182740%_))))
                                  (_%E182731182740%_))))
                           (_%E182723182764%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182694182736%_)
                                  (let ((_%e182728182756%_
                                         (gx#syntax-e _%e182694182736%_)))
                                    (let ((_%hd182729182759%_
                                           (##car _%e182728182756%_))
                                          (_%tl182730182761%_
                                           (##cdr _%e182728182756%_)))
                                      (if (and (gx#identifier?
                                                _%hd182729182759%_)
                                               (gx#core-identifier=?
                                                _%hd182729182759%_
                                                '%#define-alias))
                                          (_%K182693%_
                                           (gx#core-expand-define-alias%
                                            _%hd182686%_))
                                          (_%E182727182752%_))))
                                  (_%E182727182752%_))))
                           (_%E182713182776%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182694182736%_)
                                  (let ((_%e182724182768%_
                                         (gx#syntax-e _%e182694182736%_)))
                                    (let ((_%hd182725182771%_
                                           (##car _%e182724182768%_))
                                          (_%tl182726182773%_
                                           (##cdr _%e182724182768%_)))
                                      (if (and (gx#identifier?
                                                _%hd182725182771%_)
                                               (gx#core-identifier=?
                                                _%hd182725182771%_
                                                '%#define-syntax))
                                          (_%K182693%_
                                           (gx#core-expand-define-syntax%
                                            _%hd182686%_))
                                          (_%E182723182764%_))))
                                  (_%E182723182764%_))))
                           (_%E182700182808%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182694182736%_)
                                  (let ((_%e182714182780%_
                                         (gx#syntax-e _%e182694182736%_)))
                                    (let ((_%hd182715182783%_
                                           (##car _%e182714182780%_))
                                          (_%tl182716182785%_
                                           (##cdr _%e182714182780%_)))
                                      (if (and (gx#identifier?
                                                _%hd182715182783%_)
                                               (gx#core-identifier=?
                                                _%hd182715182783%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182716182785%_)
                                              (let ((_%e182717182788%_
                                                     (gx#syntax-e
                                                      _%tl182716182785%_)))
                                                (let ((_%hd182718182791%_
                                                       (##car _%e182717182788%_))
                                                      (_%tl182719182793%_
                                                       (##cdr _%e182717182788%_)))
                                                  (let ((_%hd-bind182796%_
                                                         _%hd182718182791%_))
                                                    (if (gx#stx-pair?
                                                         _%tl182719182793%_)
                                                        (let ((_%e182720182798%_
                                                               (gx#syntax-e
                                                                _%tl182719182793%_)))
                                                          (let ((_%hd182721182801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e182720182798%_))
                        (_%tl182722182803%_ (##cdr _%e182720182798%_)))
                    (let ((_%expr182806%_ _%hd182721182801%_))
                      (if (gx#stx-null? _%tl182722182803%_)
                          (if (gx#core-bind-values? _%hd-bind182796%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind182796%_)
                                (_%K182693%_ _%hd182686%_))
                              (_%E182713182776%_))
                          (_%E182713182776%_)))))
                (_%E182713182776%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182713182776%_))
                                          (_%E182713182776%_))))
                                  (_%E182713182776%_))))
                           (_%E182696182852%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182694182736%_)
                                  (let ((_%e182701182812%_
                                         (gx#syntax-e _%e182694182736%_)))
                                    (let ((_%hd182702182815%_
                                           (##car _%e182701182812%_))
                                          (_%tl182703182817%_
                                           (##cdr _%e182701182812%_)))
                                      (if (and (gx#identifier?
                                                _%hd182702182815%_)
                                               (gx#core-identifier=?
                                                _%hd182702182815%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182703182817%_)
                                              (let ((_%e182704182820%_
                                                     (gx#syntax-e
                                                      _%tl182703182817%_)))
                                                (let ((_%hd182705182823%_
                                                       (##car _%e182704182820%_))
                                                      (_%tl182706182825%_
                                                       (##cdr _%e182704182820%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd182705182823%_)
                                                      (let ((_%e182710182828%_
                                                             (gx#syntax-e
                                                              _%hd182705182823%_)))
                                                        (let ((_%hd182711182831%_
                                                               (##car _%e182710182828%_))
                                                              (_%tl182712182833%_
                                                               (##cdr _%e182710182828%_)))
                                                          (let ((_%id182836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd182711182831%_))
                    (if (gx#stx-null? _%tl182712182833%_)
                        (if (gx#stx-pair? _%tl182706182825%_)
                            (let ((_%e182707182838%_
                                   (gx#syntax-e _%tl182706182825%_)))
                              (let ((_%hd182708182841%_
                                     (##car _%e182707182838%_))
                                    (_%tl182709182843%_
                                     (##cdr _%e182707182838%_)))
                                (let* ((_%expr182846%_ _%hd182708182841%_)
                                       (_%props182848%_ _%tl182709182843%_))
                                  (if (gx#identifier? _%id182836%_)
                                      (let ((_%bind182850%_
                                             (gx#core-bind-runtime!__0
                                              _%id182836%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind182850%_
                                         _%props182848%_)
                                        (_%K182693%_ _%hd182686%_))
                                      (_%E182700182808%_)))))
                            (_%E182700182808%_))
                        (_%E182700182808%_)))))
              (_%E182700182808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182700182808%_))
                                          (_%E182700182808%_))))
                                  (_%E182700182808%_))))
                           (_%E182695182864%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182694182736%_)
                                  (let ((_%e182697182856%_
                                         (gx#syntax-e _%e182694182736%_)))
                                    (let ((_%hd182698182859%_
                                           (##car _%e182697182856%_))
                                          (_%tl182699182861%_
                                           (##cdr _%e182697182856%_)))
                                      (if (and (gx#identifier?
                                                _%hd182698182859%_)
                                               (gx#core-identifier=?
                                                _%hd182698182859%_
                                                '%#begin-syntax))
                                          (_%K182693%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd182686%_))
                                          (_%E182696182852%_))))
                                  (_%E182696182852%_)))))
                      (_%E182695182864%_))))
                 (_%eval-body182565%_
                  (lambda (_%rbody182573%_)
                    (let _%lp182575%_ ((_%rest182577%_ _%rbody182573%_)
                                       (_%body182578%_ '())
                                       (_%ebody182579%_ '()))
                      (let* ((_%rest182580182588%_ _%rest182577%_)
                             (_%else182582182596%_
                              (lambda ()
                                (values _%body182578%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody182579%_)
                                          (gx#stx-source _%stx182562%_))))))
                             (_%K182584182674%_
                              (lambda (_%rest182599%_ _%hd182600%_)
                                (let* ((_%e182601182618%_ _%hd182600%_)
                                       (_%E182613182622%_
                                        (lambda ()
                                          (_%lp182575%_
                                           _%rest182599%_
                                           (cons _%hd182600%_ _%body182578%_)
                                           (cons _%hd182600%_
                                                 _%ebody182579%_))))
                                       (_%E182603182634%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182601182618%_)
                                              (let ((_%e182614182626%_
                                                     (gx#syntax-e
                                                      _%e182601182618%_)))
                                                (let ((_%hd182615182629%_
                                                       (##car _%e182614182626%_))
                                                      (_%tl182616182631%_
                                                       (##cdr _%e182614182626%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182615182629%_)
                                                           (gx#core-identifier=?
                                                            _%hd182615182629%_
                                                            '%#begin-syntax))
                                                      (_%lp182575%_
                                                       _%rest182599%_
                                                       (cons _%hd182600%_
                                                             _%body182578%_)
                                                       _%ebody182579%_)
                                                      (_%E182613182622%_))))
                                              (_%E182613182622%_))))
                                       (_%E182602182670%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e182601182618%_)
                                              (let ((_%e182604182638%_
                                                     (gx#syntax-e
                                                      _%e182601182618%_)))
                                                (let ((_%hd182605182641%_
                                                       (##car _%e182604182638%_))
                                                      (_%tl182606182643%_
                                                       (##cdr _%e182604182638%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd182605182641%_)
                                                           (gx#core-identifier=?
                                                            _%hd182605182641%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl182606182643%_)
                                                          (let ((_%e182607182646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl182606182643%_)))
                    (let ((_%hd182608182649%_ (##car _%e182607182646%_))
                          (_%tl182609182651%_ (##cdr _%e182607182646%_)))
                      (let ((_%hd-bind182654%_ _%hd182608182649%_))
                        (if (gx#stx-pair? _%tl182609182651%_)
                            (let ((_%e182610182656%_
                                   (gx#syntax-e _%tl182609182651%_)))
                              (let ((_%hd182611182659%_
                                     (##car _%e182610182656%_))
                                    (_%tl182612182661%_
                                     (##cdr _%e182610182656%_)))
                                (let* ((_%expr182664%_ _%hd182611182659%_)
                                       (_%ignore-props182666%_
                                        _%tl182612182661%_)
                                       (_%ehd182668%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind182654%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr182664%_)
                                                           '())))
                                         (gx#stx-source _%hd182600%_))))
                                  (_%lp182575%_
                                   _%rest182599%_
                                   (cons _%ehd182668%_ _%body182578%_)
                                   (cons _%ehd182668%_ _%ebody182579%_)))))
                            (_%E182603182634%_)))))
                  (_%E182603182634%_))
              (_%E182603182634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182603182634%_)))))
                                  (_%E182602182670%_)))))
                        (if (pair? _%rest182580182588%_)
                            (let ((_%hd182585182677%_
                                   (##car _%rest182580182588%_))
                                  (_%tl182586182679%_
                                   (##cdr _%rest182580182588%_)))
                              (let* ((_%hd182682%_ _%hd182585182677%_)
                                     (_%rest182684%_ _%tl182586182679%_))
                                (_%K182584182674%_
                                 _%rest182684%_
                                 _%hd182682%_)))
                            (_%else182582182596%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody182568%_
                     (gx#core-expand-block__1
                      _%stx182562%_
                      _%expand-special182564%_
                      '#f))
                    (_g182901_ (_%eval-body182565%_ _%rbody182568%_)))
               (begin
                 (let ((_g182902_
                        (if (##values? _g182901_)
                            (##values-length _g182901_)
                            1)))
                   (if (not (##fx= _g182902_ 2))
                       (error "Context expects 2 values" _g182902_)))
                 (let ((_%expanded-body182570%_ (##values-ref _g182901_ 0))
                       (_%value182571%_ (##values-ref _g182901_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body182570%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value182571%_ '())))
                    (gx#stx-source _%stx182562%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx182532%_)
        (let* ((_%e182533182540%_ _%stx182532%_)
               (_%E182535182544%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182533182540%_)))
               (_%E182534182558%_
                (lambda ()
                  (if (gx#stx-pair? _%e182533182540%_)
                      (let ((_%e182536182548%_
                             (gx#syntax-e _%e182533182540%_)))
                        (let ((_%hd182537182551%_ (##car _%e182536182548%_))
                              (_%tl182538182553%_ (##cdr _%e182536182548%_)))
                          (let ((_%body182556%_ _%tl182538182553%_))
                            (if (gx#stx-list? _%body182556%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body182556%_)
                                 (gx#stx-source _%stx182532%_))
                                (_%E182535182544%_)))))
                      (_%E182535182544%_)))))
          (_%E182534182558%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx182530%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx182530%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx182476%_)
        (let* ((_%e182477182490%_ _%stx182476%_)
               (_%E182479182494%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182477182490%_)))
               (_%E182478182526%_
                (lambda ()
                  (if (gx#stx-pair? _%e182477182490%_)
                      (let ((_%e182480182498%_
                             (gx#syntax-e _%e182477182490%_)))
                        (let ((_%hd182481182501%_ (##car _%e182480182498%_))
                              (_%tl182482182503%_ (##cdr _%e182480182498%_)))
                          (if (gx#stx-pair? _%tl182482182503%_)
                              (let ((_%e182483182506%_
                                     (gx#syntax-e _%tl182482182503%_)))
                                (let ((_%hd182484182509%_
                                       (##car _%e182483182506%_))
                                      (_%tl182485182511%_
                                       (##cdr _%e182483182506%_)))
                                  (let ((_%ann182514%_ _%hd182484182509%_))
                                    (if (gx#stx-pair? _%tl182485182511%_)
                                        (let ((_%e182486182516%_
                                               (gx#syntax-e
                                                _%tl182485182511%_)))
                                          (let ((_%hd182487182519%_
                                                 (##car _%e182486182516%_))
                                                (_%tl182488182521%_
                                                 (##cdr _%e182486182516%_)))
                                            (let ((_%expr182524%_
                                                   _%hd182487182519%_))
                                              (if (gx#stx-null?
                                                   _%tl182488182521%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann182514%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr182524%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx182476%_))
                                                  (_%E182479182494%_)))))
                                        (_%E182479182494%_)))))
                              (_%E182479182494%_))))
                      (_%E182479182494%_)))))
          (_%E182478182526%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx182141%_ _%body182142%_)
        (letrec ((_%expand-special182144%_
                  (lambda (_%hd182471%_ _%K182472%_ _%rest182473%_ _%r182474%_)
                    (_%K182472%_
                     '()
                     (cons (_%expand-internal182145%_
                            _%hd182471%_
                            _%rest182473%_)
                           _%r182474%_))))
                 (_%expand-internal182145%_
                  (lambda (_%hd182467%_ _%rest182468%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal182147%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd182467%_ _%rest182468%_))
                          (gx#stx-source _%stx182141%_))
                         _%expand-internal-special182146%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj182885
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj182885)
                       __obj182885))))
                 (_%expand-internal-special182146%_
                  (lambda (_%hd182305%_ _%K182306%_ _%rest182307%_ _%r182308%_)
                    (let* ((_%e182309182347%_ _%hd182305%_)
                           (_%E182342182351%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e182309182347%_)))
                           (_%E182338182363%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182309182347%_)
                                  (let ((_%e182343182355%_
                                         (gx#syntax-e _%e182309182347%_)))
                                    (let ((_%hd182344182358%_
                                           (##car _%e182343182355%_))
                                          (_%tl182345182360%_
                                           (##cdr _%e182343182355%_)))
                                      (if (and (gx#identifier?
                                                _%hd182344182358%_)
                                               (gx#core-identifier=?
                                                _%hd182344182358%_
                                                '%#declare))
                                          (_%K182306%_
                                           _%rest182307%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd182305%_)
                                                 _%r182308%_))
                                          (_%E182342182351%_))))
                                  (_%E182342182351%_))))
                           (_%E182334182375%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182309182347%_)
                                  (let ((_%e182339182367%_
                                         (gx#syntax-e _%e182309182347%_)))
                                    (let ((_%hd182340182370%_
                                           (##car _%e182339182367%_))
                                          (_%tl182341182372%_
                                           (##cdr _%e182339182367%_)))
                                      (if (and (gx#identifier?
                                                _%hd182340182370%_)
                                               (gx#core-identifier=?
                                                _%hd182340182370%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd182305%_)
                                            (_%K182306%_
                                             _%rest182307%_
                                             _%r182308%_))
                                          (_%E182338182363%_))))
                                  (_%E182338182363%_))))
                           (_%E182324182387%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182309182347%_)
                                  (let ((_%e182335182379%_
                                         (gx#syntax-e _%e182309182347%_)))
                                    (let ((_%hd182336182382%_
                                           (##car _%e182335182379%_))
                                          (_%tl182337182384%_
                                           (##cdr _%e182335182379%_)))
                                      (if (and (gx#identifier?
                                                _%hd182336182382%_)
                                               (gx#core-identifier=?
                                                _%hd182336182382%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd182305%_)
                                            (_%K182306%_
                                             _%rest182307%_
                                             _%r182308%_))
                                          (_%E182334182375%_))))
                                  (_%E182334182375%_))))
                           (_%E182311182419%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182309182347%_)
                                  (let ((_%e182325182391%_
                                         (gx#syntax-e _%e182309182347%_)))
                                    (let ((_%hd182326182394%_
                                           (##car _%e182325182391%_))
                                          (_%tl182327182396%_
                                           (##cdr _%e182325182391%_)))
                                      (if (and (gx#identifier?
                                                _%hd182326182394%_)
                                               (gx#core-identifier=?
                                                _%hd182326182394%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182327182396%_)
                                              (let ((_%e182328182399%_
                                                     (gx#syntax-e
                                                      _%tl182327182396%_)))
                                                (let ((_%hd182329182402%_
                                                       (##car _%e182328182399%_))
                                                      (_%tl182330182404%_
                                                       (##cdr _%e182328182399%_)))
                                                  (let ((_%hd-bind182407%_
                                                         _%hd182329182402%_))
                                                    (if (gx#stx-pair?
                                                         _%tl182330182404%_)
                                                        (let ((_%e182331182409%_
                                                               (gx#syntax-e
                                                                _%tl182330182404%_)))
                                                          (let ((_%hd182332182412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e182331182409%_))
                        (_%tl182333182414%_ (##cdr _%e182331182409%_)))
                    (let ((_%expr182417%_ _%hd182332182412%_))
                      (if (gx#stx-null? _%tl182333182414%_)
                          (if (gx#core-bind-values? _%hd-bind182407%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind182407%_)
                                (_%K182306%_
                                 _%rest182307%_
                                 (cons _%hd182305%_ _%r182308%_)))
                              (_%E182324182387%_))
                          (_%E182324182387%_)))))
                (_%E182324182387%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182324182387%_))
                                          (_%E182324182387%_))))
                                  (_%E182324182387%_))))
                           (_%E182310182463%_
                            (lambda ()
                              (if (gx#stx-pair? _%e182309182347%_)
                                  (let ((_%e182312182423%_
                                         (gx#syntax-e _%e182309182347%_)))
                                    (let ((_%hd182313182426%_
                                           (##car _%e182312182423%_))
                                          (_%tl182314182428%_
                                           (##cdr _%e182312182423%_)))
                                      (if (and (gx#identifier?
                                                _%hd182313182426%_)
                                               (gx#core-identifier=?
                                                _%hd182313182426%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl182314182428%_)
                                              (let ((_%e182315182431%_
                                                     (gx#syntax-e
                                                      _%tl182314182428%_)))
                                                (let ((_%hd182316182434%_
                                                       (##car _%e182315182431%_))
                                                      (_%tl182317182436%_
                                                       (##cdr _%e182315182431%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd182316182434%_)
                                                      (let ((_%e182321182439%_
                                                             (gx#syntax-e
                                                              _%hd182316182434%_)))
                                                        (let ((_%hd182322182442%_
                                                               (##car _%e182321182439%_))
                                                              (_%tl182323182444%_
                                                               (##cdr _%e182321182439%_)))
                                                          (let ((_%id182447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd182322182442%_))
                    (if (gx#stx-null? _%tl182323182444%_)
                        (if (gx#stx-pair? _%tl182317182436%_)
                            (let ((_%e182318182449%_
                                   (gx#syntax-e _%tl182317182436%_)))
                              (let ((_%hd182319182452%_
                                     (##car _%e182318182449%_))
                                    (_%tl182320182454%_
                                     (##cdr _%e182318182449%_)))
                                (let* ((_%expr182457%_ _%hd182319182452%_)
                                       (_%props182459%_ _%tl182320182454%_))
                                  (if (gx#identifier? _%id182447%_)
                                      (let ((_%bind182461%_
                                             (gx#core-bind-runtime!__0
                                              _%id182447%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind182461%_
                                         _%props182459%_)
                                        (_%K182306%_
                                         _%rest182307%_
                                         (cons _%hd182305%_ _%r182308%_)))
                                      (_%E182311182419%_)))))
                            (_%E182311182419%_))
                        (_%E182311182419%_)))))
              (_%E182311182419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E182311182419%_))
                                          (_%E182311182419%_))))
                                  (_%E182311182419%_)))))
                      (_%E182310182463%_))))
                 (_%wrap-internal182147%_
                  (lambda (_%rbody182149%_)
                    (let _%lp182151%_ ((_%rest182153%_ _%rbody182149%_)
                                       (_%decls182154%_ '())
                                       (_%bind182155%_ '())
                                       (_%body182156%_ '()))
                      (let* ((_%e182157182164%_ _%rest182153%_)
                             (_%E182159182213%_
                              (lambda ()
                                (let* ((_%body182208%_
                                        (let* ((_%body182167182177%_
                                                _%body182156%_)
                                               (_%else182170182185%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body182156%_)
                                                   (gx#stx-source
                                                    _%stx182141%_)))))
                                          (let ((_%K182175182205%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx182141%_)))
                                                (_%K182172182191%_
                                                 (lambda (_%expr182189%_)
                                                   _%expr182189%_)))
                                            (let ((_%try-match182169182201%_
                                                   (lambda ()
                                                     (if (pair? _%body182167182177%_)
                                                         (let ((_%tl182174182196%_
                                                                (##cdr _%body182167182177%_))
                                                               (_%hd182173182194%_
                                                                (##car _%body182167182177%_)))
                                                           (if (null? _%tl182174182196%_)
                                                               (let ((_%expr182199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd182173182194%_))
                         (_%K182172182191%_ _%expr182199%_))
                       (_%else182170182185%_)))
                 (_%else182170182185%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body182167182177%_)
                                                  (_%K182175182205%_)
                                                  (_%try-match182169182201%_))))))
                                       (_%body182210%_
                                        (if (null? _%bind182155%_)
                                            _%body182208%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind182155%_
                                                         (cons _%body182208%_
                                                               '())))
                                             (gx#stx-source _%stx182141%_)))))
                                  (if (null? _%decls182154%_)
                                      _%body182210%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls182154%_
                                                   (cons _%body182210%_ '())))
                                       (gx#stx-source _%stx182141%_))))))
                             (_%E182158182301%_
                              (lambda ()
                                (if (gx#stx-pair? _%e182157182164%_)
                                    (let ((_%e182160182217%_
                                           (gx#syntax-e _%e182157182164%_)))
                                      (let ((_%hd182161182220%_
                                             (##car _%e182160182217%_))
                                            (_%tl182162182222%_
                                             (##cdr _%e182160182217%_)))
                                        (let* ((_%hd182225%_
                                                _%hd182161182220%_)
                                               (_%rest182227%_
                                                _%tl182162182222%_)
                                               (_%e182228182245%_ _%hd182225%_)
                                               (_%E182240182249%_
                                                (lambda ()
                                                  (if (null? _%bind182155%_)
                                                      (_%lp182151%_
                                                       _%rest182227%_
                                                       _%decls182154%_
                                                       _%bind182155%_
                                                       (cons _%hd182225%_
                                                             _%body182156%_))
                                                      (_%lp182151%_
                                                       _%rest182227%_
                                                       _%decls182154%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd182225%_ '()))
                     _%bind182155%_)
               _%body182156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182230182263%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e182228182245%_)
                                                      (let ((_%e182241182253%_
                                                             (gx#syntax-e
                                                              _%e182228182245%_)))
                                                        (let ((_%hd182242182256%_
                                                               (##car _%e182241182253%_))
                                                              (_%tl182243182258%_
                                                               (##cdr _%e182241182253%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd182242182256%_)
                           (gx#core-identifier=?
                            _%hd182242182256%_
                            '%#declare))
                      (let ((_%xdecls182261%_ _%tl182243182258%_))
                        (_%lp182151%_
                         _%rest182227%_
                         (gx#stx-foldr cons _%decls182154%_ _%xdecls182261%_)
                         _%bind182155%_
                         _%body182156%_))
                      (_%E182240182249%_))))
              (_%E182240182249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E182229182297%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e182228182245%_)
                                                      (let ((_%e182231182267%_
                                                             (gx#syntax-e
                                                              _%e182228182245%_)))
                                                        (let ((_%hd182232182270%_
                                                               (##car _%e182231182267%_))
                                                              (_%tl182233182272%_
                                                               (##cdr _%e182231182267%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd182232182270%_)
                           (gx#core-identifier=?
                            _%hd182232182270%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl182233182272%_)
                          (let ((_%e182234182275%_
                                 (gx#syntax-e _%tl182233182272%_)))
                            (let ((_%hd182235182278%_
                                   (##car _%e182234182275%_))
                                  (_%tl182236182280%_
                                   (##cdr _%e182234182275%_)))
                              (let ((_%hd-bind182283%_ _%hd182235182278%_))
                                (if (gx#stx-pair? _%tl182236182280%_)
                                    (let ((_%e182237182285%_
                                           (gx#syntax-e _%tl182236182280%_)))
                                      (let ((_%hd182238182288%_
                                             (##car _%e182237182285%_))
                                            (_%tl182239182290%_
                                             (##cdr _%e182237182285%_)))
                                        (let* ((_%expr182293%_
                                                _%hd182238182288%_)
                                               (_%ignore-props182295%_
                                                _%tl182239182290%_))
                                          (_%lp182151%_
                                           _%rest182227%_
                                           _%decls182154%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind182283%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr182293%_)
                                                             '()))
                                                 _%bind182155%_)
                                           _%body182156%_))))
                                    (_%E182230182263%_)))))
                          (_%E182230182263%_))
                      (_%E182230182263%_))))
              (_%E182230182263%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E182229182297%_))))
                                    (_%E182159182213%_)))))
                        (_%E182158182301%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body182142%_)
            (gx#stx-source _%stx182141%_))
           _%expand-special182144%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx182079%_)
        (let* ((_%e182080182087%_ _%stx182079%_)
               (_%E182082182091%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e182080182087%_)))
               (_%E182081182137%_
                (lambda ()
                  (if (gx#stx-pair? _%e182080182087%_)
                      (let ((_%e182083182095%_
                             (gx#syntax-e _%e182080182087%_)))
                        (let ((_%hd182084182098%_ (##car _%e182083182095%_))
                              (_%tl182085182100%_ (##cdr _%e182083182095%_)))
                          (let ((_%body182103%_ _%tl182085182100%_))
                            (if (gx#stx-list? _%body182103%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl182105%_)
                                     (let* ((_%e182106182113%_ _%decl182105%_)
                                            (_%E182108182117%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e182106182113%_)))
                                            (_%E182107182133%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e182106182113%_)
                                                   (let ((_%e182109182121%_
                                                          (gx#syntax-e
                                                           _%e182106182113%_)))
                                                     (let ((_%hd182110182124%_
                                                            (##car _%e182109182121%_))
                                                           (_%tl182111182126%_
                                                            (##cdr _%e182109182121%_)))
                                                       (let* ((_%head182129%_
                                                               _%hd182110182124%_)
                                                              (_%args182131%_
                                                               _%tl182111182126%_))
                                                         (if (gx#stx-list?
                                                              _%args182131%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl182105%_)
                                                             (_%E182108182117%_)))))
                                                   (_%E182108182117%_)))))
                                       (_%E182107182133%_)))
                                   _%body182103%_))
                                 (gx#stx-source _%stx182079%_))
                                (_%E182082182091%_)))))
                      (_%E182082182091%_)))))
          (_%E182081182137%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx181983%_)
        (let* ((_%e181984181991%_ _%stx181983%_)
               (_%E181986181995%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181984181991%_)))
               (_%E181985182075%_
                (lambda ()
                  (if (gx#stx-pair? _%e181984181991%_)
                      (let ((_%e181987181999%_
                             (gx#syntax-e _%e181984181991%_)))
                        (let ((_%hd181988182002%_ (##car _%e181987181999%_))
                              (_%tl181989182004%_ (##cdr _%e181987181999%_)))
                          (let ((_%body182007%_ _%tl181989182004%_))
                            (let _%lp182009%_ ((_%rest182011%_ _%body182007%_)
                                               (_%r182012%_ '()))
                              (let* ((_%e182013182027%_ _%rest182011%_)
                                     (_%E182025182031%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx181983%_)))
                                     (_%E182015182035%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e182013182027%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r182012%_))
                                             (gx#stx-source _%stx181983%_))
                                            (_%E182025182031%_))))
                                     (_%E182014182071%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e182013182027%_)
                                            (let ((_%e182016182039%_
                                                   (gx#syntax-e
                                                    _%e182013182027%_)))
                                              (let ((_%hd182017182042%_
                                                     (##car _%e182016182039%_))
                                                    (_%tl182018182044%_
                                                     (##cdr _%e182016182039%_)))
                                                (if (gx#stx-pair?
                                                     _%hd182017182042%_)
                                                    (let ((_%e182019182047%_
                                                           (gx#syntax-e
                                                            _%hd182017182042%_)))
                                                      (let ((_%hd182020182050%_
                                                             (##car _%e182019182047%_))
                                                            (_%tl182021182052%_
                                                             (##cdr _%e182019182047%_)))
                                                        (let ((_%id182055%_
                                                               _%hd182020182050%_))
                                                          (if (gx#stx-pair?
                                                               _%tl182021182052%_)
                                                              (let ((_%e182022182057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl182021182052%_)))
                        (let ((_%hd182023182060%_ (##car _%e182022182057%_))
                              (_%tl182024182062%_ (##cdr _%e182022182057%_)))
                          (let ((_%eid182065%_ _%hd182023182060%_))
                            (if (gx#stx-null? _%tl182024182062%_)
                                (let ((_%rest182067%_ _%tl182018182044%_))
                                  (if (and (gx#identifier? _%id182055%_)
                                           (gx#identifier? _%eid182065%_))
                                      (let ((_%eid182069%_
                                             (gx#stx-e _%eid182065%_)))
                                        (gx#core-bind-extern!__0
                                         _%id182055%_
                                         _%eid182069%_)
                                        (_%lp182009%_
                                         _%rest182067%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id182055%_)
                                                     (cons _%eid182069%_ '()))
                                               _%r182012%_)))
                                      (_%E182015182035%_)))
                                (_%E182015182035%_)))))
                      (_%E182015182035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E182015182035%_))))
                                            (_%E182015182035%_)))))
                                (_%E182014182071%_))))))
                      (_%E181986181995%_)))))
          (_%E181985182075%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx181872%_)
        (let* ((_%e181873181899%_ _%stx181872%_)
               (_%E181888181903%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181873181899%_)))
               (_%E181875181935%_
                (lambda ()
                  (if (gx#stx-pair? _%e181873181899%_)
                      (let ((_%e181889181907%_
                             (gx#syntax-e _%e181873181899%_)))
                        (let ((_%hd181890181910%_ (##car _%e181889181907%_))
                              (_%tl181891181912%_ (##cdr _%e181889181907%_)))
                          (if (gx#stx-pair? _%tl181891181912%_)
                              (let ((_%e181892181915%_
                                     (gx#syntax-e _%tl181891181912%_)))
                                (let ((_%hd181893181918%_
                                       (##car _%e181892181915%_))
                                      (_%tl181894181920%_
                                       (##cdr _%e181892181915%_)))
                                  (let ((_%hd181923%_ _%hd181893181918%_))
                                    (if (gx#stx-pair? _%tl181894181920%_)
                                        (let ((_%e181895181925%_
                                               (gx#syntax-e
                                                _%tl181894181920%_)))
                                          (let ((_%hd181896181928%_
                                                 (##car _%e181895181925%_))
                                                (_%tl181897181930%_
                                                 (##cdr _%e181895181925%_)))
                                            (let ((_%expr181933%_
                                                   _%hd181896181928%_))
                                              (if (gx#stx-null?
                                                   _%tl181897181930%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd181923%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd181923%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd181923%_)
                             (cons (gx#core-expand-expression _%expr181933%_)
                                   '())))
                 (gx#stx-source _%stx181872%_)))
              (_%E181888181903%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181888181903%_)))))
                                        (_%E181888181903%_)))))
                              (_%E181888181903%_))))
                      (_%E181888181903%_))))
               (_%E181874181979%_
                (lambda ()
                  (if (gx#stx-pair? _%e181873181899%_)
                      (let ((_%e181876181939%_
                             (gx#syntax-e _%e181873181899%_)))
                        (let ((_%hd181877181942%_ (##car _%e181876181939%_))
                              (_%tl181878181944%_ (##cdr _%e181876181939%_)))
                          (if (gx#stx-pair? _%tl181878181944%_)
                              (let ((_%e181879181947%_
                                     (gx#syntax-e _%tl181878181944%_)))
                                (let ((_%hd181880181950%_
                                       (##car _%e181879181947%_))
                                      (_%tl181881181952%_
                                       (##cdr _%e181879181947%_)))
                                  (if (gx#stx-pair? _%hd181880181950%_)
                                      (let ((_%e181885181955%_
                                             (gx#syntax-e _%hd181880181950%_)))
                                        (let ((_%hd181886181958%_
                                               (##car _%e181885181955%_))
                                              (_%tl181887181960%_
                                               (##cdr _%e181885181955%_)))
                                          (let ((_%id181963%_
                                                 _%hd181886181958%_))
                                            (if (gx#stx-null?
                                                 _%tl181887181960%_)
                                                (if (gx#stx-pair?
                                                     _%tl181881181952%_)
                                                    (let ((_%e181882181965%_
                                                           (gx#syntax-e
                                                            _%tl181881181952%_)))
                                                      (let ((_%hd181883181968%_
                                                             (##car _%e181882181965%_))
                                                            (_%tl181884181970%_
                                                             (##cdr _%e181882181965%_)))
                                                        (let* ((_%expr181973%_
                                                                _%hd181883181968%_)
                                                               (_%props181975%_
                                                                _%tl181884181970%_))
                                                          (if (gx#identifier?
                                                               _%id181963%_)
                                                              (let ((_%bind181977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id181963%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind181977%_
                         _%props181975%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id181963%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr181973%_)
                                           '())))
                         (gx#stx-source _%stx181872%_)))
                      (_%E181875181935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E181875181935%_))
                                                (_%E181875181935%_)))))
                                      (_%E181875181935%_))))
                              (_%E181875181935%_))))
                      (_%E181875181935%_)))))
          (_%E181874181979%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx181811%_)
        (let* ((_%e181812181825%_ _%stx181811%_)
               (_%E181814181829%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181812181825%_)))
               (_%E181813181868%_
                (lambda ()
                  (if (gx#stx-pair? _%e181812181825%_)
                      (let ((_%e181815181833%_
                             (gx#syntax-e _%e181812181825%_)))
                        (let ((_%hd181816181836%_ (##car _%e181815181833%_))
                              (_%tl181817181838%_ (##cdr _%e181815181833%_)))
                          (if (gx#stx-pair? _%tl181817181838%_)
                              (let ((_%e181818181841%_
                                     (gx#syntax-e _%tl181817181838%_)))
                                (let ((_%hd181819181844%_
                                       (##car _%e181818181841%_))
                                      (_%tl181820181846%_
                                       (##cdr _%e181818181841%_)))
                                  (let ((_%id181849%_ _%hd181819181844%_))
                                    (if (gx#stx-pair? _%tl181820181846%_)
                                        (let ((_%e181821181851%_
                                               (gx#syntax-e
                                                _%tl181820181846%_)))
                                          (let ((_%hd181822181854%_
                                                 (##car _%e181821181851%_))
                                                (_%tl181823181856%_
                                                 (##cdr _%e181821181851%_)))
                                            (let* ((_%binding-id181859%_
                                                    _%hd181822181854%_)
                                                   (_%props181861%_
                                                    _%tl181823181856%_))
                                              (if (and (gx#identifier?
                                                        _%id181849%_)
                                                       (gx#identifier?
                                                        _%binding-id181859%_)
                                                       (gx#stx-list?
                                                        _%props181861%_))
                                                  (let* ((_%eid181863%_
                                                          (gx#stx-e
                                                           _%binding-id181859%_))
                                                         (_%bind181865%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id181849%_
                                                           _%eid181863%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind181865%_
                                                     _%props181861%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id181849%_)
                         (cons _%eid181863%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181814181829%_)))))
                                        (_%E181814181829%_)))))
                              (_%E181814181829%_))))
                      (_%E181814181829%_)))))
          (_%E181813181868%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind181746%_ _%props181747%_)
        (letrec ((_%eval-prop181749%_
                  (lambda (_%prop181809%_)
                    (gx#eval-expression+1 _%prop181809%_))))
          (let _%loop181751%_ ((_%rest181753%_ _%props181747%_)
                               (_%props181754%_ '()))
            (let* ((_%e181755181766%_ _%rest181753%_)
                   (_%E181764181770%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e181755181766%_)))
                   (_%E181757181774%_
                    (lambda ()
                      (if (gx#stx-null? _%e181755181766%_)
                          (if (null? _%props181754%_)
                              '#!void
                              (##structure-set!
                               _%bind181746%_
                               (reverse! _%props181754%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E181764181770%_))))
                   (_%E181756181805%_
                    (lambda ()
                      (if (gx#stx-pair? _%e181755181766%_)
                          (let ((_%e181758181778%_
                                 (gx#syntax-e _%e181755181766%_)))
                            (let ((_%hd181759181781%_
                                   (##car _%e181758181778%_))
                                  (_%tl181760181783%_
                                   (##cdr _%e181758181778%_)))
                              (let ((_%key181786%_ _%hd181759181781%_))
                                (if (gx#stx-pair? _%tl181760181783%_)
                                    (let ((_%e181761181788%_
                                           (gx#syntax-e _%tl181760181783%_)))
                                      (let ((_%hd181762181791%_
                                             (##car _%e181761181788%_))
                                            (_%tl181763181793%_
                                             (##cdr _%e181761181788%_)))
                                        (let* ((_%prop181796%_
                                                _%hd181762181791%_)
                                               (_%rest181798%_
                                                _%tl181763181793%_))
                                          (if (gx#stx-keyword? _%key181786%_)
                                              (let* ((_%key181800%_
                                                      (gx#stx-e _%key181786%_))
                                                     (_%$e181802%_
                                                      _%key181800%_))
                                                (if (eq? 'macro: _%$e181802%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind181746%_
                                                       (if (gx#identifier?
                                                            _%prop181796%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop181796%_)
                                                           (gx#eval-expression+1
                                                            _%prop181796%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop181751%_
                                                       _%rest181798%_
                                                       _%props181754%_))
                                                    (if (eq? 'type:
                                                             _%$e181802%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind181746%_
                                                           (gx#eval-expression+1
                                                            _%prop181796%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop181751%_
                                                           _%rest181798%_
                                                           _%props181754%_))
                                                        (_%loop181751%_
                                                         _%rest181798%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop181796%_)
                                                               (cons _%key181800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props181754%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E181757181774%_)))))
                                    (_%E181757181774%_)))))
                          (_%E181757181774%_)))))
              (_%E181756181805%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx181689%_)
        (let* ((_%e181690181703%_ _%stx181689%_)
               (_%E181692181707%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181690181703%_)))
               (_%E181691181742%_
                (lambda ()
                  (if (gx#stx-pair? _%e181690181703%_)
                      (let ((_%e181693181711%_
                             (gx#syntax-e _%e181690181703%_)))
                        (let ((_%hd181694181714%_ (##car _%e181693181711%_))
                              (_%tl181695181716%_ (##cdr _%e181693181711%_)))
                          (if (gx#stx-pair? _%tl181695181716%_)
                              (let ((_%e181696181719%_
                                     (gx#syntax-e _%tl181695181716%_)))
                                (let ((_%hd181697181722%_
                                       (##car _%e181696181719%_))
                                      (_%tl181698181724%_
                                       (##cdr _%e181696181719%_)))
                                  (let ((_%id181727%_ _%hd181697181722%_))
                                    (if (gx#stx-pair? _%tl181698181724%_)
                                        (let ((_%e181699181729%_
                                               (gx#syntax-e
                                                _%tl181698181724%_)))
                                          (let ((_%hd181700181732%_
                                                 (##car _%e181699181729%_))
                                                (_%tl181701181734%_
                                                 (##cdr _%e181699181729%_)))
                                            (let ((_%expr181737%_
                                                   _%hd181700181732%_))
                                              (if (gx#stx-null?
                                                   _%tl181701181734%_)
                                                  (if (gx#identifier?
                                                       _%id181727%_)
                                                      (let ((_g182903_
                                                             (gx#core-expand-expression+1
                                                              _%expr181737%_)))
                                                        (begin
                                                          (let ((_g182904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g182903_)
                             (##values-length _g182903_)
                             1)))
                    (if (not (##fx= _g182904_ 2))
                        (error "Context expects 2 values" _g182904_)))
                  (let ((_%e-stx181739%_ (##values-ref _g182903_ 0))
                        (_%e181740%_ (##values-ref _g182903_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id181727%_ _%e181740%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id181727%_)
                                   (cons _%e-stx181739%_ '())))
                       (gx#stx-source _%stx181689%_))))))
              (_%E181692181707%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181692181707%_)))))
                                        (_%E181692181707%_)))))
                              (_%E181692181707%_))))
                      (_%E181692181707%_)))))
          (_%E181691181742%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx181633%_)
        (let* ((_%e181634181647%_ _%stx181633%_)
               (_%E181636181651%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181634181647%_)))
               (_%E181635181685%_
                (lambda ()
                  (if (gx#stx-pair? _%e181634181647%_)
                      (let ((_%e181637181655%_
                             (gx#syntax-e _%e181634181647%_)))
                        (let ((_%hd181638181658%_ (##car _%e181637181655%_))
                              (_%tl181639181660%_ (##cdr _%e181637181655%_)))
                          (if (gx#stx-pair? _%tl181639181660%_)
                              (let ((_%e181640181663%_
                                     (gx#syntax-e _%tl181639181660%_)))
                                (let ((_%hd181641181666%_
                                       (##car _%e181640181663%_))
                                      (_%tl181642181668%_
                                       (##cdr _%e181640181663%_)))
                                  (let ((_%id181671%_ _%hd181641181666%_))
                                    (if (gx#stx-pair? _%tl181642181668%_)
                                        (let ((_%e181643181673%_
                                               (gx#syntax-e
                                                _%tl181642181668%_)))
                                          (let ((_%hd181644181676%_
                                                 (##car _%e181643181673%_))
                                                (_%tl181645181678%_
                                                 (##cdr _%e181643181673%_)))
                                            (let ((_%alias-id181681%_
                                                   _%hd181644181676%_))
                                              (if (gx#stx-null?
                                                   _%tl181645181678%_)
                                                  (if (and (gx#identifier?
                                                            _%id181671%_)
                                                           (gx#identifier?
                                                            _%alias-id181681%_))
                                                      (let ((_%alias-id181683%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id181681%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id181671%_
                                                         _%alias-id181683%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id181671%_)
                             (cons _%alias-id181683%_ '())))))
              (_%E181636181651%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E181636181651%_)))))
                                        (_%E181636181651%_)))))
                              (_%E181636181651%_))))
                      (_%E181636181651%_)))))
          (_%E181635181685%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx181576%_ _%wrap?181577%_)
        (let* ((_%e181578181588%_ _%stx181576%_)
               (_%E181580181592%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181578181588%_)))
               (_%E181579181619%_
                (lambda ()
                  (if (gx#stx-pair? _%e181578181588%_)
                      (let ((_%e181581181596%_
                             (gx#syntax-e _%e181578181588%_)))
                        (let ((_%hd181582181599%_ (##car _%e181581181596%_))
                              (_%tl181583181601%_ (##cdr _%e181581181596%_)))
                          (if (gx#stx-pair? _%tl181583181601%_)
                              (let ((_%e181584181604%_
                                     (gx#syntax-e _%tl181583181601%_)))
                                (let ((_%hd181585181607%_
                                       (##car _%e181584181604%_))
                                      (_%tl181586181609%_
                                       (##cdr _%e181584181604%_)))
                                  (let* ((_%hd181612%_ _%hd181585181607%_)
                                         (_%body181614%_ _%tl181586181609%_))
                                    (if (gx#core-bind-values? _%hd181612%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd181612%_)
                                           (let ((_%body181617%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd181612%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx181576%_
                                                               _%body181614%_)
                                                              '()))))
                                             (if _%wrap?181577%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body181617%_)
                                                  (gx#stx-source
                                                   _%stx181576%_))
                                                 _%body181617%_)))
                                         gx#current-expander-context
                                         (let ((__obj182886
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182886)
                                           __obj182886))
                                        (_%E181580181592%_)))))
                              (_%E181580181592%_))))
                      (_%E181580181592%_)))))
          (_%E181579181619%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx181626%_)
        (let ((_%wrap?181628%_ '#t))
          (gx#core-expand-lambda%__% _%stx181626%_ _%wrap?181628%_))))
    (define gx#core-expand-lambda%
      (lambda _g182905_
        (let ((_g182906_ (##length _g182905_)))
          (cond ((##fx= _g182906_ 1)
                 (apply gx#core-expand-lambda%__0 _g182905_))
                ((##fx= _g182906_ 2)
                 (apply gx#core-expand-lambda%__% _g182905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g182905_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx181540%_)
        (let* ((_%e181541181548%_ _%stx181540%_)
               (_%E181543181552%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181541181548%_)))
               (_%E181542181571%_
                (lambda ()
                  (if (gx#stx-pair? _%e181541181548%_)
                      (let ((_%e181544181556%_
                             (gx#syntax-e _%e181541181548%_)))
                        (let ((_%hd181545181559%_ (##car _%e181544181556%_))
                              (_%tl181546181561%_ (##cdr _%e181544181556%_)))
                          (let ((_%clauses181564%_ _%tl181546181561%_))
                            (if (gx#stx-list? _%clauses181564%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause181566%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause181566%_)
                                       (let ((_%$e181568%_
                                              (gx#stx-source
                                               _%clause181566%_)))
                                         (if _%$e181568%_
                                             _%$e181568%_
                                             (gx#stx-source _%stx181540%_))))
                                      '#f))
                                   _%clauses181564%_))
                                 (gx#stx-source _%stx181540%_))
                                (_%E181543181552%_)))))
                      (_%E181543181552%_)))))
          (_%E181542181571%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx181494%_)
        (let* ((_%e181495181505%_ _%stx181494%_)
               (_%E181497181509%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181495181505%_)))
               (_%E181496181536%_
                (lambda ()
                  (if (gx#stx-pair? _%e181495181505%_)
                      (let ((_%e181498181513%_
                             (gx#syntax-e _%e181495181505%_)))
                        (let ((_%hd181499181516%_ (##car _%e181498181513%_))
                              (_%tl181500181518%_ (##cdr _%e181498181513%_)))
                          (if (gx#stx-pair? _%tl181500181518%_)
                              (let ((_%e181501181521%_
                                     (gx#syntax-e _%tl181500181518%_)))
                                (let ((_%hd181502181524%_
                                       (##car _%e181501181521%_))
                                      (_%tl181503181526%_
                                       (##cdr _%e181501181521%_)))
                                  (let* ((_%hd181529%_ _%hd181502181524%_)
                                         (_%body181531%_ _%tl181503181526%_))
                                    (if (gx#core-expand-let-bind? _%hd181529%_)
                                        (let ((_%expressions181533%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd181529%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd181529%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd181529%_
                                                           _%expressions181533%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx181494%_
                         _%body181531%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx181494%_)))
                                           gx#current-expander-context
                                           (let ((__obj182887
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj182887)
                                             __obj182887)))
                                        (_%E181497181509%_)))))
                              (_%E181497181509%_))))
                      (_%E181497181509%_)))))
          (_%E181496181536%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx181439%_ _%form181440%_)
        (let* ((_%e181441181451%_ _%stx181439%_)
               (_%E181443181455%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181441181451%_)))
               (_%E181442181480%_
                (lambda ()
                  (if (gx#stx-pair? _%e181441181451%_)
                      (let ((_%e181444181459%_
                             (gx#syntax-e _%e181441181451%_)))
                        (let ((_%hd181445181462%_ (##car _%e181444181459%_))
                              (_%tl181446181464%_ (##cdr _%e181444181459%_)))
                          (if (gx#stx-pair? _%tl181446181464%_)
                              (let ((_%e181447181467%_
                                     (gx#syntax-e _%tl181446181464%_)))
                                (let ((_%hd181448181470%_
                                       (##car _%e181447181467%_))
                                      (_%tl181449181472%_
                                       (##cdr _%e181447181467%_)))
                                  (let* ((_%hd181475%_ _%hd181448181470%_)
                                         (_%body181477%_ _%tl181449181472%_))
                                    (if (gx#core-expand-let-bind? _%hd181475%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd181475%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form181440%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd181475%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd181475%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx181439%_
                                                               _%body181477%_)
                                                              '())))
                                            (gx#stx-source _%stx181439%_)))
                                         gx#current-expander-context
                                         (let ((__obj182888
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182888)
                                           __obj182888))
                                        (_%E181443181455%_)))))
                              (_%E181443181455%_))))
                      (_%E181443181455%_)))))
          (_%E181442181480%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx181487%_)
        (let ((_%form181489%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx181487%_ _%form181489%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g182907_
        (let ((_g182908_ (##length _g182907_)))
          (cond ((##fx= _g182908_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g182907_))
                ((##fx= _g182908_ 2)
                 (apply gx#core-expand-letrec-values%__% _g182907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g182907_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx181436%_)
        (gx#core-expand-letrec-values%__% _%stx181436%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx181393%_)
        (if (gx#stx-list? _%stx181393%_)
            (gx#stx-andmap
             (lambda (_%bind181395%_)
               (let* ((_%e181396181406%_ _%bind181395%_)
                      (_%E181398181410%_ (lambda () '#f))
                      (_%E181397181432%_
                       (lambda ()
                         (if (gx#stx-pair? _%e181396181406%_)
                             (let ((_%e181399181414%_
                                    (gx#syntax-e _%e181396181406%_)))
                               (let ((_%hd181400181417%_
                                      (##car _%e181399181414%_))
                                     (_%tl181401181419%_
                                      (##cdr _%e181399181414%_)))
                                 (let ((_%hd181422%_ _%hd181400181417%_))
                                   (if (gx#stx-pair? _%tl181401181419%_)
                                       (let ((_%e181402181424%_
                                              (gx#syntax-e
                                               _%tl181401181419%_)))
                                         (let ((_%hd181403181427%_
                                                (##car _%e181402181424%_))
                                               (_%tl181404181429%_
                                                (##cdr _%e181402181424%_)))
                                           (if (gx#stx-null?
                                                _%tl181404181429%_)
                                               (gx#core-bind-values?
                                                _%hd181422%_)
                                               (_%E181398181410%_))))
                                       (_%E181398181410%_)))))
                             (_%E181398181410%_)))))
                 (_%E181397181432%_)))
             _%stx181393%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind181352%_)
        (let* ((_%e181353181363%_ _%bind181352%_)
               (_%E181355181367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181353181363%_)))
               (_%E181354181389%_
                (lambda ()
                  (if (gx#stx-pair? _%e181353181363%_)
                      (let ((_%e181356181371%_
                             (gx#syntax-e _%e181353181363%_)))
                        (let ((_%hd181357181374%_ (##car _%e181356181371%_))
                              (_%tl181358181376%_ (##cdr _%e181356181371%_)))
                          (if (gx#stx-pair? _%tl181358181376%_)
                              (let ((_%e181359181379%_
                                     (gx#syntax-e _%tl181358181376%_)))
                                (let ((_%hd181360181382%_
                                       (##car _%e181359181379%_))
                                      (_%tl181361181384%_
                                       (##cdr _%e181359181379%_)))
                                  (let ((_%expr181387%_ _%hd181360181382%_))
                                    (if (gx#stx-null? _%tl181361181384%_)
                                        (gx#core-expand-expression
                                         _%expr181387%_)
                                        (_%E181355181367%_)))))
                              (_%E181355181367%_))))
                      (_%E181355181367%_)))))
          (_%E181354181389%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind181311%_)
        (let* ((_%e181312181322%_ _%bind181311%_)
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
                          (let ((_%hd181338%_ _%hd181316181333%_))
                            (if (gx#stx-pair? _%tl181317181335%_)
                                (let ((_%e181318181340%_
                                       (gx#syntax-e _%tl181317181335%_)))
                                  (let ((_%hd181319181343%_
                                         (##car _%e181318181340%_))
                                        (_%tl181320181345%_
                                         (##cdr _%e181318181340%_)))
                                    (if (gx#stx-null? _%tl181320181345%_)
                                        (gx#core-bind-values!__0 _%hd181338%_)
                                        (_%E181314181326%_))))
                                (_%E181314181326%_)))))
                      (_%E181314181326%_)))))
          (_%E181313181348%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind181269%_ _%expr181270%_)
        (let* ((_%e181271181281%_ _%bind181269%_)
               (_%E181273181285%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181271181281%_)))
               (_%E181272181307%_
                (lambda ()
                  (if (gx#stx-pair? _%e181271181281%_)
                      (let ((_%e181274181289%_
                             (gx#syntax-e _%e181271181281%_)))
                        (let ((_%hd181275181292%_ (##car _%e181274181289%_))
                              (_%tl181276181294%_ (##cdr _%e181274181289%_)))
                          (let ((_%hd181297%_ _%hd181275181292%_))
                            (if (gx#stx-pair? _%tl181276181294%_)
                                (let ((_%e181277181299%_
                                       (gx#syntax-e _%tl181276181294%_)))
                                  (let ((_%hd181278181302%_
                                         (##car _%e181277181299%_))
                                        (_%tl181279181304%_
                                         (##cdr _%e181277181299%_)))
                                    (if (gx#stx-null? _%tl181279181304%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd181297%_)
                                              (cons _%expr181270%_ '()))
                                        (_%E181273181285%_))))
                                (_%E181273181285%_)))))
                      (_%E181273181285%_)))))
          (_%E181272181307%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx181223%_)
        (let* ((_%e181224181234%_ _%stx181223%_)
               (_%E181226181238%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181224181234%_)))
               (_%E181225181265%_
                (lambda ()
                  (if (gx#stx-pair? _%e181224181234%_)
                      (let ((_%e181227181242%_
                             (gx#syntax-e _%e181224181234%_)))
                        (let ((_%hd181228181245%_ (##car _%e181227181242%_))
                              (_%tl181229181247%_ (##cdr _%e181227181242%_)))
                          (if (gx#stx-pair? _%tl181229181247%_)
                              (let ((_%e181230181250%_
                                     (gx#syntax-e _%tl181229181247%_)))
                                (let ((_%hd181231181253%_
                                       (##car _%e181230181250%_))
                                      (_%tl181232181255%_
                                       (##cdr _%e181230181250%_)))
                                  (let* ((_%hd181258%_ _%hd181231181253%_)
                                         (_%body181260%_ _%tl181232181255%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd181258%_)
                                        (let ((_%expanders181262%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd181258%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd181258%_
                                              _%expanders181262%_)
                                             (gx#core-expand-local-block
                                              _%stx181223%_
                                              _%body181260%_))
                                           gx#current-expander-context
                                           (let ((__obj182889
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj182889)
                                             __obj182889)))
                                        (_%E181226181238%_)))))
                              (_%E181226181238%_))))
                      (_%E181226181238%_)))))
          (_%E181225181265%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx181172%_)
        (let* ((_%e181173181183%_ _%stx181172%_)
               (_%E181175181187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181173181183%_)))
               (_%E181174181219%_
                (lambda ()
                  (if (gx#stx-pair? _%e181173181183%_)
                      (let ((_%e181176181191%_
                             (gx#syntax-e _%e181173181183%_)))
                        (let ((_%hd181177181194%_ (##car _%e181176181191%_))
                              (_%tl181178181196%_ (##cdr _%e181176181191%_)))
                          (if (gx#stx-pair? _%tl181178181196%_)
                              (let ((_%e181179181199%_
                                     (gx#syntax-e _%tl181178181196%_)))
                                (let ((_%hd181180181202%_
                                       (##car _%e181179181199%_))
                                      (_%tl181181181204%_
                                       (##cdr _%e181179181199%_)))
                                  (let* ((_%hd181207%_ _%hd181180181202%_)
                                         (_%body181209%_ _%tl181181181204%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd181207%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd181207%_
                                            (make-list
                                             (gx#stx-length _%hd181207%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g181211181214%_
                                                     _%g181212181216%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g181211181214%_
                                               _%g181212181216%_
                                               '#t))
                                            _%hd181207%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd181207%_))
                                           (gx#core-expand-local-block
                                            _%stx181172%_
                                            _%body181209%_))
                                         gx#current-expander-context
                                         (let ((__obj182890
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj182890)
                                           __obj182890))
                                        (_%E181175181187%_)))))
                              (_%E181175181187%_))))
                      (_%E181175181187%_)))))
          (_%E181174181219%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx181129%_)
        (if (gx#stx-list? _%stx181129%_)
            (gx#stx-andmap
             (lambda (_%bind181131%_)
               (let* ((_%e181132181142%_ _%bind181131%_)
                      (_%E181134181146%_ (lambda () '#f))
                      (_%E181133181168%_
                       (lambda ()
                         (if (gx#stx-pair? _%e181132181142%_)
                             (let ((_%e181135181150%_
                                    (gx#syntax-e _%e181132181142%_)))
                               (let ((_%hd181136181153%_
                                      (##car _%e181135181150%_))
                                     (_%tl181137181155%_
                                      (##cdr _%e181135181150%_)))
                                 (let ((_%hd181158%_ _%hd181136181153%_))
                                   (if (gx#stx-pair? _%tl181137181155%_)
                                       (let ((_%e181138181160%_
                                              (gx#syntax-e
                                               _%tl181137181155%_)))
                                         (let ((_%hd181139181163%_
                                                (##car _%e181138181160%_))
                                               (_%tl181140181165%_
                                                (##cdr _%e181138181160%_)))
                                           (if (gx#stx-null?
                                                _%tl181140181165%_)
                                               (gx#identifier? _%hd181158%_)
                                               (_%E181134181146%_))))
                                       (_%E181134181146%_)))))
                             (_%E181134181146%_)))))
                 (_%E181133181168%_)))
             _%stx181129%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind181085%_)
        (let* ((_%e181086181096%_ _%bind181085%_)
               (_%E181088181100%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181086181096%_)))
               (_%E181087181125%_
                (lambda ()
                  (if (gx#stx-pair? _%e181086181096%_)
                      (let ((_%e181089181104%_
                             (gx#syntax-e _%e181086181096%_)))
                        (let ((_%hd181090181107%_ (##car _%e181089181104%_))
                              (_%tl181091181109%_ (##cdr _%e181089181104%_)))
                          (if (gx#stx-pair? _%tl181091181109%_)
                              (let ((_%e181092181112%_
                                     (gx#syntax-e _%tl181091181109%_)))
                                (let ((_%hd181093181115%_
                                       (##car _%e181092181112%_))
                                      (_%tl181094181117%_
                                       (##cdr _%e181092181112%_)))
                                  (let ((_%expr181120%_ _%hd181093181115%_))
                                    (if (gx#stx-null? _%tl181094181117%_)
                                        (let ((_g182909_
                                               (gx#core-expand-expression+1
                                                _%expr181120%_)))
                                          (begin
                                            (let ((_g182910_
                                                   (if (##values? _g182909_)
                                                       (##values-length
                                                        _g182909_)
                                                       1)))
                                              (if (not (##fx= _g182910_ 2))
                                                  (error "Context expects 2 values"
                                                         _g182910_)))
                                            (let ((_%_181122%_
                                                   (##values-ref _g182909_ 0))
                                                  (_%e181123%_
                                                   (##values-ref _g182909_ 1)))
                                              _%e181123%_)))
                                        (_%E181088181100%_)))))
                              (_%E181088181100%_))))
                      (_%E181088181100%_)))))
          (_%E181087181125%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind181030%_ _%e181031%_ _%rebind?181032%_)
        (let* ((_%e181033181043%_ _%bind181030%_)
               (_%E181035181047%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e181033181043%_)))
               (_%E181034181069%_
                (lambda ()
                  (if (gx#stx-pair? _%e181033181043%_)
                      (let ((_%e181036181051%_
                             (gx#syntax-e _%e181033181043%_)))
                        (let ((_%hd181037181054%_ (##car _%e181036181051%_))
                              (_%tl181038181056%_ (##cdr _%e181036181051%_)))
                          (let ((_%id181059%_ _%hd181037181054%_))
                            (if (gx#stx-pair? _%tl181038181056%_)
                                (let ((_%e181039181061%_
                                       (gx#syntax-e _%tl181038181056%_)))
                                  (let ((_%hd181040181064%_
                                         (##car _%e181039181061%_))
                                        (_%tl181041181066%_
                                         (##cdr _%e181039181061%_)))
                                    (if (gx#stx-null? _%tl181041181066%_)
                                        (gx#core-bind-syntax!__1
                                         _%id181059%_
                                         _%e181031%_
                                         _%rebind?181032%_)
                                        (_%E181035181047%_))))
                                (_%E181035181047%_)))))
                      (_%E181035181047%_)))))
          (_%E181034181069%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind181076%_ _%e181077%_)
        (let ((_%rebind?181079%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind181076%_
           _%e181077%_
           _%rebind?181079%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g182911_
        (let ((_g182912_ (##length _g182911_)))
          (cond ((##fx= _g182912_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g182911_))
                ((##fx= _g182912_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g182911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g182911_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx180988%_)
        (let* ((_%e180989180999%_ _%stx180988%_)
               (_%E180991181003%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180989180999%_)))
               (_%E180990181025%_
                (lambda ()
                  (if (gx#stx-pair? _%e180989180999%_)
                      (let ((_%e180992181007%_
                             (gx#syntax-e _%e180989180999%_)))
                        (let ((_%hd180993181010%_ (##car _%e180992181007%_))
                              (_%tl180994181012%_ (##cdr _%e180992181007%_)))
                          (if (gx#stx-pair? _%tl180994181012%_)
                              (let ((_%e180995181015%_
                                     (gx#syntax-e _%tl180994181012%_)))
                                (let ((_%hd180996181018%_
                                       (##car _%e180995181015%_))
                                      (_%tl180997181020%_
                                       (##cdr _%e180995181015%_)))
                                  (let ((_%expr181023%_ _%hd180996181018%_))
                                    (if (gx#stx-null? _%tl180997181020%_)
                                        (gx#core-expand-expression
                                         _%expr181023%_)
                                        (_%E180991181003%_)))))
                              (_%E180991181003%_))))
                      (_%E180991181003%_)))))
          (_%E180990181025%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx180947%_)
        (let* ((_%e180948180958%_ _%stx180947%_)
               (_%E180950180962%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180948180958%_)))
               (_%E180949180984%_
                (lambda ()
                  (if (gx#stx-pair? _%e180948180958%_)
                      (let ((_%e180951180966%_
                             (gx#syntax-e _%e180948180958%_)))
                        (let ((_%hd180952180969%_ (##car _%e180951180966%_))
                              (_%tl180953180971%_ (##cdr _%e180951180966%_)))
                          (if (gx#stx-pair? _%tl180953180971%_)
                              (let ((_%e180954180974%_
                                     (gx#syntax-e _%tl180953180971%_)))
                                (let ((_%hd180955180977%_
                                       (##car _%e180954180974%_))
                                      (_%tl180956180979%_
                                       (##cdr _%e180954180974%_)))
                                  (let ((_%e180982%_ _%hd180955180977%_))
                                    (if (gx#stx-null? _%tl180956180979%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e180982%_)
                                                     '()))
                                         (gx#stx-source _%stx180947%_))
                                        (_%E180950180962%_)))))
                              (_%E180950180962%_))))
                      (_%E180950180962%_)))))
          (_%E180949180984%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx180906%_)
        (let* ((_%e180907180917%_ _%stx180906%_)
               (_%E180909180921%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180907180917%_)))
               (_%E180908180943%_
                (lambda ()
                  (if (gx#stx-pair? _%e180907180917%_)
                      (let ((_%e180910180925%_
                             (gx#syntax-e _%e180907180917%_)))
                        (let ((_%hd180911180928%_ (##car _%e180910180925%_))
                              (_%tl180912180930%_ (##cdr _%e180910180925%_)))
                          (if (gx#stx-pair? _%tl180912180930%_)
                              (let ((_%e180913180933%_
                                     (gx#syntax-e _%tl180912180930%_)))
                                (let ((_%hd180914180936%_
                                       (##car _%e180913180933%_))
                                      (_%tl180915180938%_
                                       (##cdr _%e180913180933%_)))
                                  (let ((_%e180941%_ _%hd180914180936%_))
                                    (if (gx#stx-null? _%tl180915180938%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e180941%_)
                                                     '()))
                                         (gx#stx-source _%stx180906%_))
                                        (_%E180909180921%_)))))
                              (_%E180909180921%_))))
                      (_%E180909180921%_)))))
          (_%E180908180943%_))))
    (define gx#core-expand-call%
      (lambda (_%stx180800%_)
        (letrec ((_%expand-runtime-call180802%_
                  (lambda (_%rator-expr180903%_ _%args180904%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr180903%_
                      (gx#stx-map1 gx#core-expand-expression _%args180904%_))
                     (gx#stx-source _%stx180800%_)))))
          (let* ((_%e180803180813%_ _%stx180800%_)
                 (_%E180805180817%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180803180813%_)))
                 (_%E180804180899%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180803180813%_)
                        (let ((_%e180806180821%_
                               (gx#syntax-e _%e180803180813%_)))
                          (let ((_%hd180807180824%_ (##car _%e180806180821%_))
                                (_%tl180808180826%_ (##cdr _%e180806180821%_)))
                            (if (gx#stx-pair? _%tl180808180826%_)
                                (let ((_%e180809180829%_
                                       (gx#syntax-e _%tl180808180826%_)))
                                  (let ((_%hd180810180832%_
                                         (##car _%e180809180829%_))
                                        (_%tl180811180834%_
                                         (##cdr _%e180809180829%_)))
                                    (let* ((_%rator180837%_ _%hd180810180832%_)
                                           (_%args180839%_ _%tl180811180834%_))
                                      (if (gx#stx-list? _%args180839%_)
                                          (let* ((_%rator-expr180841%_
                                                  (gx#core-expand-expression
                                                   _%rator180837%_))
                                                 (_%e180842180852%_
                                                  _%rator-expr180841%_)
                                                 (_%E180844180856%_
                                                  (lambda ()
                                                    (_%expand-runtime-call180802%_
                                                     _%rator-expr180841%_
                                                     _%args180839%_)))
                                                 (_%E180843180895%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e180842180852%_)
                                                        (let ((_%e180845180860%_
                                                               (gx#syntax-e
                                                                _%e180842180852%_)))
                                                          (let ((_%hd180846180863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e180845180860%_))
                        (_%tl180847180865%_ (##cdr _%e180845180860%_)))
                    (if (and (gx#identifier? _%hd180846180863%_)
                             (gx#core-identifier=? _%hd180846180863%_ '%#ref))
                        (if (gx#stx-pair? _%tl180847180865%_)
                            (let ((_%e180848180868%_
                                   (gx#syntax-e _%tl180847180865%_)))
                              (let ((_%hd180849180871%_
                                     (##car _%e180848180868%_))
                                    (_%tl180850180873%_
                                     (##cdr _%e180848180868%_)))
                                (let ((_%id180876%_ _%hd180849180871%_))
                                  (if (gx#stx-null? _%tl180850180873%_)
                                      (let ((_%$e180878%_
                                             (gx#resolve-identifier__0
                                              _%id180876%_)))
                                        (if _%$e180878%_
                                            ((lambda (_%bind180881%_)
                                               (let _%again180883%_ ((_%bind180885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind180881%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e180887%_
                                                        (if (##structure-instance-of?
                                                             _%bind180885%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind180885%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e180887%_
                                                       ((lambda (_%macro180890%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro180890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args180839%_)
                    (gx#stx-source _%stx180800%_))))
                _%$e180887%_)
               (if (##structure-direct-instance-of?
                    _%bind180885%_
                    'gx#import-binding::t)
                   (_%again180883%_
                    (##unchecked-structure-ref _%bind180885%_ '5 '#f '#f))
                   (_%expand-runtime-call180802%_
                    _%rator-expr180841%_
                    _%args180839%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e180878%_)
                                            (_%expand-runtime-call180802%_
                                             _%rator-expr180841%_
                                             _%args180839%_)))
                                      (_%E180844180856%_)))))
                            (_%E180844180856%_))
                        (_%E180844180856%_))))
                (_%E180844180856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E180843180895%_))
                                          (_%E180805180817%_)))))
                                (_%E180805180817%_))))
                        (_%E180805180817%_)))))
            (_%E180804180899%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx180733%_)
        (let* ((_%e180734180750%_ _%stx180733%_)
               (_%E180736180754%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180734180750%_)))
               (_%E180735180796%_
                (lambda ()
                  (if (gx#stx-pair? _%e180734180750%_)
                      (let ((_%e180737180758%_
                             (gx#syntax-e _%e180734180750%_)))
                        (let ((_%hd180738180761%_ (##car _%e180737180758%_))
                              (_%tl180739180763%_ (##cdr _%e180737180758%_)))
                          (if (gx#stx-pair? _%tl180739180763%_)
                              (let ((_%e180740180766%_
                                     (gx#syntax-e _%tl180739180763%_)))
                                (let ((_%hd180741180769%_
                                       (##car _%e180740180766%_))
                                      (_%tl180742180771%_
                                       (##cdr _%e180740180766%_)))
                                  (let ((_%test180774%_ _%hd180741180769%_))
                                    (if (gx#stx-pair? _%tl180742180771%_)
                                        (let ((_%e180743180776%_
                                               (gx#syntax-e
                                                _%tl180742180771%_)))
                                          (let ((_%hd180744180779%_
                                                 (##car _%e180743180776%_))
                                                (_%tl180745180781%_
                                                 (##cdr _%e180743180776%_)))
                                            (let ((_%K180784%_
                                                   _%hd180744180779%_))
                                              (if (gx#stx-pair?
                                                   _%tl180745180781%_)
                                                  (let ((_%e180746180786%_
                                                         (gx#syntax-e
                                                          _%tl180745180781%_)))
                                                    (let ((_%hd180747180789%_
                                                           (##car _%e180746180786%_))
                                                          (_%tl180748180791%_
                                                           (##cdr _%e180746180786%_)))
                                                      (let ((_%E180794%_
                                                             _%hd180747180789%_))
                                                        (if (gx#stx-null?
                                                             _%tl180748180791%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test180774%_)
                                 (cons (gx#core-expand-expression _%K180784%_)
                                       (cons (gx#core-expand-expression
                                              _%E180794%_)
                                             '()))))
                     (gx#stx-source _%stx180733%_))
                    (_%E180736180754%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180736180754%_)))))
                                        (_%E180736180754%_)))))
                              (_%E180736180754%_))))
                      (_%E180736180754%_)))))
          (_%E180735180796%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx180692%_)
        (let* ((_%e180693180703%_ _%stx180692%_)
               (_%E180695180707%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180693180703%_)))
               (_%E180694180729%_
                (lambda ()
                  (if (gx#stx-pair? _%e180693180703%_)
                      (let ((_%e180696180711%_
                             (gx#syntax-e _%e180693180703%_)))
                        (let ((_%hd180697180714%_ (##car _%e180696180711%_))
                              (_%tl180698180716%_ (##cdr _%e180696180711%_)))
                          (if (gx#stx-pair? _%tl180698180716%_)
                              (let ((_%e180699180719%_
                                     (gx#syntax-e _%tl180698180716%_)))
                                (let ((_%hd180700180722%_
                                       (##car _%e180699180719%_))
                                      (_%tl180701180724%_
                                       (##cdr _%e180699180719%_)))
                                  (let ((_%id180727%_ _%hd180700180722%_))
                                    (if (gx#stx-null? _%tl180701180724%_)
                                        (if (gx#identifier? _%id180727%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id180727%_
                                                          _%stx180692%_)
                                                         '()))
                                             (gx#stx-source _%stx180692%_))
                                            (_%E180695180707%_))
                                        (_%E180695180707%_)))))
                              (_%E180695180707%_))))
                      (_%E180695180707%_)))))
          (_%E180694180729%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx180638%_)
        (let* ((_%e180639180652%_ _%stx180638%_)
               (_%E180641180656%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180639180652%_)))
               (_%E180640180688%_
                (lambda ()
                  (if (gx#stx-pair? _%e180639180652%_)
                      (let ((_%e180642180660%_
                             (gx#syntax-e _%e180639180652%_)))
                        (let ((_%hd180643180663%_ (##car _%e180642180660%_))
                              (_%tl180644180665%_ (##cdr _%e180642180660%_)))
                          (if (gx#stx-pair? _%tl180644180665%_)
                              (let ((_%e180645180668%_
                                     (gx#syntax-e _%tl180644180665%_)))
                                (let ((_%hd180646180671%_
                                       (##car _%e180645180668%_))
                                      (_%tl180647180673%_
                                       (##cdr _%e180645180668%_)))
                                  (let ((_%id180676%_ _%hd180646180671%_))
                                    (if (gx#stx-pair? _%tl180647180673%_)
                                        (let ((_%e180648180678%_
                                               (gx#syntax-e
                                                _%tl180647180673%_)))
                                          (let ((_%hd180649180681%_
                                                 (##car _%e180648180678%_))
                                                (_%tl180650180683%_
                                                 (##cdr _%e180648180678%_)))
                                            (let ((_%expr180686%_
                                                   _%hd180649180681%_))
                                              (if (gx#stx-null?
                                                   _%tl180650180683%_)
                                                  (if (gx#identifier?
                                                       _%id180676%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id180676%_
                            _%stx180638%_)
                           (cons (gx#core-expand-expression _%expr180686%_)
                                 '())))
               (gx#stx-source _%stx180638%_))
              (_%E180641180656%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E180641180656%_)))))
                                        (_%E180641180656%_)))))
                              (_%E180641180656%_))))
                      (_%E180641180656%_)))))
          (_%E180640180688%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx180483%_)
        (letrec ((_%generate180485%_
                  (lambda (_%body180515%_)
                    (let _%lp180517%_ ((_%rest180519%_ _%body180515%_)
                                       (_%ns180520%_
                                        (gx#core-context-namespace__0))
                                       (_%r180521%_ '()))
                      (let* ((_%e180522180537%_ _%rest180519%_)
                             (_%E180535180541%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e180522180537%_)))
                             (_%E180531180545%_
                              (lambda ()
                                (if (gx#stx-null? _%e180522180537%_)
                                    (reverse _%r180521%_)
                                    (_%E180535180541%_))))
                             (_%E180524180602%_
                              (lambda ()
                                (if (gx#stx-pair? _%e180522180537%_)
                                    (let ((_%e180532180549%_
                                           (gx#syntax-e _%e180522180537%_)))
                                      (let ((_%hd180533180552%_
                                             (##car _%e180532180549%_))
                                            (_%tl180534180554%_
                                             (##cdr _%e180532180549%_)))
                                        (let* ((_%hd180557%_
                                                _%hd180533180552%_)
                                               (_%rest180559%_
                                                _%tl180534180554%_))
                                          (if (gx#identifier? _%hd180557%_)
                                              (_%lp180517%_
                                               _%rest180559%_
                                               _%ns180520%_
                                               (cons (cons _%hd180557%_
                                                           (cons (if _%ns180520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd180557%_
                              _%ns180520%_
                              '"#"
                              _%hd180557%_)
                             _%hd180557%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r180521%_))
                                              (let* ((_%e180560180570%_
                                                      _%hd180557%_)
                                                     (_%E180562180574%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e180560180570%_)))
                                                     (_%E180561180598%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e180560180570%_)
                                                            (let ((_%e180563180578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e180560180570%_)))
                      (let ((_%hd180564180581%_ (##car _%e180563180578%_))
                            (_%tl180565180583%_ (##cdr _%e180563180578%_)))
                        (let ((_%id180586%_ _%hd180564180581%_))
                          (if (gx#stx-pair? _%tl180565180583%_)
                              (let ((_%e180566180588%_
                                     (gx#syntax-e _%tl180565180583%_)))
                                (let ((_%hd180567180591%_
                                       (##car _%e180566180588%_))
                                      (_%tl180568180593%_
                                       (##cdr _%e180566180588%_)))
                                  (let ((_%eid180596%_ _%hd180567180591%_))
                                    (if (gx#stx-null? _%tl180568180593%_)
                                        (if (and (gx#identifier? _%id180586%_)
                                                 (gx#identifier?
                                                  _%eid180596%_))
                                            (_%lp180517%_
                                             _%rest180559%_
                                             _%ns180520%_
                                             (cons (cons _%id180586%_
                                                         (cons _%eid180596%_
                                                               '()))
                                                   _%r180521%_))
                                            (_%E180562180574%_))
                                        (_%E180562180574%_)))))
                              (_%E180562180574%_)))))
                    (_%E180562180574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E180561180598%_))))))
                                    (_%E180531180545%_))))
                             (_%E180523180634%_
                              (lambda ()
                                (if (gx#stx-pair? _%e180522180537%_)
                                    (let ((_%e180525180606%_
                                           (gx#syntax-e _%e180522180537%_)))
                                      (let ((_%hd180526180609%_
                                             (##car _%e180525180606%_))
                                            (_%tl180527180611%_
                                             (##cdr _%e180525180606%_)))
                                        (if (eq? (gx#stx-e _%hd180526180609%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl180527180611%_)
                                                (let ((_%e180528180614%_
                                                       (gx#syntax-e
                                                        _%tl180527180611%_)))
                                                  (let ((_%hd180529180617%_
                                                         (##car _%e180528180614%_))
                                                        (_%tl180530180619%_
                                                         (##cdr _%e180528180614%_)))
                                                    (let* ((_%ns180622%_
                                                            _%hd180529180617%_)
                                                           (_%rest180624%_
                                                            _%tl180530180619%_)
                                                           (_%ns180632%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns180622%_)
                        (symbol->string (gx#stx-e _%ns180622%_))
                        (if (or (gx#stx-string? _%ns180622%_)
                                (gx#stx-false? _%ns180622%_))
                            (gx#stx-e _%ns180622%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx180483%_
                             _%ns180622%_)))))
              (_%lp180517%_ _%rest180624%_ _%ns180632%_ _%r180521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E180524180602%_))
                                            (_%E180524180602%_))))
                                    (_%E180524180602%_)))))
                        (_%E180523180634%_))))))
          (let* ((_%e180486180493%_ _%stx180483%_)
                 (_%E180488180497%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180486180493%_)))
                 (_%E180487180511%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180486180493%_)
                        (let ((_%e180489180501%_
                               (gx#syntax-e _%e180486180493%_)))
                          (let ((_%hd180490180504%_ (##car _%e180489180501%_))
                                (_%tl180491180506%_ (##cdr _%e180489180501%_)))
                            (let ((_%body180509%_ _%tl180491180506%_))
                              (if (gx#stx-list? _%body180509%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate180485%_ _%body180509%_))
                                  (_%E180488180497%_)))))
                        (_%E180488180497%_)))))
            (_%E180487180511%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx180440%_)
        (let* ((_%e180441180451%_ _%stx180440%_)
               (_%E180443180455%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180441180451%_)))
               (_%E180442180479%_
                (lambda ()
                  (if (gx#stx-pair? _%e180441180451%_)
                      (let ((_%e180444180459%_
                             (gx#syntax-e _%e180441180451%_)))
                        (let ((_%hd180445180462%_ (##car _%e180444180459%_))
                              (_%tl180446180464%_ (##cdr _%e180444180459%_)))
                          (if (gx#stx-pair? _%tl180446180464%_)
                              (let ((_%e180447180467%_
                                     (gx#syntax-e _%tl180446180464%_)))
                                (let ((_%hd180448180470%_
                                       (##car _%e180447180467%_))
                                      (_%tl180449180472%_
                                       (##cdr _%e180447180467%_)))
                                  (let* ((_%hd180475%_ _%hd180448180470%_)
                                         (_%body180477%_ _%tl180449180472%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd180475%_)
                                             (gx#stx-list? _%body180477%_)
                                             (not (gx#stx-null?
                                                   _%body180477%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd180475%_)
                                         _%body180477%_)
                                        (_%E180443180455%_)))))
                              (_%E180443180455%_))))
                      (_%E180443180455%_)))))
          (_%E180442180479%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx180376%_)
        (letrec ((_%generate180378%_
                  (lambda (_%clause180408%_)
                    (let* ((_%e180409180416%_ _%clause180408%_)
                           (_%E180411180420%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx180376%_
                               _%clause180408%_)))
                           (_%E180410180436%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180409180416%_)
                                  (let ((_%e180412180424%_
                                         (gx#syntax-e _%e180409180416%_)))
                                    (let ((_%hd180413180427%_
                                           (##car _%e180412180424%_))
                                          (_%tl180414180429%_
                                           (##cdr _%e180412180424%_)))
                                      (let* ((_%hd180432%_ _%hd180413180427%_)
                                             (_%body180434%_
                                              _%tl180414180429%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd180432%_)
                                                 (gx#stx-list? _%body180434%_)
                                                 (not (gx#stx-null?
                                                       _%body180434%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd180432%_)
                                                   _%body180434%_)
                                             (gx#stx-source _%clause180408%_))
                                            (_%E180411180420%_)))))
                                  (_%E180411180420%_)))))
                      (_%E180410180436%_)))))
          (let* ((_%e180379180386%_ _%stx180376%_)
                 (_%E180381180390%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180379180386%_)))
                 (_%E180380180404%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180379180386%_)
                        (let ((_%e180382180394%_
                               (gx#syntax-e _%e180379180386%_)))
                          (let ((_%hd180383180397%_ (##car _%e180382180394%_))
                                (_%tl180384180399%_ (##cdr _%e180382180394%_)))
                            (let ((_%clauses180402%_ _%tl180384180399%_))
                              (if (gx#stx-list? _%clauses180402%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate180378%_
                                    _%clauses180402%_))
                                  (_%E180381180390%_)))))
                        (_%E180381180390%_)))))
            (_%E180380180404%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx180277%_ _%form180278%_)
        (letrec ((_%generate180280%_
                  (lambda (_%bind180323%_)
                    (let* ((_%e180324180334%_ _%bind180323%_)
                           (_%E180326180338%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx180277%_
                               _%bind180323%_)))
                           (_%E180325180362%_
                            (lambda ()
                              (if (gx#stx-pair? _%e180324180334%_)
                                  (let ((_%e180327180342%_
                                         (gx#syntax-e _%e180324180334%_)))
                                    (let ((_%hd180328180345%_
                                           (##car _%e180327180342%_))
                                          (_%tl180329180347%_
                                           (##cdr _%e180327180342%_)))
                                      (let ((_%ids180350%_ _%hd180328180345%_))
                                        (if (gx#stx-pair? _%tl180329180347%_)
                                            (let ((_%e180330180352%_
                                                   (gx#syntax-e
                                                    _%tl180329180347%_)))
                                              (let ((_%hd180331180355%_
                                                     (##car _%e180330180352%_))
                                                    (_%tl180332180357%_
                                                     (##cdr _%e180330180352%_)))
                                                (let ((_%expr180360%_
                                                       _%hd180331180355%_))
                                                  (if (gx#stx-null?
                                                       _%tl180332180357%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids180350%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids180350%_)
                        (cons _%expr180360%_ '()))
                  (_%E180326180338%_))
              (_%E180326180338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E180326180338%_)))))
                                  (_%E180326180338%_)))))
                      (_%E180325180362%_)))))
          (let* ((_%e180281180291%_ _%stx180277%_)
                 (_%E180283180295%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e180281180291%_)))
                 (_%E180282180319%_
                  (lambda ()
                    (if (gx#stx-pair? _%e180281180291%_)
                        (let ((_%e180284180299%_
                               (gx#syntax-e _%e180281180291%_)))
                          (let ((_%hd180285180302%_ (##car _%e180284180299%_))
                                (_%tl180286180304%_ (##cdr _%e180284180299%_)))
                            (if (gx#stx-pair? _%tl180286180304%_)
                                (let ((_%e180287180307%_
                                       (gx#syntax-e _%tl180286180304%_)))
                                  (let ((_%hd180288180310%_
                                         (##car _%e180287180307%_))
                                        (_%tl180289180312%_
                                         (##cdr _%e180287180307%_)))
                                    (let* ((_%hd180315%_ _%hd180288180310%_)
                                           (_%body180317%_ _%tl180289180312%_))
                                      (if (and (gx#stx-list? _%hd180315%_)
                                               (gx#stx-list? _%body180317%_)
                                               (not (gx#stx-null?
                                                     _%body180317%_)))
                                          (gx#core-cons*
                                           _%form180278%_
                                           (gx#stx-map1
                                            _%generate180280%_
                                            _%hd180315%_)
                                           _%body180317%_)
                                          (_%E180283180295%_)))))
                                (_%E180283180295%_))))
                        (_%E180283180295%_)))))
            (_%E180282180319%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx180369%_)
        (let ((_%form180371%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx180369%_ _%form180371%_))))
    (define gx#macro-expand-let-values
      (lambda _g182913_
        (let ((_g182914_ (##length _g182913_)))
          (cond ((##fx= _g182914_ 1)
                 (apply gx#macro-expand-let-values__0 _g182913_))
                ((##fx= _g182914_ 2)
                 (apply gx#macro-expand-let-values__% _g182913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g182913_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx180274%_)
        (gx#macro-expand-let-values__% _%stx180274%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx180272%_)
        (gx#macro-expand-let-values__% _%stx180272%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx180163%_)
        (let* ((_%e180164180190%_ _%stx180163%_)
               (_%E180176180194%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e180164180190%_)))
               (_%E180166180236%_
                (lambda ()
                  (if (gx#stx-pair? _%e180164180190%_)
                      (let ((_%e180177180198%_
                             (gx#syntax-e _%e180164180190%_)))
                        (let ((_%hd180178180201%_ (##car _%e180177180198%_))
                              (_%tl180179180203%_ (##cdr _%e180177180198%_)))
                          (if (gx#stx-pair? _%tl180179180203%_)
                              (let ((_%e180180180206%_
                                     (gx#syntax-e _%tl180179180203%_)))
                                (let ((_%hd180181180209%_
                                       (##car _%e180180180206%_))
                                      (_%tl180182180211%_
                                       (##cdr _%e180180180206%_)))
                                  (let ((_%test180214%_ _%hd180181180209%_))
                                    (if (gx#stx-pair? _%tl180182180211%_)
                                        (let ((_%e180183180216%_
                                               (gx#syntax-e
                                                _%tl180182180211%_)))
                                          (let ((_%hd180184180219%_
                                                 (##car _%e180183180216%_))
                                                (_%tl180185180221%_
                                                 (##cdr _%e180183180216%_)))
                                            (let ((_%K180224%_
                                                   _%hd180184180219%_))
                                              (if (gx#stx-pair?
                                                   _%tl180185180221%_)
                                                  (let ((_%e180186180226%_
                                                         (gx#syntax-e
                                                          _%tl180185180221%_)))
                                                    (let ((_%hd180187180229%_
                                                           (##car _%e180186180226%_))
                                                          (_%tl180188180231%_
                                                           (##cdr _%e180186180226%_)))
                                                      (let ((_%E180234%_
                                                             _%hd180187180229%_))
                                                        (if (gx#stx-null?
                                                             _%tl180188180231%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test180214%_
                                                             _%K180224%_
                                                             _%E180234%_)
                                                            (_%E180176180194%_)))))
                                                  (_%E180176180194%_)))))
                                        (_%E180176180194%_)))))
                              (_%E180176180194%_))))
                      (_%E180176180194%_))))
               (_%E180165180268%_
                (lambda ()
                  (if (gx#stx-pair? _%e180164180190%_)
                      (let ((_%e180167180240%_
                             (gx#syntax-e _%e180164180190%_)))
                        (let ((_%hd180168180243%_ (##car _%e180167180240%_))
                              (_%tl180169180245%_ (##cdr _%e180167180240%_)))
                          (if (gx#stx-pair? _%tl180169180245%_)
                              (let ((_%e180170180248%_
                                     (gx#syntax-e _%tl180169180245%_)))
                                (let ((_%hd180171180251%_
                                       (##car _%e180170180248%_))
                                      (_%tl180172180253%_
                                       (##cdr _%e180170180248%_)))
                                  (let ((_%test180256%_ _%hd180171180251%_))
                                    (if (gx#stx-pair? _%tl180172180253%_)
                                        (let ((_%e180173180258%_
                                               (gx#syntax-e
                                                _%tl180172180253%_)))
                                          (let ((_%hd180174180261%_
                                                 (##car _%e180173180258%_))
                                                (_%tl180175180263%_
                                                 (##cdr _%e180173180258%_)))
                                            (let ((_%K180266%_
                                                   _%hd180174180261%_))
                                              (if (gx#stx-null?
                                                   _%tl180175180263%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test180256%_
                                                   _%K180266%_
                                                   '#!void)
                                                  (_%E180166180236%_)))))
                                        (_%E180166180236%_)))))
                              (_%E180166180236%_))))
                      (_%E180166180236%_)))))
          (_%E180165180268%_))))
    (define gx#free-identifier=?
      (lambda (_%xid180148%_ _%yid180149%_)
        (let ((_%xe180151%_ (gx#resolve-identifier__0 _%xid180148%_))
              (_%ye180152%_ (gx#resolve-identifier__0 _%yid180149%_)))
          (if (and _%xe180151%_ _%ye180152%_)
              (let ((_%$e180155%_ (eq? _%xe180151%_ _%ye180152%_)))
                (if _%$e180155%_
                    _%$e180155%_
                    (if (##structure-instance-of? _%xe180151%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye180152%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe180151%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye180152%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe180151%_ _%ye180152%_)
                  '#f
                  (gx#stx-eq? _%xid180148%_ _%yid180149%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid180129%_ _%yid180130%_)
        (letrec ((_%context180132%_
                  (lambda (_%e180146%_)
                    (if (##structure-direct-instance-of?
                         _%e180146%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e180146%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks180133%_
                  (lambda (_%e180141%_)
                    (if (symbol? _%e180141%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e180141%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e180141%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e180141%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap180134%_
                  (lambda (_%e180139%_)
                    (if (symbol? _%e180139%_)
                        _%e180139%_
                        (gx#syntax-local-unwrap _%e180139%_)))))
          (let ((_%x180136%_ (_%unwrap180134%_ _%xid180129%_))
                (_%y180137%_ (_%unwrap180134%_ _%yid180130%_)))
            (if (gx#stx-eq? _%x180136%_ _%y180137%_)
                (if (eq? (_%context180132%_ _%x180136%_)
                         (_%context180132%_ _%y180137%_))
                    (equal? (_%marks180133%_ _%x180136%_)
                            (_%marks180133%_ _%y180137%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx180127%_)
        (if (gx#identifier? _%stx180127%_)
            (gx#core-identifier=? _%stx180127%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx180125%_)
        (if (gx#identifier? _%stx180125%_)
            (gx#core-identifier=? _%stx180125%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx180068%_ _%where180069%_)
        (let _%lp180071%_ ((_%rest180073%_ (gx#syntax->list _%stx180068%_)))
          (let* ((_%rest180074180082%_ _%rest180073%_)
                 (_%else180076180090%_ (lambda () '#t))
                 (_%K180078180103%_
                  (lambda (_%rest180093%_ _%hd180094%_)
                    (if (gx#identifier? _%hd180094%_)
                        (if (__find (lambda (_%g180096180098%_)
                                      (gx#bound-identifier=?
                                       _%g180096180098%_
                                       _%hd180094%_))
                                    _%rest180093%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where180069%_
                             _%hd180094%_)
                            (_%lp180071%_ _%rest180093%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where180069%_
                         _%hd180094%_)))))
            (if (pair? _%rest180074180082%_)
                (let ((_%hd180079180106%_ (##car _%rest180074180082%_))
                      (_%tl180080180108%_ (##cdr _%rest180074180082%_)))
                  (let* ((_%hd180111%_ _%hd180079180106%_)
                         (_%rest180113%_ _%tl180080180108%_))
                    (_%K180078180103%_ _%rest180113%_ _%hd180111%_)))
                (_%else180076180090%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx180118%_)
        (let ((_%where180120%_ _%stx180118%_))
          (gx#check-duplicate-identifiers__% _%stx180118%_ _%where180120%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g182915_
        (let ((_g182916_ (##length _g182915_)))
          (cond ((##fx= _g182916_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g182915_))
                ((##fx= _g182916_ 2)
                 (apply gx#check-duplicate-identifiers__% _g182915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g182915_))))))
    (define gx#core-bind-values?
      (lambda (_%stx180060%_)
        (gx#stx-andmap
         (lambda (_%x180062%_)
           (let ((_%$e180064%_ (gx#identifier? _%x180062%_)))
             (if _%$e180064%_ _%$e180064%_ (gx#stx-false? _%x180062%_))))
         _%stx180060%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx180024%_ _%rebind?180025%_ _%phi180026%_ _%ctx180027%_)
        (gx#stx-for-each1
         (lambda (_%id180029%_)
           (if (gx#identifier? _%id180029%_)
               (gx#core-bind-runtime!__%
                _%id180029%_
                _%rebind?180025%_
                _%phi180026%_
                _%ctx180027%_)
               '#!void))
         _%stx180024%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx180034%_)
        (let* ((_%rebind?180036%_ '#f)
               (_%phi180038%_ (gx#current-expander-phi))
               (_%ctx180040%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180034%_
           _%rebind?180036%_
           _%phi180038%_
           _%ctx180040%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx180042%_ _%rebind?180043%_)
        (let* ((_%phi180045%_ (gx#current-expander-phi))
               (_%ctx180047%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180042%_
           _%rebind?180043%_
           _%phi180045%_
           _%ctx180047%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx180049%_ _%rebind?180050%_ _%phi180051%_)
        (let ((_%ctx180053%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx180049%_
           _%rebind?180050%_
           _%phi180051%_
           _%ctx180053%_))))
    (define gx#core-bind-values!
      (lambda _g182917_
        (let ((_g182918_ (##length _g182917_)))
          (cond ((##fx= _g182918_ 1) (apply gx#core-bind-values!__0 _g182917_))
                ((##fx= _g182918_ 2) (apply gx#core-bind-values!__1 _g182917_))
                ((##fx= _g182918_ 3) (apply gx#core-bind-values!__2 _g182917_))
                ((##fx= _g182918_ 4) (apply gx#core-bind-values!__% _g182917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g182917_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx180019%_)
        (gx#stx-map1
         (lambda (_%x180021%_)
           (if (gx#identifier? _%x180021%_)
               (gx#core-quote-syntax__0 _%x180021%_)
               '#f))
         _%stx180019%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx180012%_)
        (if (gx#identifier? _%stx180012%_)
            (let* ((_%bind180014%_ (gx#resolve-identifier__0 _%stx180012%_))
                   (_%$e180016%_ (not _%bind180014%_)))
              (if _%$e180016%_
                  _%$e180016%_
                  (##structure-instance-of?
                   _%bind180014%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id180001%_ _%form180002%_)
        (let ((_%bind180004%_ (gx#resolve-identifier__0 _%id180001%_)))
          (if (##structure-instance-of? _%bind180004%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id180001%_)
              (if (not _%bind180004%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id180001%_)))
                      (gx#core-quote-syntax__0 _%id180001%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form180002%_
                       _%id180001%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form180002%_
                   _%id180001%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id179956%_ _%rebind?179957%_ _%phi179958%_ _%ctx179959%_)
        (let* ((_%key179961%_ (gx#core-identifier-key _%id179956%_))
               (_%eid179963%_
                (gx#make-binding-id__%
                 _%key179961%_
                 '#f
                 _%phi179958%_
                 _%ctx179959%_))
               (_%bind179969%_
                (if (##structure-instance-of?
                     _%ctx179959%_
                     'gx#module-context::t)
                    (let ((__obj182894
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
                       __obj182894
                       _%eid179963%_
                       _%key179961%_
                       _%phi179958%_
                       _%ctx179959%_)
                      __obj182894)
                    (if (##structure-instance-of?
                         _%ctx179959%_
                         'gx#top-context::t)
                        (let ((__obj182893
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj182893
                           _%eid179963%_
                           _%key179961%_
                           _%phi179958%_)
                          __obj182893)
                        (if (##structure-instance-of?
                             _%ctx179959%_
                             'gx#local-context::t)
                            (let ((__obj182892
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj182892
                               _%eid179963%_
                               _%key179961%_
                               _%phi179958%_)
                              __obj182892)
                            (let ((__obj182891
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj182891
                               _%eid179963%_
                               _%key179961%_
                               _%phi179958%_)
                              __obj182891))))))
          (gx#bind-identifier!__%
           _%id179956%_
           _%bind179969%_
           _%rebind?179957%_
           _%phi179958%_
           _%ctx179959%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id179975%_)
        (let* ((_%rebind?179977%_ '#f)
               (_%phi179979%_ (gx#current-expander-phi))
               (_%ctx179981%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179975%_
           _%rebind?179977%_
           _%phi179979%_
           _%ctx179981%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id179983%_ _%rebind?179984%_)
        (let* ((_%phi179986%_ (gx#current-expander-phi))
               (_%ctx179988%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179983%_
           _%rebind?179984%_
           _%phi179986%_
           _%ctx179988%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id179990%_ _%rebind?179991%_ _%phi179992%_)
        (let ((_%ctx179994%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id179990%_
           _%rebind?179991%_
           _%phi179992%_
           _%ctx179994%_))))
    (define gx#core-bind-runtime!
      (lambda _g182919_
        (let ((_g182920_ (##length _g182919_)))
          (cond ((##fx= _g182920_ 1)
                 (apply gx#core-bind-runtime!__0 _g182919_))
                ((##fx= _g182920_ 2)
                 (apply gx#core-bind-runtime!__1 _g182919_))
                ((##fx= _g182920_ 3)
                 (apply gx#core-bind-runtime!__2 _g182919_))
                ((##fx= _g182920_ 4)
                 (apply gx#core-bind-runtime!__% _g182919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g182919_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id179908%_
               _%eid179909%_
               _%rebind?179910%_
               _%phi179911%_
               _%ctx179912%_)
        (let* ((_%key179914%_ (gx#core-identifier-key _%id179908%_))
               (_%bind179919%_
                (if (##structure-instance-of?
                     _%ctx179912%_
                     'gx#module-context::t)
                    (let ((__obj182897
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
                       __obj182897
                       _%eid179909%_
                       _%key179914%_
                       _%phi179911%_
                       _%ctx179912%_)
                      __obj182897)
                    (if (##structure-instance-of?
                         _%ctx179912%_
                         'gx#top-context::t)
                        (let ((__obj182896
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj182896
                           _%eid179909%_
                           _%key179914%_
                           _%phi179911%_)
                          __obj182896)
                        (let ((__obj182895
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj182895
                           _%eid179909%_
                           _%key179914%_
                           _%phi179911%_)
                          __obj182895)))))
          (gx#bind-identifier!__%
           _%id179908%_
           _%bind179919%_
           _%rebind?179910%_
           _%phi179911%_
           _%ctx179912%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id179925%_ _%eid179926%_)
        (let* ((_%rebind?179928%_ '#f)
               (_%phi179930%_ (gx#current-expander-phi))
               (_%ctx179932%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179925%_
           _%eid179926%_
           _%rebind?179928%_
           _%phi179930%_
           _%ctx179932%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id179934%_ _%eid179935%_ _%rebind?179936%_)
        (let* ((_%phi179938%_ (gx#current-expander-phi))
               (_%ctx179940%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179934%_
           _%eid179935%_
           _%rebind?179936%_
           _%phi179938%_
           _%ctx179940%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id179942%_ _%eid179943%_ _%rebind?179944%_ _%phi179945%_)
        (let ((_%ctx179947%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id179942%_
           _%eid179943%_
           _%rebind?179944%_
           _%phi179945%_
           _%ctx179947%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g182921_
        (let ((_g182922_ (##length _g182921_)))
          (cond ((##fx= _g182922_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g182921_))
                ((##fx= _g182922_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g182921_))
                ((##fx= _g182922_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g182921_))
                ((##fx= _g182922_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g182921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g182921_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id179868%_
               _%eid179869%_
               _%rebind?179870%_
               _%phi179871%_
               _%ctx179872%_)
        (gx#bind-identifier!__%
         _%id179868%_
         (let ((__obj182898
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj182898
            _%eid179869%_
            (gx#core-identifier-key _%id179868%_)
            _%phi179871%_)
           __obj182898)
         _%rebind?179870%_
         _%phi179871%_
         _%ctx179872%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id179877%_ _%eid179878%_)
        (let* ((_%rebind?179880%_ '#f)
               (_%phi179882%_ (gx#current-expander-phi))
               (_%ctx179884%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179877%_
           _%eid179878%_
           _%rebind?179880%_
           _%phi179882%_
           _%ctx179884%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id179886%_ _%eid179887%_ _%rebind?179888%_)
        (let* ((_%phi179890%_ (gx#current-expander-phi))
               (_%ctx179892%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179886%_
           _%eid179887%_
           _%rebind?179888%_
           _%phi179890%_
           _%ctx179892%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id179894%_ _%eid179895%_ _%rebind?179896%_ _%phi179897%_)
        (let ((_%ctx179899%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id179894%_
           _%eid179895%_
           _%rebind?179896%_
           _%phi179897%_
           _%ctx179899%_))))
    (define gx#core-bind-extern!
      (lambda _g182923_
        (let ((_g182924_ (##length _g182923_)))
          (cond ((##fx= _g182924_ 2) (apply gx#core-bind-extern!__0 _g182923_))
                ((##fx= _g182924_ 3) (apply gx#core-bind-extern!__1 _g182923_))
                ((##fx= _g182924_ 4) (apply gx#core-bind-extern!__2 _g182923_))
                ((##fx= _g182924_ 5) (apply gx#core-bind-extern!__% _g182923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g182923_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id179822%_
               _%e179823%_
               _%rebind?179824%_
               _%phi179825%_
               _%ctx179826%_)
        (gx#bind-identifier!__%
         _%id179822%_
         (let ((_%key179831%_ (gx#core-identifier-key _%id179822%_))
               (_%e179832%_
                (if (or (##structure-instance-of? _%e179823%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e179823%_
                         'gx#expander-context::t))
                    _%e179823%_
                    (##structure
                     gx#user-expander::t
                     _%e179823%_
                     _%ctx179826%_
                     _%phi179825%_))))
           (let ((__obj182899
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj182899
              (gx#make-binding-id__%
               _%key179831%_
               '#t
               _%phi179825%_
               _%ctx179826%_)
              _%key179831%_
              _%phi179825%_
              _%e179832%_)
             __obj182899))
         _%rebind?179824%_
         _%phi179825%_
         _%ctx179826%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id179837%_ _%e179838%_)
        (let* ((_%rebind?179840%_ '#f)
               (_%phi179842%_ (gx#current-expander-phi))
               (_%ctx179844%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179837%_
           _%e179838%_
           _%rebind?179840%_
           _%phi179842%_
           _%ctx179844%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id179846%_ _%e179847%_ _%rebind?179848%_)
        (let* ((_%phi179850%_ (gx#current-expander-phi))
               (_%ctx179852%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179846%_
           _%e179847%_
           _%rebind?179848%_
           _%phi179850%_
           _%ctx179852%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id179854%_ _%e179855%_ _%rebind?179856%_ _%phi179857%_)
        (let ((_%ctx179859%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id179854%_
           _%e179855%_
           _%rebind?179856%_
           _%phi179857%_
           _%ctx179859%_))))
    (define gx#core-bind-syntax!
      (lambda _g182925_
        (let ((_g182926_ (##length _g182925_)))
          (cond ((##fx= _g182926_ 2) (apply gx#core-bind-syntax!__0 _g182925_))
                ((##fx= _g182926_ 3) (apply gx#core-bind-syntax!__1 _g182925_))
                ((##fx= _g182926_ 4) (apply gx#core-bind-syntax!__2 _g182925_))
                ((##fx= _g182926_ 5) (apply gx#core-bind-syntax!__% _g182925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g182925_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id179805%_ _%e179806%_ _%rebind?179807%_)
        (gx#core-bind-syntax!__%
         _%id179805%_
         _%e179806%_
         _%rebind?179807%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id179812%_ _%e179813%_)
        (let ((_%rebind?179815%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id179812%_
           _%e179813%_
           _%rebind?179815%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g182927_
        (let ((_g182928_ (##length _g182927_)))
          (cond ((##fx= _g182928_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g182927_))
                ((##fx= _g182928_ 3)
                 (apply gx#core-bind-root-syntax!__% _g182927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g182927_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id179763%_
               _%alias-id179764%_
               _%rebind?179765%_
               _%phi179766%_
               _%ctx179767%_)
        (gx#bind-identifier!__%
         _%id179763%_
         (let* ((_%key179769%_ (gx#core-identifier-key _%id179763%_))
                (__obj182900
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj182900
            (gx#make-binding-id__%
             _%key179769%_
             '#t
             _%phi179766%_
             _%ctx179767%_)
            _%key179769%_
            _%phi179766%_
            _%alias-id179764%_)
           __obj182900)
         _%rebind?179765%_
         _%phi179766%_
         _%ctx179767%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id179774%_ _%alias-id179775%_)
        (let* ((_%rebind?179777%_ '#f)
               (_%phi179779%_ (gx#current-expander-phi))
               (_%ctx179781%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179774%_
           _%alias-id179775%_
           _%rebind?179777%_
           _%phi179779%_
           _%ctx179781%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id179783%_ _%alias-id179784%_ _%rebind?179785%_)
        (let* ((_%phi179787%_ (gx#current-expander-phi))
               (_%ctx179789%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179783%_
           _%alias-id179784%_
           _%rebind?179785%_
           _%phi179787%_
           _%ctx179789%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id179791%_ _%alias-id179792%_ _%rebind?179793%_ _%phi179794%_)
        (let ((_%ctx179796%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id179791%_
           _%alias-id179792%_
           _%rebind?179793%_
           _%phi179794%_
           _%ctx179796%_))))
    (define gx#core-bind-alias!
      (lambda _g182929_
        (let ((_g182930_ (##length _g182929_)))
          (cond ((##fx= _g182930_ 2) (apply gx#core-bind-alias!__0 _g182929_))
                ((##fx= _g182930_ 3) (apply gx#core-bind-alias!__1 _g182929_))
                ((##fx= _g182930_ 4) (apply gx#core-bind-alias!__2 _g182929_))
                ((##fx= _g182930_ 5) (apply gx#core-bind-alias!__% _g182929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g182929_))))))
    (define gx#make-binding-id__%
      (lambda (_%key179713%_ _%syntax?179714%_ _%phi179715%_ _%ctx179716%_)
        (if (uninterned-symbol? _%key179713%_)
            (##gensym 'L)
            (if (pair? _%key179713%_)
                (gensym (##car _%key179713%_))
                (if (##structure-instance-of? _%ctx179716%_ 'gx#top-context::t)
                    (let ((_%ns179721%_
                           (gx#core-context-namespace__% _%ctx179716%_)))
                      (if (and (fxzero? _%phi179715%_) (not _%syntax?179714%_))
                          (if _%ns179721%_
                              (make-symbol__1 _%ns179721%_ '"#" _%key179713%_)
                              _%key179713%_)
                          (if _%syntax?179714%_
                              (make-symbol__1
                               (let ((_%$e179725%_ _%ns179721%_))
                                 (if _%$e179725%_ _%$e179725%_ '""))
                               '"[:"
                               (number->string _%phi179715%_)
                               '":]#"
                               _%key179713%_)
                              (make-symbol__1
                               (let ((_%$e179729%_ _%ns179721%_))
                                 (if _%$e179729%_ _%$e179729%_ '""))
                               '"["
                               (number->string _%phi179715%_)
                               '"]#"
                               _%key179713%_))))
                    (gensym _%key179713%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key179736%_)
        (let* ((_%syntax?179738%_ '#f)
               (_%phi179740%_ (gx#current-expander-phi))
               (_%ctx179742%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179736%_
           _%syntax?179738%_
           _%phi179740%_
           _%ctx179742%_))))
    (define gx#make-binding-id__1
      (lambda (_%key179744%_ _%syntax?179745%_)
        (let* ((_%phi179747%_ (gx#current-expander-phi))
               (_%ctx179749%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179744%_
           _%syntax?179745%_
           _%phi179747%_
           _%ctx179749%_))))
    (define gx#make-binding-id__2
      (lambda (_%key179751%_ _%syntax?179752%_ _%phi179753%_)
        (let ((_%ctx179755%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key179751%_
           _%syntax?179752%_
           _%phi179753%_
           _%ctx179755%_))))
    (define gx#make-binding-id
      (lambda _g182931_
        (let ((_g182932_ (##length _g182931_)))
          (cond ((##fx= _g182932_ 1) (apply gx#make-binding-id__0 _g182931_))
                ((##fx= _g182932_ 2) (apply gx#make-binding-id__1 _g182931_))
                ((##fx= _g182932_ 3) (apply gx#make-binding-id__2 _g182931_))
                ((##fx= _g182932_ 4) (apply gx#make-binding-id__% _g182931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g182931_))))))))
