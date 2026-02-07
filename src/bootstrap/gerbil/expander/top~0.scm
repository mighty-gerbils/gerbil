(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1770505718)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx178741%_)
        (letrec ((_%expand-special178743%_
                  (lambda (_%hd178745%_ _%K178746%_ _%rest178747%_ _%r178748%_)
                    (_%K178746%_
                     _%rest178747%_
                     (cons (gx#core-expand-top _%hd178745%_) _%r178748%_)))))
          (gx#core-expand-block__0 _%stx178741%_ _%expand-special178743%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx178435%_)
        (letrec ((_%expand-special178437%_
                  (lambda (_%hd178559%_ _%K178560%_ _%rest178561%_ _%r178562%_)
                    (let* ((_%K178566%_
                            (lambda (_%e178564%_)
                              (_%K178560%_
                               _%rest178561%_
                               (cons _%e178564%_ _%r178562%_))))
                           (_%e178567178609%_ _%hd178559%_)
                           (_%E178604178613%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e178567178609%_)))
                           (_%E178600178625%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178567178609%_)
                                  (let ((_%e178605178617%_
                                         (gx#syntax-e _%e178567178609%_)))
                                    (let ((_%hd178606178620%_
                                           (##car _%e178605178617%_))
                                          (_%tl178607178622%_
                                           (##cdr _%e178605178617%_)))
                                      (if (and (gx#identifier?
                                                _%hd178606178620%_)
                                               (gx#core-identifier=?
                                                _%hd178606178620%_
                                                '%#define-runtime))
                                          (_%K178566%_
                                           (gx#core-expand-define-runtime%
                                            _%hd178559%_))
                                          (_%E178604178613%_))))
                                  (_%E178604178613%_))))
                           (_%E178596178637%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178567178609%_)
                                  (let ((_%e178601178629%_
                                         (gx#syntax-e _%e178567178609%_)))
                                    (let ((_%hd178602178632%_
                                           (##car _%e178601178629%_))
                                          (_%tl178603178634%_
                                           (##cdr _%e178601178629%_)))
                                      (if (and (gx#identifier?
                                                _%hd178602178632%_)
                                               (gx#core-identifier=?
                                                _%hd178602178632%_
                                                '%#define-alias))
                                          (_%K178566%_
                                           (gx#core-expand-define-alias%
                                            _%hd178559%_))
                                          (_%E178600178625%_))))
                                  (_%E178600178625%_))))
                           (_%E178586178649%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178567178609%_)
                                  (let ((_%e178597178641%_
                                         (gx#syntax-e _%e178567178609%_)))
                                    (let ((_%hd178598178644%_
                                           (##car _%e178597178641%_))
                                          (_%tl178599178646%_
                                           (##cdr _%e178597178641%_)))
                                      (if (and (gx#identifier?
                                                _%hd178598178644%_)
                                               (gx#core-identifier=?
                                                _%hd178598178644%_
                                                '%#define-syntax))
                                          (_%K178566%_
                                           (gx#core-expand-define-syntax%
                                            _%hd178559%_))
                                          (_%E178596178637%_))))
                                  (_%E178596178637%_))))
                           (_%E178573178681%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178567178609%_)
                                  (let ((_%e178587178653%_
                                         (gx#syntax-e _%e178567178609%_)))
                                    (let ((_%hd178588178656%_
                                           (##car _%e178587178653%_))
                                          (_%tl178589178658%_
                                           (##cdr _%e178587178653%_)))
                                      (if (and (gx#identifier?
                                                _%hd178588178656%_)
                                               (gx#core-identifier=?
                                                _%hd178588178656%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178589178658%_)
                                              (let ((_%e178590178661%_
                                                     (gx#syntax-e
                                                      _%tl178589178658%_)))
                                                (let ((_%hd178591178664%_
                                                       (##car _%e178590178661%_))
                                                      (_%tl178592178666%_
                                                       (##cdr _%e178590178661%_)))
                                                  (let ((_%hd-bind178669%_
                                                         _%hd178591178664%_))
                                                    (if (gx#stx-pair?
                                                         _%tl178592178666%_)
                                                        (let ((_%e178593178671%_
                                                               (gx#syntax-e
                                                                _%tl178592178666%_)))
                                                          (let ((_%hd178594178674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e178593178671%_))
                        (_%tl178595178676%_ (##cdr _%e178593178671%_)))
                    (let ((_%expr178679%_ _%hd178594178674%_))
                      (if (gx#stx-null? _%tl178595178676%_)
                          (if (gx#core-bind-values? _%hd-bind178669%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind178669%_)
                                (_%K178566%_ _%hd178559%_))
                              (_%E178586178649%_))
                          (_%E178586178649%_)))))
                (_%E178586178649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178586178649%_))
                                          (_%E178586178649%_))))
                                  (_%E178586178649%_))))
                           (_%E178569178725%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178567178609%_)
                                  (let ((_%e178574178685%_
                                         (gx#syntax-e _%e178567178609%_)))
                                    (let ((_%hd178575178688%_
                                           (##car _%e178574178685%_))
                                          (_%tl178576178690%_
                                           (##cdr _%e178574178685%_)))
                                      (if (and (gx#identifier?
                                                _%hd178575178688%_)
                                               (gx#core-identifier=?
                                                _%hd178575178688%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178576178690%_)
                                              (let ((_%e178577178693%_
                                                     (gx#syntax-e
                                                      _%tl178576178690%_)))
                                                (let ((_%hd178578178696%_
                                                       (##car _%e178577178693%_))
                                                      (_%tl178579178698%_
                                                       (##cdr _%e178577178693%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd178578178696%_)
                                                      (let ((_%e178583178701%_
                                                             (gx#syntax-e
                                                              _%hd178578178696%_)))
                                                        (let ((_%hd178584178704%_
                                                               (##car _%e178583178701%_))
                                                              (_%tl178585178706%_
                                                               (##cdr _%e178583178701%_)))
                                                          (let ((_%id178709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd178584178704%_))
                    (if (gx#stx-null? _%tl178585178706%_)
                        (if (gx#stx-pair? _%tl178579178698%_)
                            (let ((_%e178580178711%_
                                   (gx#syntax-e _%tl178579178698%_)))
                              (let ((_%hd178581178714%_
                                     (##car _%e178580178711%_))
                                    (_%tl178582178716%_
                                     (##cdr _%e178580178711%_)))
                                (let* ((_%expr178719%_ _%hd178581178714%_)
                                       (_%props178721%_ _%tl178582178716%_))
                                  (if (gx#identifier? _%id178709%_)
                                      (let ((_%bind178723%_
                                             (gx#core-bind-runtime!__0
                                              _%id178709%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind178723%_
                                         _%props178721%_)
                                        (_%K178566%_ _%hd178559%_))
                                      (_%E178573178681%_)))))
                            (_%E178573178681%_))
                        (_%E178573178681%_)))))
              (_%E178573178681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178573178681%_))
                                          (_%E178573178681%_))))
                                  (_%E178573178681%_))))
                           (_%E178568178737%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178567178609%_)
                                  (let ((_%e178570178729%_
                                         (gx#syntax-e _%e178567178609%_)))
                                    (let ((_%hd178571178732%_
                                           (##car _%e178570178729%_))
                                          (_%tl178572178734%_
                                           (##cdr _%e178570178729%_)))
                                      (if (and (gx#identifier?
                                                _%hd178571178732%_)
                                               (gx#core-identifier=?
                                                _%hd178571178732%_
                                                '%#begin-syntax))
                                          (_%K178566%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd178559%_))
                                          (_%E178569178725%_))))
                                  (_%E178569178725%_)))))
                      (_%E178568178737%_))))
                 (_%eval-body178438%_
                  (lambda (_%rbody178446%_)
                    (let _%lp178448%_ ((_%rest178450%_ _%rbody178446%_)
                                       (_%body178451%_ '())
                                       (_%ebody178452%_ '()))
                      (let* ((_%rest178453178461%_ _%rest178450%_)
                             (_%else178455178469%_
                              (lambda ()
                                (values _%body178451%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody178452%_)
                                          (gx#stx-source _%stx178435%_))))))
                             (_%K178457178547%_
                              (lambda (_%rest178472%_ _%hd178473%_)
                                (let* ((_%e178474178491%_ _%hd178473%_)
                                       (_%E178486178495%_
                                        (lambda ()
                                          (_%lp178448%_
                                           _%rest178472%_
                                           (cons _%hd178473%_ _%body178451%_)
                                           (cons _%hd178473%_
                                                 _%ebody178452%_))))
                                       (_%E178476178507%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e178474178491%_)
                                              (let ((_%e178487178499%_
                                                     (gx#syntax-e
                                                      _%e178474178491%_)))
                                                (let ((_%hd178488178502%_
                                                       (##car _%e178487178499%_))
                                                      (_%tl178489178504%_
                                                       (##cdr _%e178487178499%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd178488178502%_)
                                                           (gx#core-identifier=?
                                                            _%hd178488178502%_
                                                            '%#begin-syntax))
                                                      (_%lp178448%_
                                                       _%rest178472%_
                                                       (cons _%hd178473%_
                                                             _%body178451%_)
                                                       _%ebody178452%_)
                                                      (_%E178486178495%_))))
                                              (_%E178486178495%_))))
                                       (_%E178475178543%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e178474178491%_)
                                              (let ((_%e178477178511%_
                                                     (gx#syntax-e
                                                      _%e178474178491%_)))
                                                (let ((_%hd178478178514%_
                                                       (##car _%e178477178511%_))
                                                      (_%tl178479178516%_
                                                       (##cdr _%e178477178511%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd178478178514%_)
                                                           (gx#core-identifier=?
                                                            _%hd178478178514%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl178479178516%_)
                                                          (let ((_%e178480178519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl178479178516%_)))
                    (let ((_%hd178481178522%_ (##car _%e178480178519%_))
                          (_%tl178482178524%_ (##cdr _%e178480178519%_)))
                      (let ((_%hd-bind178527%_ _%hd178481178522%_))
                        (if (gx#stx-pair? _%tl178482178524%_)
                            (let ((_%e178483178529%_
                                   (gx#syntax-e _%tl178482178524%_)))
                              (let ((_%hd178484178532%_
                                     (##car _%e178483178529%_))
                                    (_%tl178485178534%_
                                     (##cdr _%e178483178529%_)))
                                (let* ((_%expr178537%_ _%hd178484178532%_)
                                       (_%ignore-props178539%_
                                        _%tl178485178534%_)
                                       (_%ehd178541%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind178527%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr178537%_)
                                                           '())))
                                         (gx#stx-source _%hd178473%_))))
                                  (_%lp178448%_
                                   _%rest178472%_
                                   (cons _%ehd178541%_ _%body178451%_)
                                   (cons _%ehd178541%_ _%ebody178452%_)))))
                            (_%E178476178507%_)))))
                  (_%E178476178507%_))
              (_%E178476178507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178476178507%_)))))
                                  (_%E178475178543%_)))))
                        (if (pair? _%rest178453178461%_)
                            (let ((_%hd178458178550%_
                                   (##car _%rest178453178461%_))
                                  (_%tl178459178552%_
                                   (##cdr _%rest178453178461%_)))
                              (let* ((_%hd178555%_ _%hd178458178550%_)
                                     (_%rest178557%_ _%tl178459178552%_))
                                (_%K178457178547%_
                                 _%rest178557%_
                                 _%hd178555%_)))
                            (_%else178455178469%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody178441%_
                     (gx#core-expand-block__1
                      _%stx178435%_
                      _%expand-special178437%_
                      '#f))
                    (_g178774_ (_%eval-body178438%_ _%rbody178441%_)))
               (begin
                 (let ((_g178775_
                        (if (##values? _g178774_)
                            (##values-length _g178774_)
                            1)))
                   (if (not (##fx= _g178775_ 2))
                       (error "Context expects 2 values" _g178775_)))
                 (let ((_%expanded-body178443%_ (##values-ref _g178774_ 0))
                       (_%value178444%_ (##values-ref _g178774_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body178443%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value178444%_ '())))
                    (gx#stx-source _%stx178435%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx178405%_)
        (let* ((_%e178406178413%_ _%stx178405%_)
               (_%E178408178417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178406178413%_)))
               (_%E178407178431%_
                (lambda ()
                  (if (gx#stx-pair? _%e178406178413%_)
                      (let ((_%e178409178421%_
                             (gx#syntax-e _%e178406178413%_)))
                        (let ((_%hd178410178424%_ (##car _%e178409178421%_))
                              (_%tl178411178426%_ (##cdr _%e178409178421%_)))
                          (let ((_%body178429%_ _%tl178411178426%_))
                            (if (gx#stx-list? _%body178429%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body178429%_)
                                 (gx#stx-source _%stx178405%_))
                                (_%E178408178417%_)))))
                      (_%E178408178417%_)))))
          (_%E178407178431%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx178403%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx178403%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx178349%_)
        (let* ((_%e178350178363%_ _%stx178349%_)
               (_%E178352178367%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178350178363%_)))
               (_%E178351178399%_
                (lambda ()
                  (if (gx#stx-pair? _%e178350178363%_)
                      (let ((_%e178353178371%_
                             (gx#syntax-e _%e178350178363%_)))
                        (let ((_%hd178354178374%_ (##car _%e178353178371%_))
                              (_%tl178355178376%_ (##cdr _%e178353178371%_)))
                          (if (gx#stx-pair? _%tl178355178376%_)
                              (let ((_%e178356178379%_
                                     (gx#syntax-e _%tl178355178376%_)))
                                (let ((_%hd178357178382%_
                                       (##car _%e178356178379%_))
                                      (_%tl178358178384%_
                                       (##cdr _%e178356178379%_)))
                                  (let ((_%ann178387%_ _%hd178357178382%_))
                                    (if (gx#stx-pair? _%tl178358178384%_)
                                        (let ((_%e178359178389%_
                                               (gx#syntax-e
                                                _%tl178358178384%_)))
                                          (let ((_%hd178360178392%_
                                                 (##car _%e178359178389%_))
                                                (_%tl178361178394%_
                                                 (##cdr _%e178359178389%_)))
                                            (let ((_%expr178397%_
                                                   _%hd178360178392%_))
                                              (if (gx#stx-null?
                                                   _%tl178361178394%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann178387%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr178397%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx178349%_))
                                                  (_%E178352178367%_)))))
                                        (_%E178352178367%_)))))
                              (_%E178352178367%_))))
                      (_%E178352178367%_)))))
          (_%E178351178399%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx178014%_ _%body178015%_)
        (letrec ((_%expand-special178017%_
                  (lambda (_%hd178344%_ _%K178345%_ _%rest178346%_ _%r178347%_)
                    (_%K178345%_
                     '()
                     (cons (_%expand-internal178018%_
                            _%hd178344%_
                            _%rest178346%_)
                           _%r178347%_))))
                 (_%expand-internal178018%_
                  (lambda (_%hd178340%_ _%rest178341%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal178020%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd178340%_ _%rest178341%_))
                          (gx#stx-source _%stx178014%_))
                         _%expand-internal-special178019%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj178758
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj178758)
                       __obj178758))))
                 (_%expand-internal-special178019%_
                  (lambda (_%hd178178%_ _%K178179%_ _%rest178180%_ _%r178181%_)
                    (let* ((_%e178182178220%_ _%hd178178%_)
                           (_%E178215178224%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e178182178220%_)))
                           (_%E178211178236%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178182178220%_)
                                  (let ((_%e178216178228%_
                                         (gx#syntax-e _%e178182178220%_)))
                                    (let ((_%hd178217178231%_
                                           (##car _%e178216178228%_))
                                          (_%tl178218178233%_
                                           (##cdr _%e178216178228%_)))
                                      (if (and (gx#identifier?
                                                _%hd178217178231%_)
                                               (gx#core-identifier=?
                                                _%hd178217178231%_
                                                '%#declare))
                                          (_%K178179%_
                                           _%rest178180%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd178178%_)
                                                 _%r178181%_))
                                          (_%E178215178224%_))))
                                  (_%E178215178224%_))))
                           (_%E178207178248%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178182178220%_)
                                  (let ((_%e178212178240%_
                                         (gx#syntax-e _%e178182178220%_)))
                                    (let ((_%hd178213178243%_
                                           (##car _%e178212178240%_))
                                          (_%tl178214178245%_
                                           (##cdr _%e178212178240%_)))
                                      (if (and (gx#identifier?
                                                _%hd178213178243%_)
                                               (gx#core-identifier=?
                                                _%hd178213178243%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd178178%_)
                                            (_%K178179%_
                                             _%rest178180%_
                                             _%r178181%_))
                                          (_%E178211178236%_))))
                                  (_%E178211178236%_))))
                           (_%E178197178260%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178182178220%_)
                                  (let ((_%e178208178252%_
                                         (gx#syntax-e _%e178182178220%_)))
                                    (let ((_%hd178209178255%_
                                           (##car _%e178208178252%_))
                                          (_%tl178210178257%_
                                           (##cdr _%e178208178252%_)))
                                      (if (and (gx#identifier?
                                                _%hd178209178255%_)
                                               (gx#core-identifier=?
                                                _%hd178209178255%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd178178%_)
                                            (_%K178179%_
                                             _%rest178180%_
                                             _%r178181%_))
                                          (_%E178207178248%_))))
                                  (_%E178207178248%_))))
                           (_%E178184178292%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178182178220%_)
                                  (let ((_%e178198178264%_
                                         (gx#syntax-e _%e178182178220%_)))
                                    (let ((_%hd178199178267%_
                                           (##car _%e178198178264%_))
                                          (_%tl178200178269%_
                                           (##cdr _%e178198178264%_)))
                                      (if (and (gx#identifier?
                                                _%hd178199178267%_)
                                               (gx#core-identifier=?
                                                _%hd178199178267%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178200178269%_)
                                              (let ((_%e178201178272%_
                                                     (gx#syntax-e
                                                      _%tl178200178269%_)))
                                                (let ((_%hd178202178275%_
                                                       (##car _%e178201178272%_))
                                                      (_%tl178203178277%_
                                                       (##cdr _%e178201178272%_)))
                                                  (let ((_%hd-bind178280%_
                                                         _%hd178202178275%_))
                                                    (if (gx#stx-pair?
                                                         _%tl178203178277%_)
                                                        (let ((_%e178204178282%_
                                                               (gx#syntax-e
                                                                _%tl178203178277%_)))
                                                          (let ((_%hd178205178285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e178204178282%_))
                        (_%tl178206178287%_ (##cdr _%e178204178282%_)))
                    (let ((_%expr178290%_ _%hd178205178285%_))
                      (if (gx#stx-null? _%tl178206178287%_)
                          (if (gx#core-bind-values? _%hd-bind178280%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind178280%_)
                                (_%K178179%_
                                 _%rest178180%_
                                 (cons _%hd178178%_ _%r178181%_)))
                              (_%E178197178260%_))
                          (_%E178197178260%_)))))
                (_%E178197178260%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178197178260%_))
                                          (_%E178197178260%_))))
                                  (_%E178197178260%_))))
                           (_%E178183178336%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178182178220%_)
                                  (let ((_%e178185178296%_
                                         (gx#syntax-e _%e178182178220%_)))
                                    (let ((_%hd178186178299%_
                                           (##car _%e178185178296%_))
                                          (_%tl178187178301%_
                                           (##cdr _%e178185178296%_)))
                                      (if (and (gx#identifier?
                                                _%hd178186178299%_)
                                               (gx#core-identifier=?
                                                _%hd178186178299%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178187178301%_)
                                              (let ((_%e178188178304%_
                                                     (gx#syntax-e
                                                      _%tl178187178301%_)))
                                                (let ((_%hd178189178307%_
                                                       (##car _%e178188178304%_))
                                                      (_%tl178190178309%_
                                                       (##cdr _%e178188178304%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd178189178307%_)
                                                      (let ((_%e178194178312%_
                                                             (gx#syntax-e
                                                              _%hd178189178307%_)))
                                                        (let ((_%hd178195178315%_
                                                               (##car _%e178194178312%_))
                                                              (_%tl178196178317%_
                                                               (##cdr _%e178194178312%_)))
                                                          (let ((_%id178320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd178195178315%_))
                    (if (gx#stx-null? _%tl178196178317%_)
                        (if (gx#stx-pair? _%tl178190178309%_)
                            (let ((_%e178191178322%_
                                   (gx#syntax-e _%tl178190178309%_)))
                              (let ((_%hd178192178325%_
                                     (##car _%e178191178322%_))
                                    (_%tl178193178327%_
                                     (##cdr _%e178191178322%_)))
                                (let* ((_%expr178330%_ _%hd178192178325%_)
                                       (_%props178332%_ _%tl178193178327%_))
                                  (if (gx#identifier? _%id178320%_)
                                      (let ((_%bind178334%_
                                             (gx#core-bind-runtime!__0
                                              _%id178320%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind178334%_
                                         _%props178332%_)
                                        (_%K178179%_
                                         _%rest178180%_
                                         (cons _%hd178178%_ _%r178181%_)))
                                      (_%E178184178292%_)))))
                            (_%E178184178292%_))
                        (_%E178184178292%_)))))
              (_%E178184178292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178184178292%_))
                                          (_%E178184178292%_))))
                                  (_%E178184178292%_)))))
                      (_%E178183178336%_))))
                 (_%wrap-internal178020%_
                  (lambda (_%rbody178022%_)
                    (let _%lp178024%_ ((_%rest178026%_ _%rbody178022%_)
                                       (_%decls178027%_ '())
                                       (_%bind178028%_ '())
                                       (_%body178029%_ '()))
                      (let* ((_%e178030178037%_ _%rest178026%_)
                             (_%E178032178086%_
                              (lambda ()
                                (let* ((_%body178081%_
                                        (let* ((_%body178040178050%_
                                                _%body178029%_)
                                               (_%else178043178058%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body178029%_)
                                                   (gx#stx-source
                                                    _%stx178014%_)))))
                                          (let ((_%K178048178078%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx178014%_)))
                                                (_%K178045178064%_
                                                 (lambda (_%expr178062%_)
                                                   _%expr178062%_)))
                                            (let ((_%try-match178042178074%_
                                                   (lambda ()
                                                     (if (pair? _%body178040178050%_)
                                                         (let ((_%tl178047178069%_
                                                                (##cdr _%body178040178050%_))
                                                               (_%hd178046178067%_
                                                                (##car _%body178040178050%_)))
                                                           (if (null? _%tl178047178069%_)
                                                               (let ((_%expr178072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd178046178067%_))
                         (_%K178045178064%_ _%expr178072%_))
                       (_%else178043178058%_)))
                 (_%else178043178058%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body178040178050%_)
                                                  (_%K178048178078%_)
                                                  (_%try-match178042178074%_))))))
                                       (_%body178083%_
                                        (if (null? _%bind178028%_)
                                            _%body178081%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind178028%_
                                                         (cons _%body178081%_
                                                               '())))
                                             (gx#stx-source _%stx178014%_)))))
                                  (if (null? _%decls178027%_)
                                      _%body178083%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls178027%_
                                                   (cons _%body178083%_ '())))
                                       (gx#stx-source _%stx178014%_))))))
                             (_%E178031178174%_
                              (lambda ()
                                (if (gx#stx-pair? _%e178030178037%_)
                                    (let ((_%e178033178090%_
                                           (gx#syntax-e _%e178030178037%_)))
                                      (let ((_%hd178034178093%_
                                             (##car _%e178033178090%_))
                                            (_%tl178035178095%_
                                             (##cdr _%e178033178090%_)))
                                        (let* ((_%hd178098%_
                                                _%hd178034178093%_)
                                               (_%rest178100%_
                                                _%tl178035178095%_)
                                               (_%e178101178118%_ _%hd178098%_)
                                               (_%E178113178122%_
                                                (lambda ()
                                                  (if (null? _%bind178028%_)
                                                      (_%lp178024%_
                                                       _%rest178100%_
                                                       _%decls178027%_
                                                       _%bind178028%_
                                                       (cons _%hd178098%_
                                                             _%body178029%_))
                                                      (_%lp178024%_
                                                       _%rest178100%_
                                                       _%decls178027%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd178098%_ '()))
                     _%bind178028%_)
               _%body178029%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E178103178136%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e178101178118%_)
                                                      (let ((_%e178114178126%_
                                                             (gx#syntax-e
                                                              _%e178101178118%_)))
                                                        (let ((_%hd178115178129%_
                                                               (##car _%e178114178126%_))
                                                              (_%tl178116178131%_
                                                               (##cdr _%e178114178126%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd178115178129%_)
                           (gx#core-identifier=?
                            _%hd178115178129%_
                            '%#declare))
                      (let ((_%xdecls178134%_ _%tl178116178131%_))
                        (_%lp178024%_
                         _%rest178100%_
                         (gx#stx-foldr cons _%decls178027%_ _%xdecls178134%_)
                         _%bind178028%_
                         _%body178029%_))
                      (_%E178113178122%_))))
              (_%E178113178122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E178102178170%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e178101178118%_)
                                                      (let ((_%e178104178140%_
                                                             (gx#syntax-e
                                                              _%e178101178118%_)))
                                                        (let ((_%hd178105178143%_
                                                               (##car _%e178104178140%_))
                                                              (_%tl178106178145%_
                                                               (##cdr _%e178104178140%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd178105178143%_)
                           (gx#core-identifier=?
                            _%hd178105178143%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl178106178145%_)
                          (let ((_%e178107178148%_
                                 (gx#syntax-e _%tl178106178145%_)))
                            (let ((_%hd178108178151%_
                                   (##car _%e178107178148%_))
                                  (_%tl178109178153%_
                                   (##cdr _%e178107178148%_)))
                              (let ((_%hd-bind178156%_ _%hd178108178151%_))
                                (if (gx#stx-pair? _%tl178109178153%_)
                                    (let ((_%e178110178158%_
                                           (gx#syntax-e _%tl178109178153%_)))
                                      (let ((_%hd178111178161%_
                                             (##car _%e178110178158%_))
                                            (_%tl178112178163%_
                                             (##cdr _%e178110178158%_)))
                                        (let* ((_%expr178166%_
                                                _%hd178111178161%_)
                                               (_%ignore-props178168%_
                                                _%tl178112178163%_))
                                          (_%lp178024%_
                                           _%rest178100%_
                                           _%decls178027%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind178156%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr178166%_)
                                                             '()))
                                                 _%bind178028%_)
                                           _%body178029%_))))
                                    (_%E178103178136%_)))))
                          (_%E178103178136%_))
                      (_%E178103178136%_))))
              (_%E178103178136%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E178102178170%_))))
                                    (_%E178032178086%_)))))
                        (_%E178031178174%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body178015%_)
            (gx#stx-source _%stx178014%_))
           _%expand-special178017%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx177952%_)
        (let* ((_%e177953177960%_ _%stx177952%_)
               (_%E177955177964%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177953177960%_)))
               (_%E177954178010%_
                (lambda ()
                  (if (gx#stx-pair? _%e177953177960%_)
                      (let ((_%e177956177968%_
                             (gx#syntax-e _%e177953177960%_)))
                        (let ((_%hd177957177971%_ (##car _%e177956177968%_))
                              (_%tl177958177973%_ (##cdr _%e177956177968%_)))
                          (let ((_%body177976%_ _%tl177958177973%_))
                            (if (gx#stx-list? _%body177976%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl177978%_)
                                     (let* ((_%e177979177986%_ _%decl177978%_)
                                            (_%E177981177990%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e177979177986%_)))
                                            (_%E177980178006%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e177979177986%_)
                                                   (let ((_%e177982177994%_
                                                          (gx#syntax-e
                                                           _%e177979177986%_)))
                                                     (let ((_%hd177983177997%_
                                                            (##car _%e177982177994%_))
                                                           (_%tl177984177999%_
                                                            (##cdr _%e177982177994%_)))
                                                       (let* ((_%head178002%_
                                                               _%hd177983177997%_)
                                                              (_%args178004%_
                                                               _%tl177984177999%_))
                                                         (if (gx#stx-list?
                                                              _%args178004%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl177978%_)
                                                             (_%E177981177990%_)))))
                                                   (_%E177981177990%_)))))
                                       (_%E177980178006%_)))
                                   _%body177976%_))
                                 (gx#stx-source _%stx177952%_))
                                (_%E177955177964%_)))))
                      (_%E177955177964%_)))))
          (_%E177954178010%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx177856%_)
        (let* ((_%e177857177864%_ _%stx177856%_)
               (_%E177859177868%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177857177864%_)))
               (_%E177858177948%_
                (lambda ()
                  (if (gx#stx-pair? _%e177857177864%_)
                      (let ((_%e177860177872%_
                             (gx#syntax-e _%e177857177864%_)))
                        (let ((_%hd177861177875%_ (##car _%e177860177872%_))
                              (_%tl177862177877%_ (##cdr _%e177860177872%_)))
                          (let ((_%body177880%_ _%tl177862177877%_))
                            (let _%lp177882%_ ((_%rest177884%_ _%body177880%_)
                                               (_%r177885%_ '()))
                              (let* ((_%e177886177900%_ _%rest177884%_)
                                     (_%E177898177904%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx177856%_)))
                                     (_%E177888177908%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e177886177900%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r177885%_))
                                             (gx#stx-source _%stx177856%_))
                                            (_%E177898177904%_))))
                                     (_%E177887177944%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e177886177900%_)
                                            (let ((_%e177889177912%_
                                                   (gx#syntax-e
                                                    _%e177886177900%_)))
                                              (let ((_%hd177890177915%_
                                                     (##car _%e177889177912%_))
                                                    (_%tl177891177917%_
                                                     (##cdr _%e177889177912%_)))
                                                (if (gx#stx-pair?
                                                     _%hd177890177915%_)
                                                    (let ((_%e177892177920%_
                                                           (gx#syntax-e
                                                            _%hd177890177915%_)))
                                                      (let ((_%hd177893177923%_
                                                             (##car _%e177892177920%_))
                                                            (_%tl177894177925%_
                                                             (##cdr _%e177892177920%_)))
                                                        (let ((_%id177928%_
                                                               _%hd177893177923%_))
                                                          (if (gx#stx-pair?
                                                               _%tl177894177925%_)
                                                              (let ((_%e177895177930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl177894177925%_)))
                        (let ((_%hd177896177933%_ (##car _%e177895177930%_))
                              (_%tl177897177935%_ (##cdr _%e177895177930%_)))
                          (let ((_%eid177938%_ _%hd177896177933%_))
                            (if (gx#stx-null? _%tl177897177935%_)
                                (let ((_%rest177940%_ _%tl177891177917%_))
                                  (if (and (gx#identifier? _%id177928%_)
                                           (gx#identifier? _%eid177938%_))
                                      (let ((_%eid177942%_
                                             (gx#stx-e _%eid177938%_)))
                                        (gx#core-bind-extern!__0
                                         _%id177928%_
                                         _%eid177942%_)
                                        (_%lp177882%_
                                         _%rest177940%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id177928%_)
                                                     (cons _%eid177942%_ '()))
                                               _%r177885%_)))
                                      (_%E177888177908%_)))
                                (_%E177888177908%_)))))
                      (_%E177888177908%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177888177908%_))))
                                            (_%E177888177908%_)))))
                                (_%E177887177944%_))))))
                      (_%E177859177868%_)))))
          (_%E177858177948%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx177745%_)
        (let* ((_%e177746177772%_ _%stx177745%_)
               (_%E177761177776%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177746177772%_)))
               (_%E177748177808%_
                (lambda ()
                  (if (gx#stx-pair? _%e177746177772%_)
                      (let ((_%e177762177780%_
                             (gx#syntax-e _%e177746177772%_)))
                        (let ((_%hd177763177783%_ (##car _%e177762177780%_))
                              (_%tl177764177785%_ (##cdr _%e177762177780%_)))
                          (if (gx#stx-pair? _%tl177764177785%_)
                              (let ((_%e177765177788%_
                                     (gx#syntax-e _%tl177764177785%_)))
                                (let ((_%hd177766177791%_
                                       (##car _%e177765177788%_))
                                      (_%tl177767177793%_
                                       (##cdr _%e177765177788%_)))
                                  (let ((_%hd177796%_ _%hd177766177791%_))
                                    (if (gx#stx-pair? _%tl177767177793%_)
                                        (let ((_%e177768177798%_
                                               (gx#syntax-e
                                                _%tl177767177793%_)))
                                          (let ((_%hd177769177801%_
                                                 (##car _%e177768177798%_))
                                                (_%tl177770177803%_
                                                 (##cdr _%e177768177798%_)))
                                            (let ((_%expr177806%_
                                                   _%hd177769177801%_))
                                              (if (gx#stx-null?
                                                   _%tl177770177803%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd177796%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd177796%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd177796%_)
                             (cons (gx#core-expand-expression _%expr177806%_)
                                   '())))
                 (gx#stx-source _%stx177745%_)))
              (_%E177761177776%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177761177776%_)))))
                                        (_%E177761177776%_)))))
                              (_%E177761177776%_))))
                      (_%E177761177776%_))))
               (_%E177747177852%_
                (lambda ()
                  (if (gx#stx-pair? _%e177746177772%_)
                      (let ((_%e177749177812%_
                             (gx#syntax-e _%e177746177772%_)))
                        (let ((_%hd177750177815%_ (##car _%e177749177812%_))
                              (_%tl177751177817%_ (##cdr _%e177749177812%_)))
                          (if (gx#stx-pair? _%tl177751177817%_)
                              (let ((_%e177752177820%_
                                     (gx#syntax-e _%tl177751177817%_)))
                                (let ((_%hd177753177823%_
                                       (##car _%e177752177820%_))
                                      (_%tl177754177825%_
                                       (##cdr _%e177752177820%_)))
                                  (if (gx#stx-pair? _%hd177753177823%_)
                                      (let ((_%e177758177828%_
                                             (gx#syntax-e _%hd177753177823%_)))
                                        (let ((_%hd177759177831%_
                                               (##car _%e177758177828%_))
                                              (_%tl177760177833%_
                                               (##cdr _%e177758177828%_)))
                                          (let ((_%id177836%_
                                                 _%hd177759177831%_))
                                            (if (gx#stx-null?
                                                 _%tl177760177833%_)
                                                (if (gx#stx-pair?
                                                     _%tl177754177825%_)
                                                    (let ((_%e177755177838%_
                                                           (gx#syntax-e
                                                            _%tl177754177825%_)))
                                                      (let ((_%hd177756177841%_
                                                             (##car _%e177755177838%_))
                                                            (_%tl177757177843%_
                                                             (##cdr _%e177755177838%_)))
                                                        (let* ((_%expr177846%_
                                                                _%hd177756177841%_)
                                                               (_%props177848%_
                                                                _%tl177757177843%_))
                                                          (if (gx#identifier?
                                                               _%id177836%_)
                                                              (let ((_%bind177850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id177836%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind177850%_
                         _%props177848%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id177836%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr177846%_)
                                           '())))
                         (gx#stx-source _%stx177745%_)))
                      (_%E177748177808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177748177808%_))
                                                (_%E177748177808%_)))))
                                      (_%E177748177808%_))))
                              (_%E177748177808%_))))
                      (_%E177748177808%_)))))
          (_%E177747177852%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx177684%_)
        (let* ((_%e177685177698%_ _%stx177684%_)
               (_%E177687177702%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177685177698%_)))
               (_%E177686177741%_
                (lambda ()
                  (if (gx#stx-pair? _%e177685177698%_)
                      (let ((_%e177688177706%_
                             (gx#syntax-e _%e177685177698%_)))
                        (let ((_%hd177689177709%_ (##car _%e177688177706%_))
                              (_%tl177690177711%_ (##cdr _%e177688177706%_)))
                          (if (gx#stx-pair? _%tl177690177711%_)
                              (let ((_%e177691177714%_
                                     (gx#syntax-e _%tl177690177711%_)))
                                (let ((_%hd177692177717%_
                                       (##car _%e177691177714%_))
                                      (_%tl177693177719%_
                                       (##cdr _%e177691177714%_)))
                                  (let ((_%id177722%_ _%hd177692177717%_))
                                    (if (gx#stx-pair? _%tl177693177719%_)
                                        (let ((_%e177694177724%_
                                               (gx#syntax-e
                                                _%tl177693177719%_)))
                                          (let ((_%hd177695177727%_
                                                 (##car _%e177694177724%_))
                                                (_%tl177696177729%_
                                                 (##cdr _%e177694177724%_)))
                                            (let* ((_%binding-id177732%_
                                                    _%hd177695177727%_)
                                                   (_%props177734%_
                                                    _%tl177696177729%_))
                                              (if (and (gx#identifier?
                                                        _%id177722%_)
                                                       (gx#identifier?
                                                        _%binding-id177732%_)
                                                       (gx#stx-list?
                                                        _%props177734%_))
                                                  (let* ((_%eid177736%_
                                                          (gx#stx-e
                                                           _%binding-id177732%_))
                                                         (_%bind177738%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id177722%_
                                                           _%eid177736%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind177738%_
                                                     _%props177734%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id177722%_)
                         (cons _%eid177736%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177687177702%_)))))
                                        (_%E177687177702%_)))))
                              (_%E177687177702%_))))
                      (_%E177687177702%_)))))
          (_%E177686177741%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind177619%_ _%props177620%_)
        (letrec ((_%eval-prop177622%_
                  (lambda (_%prop177682%_)
                    (gx#eval-expression+1 _%prop177682%_))))
          (let _%loop177624%_ ((_%rest177626%_ _%props177620%_)
                               (_%props177627%_ '()))
            (let* ((_%e177628177639%_ _%rest177626%_)
                   (_%E177637177643%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e177628177639%_)))
                   (_%E177630177647%_
                    (lambda ()
                      (if (gx#stx-null? _%e177628177639%_)
                          (if (null? _%props177627%_)
                              '#!void
                              (##structure-set!
                               _%bind177619%_
                               (reverse! _%props177627%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E177637177643%_))))
                   (_%E177629177678%_
                    (lambda ()
                      (if (gx#stx-pair? _%e177628177639%_)
                          (let ((_%e177631177651%_
                                 (gx#syntax-e _%e177628177639%_)))
                            (let ((_%hd177632177654%_
                                   (##car _%e177631177651%_))
                                  (_%tl177633177656%_
                                   (##cdr _%e177631177651%_)))
                              (let ((_%key177659%_ _%hd177632177654%_))
                                (if (gx#stx-pair? _%tl177633177656%_)
                                    (let ((_%e177634177661%_
                                           (gx#syntax-e _%tl177633177656%_)))
                                      (let ((_%hd177635177664%_
                                             (##car _%e177634177661%_))
                                            (_%tl177636177666%_
                                             (##cdr _%e177634177661%_)))
                                        (let* ((_%prop177669%_
                                                _%hd177635177664%_)
                                               (_%rest177671%_
                                                _%tl177636177666%_))
                                          (if (gx#stx-keyword? _%key177659%_)
                                              (let* ((_%key177673%_
                                                      (gx#stx-e _%key177659%_))
                                                     (_%$e177675%_
                                                      _%key177673%_))
                                                (if (eq? 'macro: _%$e177675%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind177619%_
                                                       (if (gx#identifier?
                                                            _%prop177669%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop177669%_)
                                                           (gx#eval-expression+1
                                                            _%prop177669%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop177624%_
                                                       _%rest177671%_
                                                       _%props177627%_))
                                                    (if (eq? 'type:
                                                             _%$e177675%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind177619%_
                                                           (gx#eval-expression+1
                                                            _%prop177669%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop177624%_
                                                           _%rest177671%_
                                                           _%props177627%_))
                                                        (_%loop177624%_
                                                         _%rest177671%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop177669%_)
                                                               (cons _%key177673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props177627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E177630177647%_)))))
                                    (_%E177630177647%_)))))
                          (_%E177630177647%_)))))
              (_%E177629177678%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx177562%_)
        (let* ((_%e177563177576%_ _%stx177562%_)
               (_%E177565177580%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177563177576%_)))
               (_%E177564177615%_
                (lambda ()
                  (if (gx#stx-pair? _%e177563177576%_)
                      (let ((_%e177566177584%_
                             (gx#syntax-e _%e177563177576%_)))
                        (let ((_%hd177567177587%_ (##car _%e177566177584%_))
                              (_%tl177568177589%_ (##cdr _%e177566177584%_)))
                          (if (gx#stx-pair? _%tl177568177589%_)
                              (let ((_%e177569177592%_
                                     (gx#syntax-e _%tl177568177589%_)))
                                (let ((_%hd177570177595%_
                                       (##car _%e177569177592%_))
                                      (_%tl177571177597%_
                                       (##cdr _%e177569177592%_)))
                                  (let ((_%id177600%_ _%hd177570177595%_))
                                    (if (gx#stx-pair? _%tl177571177597%_)
                                        (let ((_%e177572177602%_
                                               (gx#syntax-e
                                                _%tl177571177597%_)))
                                          (let ((_%hd177573177605%_
                                                 (##car _%e177572177602%_))
                                                (_%tl177574177607%_
                                                 (##cdr _%e177572177602%_)))
                                            (let ((_%expr177610%_
                                                   _%hd177573177605%_))
                                              (if (gx#stx-null?
                                                   _%tl177574177607%_)
                                                  (if (gx#identifier?
                                                       _%id177600%_)
                                                      (let ((_g178776_
                                                             (gx#core-expand-expression+1
                                                              _%expr177610%_)))
                                                        (begin
                                                          (let ((_g178777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g178776_)
                             (##values-length _g178776_)
                             1)))
                    (if (not (##fx= _g178777_ 2))
                        (error "Context expects 2 values" _g178777_)))
                  (let ((_%e-stx177612%_ (##values-ref _g178776_ 0))
                        (_%e177613%_ (##values-ref _g178776_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id177600%_ _%e177613%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id177600%_)
                                   (cons _%e-stx177612%_ '())))
                       (gx#stx-source _%stx177562%_))))))
              (_%E177565177580%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177565177580%_)))))
                                        (_%E177565177580%_)))))
                              (_%E177565177580%_))))
                      (_%E177565177580%_)))))
          (_%E177564177615%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx177506%_)
        (let* ((_%e177507177520%_ _%stx177506%_)
               (_%E177509177524%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177507177520%_)))
               (_%E177508177558%_
                (lambda ()
                  (if (gx#stx-pair? _%e177507177520%_)
                      (let ((_%e177510177528%_
                             (gx#syntax-e _%e177507177520%_)))
                        (let ((_%hd177511177531%_ (##car _%e177510177528%_))
                              (_%tl177512177533%_ (##cdr _%e177510177528%_)))
                          (if (gx#stx-pair? _%tl177512177533%_)
                              (let ((_%e177513177536%_
                                     (gx#syntax-e _%tl177512177533%_)))
                                (let ((_%hd177514177539%_
                                       (##car _%e177513177536%_))
                                      (_%tl177515177541%_
                                       (##cdr _%e177513177536%_)))
                                  (let ((_%id177544%_ _%hd177514177539%_))
                                    (if (gx#stx-pair? _%tl177515177541%_)
                                        (let ((_%e177516177546%_
                                               (gx#syntax-e
                                                _%tl177515177541%_)))
                                          (let ((_%hd177517177549%_
                                                 (##car _%e177516177546%_))
                                                (_%tl177518177551%_
                                                 (##cdr _%e177516177546%_)))
                                            (let ((_%alias-id177554%_
                                                   _%hd177517177549%_))
                                              (if (gx#stx-null?
                                                   _%tl177518177551%_)
                                                  (if (and (gx#identifier?
                                                            _%id177544%_)
                                                           (gx#identifier?
                                                            _%alias-id177554%_))
                                                      (let ((_%alias-id177556%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id177554%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id177544%_
                                                         _%alias-id177556%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id177544%_)
                             (cons _%alias-id177556%_ '())))))
              (_%E177509177524%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177509177524%_)))))
                                        (_%E177509177524%_)))))
                              (_%E177509177524%_))))
                      (_%E177509177524%_)))))
          (_%E177508177558%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx177449%_ _%wrap?177450%_)
        (let* ((_%e177451177461%_ _%stx177449%_)
               (_%E177453177465%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177451177461%_)))
               (_%E177452177492%_
                (lambda ()
                  (if (gx#stx-pair? _%e177451177461%_)
                      (let ((_%e177454177469%_
                             (gx#syntax-e _%e177451177461%_)))
                        (let ((_%hd177455177472%_ (##car _%e177454177469%_))
                              (_%tl177456177474%_ (##cdr _%e177454177469%_)))
                          (if (gx#stx-pair? _%tl177456177474%_)
                              (let ((_%e177457177477%_
                                     (gx#syntax-e _%tl177456177474%_)))
                                (let ((_%hd177458177480%_
                                       (##car _%e177457177477%_))
                                      (_%tl177459177482%_
                                       (##cdr _%e177457177477%_)))
                                  (let* ((_%hd177485%_ _%hd177458177480%_)
                                         (_%body177487%_ _%tl177459177482%_))
                                    (if (gx#core-bind-values? _%hd177485%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd177485%_)
                                           (let ((_%body177490%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd177485%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx177449%_
                                                               _%body177487%_)
                                                              '()))))
                                             (if _%wrap?177450%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body177490%_)
                                                  (gx#stx-source
                                                   _%stx177449%_))
                                                 _%body177490%_)))
                                         gx#current-expander-context
                                         (let ((__obj178759
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj178759)
                                           __obj178759))
                                        (_%E177453177465%_)))))
                              (_%E177453177465%_))))
                      (_%E177453177465%_)))))
          (_%E177452177492%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx177499%_)
        (let ((_%wrap?177501%_ '#t))
          (gx#core-expand-lambda%__% _%stx177499%_ _%wrap?177501%_))))
    (define gx#core-expand-lambda%
      (lambda _g178778_
        (let ((_g178779_ (##length _g178778_)))
          (cond ((##fx= _g178779_ 1)
                 (apply gx#core-expand-lambda%__0 _g178778_))
                ((##fx= _g178779_ 2)
                 (apply gx#core-expand-lambda%__% _g178778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g178778_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx177413%_)
        (let* ((_%e177414177421%_ _%stx177413%_)
               (_%E177416177425%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177414177421%_)))
               (_%E177415177444%_
                (lambda ()
                  (if (gx#stx-pair? _%e177414177421%_)
                      (let ((_%e177417177429%_
                             (gx#syntax-e _%e177414177421%_)))
                        (let ((_%hd177418177432%_ (##car _%e177417177429%_))
                              (_%tl177419177434%_ (##cdr _%e177417177429%_)))
                          (let ((_%clauses177437%_ _%tl177419177434%_))
                            (if (gx#stx-list? _%clauses177437%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause177439%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause177439%_)
                                       (let ((_%$e177441%_
                                              (gx#stx-source
                                               _%clause177439%_)))
                                         (if _%$e177441%_
                                             _%$e177441%_
                                             (gx#stx-source _%stx177413%_))))
                                      '#f))
                                   _%clauses177437%_))
                                 (gx#stx-source _%stx177413%_))
                                (_%E177416177425%_)))))
                      (_%E177416177425%_)))))
          (_%E177415177444%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx177367%_)
        (let* ((_%e177368177378%_ _%stx177367%_)
               (_%E177370177382%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177368177378%_)))
               (_%E177369177409%_
                (lambda ()
                  (if (gx#stx-pair? _%e177368177378%_)
                      (let ((_%e177371177386%_
                             (gx#syntax-e _%e177368177378%_)))
                        (let ((_%hd177372177389%_ (##car _%e177371177386%_))
                              (_%tl177373177391%_ (##cdr _%e177371177386%_)))
                          (if (gx#stx-pair? _%tl177373177391%_)
                              (let ((_%e177374177394%_
                                     (gx#syntax-e _%tl177373177391%_)))
                                (let ((_%hd177375177397%_
                                       (##car _%e177374177394%_))
                                      (_%tl177376177399%_
                                       (##cdr _%e177374177394%_)))
                                  (let* ((_%hd177402%_ _%hd177375177397%_)
                                         (_%body177404%_ _%tl177376177399%_))
                                    (if (gx#core-expand-let-bind? _%hd177402%_)
                                        (let ((_%expressions177406%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd177402%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd177402%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd177402%_
                                                           _%expressions177406%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx177367%_
                         _%body177404%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx177367%_)))
                                           gx#current-expander-context
                                           (let ((__obj178760
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj178760)
                                             __obj178760)))
                                        (_%E177370177382%_)))))
                              (_%E177370177382%_))))
                      (_%E177370177382%_)))))
          (_%E177369177409%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx177312%_ _%form177313%_)
        (let* ((_%e177314177324%_ _%stx177312%_)
               (_%E177316177328%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177314177324%_)))
               (_%E177315177353%_
                (lambda ()
                  (if (gx#stx-pair? _%e177314177324%_)
                      (let ((_%e177317177332%_
                             (gx#syntax-e _%e177314177324%_)))
                        (let ((_%hd177318177335%_ (##car _%e177317177332%_))
                              (_%tl177319177337%_ (##cdr _%e177317177332%_)))
                          (if (gx#stx-pair? _%tl177319177337%_)
                              (let ((_%e177320177340%_
                                     (gx#syntax-e _%tl177319177337%_)))
                                (let ((_%hd177321177343%_
                                       (##car _%e177320177340%_))
                                      (_%tl177322177345%_
                                       (##cdr _%e177320177340%_)))
                                  (let* ((_%hd177348%_ _%hd177321177343%_)
                                         (_%body177350%_ _%tl177322177345%_))
                                    (if (gx#core-expand-let-bind? _%hd177348%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd177348%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form177313%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd177348%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd177348%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx177312%_
                                                               _%body177350%_)
                                                              '())))
                                            (gx#stx-source _%stx177312%_)))
                                         gx#current-expander-context
                                         (let ((__obj178761
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj178761)
                                           __obj178761))
                                        (_%E177316177328%_)))))
                              (_%E177316177328%_))))
                      (_%E177316177328%_)))))
          (_%E177315177353%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx177360%_)
        (let ((_%form177362%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx177360%_ _%form177362%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g178780_
        (let ((_g178781_ (##length _g178780_)))
          (cond ((##fx= _g178781_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g178780_))
                ((##fx= _g178781_ 2)
                 (apply gx#core-expand-letrec-values%__% _g178780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g178780_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx177309%_)
        (gx#core-expand-letrec-values%__% _%stx177309%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx177266%_)
        (if (gx#stx-list? _%stx177266%_)
            (gx#stx-andmap
             (lambda (_%bind177268%_)
               (let* ((_%e177269177279%_ _%bind177268%_)
                      (_%E177271177283%_ (lambda () '#f))
                      (_%E177270177305%_
                       (lambda ()
                         (if (gx#stx-pair? _%e177269177279%_)
                             (let ((_%e177272177287%_
                                    (gx#syntax-e _%e177269177279%_)))
                               (let ((_%hd177273177290%_
                                      (##car _%e177272177287%_))
                                     (_%tl177274177292%_
                                      (##cdr _%e177272177287%_)))
                                 (let ((_%hd177295%_ _%hd177273177290%_))
                                   (if (gx#stx-pair? _%tl177274177292%_)
                                       (let ((_%e177275177297%_
                                              (gx#syntax-e
                                               _%tl177274177292%_)))
                                         (let ((_%hd177276177300%_
                                                (##car _%e177275177297%_))
                                               (_%tl177277177302%_
                                                (##cdr _%e177275177297%_)))
                                           (if (gx#stx-null?
                                                _%tl177277177302%_)
                                               (gx#core-bind-values?
                                                _%hd177295%_)
                                               (_%E177271177283%_))))
                                       (_%E177271177283%_)))))
                             (_%E177271177283%_)))))
                 (_%E177270177305%_)))
             _%stx177266%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind177225%_)
        (let* ((_%e177226177236%_ _%bind177225%_)
               (_%E177228177240%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177226177236%_)))
               (_%E177227177262%_
                (lambda ()
                  (if (gx#stx-pair? _%e177226177236%_)
                      (let ((_%e177229177244%_
                             (gx#syntax-e _%e177226177236%_)))
                        (let ((_%hd177230177247%_ (##car _%e177229177244%_))
                              (_%tl177231177249%_ (##cdr _%e177229177244%_)))
                          (if (gx#stx-pair? _%tl177231177249%_)
                              (let ((_%e177232177252%_
                                     (gx#syntax-e _%tl177231177249%_)))
                                (let ((_%hd177233177255%_
                                       (##car _%e177232177252%_))
                                      (_%tl177234177257%_
                                       (##cdr _%e177232177252%_)))
                                  (let ((_%expr177260%_ _%hd177233177255%_))
                                    (if (gx#stx-null? _%tl177234177257%_)
                                        (gx#core-expand-expression
                                         _%expr177260%_)
                                        (_%E177228177240%_)))))
                              (_%E177228177240%_))))
                      (_%E177228177240%_)))))
          (_%E177227177262%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind177184%_)
        (let* ((_%e177185177195%_ _%bind177184%_)
               (_%E177187177199%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177185177195%_)))
               (_%E177186177221%_
                (lambda ()
                  (if (gx#stx-pair? _%e177185177195%_)
                      (let ((_%e177188177203%_
                             (gx#syntax-e _%e177185177195%_)))
                        (let ((_%hd177189177206%_ (##car _%e177188177203%_))
                              (_%tl177190177208%_ (##cdr _%e177188177203%_)))
                          (let ((_%hd177211%_ _%hd177189177206%_))
                            (if (gx#stx-pair? _%tl177190177208%_)
                                (let ((_%e177191177213%_
                                       (gx#syntax-e _%tl177190177208%_)))
                                  (let ((_%hd177192177216%_
                                         (##car _%e177191177213%_))
                                        (_%tl177193177218%_
                                         (##cdr _%e177191177213%_)))
                                    (if (gx#stx-null? _%tl177193177218%_)
                                        (gx#core-bind-values!__0 _%hd177211%_)
                                        (_%E177187177199%_))))
                                (_%E177187177199%_)))))
                      (_%E177187177199%_)))))
          (_%E177186177221%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind177142%_ _%expr177143%_)
        (let* ((_%e177144177154%_ _%bind177142%_)
               (_%E177146177158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177144177154%_)))
               (_%E177145177180%_
                (lambda ()
                  (if (gx#stx-pair? _%e177144177154%_)
                      (let ((_%e177147177162%_
                             (gx#syntax-e _%e177144177154%_)))
                        (let ((_%hd177148177165%_ (##car _%e177147177162%_))
                              (_%tl177149177167%_ (##cdr _%e177147177162%_)))
                          (let ((_%hd177170%_ _%hd177148177165%_))
                            (if (gx#stx-pair? _%tl177149177167%_)
                                (let ((_%e177150177172%_
                                       (gx#syntax-e _%tl177149177167%_)))
                                  (let ((_%hd177151177175%_
                                         (##car _%e177150177172%_))
                                        (_%tl177152177177%_
                                         (##cdr _%e177150177172%_)))
                                    (if (gx#stx-null? _%tl177152177177%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd177170%_)
                                              (cons _%expr177143%_ '()))
                                        (_%E177146177158%_))))
                                (_%E177146177158%_)))))
                      (_%E177146177158%_)))))
          (_%E177145177180%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx177096%_)
        (let* ((_%e177097177107%_ _%stx177096%_)
               (_%E177099177111%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177097177107%_)))
               (_%E177098177138%_
                (lambda ()
                  (if (gx#stx-pair? _%e177097177107%_)
                      (let ((_%e177100177115%_
                             (gx#syntax-e _%e177097177107%_)))
                        (let ((_%hd177101177118%_ (##car _%e177100177115%_))
                              (_%tl177102177120%_ (##cdr _%e177100177115%_)))
                          (if (gx#stx-pair? _%tl177102177120%_)
                              (let ((_%e177103177123%_
                                     (gx#syntax-e _%tl177102177120%_)))
                                (let ((_%hd177104177126%_
                                       (##car _%e177103177123%_))
                                      (_%tl177105177128%_
                                       (##cdr _%e177103177123%_)))
                                  (let* ((_%hd177131%_ _%hd177104177126%_)
                                         (_%body177133%_ _%tl177105177128%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd177131%_)
                                        (let ((_%expanders177135%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd177131%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd177131%_
                                              _%expanders177135%_)
                                             (gx#core-expand-local-block
                                              _%stx177096%_
                                              _%body177133%_))
                                           gx#current-expander-context
                                           (let ((__obj178762
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj178762)
                                             __obj178762)))
                                        (_%E177099177111%_)))))
                              (_%E177099177111%_))))
                      (_%E177099177111%_)))))
          (_%E177098177138%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx177045%_)
        (let* ((_%e177046177056%_ _%stx177045%_)
               (_%E177048177060%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177046177056%_)))
               (_%E177047177092%_
                (lambda ()
                  (if (gx#stx-pair? _%e177046177056%_)
                      (let ((_%e177049177064%_
                             (gx#syntax-e _%e177046177056%_)))
                        (let ((_%hd177050177067%_ (##car _%e177049177064%_))
                              (_%tl177051177069%_ (##cdr _%e177049177064%_)))
                          (if (gx#stx-pair? _%tl177051177069%_)
                              (let ((_%e177052177072%_
                                     (gx#syntax-e _%tl177051177069%_)))
                                (let ((_%hd177053177075%_
                                       (##car _%e177052177072%_))
                                      (_%tl177054177077%_
                                       (##cdr _%e177052177072%_)))
                                  (let* ((_%hd177080%_ _%hd177053177075%_)
                                         (_%body177082%_ _%tl177054177077%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd177080%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd177080%_
                                            (make-list
                                             (gx#stx-length _%hd177080%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g177084177087%_
                                                     _%g177085177089%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g177084177087%_
                                               _%g177085177089%_
                                               '#t))
                                            _%hd177080%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd177080%_))
                                           (gx#core-expand-local-block
                                            _%stx177045%_
                                            _%body177082%_))
                                         gx#current-expander-context
                                         (let ((__obj178763
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj178763)
                                           __obj178763))
                                        (_%E177048177060%_)))))
                              (_%E177048177060%_))))
                      (_%E177048177060%_)))))
          (_%E177047177092%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx177002%_)
        (if (gx#stx-list? _%stx177002%_)
            (gx#stx-andmap
             (lambda (_%bind177004%_)
               (let* ((_%e177005177015%_ _%bind177004%_)
                      (_%E177007177019%_ (lambda () '#f))
                      (_%E177006177041%_
                       (lambda ()
                         (if (gx#stx-pair? _%e177005177015%_)
                             (let ((_%e177008177023%_
                                    (gx#syntax-e _%e177005177015%_)))
                               (let ((_%hd177009177026%_
                                      (##car _%e177008177023%_))
                                     (_%tl177010177028%_
                                      (##cdr _%e177008177023%_)))
                                 (let ((_%hd177031%_ _%hd177009177026%_))
                                   (if (gx#stx-pair? _%tl177010177028%_)
                                       (let ((_%e177011177033%_
                                              (gx#syntax-e
                                               _%tl177010177028%_)))
                                         (let ((_%hd177012177036%_
                                                (##car _%e177011177033%_))
                                               (_%tl177013177038%_
                                                (##cdr _%e177011177033%_)))
                                           (if (gx#stx-null?
                                                _%tl177013177038%_)
                                               (gx#identifier? _%hd177031%_)
                                               (_%E177007177019%_))))
                                       (_%E177007177019%_)))))
                             (_%E177007177019%_)))))
                 (_%E177006177041%_)))
             _%stx177002%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind176958%_)
        (let* ((_%e176959176969%_ _%bind176958%_)
               (_%E176961176973%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176959176969%_)))
               (_%E176960176998%_
                (lambda ()
                  (if (gx#stx-pair? _%e176959176969%_)
                      (let ((_%e176962176977%_
                             (gx#syntax-e _%e176959176969%_)))
                        (let ((_%hd176963176980%_ (##car _%e176962176977%_))
                              (_%tl176964176982%_ (##cdr _%e176962176977%_)))
                          (if (gx#stx-pair? _%tl176964176982%_)
                              (let ((_%e176965176985%_
                                     (gx#syntax-e _%tl176964176982%_)))
                                (let ((_%hd176966176988%_
                                       (##car _%e176965176985%_))
                                      (_%tl176967176990%_
                                       (##cdr _%e176965176985%_)))
                                  (let ((_%expr176993%_ _%hd176966176988%_))
                                    (if (gx#stx-null? _%tl176967176990%_)
                                        (let ((_g178782_
                                               (gx#core-expand-expression+1
                                                _%expr176993%_)))
                                          (begin
                                            (let ((_g178783_
                                                   (if (##values? _g178782_)
                                                       (##values-length
                                                        _g178782_)
                                                       1)))
                                              (if (not (##fx= _g178783_ 2))
                                                  (error "Context expects 2 values"
                                                         _g178783_)))
                                            (let ((_%_176995%_
                                                   (##values-ref _g178782_ 0))
                                                  (_%e176996%_
                                                   (##values-ref _g178782_ 1)))
                                              _%e176996%_)))
                                        (_%E176961176973%_)))))
                              (_%E176961176973%_))))
                      (_%E176961176973%_)))))
          (_%E176960176998%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind176903%_ _%e176904%_ _%rebind?176905%_)
        (let* ((_%e176906176916%_ _%bind176903%_)
               (_%E176908176920%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176906176916%_)))
               (_%E176907176942%_
                (lambda ()
                  (if (gx#stx-pair? _%e176906176916%_)
                      (let ((_%e176909176924%_
                             (gx#syntax-e _%e176906176916%_)))
                        (let ((_%hd176910176927%_ (##car _%e176909176924%_))
                              (_%tl176911176929%_ (##cdr _%e176909176924%_)))
                          (let ((_%id176932%_ _%hd176910176927%_))
                            (if (gx#stx-pair? _%tl176911176929%_)
                                (let ((_%e176912176934%_
                                       (gx#syntax-e _%tl176911176929%_)))
                                  (let ((_%hd176913176937%_
                                         (##car _%e176912176934%_))
                                        (_%tl176914176939%_
                                         (##cdr _%e176912176934%_)))
                                    (if (gx#stx-null? _%tl176914176939%_)
                                        (gx#core-bind-syntax!__1
                                         _%id176932%_
                                         _%e176904%_
                                         _%rebind?176905%_)
                                        (_%E176908176920%_))))
                                (_%E176908176920%_)))))
                      (_%E176908176920%_)))))
          (_%E176907176942%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind176949%_ _%e176950%_)
        (let ((_%rebind?176952%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind176949%_
           _%e176950%_
           _%rebind?176952%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g178784_
        (let ((_g178785_ (##length _g178784_)))
          (cond ((##fx= _g178785_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g178784_))
                ((##fx= _g178785_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g178784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g178784_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx176861%_)
        (let* ((_%e176862176872%_ _%stx176861%_)
               (_%E176864176876%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176862176872%_)))
               (_%E176863176898%_
                (lambda ()
                  (if (gx#stx-pair? _%e176862176872%_)
                      (let ((_%e176865176880%_
                             (gx#syntax-e _%e176862176872%_)))
                        (let ((_%hd176866176883%_ (##car _%e176865176880%_))
                              (_%tl176867176885%_ (##cdr _%e176865176880%_)))
                          (if (gx#stx-pair? _%tl176867176885%_)
                              (let ((_%e176868176888%_
                                     (gx#syntax-e _%tl176867176885%_)))
                                (let ((_%hd176869176891%_
                                       (##car _%e176868176888%_))
                                      (_%tl176870176893%_
                                       (##cdr _%e176868176888%_)))
                                  (let ((_%expr176896%_ _%hd176869176891%_))
                                    (if (gx#stx-null? _%tl176870176893%_)
                                        (gx#core-expand-expression
                                         _%expr176896%_)
                                        (_%E176864176876%_)))))
                              (_%E176864176876%_))))
                      (_%E176864176876%_)))))
          (_%E176863176898%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx176820%_)
        (let* ((_%e176821176831%_ _%stx176820%_)
               (_%E176823176835%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176821176831%_)))
               (_%E176822176857%_
                (lambda ()
                  (if (gx#stx-pair? _%e176821176831%_)
                      (let ((_%e176824176839%_
                             (gx#syntax-e _%e176821176831%_)))
                        (let ((_%hd176825176842%_ (##car _%e176824176839%_))
                              (_%tl176826176844%_ (##cdr _%e176824176839%_)))
                          (if (gx#stx-pair? _%tl176826176844%_)
                              (let ((_%e176827176847%_
                                     (gx#syntax-e _%tl176826176844%_)))
                                (let ((_%hd176828176850%_
                                       (##car _%e176827176847%_))
                                      (_%tl176829176852%_
                                       (##cdr _%e176827176847%_)))
                                  (let ((_%e176855%_ _%hd176828176850%_))
                                    (if (gx#stx-null? _%tl176829176852%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e176855%_)
                                                     '()))
                                         (gx#stx-source _%stx176820%_))
                                        (_%E176823176835%_)))))
                              (_%E176823176835%_))))
                      (_%E176823176835%_)))))
          (_%E176822176857%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx176779%_)
        (let* ((_%e176780176790%_ _%stx176779%_)
               (_%E176782176794%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176780176790%_)))
               (_%E176781176816%_
                (lambda ()
                  (if (gx#stx-pair? _%e176780176790%_)
                      (let ((_%e176783176798%_
                             (gx#syntax-e _%e176780176790%_)))
                        (let ((_%hd176784176801%_ (##car _%e176783176798%_))
                              (_%tl176785176803%_ (##cdr _%e176783176798%_)))
                          (if (gx#stx-pair? _%tl176785176803%_)
                              (let ((_%e176786176806%_
                                     (gx#syntax-e _%tl176785176803%_)))
                                (let ((_%hd176787176809%_
                                       (##car _%e176786176806%_))
                                      (_%tl176788176811%_
                                       (##cdr _%e176786176806%_)))
                                  (let ((_%e176814%_ _%hd176787176809%_))
                                    (if (gx#stx-null? _%tl176788176811%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e176814%_)
                                                     '()))
                                         (gx#stx-source _%stx176779%_))
                                        (_%E176782176794%_)))))
                              (_%E176782176794%_))))
                      (_%E176782176794%_)))))
          (_%E176781176816%_))))
    (define gx#core-expand-call%
      (lambda (_%stx176673%_)
        (letrec ((_%expand-runtime-call176675%_
                  (lambda (_%rator-expr176776%_ _%args176777%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr176776%_
                      (gx#stx-map1 gx#core-expand-expression _%args176777%_))
                     (gx#stx-source _%stx176673%_)))))
          (let* ((_%e176676176686%_ _%stx176673%_)
                 (_%E176678176690%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176676176686%_)))
                 (_%E176677176772%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176676176686%_)
                        (let ((_%e176679176694%_
                               (gx#syntax-e _%e176676176686%_)))
                          (let ((_%hd176680176697%_ (##car _%e176679176694%_))
                                (_%tl176681176699%_ (##cdr _%e176679176694%_)))
                            (if (gx#stx-pair? _%tl176681176699%_)
                                (let ((_%e176682176702%_
                                       (gx#syntax-e _%tl176681176699%_)))
                                  (let ((_%hd176683176705%_
                                         (##car _%e176682176702%_))
                                        (_%tl176684176707%_
                                         (##cdr _%e176682176702%_)))
                                    (let* ((_%rator176710%_ _%hd176683176705%_)
                                           (_%args176712%_ _%tl176684176707%_))
                                      (if (gx#stx-list? _%args176712%_)
                                          (let* ((_%rator-expr176714%_
                                                  (gx#core-expand-expression
                                                   _%rator176710%_))
                                                 (_%e176715176725%_
                                                  _%rator-expr176714%_)
                                                 (_%E176717176729%_
                                                  (lambda ()
                                                    (_%expand-runtime-call176675%_
                                                     _%rator-expr176714%_
                                                     _%args176712%_)))
                                                 (_%E176716176768%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e176715176725%_)
                                                        (let ((_%e176718176733%_
                                                               (gx#syntax-e
                                                                _%e176715176725%_)))
                                                          (let ((_%hd176719176736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e176718176733%_))
                        (_%tl176720176738%_ (##cdr _%e176718176733%_)))
                    (if (and (gx#identifier? _%hd176719176736%_)
                             (gx#core-identifier=? _%hd176719176736%_ '%#ref))
                        (if (gx#stx-pair? _%tl176720176738%_)
                            (let ((_%e176721176741%_
                                   (gx#syntax-e _%tl176720176738%_)))
                              (let ((_%hd176722176744%_
                                     (##car _%e176721176741%_))
                                    (_%tl176723176746%_
                                     (##cdr _%e176721176741%_)))
                                (let ((_%id176749%_ _%hd176722176744%_))
                                  (if (gx#stx-null? _%tl176723176746%_)
                                      (let ((_%$e176751%_
                                             (gx#resolve-identifier__0
                                              _%id176749%_)))
                                        (if _%$e176751%_
                                            ((lambda (_%bind176754%_)
                                               (let _%again176756%_ ((_%bind176758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind176754%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e176760%_
                                                        (if (##structure-instance-of?
                                                             _%bind176758%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind176758%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e176760%_
                                                       ((lambda (_%macro176763%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro176763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args176712%_)
                    (gx#stx-source _%stx176673%_))))
                _%$e176760%_)
               (if (##structure-direct-instance-of?
                    _%bind176758%_
                    'gx#import-binding::t)
                   (_%again176756%_
                    (##unchecked-structure-ref _%bind176758%_ '5 '#f '#f))
                   (_%expand-runtime-call176675%_
                    _%rator-expr176714%_
                    _%args176712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e176751%_)
                                            (_%expand-runtime-call176675%_
                                             _%rator-expr176714%_
                                             _%args176712%_)))
                                      (_%E176717176729%_)))))
                            (_%E176717176729%_))
                        (_%E176717176729%_))))
                (_%E176717176729%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176716176768%_))
                                          (_%E176678176690%_)))))
                                (_%E176678176690%_))))
                        (_%E176678176690%_)))))
            (_%E176677176772%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx176606%_)
        (let* ((_%e176607176623%_ _%stx176606%_)
               (_%E176609176627%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176607176623%_)))
               (_%E176608176669%_
                (lambda ()
                  (if (gx#stx-pair? _%e176607176623%_)
                      (let ((_%e176610176631%_
                             (gx#syntax-e _%e176607176623%_)))
                        (let ((_%hd176611176634%_ (##car _%e176610176631%_))
                              (_%tl176612176636%_ (##cdr _%e176610176631%_)))
                          (if (gx#stx-pair? _%tl176612176636%_)
                              (let ((_%e176613176639%_
                                     (gx#syntax-e _%tl176612176636%_)))
                                (let ((_%hd176614176642%_
                                       (##car _%e176613176639%_))
                                      (_%tl176615176644%_
                                       (##cdr _%e176613176639%_)))
                                  (let ((_%test176647%_ _%hd176614176642%_))
                                    (if (gx#stx-pair? _%tl176615176644%_)
                                        (let ((_%e176616176649%_
                                               (gx#syntax-e
                                                _%tl176615176644%_)))
                                          (let ((_%hd176617176652%_
                                                 (##car _%e176616176649%_))
                                                (_%tl176618176654%_
                                                 (##cdr _%e176616176649%_)))
                                            (let ((_%K176657%_
                                                   _%hd176617176652%_))
                                              (if (gx#stx-pair?
                                                   _%tl176618176654%_)
                                                  (let ((_%e176619176659%_
                                                         (gx#syntax-e
                                                          _%tl176618176654%_)))
                                                    (let ((_%hd176620176662%_
                                                           (##car _%e176619176659%_))
                                                          (_%tl176621176664%_
                                                           (##cdr _%e176619176659%_)))
                                                      (let ((_%E176667%_
                                                             _%hd176620176662%_))
                                                        (if (gx#stx-null?
                                                             _%tl176621176664%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test176647%_)
                                 (cons (gx#core-expand-expression _%K176657%_)
                                       (cons (gx#core-expand-expression
                                              _%E176667%_)
                                             '()))))
                     (gx#stx-source _%stx176606%_))
                    (_%E176609176627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E176609176627%_)))))
                                        (_%E176609176627%_)))))
                              (_%E176609176627%_))))
                      (_%E176609176627%_)))))
          (_%E176608176669%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx176565%_)
        (let* ((_%e176566176576%_ _%stx176565%_)
               (_%E176568176580%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176566176576%_)))
               (_%E176567176602%_
                (lambda ()
                  (if (gx#stx-pair? _%e176566176576%_)
                      (let ((_%e176569176584%_
                             (gx#syntax-e _%e176566176576%_)))
                        (let ((_%hd176570176587%_ (##car _%e176569176584%_))
                              (_%tl176571176589%_ (##cdr _%e176569176584%_)))
                          (if (gx#stx-pair? _%tl176571176589%_)
                              (let ((_%e176572176592%_
                                     (gx#syntax-e _%tl176571176589%_)))
                                (let ((_%hd176573176595%_
                                       (##car _%e176572176592%_))
                                      (_%tl176574176597%_
                                       (##cdr _%e176572176592%_)))
                                  (let ((_%id176600%_ _%hd176573176595%_))
                                    (if (gx#stx-null? _%tl176574176597%_)
                                        (if (gx#identifier? _%id176600%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id176600%_
                                                          _%stx176565%_)
                                                         '()))
                                             (gx#stx-source _%stx176565%_))
                                            (_%E176568176580%_))
                                        (_%E176568176580%_)))))
                              (_%E176568176580%_))))
                      (_%E176568176580%_)))))
          (_%E176567176602%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx176511%_)
        (let* ((_%e176512176525%_ _%stx176511%_)
               (_%E176514176529%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176512176525%_)))
               (_%E176513176561%_
                (lambda ()
                  (if (gx#stx-pair? _%e176512176525%_)
                      (let ((_%e176515176533%_
                             (gx#syntax-e _%e176512176525%_)))
                        (let ((_%hd176516176536%_ (##car _%e176515176533%_))
                              (_%tl176517176538%_ (##cdr _%e176515176533%_)))
                          (if (gx#stx-pair? _%tl176517176538%_)
                              (let ((_%e176518176541%_
                                     (gx#syntax-e _%tl176517176538%_)))
                                (let ((_%hd176519176544%_
                                       (##car _%e176518176541%_))
                                      (_%tl176520176546%_
                                       (##cdr _%e176518176541%_)))
                                  (let ((_%id176549%_ _%hd176519176544%_))
                                    (if (gx#stx-pair? _%tl176520176546%_)
                                        (let ((_%e176521176551%_
                                               (gx#syntax-e
                                                _%tl176520176546%_)))
                                          (let ((_%hd176522176554%_
                                                 (##car _%e176521176551%_))
                                                (_%tl176523176556%_
                                                 (##cdr _%e176521176551%_)))
                                            (let ((_%expr176559%_
                                                   _%hd176522176554%_))
                                              (if (gx#stx-null?
                                                   _%tl176523176556%_)
                                                  (if (gx#identifier?
                                                       _%id176549%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id176549%_
                            _%stx176511%_)
                           (cons (gx#core-expand-expression _%expr176559%_)
                                 '())))
               (gx#stx-source _%stx176511%_))
              (_%E176514176529%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E176514176529%_)))))
                                        (_%E176514176529%_)))))
                              (_%E176514176529%_))))
                      (_%E176514176529%_)))))
          (_%E176513176561%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx176356%_)
        (letrec ((_%generate176358%_
                  (lambda (_%body176388%_)
                    (let _%lp176390%_ ((_%rest176392%_ _%body176388%_)
                                       (_%ns176393%_
                                        (gx#core-context-namespace__0))
                                       (_%r176394%_ '()))
                      (let* ((_%e176395176410%_ _%rest176392%_)
                             (_%E176408176414%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e176395176410%_)))
                             (_%E176404176418%_
                              (lambda ()
                                (if (gx#stx-null? _%e176395176410%_)
                                    (reverse _%r176394%_)
                                    (_%E176408176414%_))))
                             (_%E176397176475%_
                              (lambda ()
                                (if (gx#stx-pair? _%e176395176410%_)
                                    (let ((_%e176405176422%_
                                           (gx#syntax-e _%e176395176410%_)))
                                      (let ((_%hd176406176425%_
                                             (##car _%e176405176422%_))
                                            (_%tl176407176427%_
                                             (##cdr _%e176405176422%_)))
                                        (let* ((_%hd176430%_
                                                _%hd176406176425%_)
                                               (_%rest176432%_
                                                _%tl176407176427%_))
                                          (if (gx#identifier? _%hd176430%_)
                                              (_%lp176390%_
                                               _%rest176432%_
                                               _%ns176393%_
                                               (cons (cons _%hd176430%_
                                                           (cons (if _%ns176393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd176430%_
                              _%ns176393%_
                              '"#"
                              _%hd176430%_)
                             _%hd176430%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r176394%_))
                                              (let* ((_%e176433176443%_
                                                      _%hd176430%_)
                                                     (_%E176435176447%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e176433176443%_)))
                                                     (_%E176434176471%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e176433176443%_)
                                                            (let ((_%e176436176451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e176433176443%_)))
                      (let ((_%hd176437176454%_ (##car _%e176436176451%_))
                            (_%tl176438176456%_ (##cdr _%e176436176451%_)))
                        (let ((_%id176459%_ _%hd176437176454%_))
                          (if (gx#stx-pair? _%tl176438176456%_)
                              (let ((_%e176439176461%_
                                     (gx#syntax-e _%tl176438176456%_)))
                                (let ((_%hd176440176464%_
                                       (##car _%e176439176461%_))
                                      (_%tl176441176466%_
                                       (##cdr _%e176439176461%_)))
                                  (let ((_%eid176469%_ _%hd176440176464%_))
                                    (if (gx#stx-null? _%tl176441176466%_)
                                        (if (and (gx#identifier? _%id176459%_)
                                                 (gx#identifier?
                                                  _%eid176469%_))
                                            (_%lp176390%_
                                             _%rest176432%_
                                             _%ns176393%_
                                             (cons (cons _%id176459%_
                                                         (cons _%eid176469%_
                                                               '()))
                                                   _%r176394%_))
                                            (_%E176435176447%_))
                                        (_%E176435176447%_)))))
                              (_%E176435176447%_)))))
                    (_%E176435176447%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E176434176471%_))))))
                                    (_%E176404176418%_))))
                             (_%E176396176507%_
                              (lambda ()
                                (if (gx#stx-pair? _%e176395176410%_)
                                    (let ((_%e176398176479%_
                                           (gx#syntax-e _%e176395176410%_)))
                                      (let ((_%hd176399176482%_
                                             (##car _%e176398176479%_))
                                            (_%tl176400176484%_
                                             (##cdr _%e176398176479%_)))
                                        (if (eq? (gx#stx-e _%hd176399176482%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl176400176484%_)
                                                (let ((_%e176401176487%_
                                                       (gx#syntax-e
                                                        _%tl176400176484%_)))
                                                  (let ((_%hd176402176490%_
                                                         (##car _%e176401176487%_))
                                                        (_%tl176403176492%_
                                                         (##cdr _%e176401176487%_)))
                                                    (let* ((_%ns176495%_
                                                            _%hd176402176490%_)
                                                           (_%rest176497%_
                                                            _%tl176403176492%_)
                                                           (_%ns176505%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns176495%_)
                        (symbol->string (gx#stx-e _%ns176495%_))
                        (if (or (gx#stx-string? _%ns176495%_)
                                (gx#stx-false? _%ns176495%_))
                            (gx#stx-e _%ns176495%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx176356%_
                             _%ns176495%_)))))
              (_%lp176390%_ _%rest176497%_ _%ns176505%_ _%r176394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E176397176475%_))
                                            (_%E176397176475%_))))
                                    (_%E176397176475%_)))))
                        (_%E176396176507%_))))))
          (let* ((_%e176359176366%_ _%stx176356%_)
                 (_%E176361176370%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176359176366%_)))
                 (_%E176360176384%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176359176366%_)
                        (let ((_%e176362176374%_
                               (gx#syntax-e _%e176359176366%_)))
                          (let ((_%hd176363176377%_ (##car _%e176362176374%_))
                                (_%tl176364176379%_ (##cdr _%e176362176374%_)))
                            (let ((_%body176382%_ _%tl176364176379%_))
                              (if (gx#stx-list? _%body176382%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate176358%_ _%body176382%_))
                                  (_%E176361176370%_)))))
                        (_%E176361176370%_)))))
            (_%E176360176384%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx176313%_)
        (let* ((_%e176314176324%_ _%stx176313%_)
               (_%E176316176328%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176314176324%_)))
               (_%E176315176352%_
                (lambda ()
                  (if (gx#stx-pair? _%e176314176324%_)
                      (let ((_%e176317176332%_
                             (gx#syntax-e _%e176314176324%_)))
                        (let ((_%hd176318176335%_ (##car _%e176317176332%_))
                              (_%tl176319176337%_ (##cdr _%e176317176332%_)))
                          (if (gx#stx-pair? _%tl176319176337%_)
                              (let ((_%e176320176340%_
                                     (gx#syntax-e _%tl176319176337%_)))
                                (let ((_%hd176321176343%_
                                       (##car _%e176320176340%_))
                                      (_%tl176322176345%_
                                       (##cdr _%e176320176340%_)))
                                  (let* ((_%hd176348%_ _%hd176321176343%_)
                                         (_%body176350%_ _%tl176322176345%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd176348%_)
                                             (gx#stx-list? _%body176350%_)
                                             (not (gx#stx-null?
                                                   _%body176350%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd176348%_)
                                         _%body176350%_)
                                        (_%E176316176328%_)))))
                              (_%E176316176328%_))))
                      (_%E176316176328%_)))))
          (_%E176315176352%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx176249%_)
        (letrec ((_%generate176251%_
                  (lambda (_%clause176281%_)
                    (let* ((_%e176282176289%_ _%clause176281%_)
                           (_%E176284176293%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx176249%_
                               _%clause176281%_)))
                           (_%E176283176309%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176282176289%_)
                                  (let ((_%e176285176297%_
                                         (gx#syntax-e _%e176282176289%_)))
                                    (let ((_%hd176286176300%_
                                           (##car _%e176285176297%_))
                                          (_%tl176287176302%_
                                           (##cdr _%e176285176297%_)))
                                      (let* ((_%hd176305%_ _%hd176286176300%_)
                                             (_%body176307%_
                                              _%tl176287176302%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd176305%_)
                                                 (gx#stx-list? _%body176307%_)
                                                 (not (gx#stx-null?
                                                       _%body176307%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd176305%_)
                                                   _%body176307%_)
                                             (gx#stx-source _%clause176281%_))
                                            (_%E176284176293%_)))))
                                  (_%E176284176293%_)))))
                      (_%E176283176309%_)))))
          (let* ((_%e176252176259%_ _%stx176249%_)
                 (_%E176254176263%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176252176259%_)))
                 (_%E176253176277%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176252176259%_)
                        (let ((_%e176255176267%_
                               (gx#syntax-e _%e176252176259%_)))
                          (let ((_%hd176256176270%_ (##car _%e176255176267%_))
                                (_%tl176257176272%_ (##cdr _%e176255176267%_)))
                            (let ((_%clauses176275%_ _%tl176257176272%_))
                              (if (gx#stx-list? _%clauses176275%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate176251%_
                                    _%clauses176275%_))
                                  (_%E176254176263%_)))))
                        (_%E176254176263%_)))))
            (_%E176253176277%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx176150%_ _%form176151%_)
        (letrec ((_%generate176153%_
                  (lambda (_%bind176196%_)
                    (let* ((_%e176197176207%_ _%bind176196%_)
                           (_%E176199176211%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx176150%_
                               _%bind176196%_)))
                           (_%E176198176235%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176197176207%_)
                                  (let ((_%e176200176215%_
                                         (gx#syntax-e _%e176197176207%_)))
                                    (let ((_%hd176201176218%_
                                           (##car _%e176200176215%_))
                                          (_%tl176202176220%_
                                           (##cdr _%e176200176215%_)))
                                      (let ((_%ids176223%_ _%hd176201176218%_))
                                        (if (gx#stx-pair? _%tl176202176220%_)
                                            (let ((_%e176203176225%_
                                                   (gx#syntax-e
                                                    _%tl176202176220%_)))
                                              (let ((_%hd176204176228%_
                                                     (##car _%e176203176225%_))
                                                    (_%tl176205176230%_
                                                     (##cdr _%e176203176225%_)))
                                                (let ((_%expr176233%_
                                                       _%hd176204176228%_))
                                                  (if (gx#stx-null?
                                                       _%tl176205176230%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids176223%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids176223%_)
                        (cons _%expr176233%_ '()))
                  (_%E176199176211%_))
              (_%E176199176211%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176199176211%_)))))
                                  (_%E176199176211%_)))))
                      (_%E176198176235%_)))))
          (let* ((_%e176154176164%_ _%stx176150%_)
                 (_%E176156176168%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176154176164%_)))
                 (_%E176155176192%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176154176164%_)
                        (let ((_%e176157176172%_
                               (gx#syntax-e _%e176154176164%_)))
                          (let ((_%hd176158176175%_ (##car _%e176157176172%_))
                                (_%tl176159176177%_ (##cdr _%e176157176172%_)))
                            (if (gx#stx-pair? _%tl176159176177%_)
                                (let ((_%e176160176180%_
                                       (gx#syntax-e _%tl176159176177%_)))
                                  (let ((_%hd176161176183%_
                                         (##car _%e176160176180%_))
                                        (_%tl176162176185%_
                                         (##cdr _%e176160176180%_)))
                                    (let* ((_%hd176188%_ _%hd176161176183%_)
                                           (_%body176190%_ _%tl176162176185%_))
                                      (if (and (gx#stx-list? _%hd176188%_)
                                               (gx#stx-list? _%body176190%_)
                                               (not (gx#stx-null?
                                                     _%body176190%_)))
                                          (gx#core-cons*
                                           _%form176151%_
                                           (gx#stx-map1
                                            _%generate176153%_
                                            _%hd176188%_)
                                           _%body176190%_)
                                          (_%E176156176168%_)))))
                                (_%E176156176168%_))))
                        (_%E176156176168%_)))))
            (_%E176155176192%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx176242%_)
        (let ((_%form176244%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx176242%_ _%form176244%_))))
    (define gx#macro-expand-let-values
      (lambda _g178786_
        (let ((_g178787_ (##length _g178786_)))
          (cond ((##fx= _g178787_ 1)
                 (apply gx#macro-expand-let-values__0 _g178786_))
                ((##fx= _g178787_ 2)
                 (apply gx#macro-expand-let-values__% _g178786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g178786_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx176147%_)
        (gx#macro-expand-let-values__% _%stx176147%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx176145%_)
        (gx#macro-expand-let-values__% _%stx176145%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx176036%_)
        (let* ((_%e176037176063%_ _%stx176036%_)
               (_%E176049176067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176037176063%_)))
               (_%E176039176109%_
                (lambda ()
                  (if (gx#stx-pair? _%e176037176063%_)
                      (let ((_%e176050176071%_
                             (gx#syntax-e _%e176037176063%_)))
                        (let ((_%hd176051176074%_ (##car _%e176050176071%_))
                              (_%tl176052176076%_ (##cdr _%e176050176071%_)))
                          (if (gx#stx-pair? _%tl176052176076%_)
                              (let ((_%e176053176079%_
                                     (gx#syntax-e _%tl176052176076%_)))
                                (let ((_%hd176054176082%_
                                       (##car _%e176053176079%_))
                                      (_%tl176055176084%_
                                       (##cdr _%e176053176079%_)))
                                  (let ((_%test176087%_ _%hd176054176082%_))
                                    (if (gx#stx-pair? _%tl176055176084%_)
                                        (let ((_%e176056176089%_
                                               (gx#syntax-e
                                                _%tl176055176084%_)))
                                          (let ((_%hd176057176092%_
                                                 (##car _%e176056176089%_))
                                                (_%tl176058176094%_
                                                 (##cdr _%e176056176089%_)))
                                            (let ((_%K176097%_
                                                   _%hd176057176092%_))
                                              (if (gx#stx-pair?
                                                   _%tl176058176094%_)
                                                  (let ((_%e176059176099%_
                                                         (gx#syntax-e
                                                          _%tl176058176094%_)))
                                                    (let ((_%hd176060176102%_
                                                           (##car _%e176059176099%_))
                                                          (_%tl176061176104%_
                                                           (##cdr _%e176059176099%_)))
                                                      (let ((_%E176107%_
                                                             _%hd176060176102%_))
                                                        (if (gx#stx-null?
                                                             _%tl176061176104%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test176087%_
                                                             _%K176097%_
                                                             _%E176107%_)
                                                            (_%E176049176067%_)))))
                                                  (_%E176049176067%_)))))
                                        (_%E176049176067%_)))))
                              (_%E176049176067%_))))
                      (_%E176049176067%_))))
               (_%E176038176141%_
                (lambda ()
                  (if (gx#stx-pair? _%e176037176063%_)
                      (let ((_%e176040176113%_
                             (gx#syntax-e _%e176037176063%_)))
                        (let ((_%hd176041176116%_ (##car _%e176040176113%_))
                              (_%tl176042176118%_ (##cdr _%e176040176113%_)))
                          (if (gx#stx-pair? _%tl176042176118%_)
                              (let ((_%e176043176121%_
                                     (gx#syntax-e _%tl176042176118%_)))
                                (let ((_%hd176044176124%_
                                       (##car _%e176043176121%_))
                                      (_%tl176045176126%_
                                       (##cdr _%e176043176121%_)))
                                  (let ((_%test176129%_ _%hd176044176124%_))
                                    (if (gx#stx-pair? _%tl176045176126%_)
                                        (let ((_%e176046176131%_
                                               (gx#syntax-e
                                                _%tl176045176126%_)))
                                          (let ((_%hd176047176134%_
                                                 (##car _%e176046176131%_))
                                                (_%tl176048176136%_
                                                 (##cdr _%e176046176131%_)))
                                            (let ((_%K176139%_
                                                   _%hd176047176134%_))
                                              (if (gx#stx-null?
                                                   _%tl176048176136%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test176129%_
                                                   _%K176139%_
                                                   '#!void)
                                                  (_%E176039176109%_)))))
                                        (_%E176039176109%_)))))
                              (_%E176039176109%_))))
                      (_%E176039176109%_)))))
          (_%E176038176141%_))))
    (define gx#free-identifier=?
      (lambda (_%xid176021%_ _%yid176022%_)
        (let ((_%xe176024%_ (gx#resolve-identifier__0 _%xid176021%_))
              (_%ye176025%_ (gx#resolve-identifier__0 _%yid176022%_)))
          (if (and _%xe176024%_ _%ye176025%_)
              (let ((_%$e176028%_ (eq? _%xe176024%_ _%ye176025%_)))
                (if _%$e176028%_
                    _%$e176028%_
                    (if (##structure-instance-of? _%xe176024%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye176025%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe176024%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye176025%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe176024%_ _%ye176025%_)
                  '#f
                  (gx#stx-eq? _%xid176021%_ _%yid176022%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid176002%_ _%yid176003%_)
        (letrec ((_%context176005%_
                  (lambda (_%e176019%_)
                    (if (##structure-direct-instance-of?
                         _%e176019%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e176019%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks176006%_
                  (lambda (_%e176014%_)
                    (if (symbol? _%e176014%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e176014%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e176014%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e176014%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap176007%_
                  (lambda (_%e176012%_)
                    (if (symbol? _%e176012%_)
                        _%e176012%_
                        (gx#syntax-local-unwrap _%e176012%_)))))
          (let ((_%x176009%_ (_%unwrap176007%_ _%xid176002%_))
                (_%y176010%_ (_%unwrap176007%_ _%yid176003%_)))
            (if (gx#stx-eq? _%x176009%_ _%y176010%_)
                (if (eq? (_%context176005%_ _%x176009%_)
                         (_%context176005%_ _%y176010%_))
                    (equal? (_%marks176006%_ _%x176009%_)
                            (_%marks176006%_ _%y176010%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx176000%_)
        (if (gx#identifier? _%stx176000%_)
            (gx#core-identifier=? _%stx176000%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx175998%_)
        (if (gx#identifier? _%stx175998%_)
            (gx#core-identifier=? _%stx175998%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx175941%_ _%where175942%_)
        (let _%lp175944%_ ((_%rest175946%_ (gx#syntax->list _%stx175941%_)))
          (let* ((_%rest175947175955%_ _%rest175946%_)
                 (_%else175949175963%_ (lambda () '#t))
                 (_%K175951175976%_
                  (lambda (_%rest175966%_ _%hd175967%_)
                    (if (gx#identifier? _%hd175967%_)
                        (if (__find (lambda (_%g175969175971%_)
                                      (gx#bound-identifier=?
                                       _%g175969175971%_
                                       _%hd175967%_))
                                    _%rest175966%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where175942%_
                             _%hd175967%_)
                            (_%lp175944%_ _%rest175966%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where175942%_
                         _%hd175967%_)))))
            (if (pair? _%rest175947175955%_)
                (let ((_%hd175952175979%_ (##car _%rest175947175955%_))
                      (_%tl175953175981%_ (##cdr _%rest175947175955%_)))
                  (let* ((_%hd175984%_ _%hd175952175979%_)
                         (_%rest175986%_ _%tl175953175981%_))
                    (_%K175951175976%_ _%rest175986%_ _%hd175984%_)))
                (_%else175949175963%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx175991%_)
        (let ((_%where175993%_ _%stx175991%_))
          (gx#check-duplicate-identifiers__% _%stx175991%_ _%where175993%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g178788_
        (let ((_g178789_ (##length _g178788_)))
          (cond ((##fx= _g178789_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g178788_))
                ((##fx= _g178789_ 2)
                 (apply gx#check-duplicate-identifiers__% _g178788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g178788_))))))
    (define gx#core-bind-values?
      (lambda (_%stx175933%_)
        (gx#stx-andmap
         (lambda (_%x175935%_)
           (let ((_%$e175937%_ (gx#identifier? _%x175935%_)))
             (if _%$e175937%_ _%$e175937%_ (gx#stx-false? _%x175935%_))))
         _%stx175933%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx175897%_ _%rebind?175898%_ _%phi175899%_ _%ctx175900%_)
        (gx#stx-for-each1
         (lambda (_%id175902%_)
           (if (gx#identifier? _%id175902%_)
               (gx#core-bind-runtime!__%
                _%id175902%_
                _%rebind?175898%_
                _%phi175899%_
                _%ctx175900%_)
               '#!void))
         _%stx175897%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx175907%_)
        (let* ((_%rebind?175909%_ '#f)
               (_%phi175911%_ (gx#current-expander-phi))
               (_%ctx175913%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx175907%_
           _%rebind?175909%_
           _%phi175911%_
           _%ctx175913%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx175915%_ _%rebind?175916%_)
        (let* ((_%phi175918%_ (gx#current-expander-phi))
               (_%ctx175920%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx175915%_
           _%rebind?175916%_
           _%phi175918%_
           _%ctx175920%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx175922%_ _%rebind?175923%_ _%phi175924%_)
        (let ((_%ctx175926%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx175922%_
           _%rebind?175923%_
           _%phi175924%_
           _%ctx175926%_))))
    (define gx#core-bind-values!
      (lambda _g178790_
        (let ((_g178791_ (##length _g178790_)))
          (cond ((##fx= _g178791_ 1) (apply gx#core-bind-values!__0 _g178790_))
                ((##fx= _g178791_ 2) (apply gx#core-bind-values!__1 _g178790_))
                ((##fx= _g178791_ 3) (apply gx#core-bind-values!__2 _g178790_))
                ((##fx= _g178791_ 4) (apply gx#core-bind-values!__% _g178790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g178790_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx175892%_)
        (gx#stx-map1
         (lambda (_%x175894%_)
           (if (gx#identifier? _%x175894%_)
               (gx#core-quote-syntax__0 _%x175894%_)
               '#f))
         _%stx175892%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx175885%_)
        (if (gx#identifier? _%stx175885%_)
            (let* ((_%bind175887%_ (gx#resolve-identifier__0 _%stx175885%_))
                   (_%$e175889%_ (not _%bind175887%_)))
              (if _%$e175889%_
                  _%$e175889%_
                  (##structure-instance-of?
                   _%bind175887%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id175874%_ _%form175875%_)
        (let ((_%bind175877%_ (gx#resolve-identifier__0 _%id175874%_)))
          (if (##structure-instance-of? _%bind175877%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id175874%_)
              (if (not _%bind175877%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id175874%_)))
                      (gx#core-quote-syntax__0 _%id175874%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form175875%_
                       _%id175874%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form175875%_
                   _%id175874%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id175829%_ _%rebind?175830%_ _%phi175831%_ _%ctx175832%_)
        (let* ((_%key175834%_ (gx#core-identifier-key _%id175829%_))
               (_%eid175836%_
                (gx#make-binding-id__%
                 _%key175834%_
                 '#f
                 _%phi175831%_
                 _%ctx175832%_))
               (_%bind175842%_
                (if (##structure-instance-of?
                     _%ctx175832%_
                     'gx#module-context::t)
                    (let ((__obj178767
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
                       __obj178767
                       _%eid175836%_
                       _%key175834%_
                       _%phi175831%_
                       _%ctx175832%_)
                      __obj178767)
                    (if (##structure-instance-of?
                         _%ctx175832%_
                         'gx#top-context::t)
                        (let ((__obj178766
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj178766
                           _%eid175836%_
                           _%key175834%_
                           _%phi175831%_)
                          __obj178766)
                        (if (##structure-instance-of?
                             _%ctx175832%_
                             'gx#local-context::t)
                            (let ((__obj178765
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj178765
                               _%eid175836%_
                               _%key175834%_
                               _%phi175831%_)
                              __obj178765)
                            (let ((__obj178764
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj178764
                               _%eid175836%_
                               _%key175834%_
                               _%phi175831%_)
                              __obj178764))))))
          (gx#bind-identifier!__%
           _%id175829%_
           _%bind175842%_
           _%rebind?175830%_
           _%phi175831%_
           _%ctx175832%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id175848%_)
        (let* ((_%rebind?175850%_ '#f)
               (_%phi175852%_ (gx#current-expander-phi))
               (_%ctx175854%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id175848%_
           _%rebind?175850%_
           _%phi175852%_
           _%ctx175854%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id175856%_ _%rebind?175857%_)
        (let* ((_%phi175859%_ (gx#current-expander-phi))
               (_%ctx175861%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id175856%_
           _%rebind?175857%_
           _%phi175859%_
           _%ctx175861%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id175863%_ _%rebind?175864%_ _%phi175865%_)
        (let ((_%ctx175867%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id175863%_
           _%rebind?175864%_
           _%phi175865%_
           _%ctx175867%_))))
    (define gx#core-bind-runtime!
      (lambda _g178792_
        (let ((_g178793_ (##length _g178792_)))
          (cond ((##fx= _g178793_ 1)
                 (apply gx#core-bind-runtime!__0 _g178792_))
                ((##fx= _g178793_ 2)
                 (apply gx#core-bind-runtime!__1 _g178792_))
                ((##fx= _g178793_ 3)
                 (apply gx#core-bind-runtime!__2 _g178792_))
                ((##fx= _g178793_ 4)
                 (apply gx#core-bind-runtime!__% _g178792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g178792_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id175781%_
               _%eid175782%_
               _%rebind?175783%_
               _%phi175784%_
               _%ctx175785%_)
        (let* ((_%key175787%_ (gx#core-identifier-key _%id175781%_))
               (_%bind175792%_
                (if (##structure-instance-of?
                     _%ctx175785%_
                     'gx#module-context::t)
                    (let ((__obj178770
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
                       __obj178770
                       _%eid175782%_
                       _%key175787%_
                       _%phi175784%_
                       _%ctx175785%_)
                      __obj178770)
                    (if (##structure-instance-of?
                         _%ctx175785%_
                         'gx#top-context::t)
                        (let ((__obj178769
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj178769
                           _%eid175782%_
                           _%key175787%_
                           _%phi175784%_)
                          __obj178769)
                        (let ((__obj178768
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj178768
                           _%eid175782%_
                           _%key175787%_
                           _%phi175784%_)
                          __obj178768)))))
          (gx#bind-identifier!__%
           _%id175781%_
           _%bind175792%_
           _%rebind?175783%_
           _%phi175784%_
           _%ctx175785%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id175798%_ _%eid175799%_)
        (let* ((_%rebind?175801%_ '#f)
               (_%phi175803%_ (gx#current-expander-phi))
               (_%ctx175805%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id175798%_
           _%eid175799%_
           _%rebind?175801%_
           _%phi175803%_
           _%ctx175805%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id175807%_ _%eid175808%_ _%rebind?175809%_)
        (let* ((_%phi175811%_ (gx#current-expander-phi))
               (_%ctx175813%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id175807%_
           _%eid175808%_
           _%rebind?175809%_
           _%phi175811%_
           _%ctx175813%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id175815%_ _%eid175816%_ _%rebind?175817%_ _%phi175818%_)
        (let ((_%ctx175820%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id175815%_
           _%eid175816%_
           _%rebind?175817%_
           _%phi175818%_
           _%ctx175820%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g178794_
        (let ((_g178795_ (##length _g178794_)))
          (cond ((##fx= _g178795_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g178794_))
                ((##fx= _g178795_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g178794_))
                ((##fx= _g178795_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g178794_))
                ((##fx= _g178795_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g178794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g178794_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id175741%_
               _%eid175742%_
               _%rebind?175743%_
               _%phi175744%_
               _%ctx175745%_)
        (gx#bind-identifier!__%
         _%id175741%_
         (let ((__obj178771
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj178771
            _%eid175742%_
            (gx#core-identifier-key _%id175741%_)
            _%phi175744%_)
           __obj178771)
         _%rebind?175743%_
         _%phi175744%_
         _%ctx175745%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id175750%_ _%eid175751%_)
        (let* ((_%rebind?175753%_ '#f)
               (_%phi175755%_ (gx#current-expander-phi))
               (_%ctx175757%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id175750%_
           _%eid175751%_
           _%rebind?175753%_
           _%phi175755%_
           _%ctx175757%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id175759%_ _%eid175760%_ _%rebind?175761%_)
        (let* ((_%phi175763%_ (gx#current-expander-phi))
               (_%ctx175765%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id175759%_
           _%eid175760%_
           _%rebind?175761%_
           _%phi175763%_
           _%ctx175765%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id175767%_ _%eid175768%_ _%rebind?175769%_ _%phi175770%_)
        (let ((_%ctx175772%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id175767%_
           _%eid175768%_
           _%rebind?175769%_
           _%phi175770%_
           _%ctx175772%_))))
    (define gx#core-bind-extern!
      (lambda _g178796_
        (let ((_g178797_ (##length _g178796_)))
          (cond ((##fx= _g178797_ 2) (apply gx#core-bind-extern!__0 _g178796_))
                ((##fx= _g178797_ 3) (apply gx#core-bind-extern!__1 _g178796_))
                ((##fx= _g178797_ 4) (apply gx#core-bind-extern!__2 _g178796_))
                ((##fx= _g178797_ 5) (apply gx#core-bind-extern!__% _g178796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g178796_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id175695%_
               _%e175696%_
               _%rebind?175697%_
               _%phi175698%_
               _%ctx175699%_)
        (gx#bind-identifier!__%
         _%id175695%_
         (let ((_%key175704%_ (gx#core-identifier-key _%id175695%_))
               (_%e175705%_
                (if (or (##structure-instance-of? _%e175696%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e175696%_
                         'gx#expander-context::t))
                    _%e175696%_
                    (##structure
                     gx#user-expander::t
                     _%e175696%_
                     _%ctx175699%_
                     _%phi175698%_))))
           (let ((__obj178772
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj178772
              (gx#make-binding-id__%
               _%key175704%_
               '#t
               _%phi175698%_
               _%ctx175699%_)
              _%key175704%_
              _%phi175698%_
              _%e175705%_)
             __obj178772))
         _%rebind?175697%_
         _%phi175698%_
         _%ctx175699%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id175710%_ _%e175711%_)
        (let* ((_%rebind?175713%_ '#f)
               (_%phi175715%_ (gx#current-expander-phi))
               (_%ctx175717%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id175710%_
           _%e175711%_
           _%rebind?175713%_
           _%phi175715%_
           _%ctx175717%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id175719%_ _%e175720%_ _%rebind?175721%_)
        (let* ((_%phi175723%_ (gx#current-expander-phi))
               (_%ctx175725%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id175719%_
           _%e175720%_
           _%rebind?175721%_
           _%phi175723%_
           _%ctx175725%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id175727%_ _%e175728%_ _%rebind?175729%_ _%phi175730%_)
        (let ((_%ctx175732%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id175727%_
           _%e175728%_
           _%rebind?175729%_
           _%phi175730%_
           _%ctx175732%_))))
    (define gx#core-bind-syntax!
      (lambda _g178798_
        (let ((_g178799_ (##length _g178798_)))
          (cond ((##fx= _g178799_ 2) (apply gx#core-bind-syntax!__0 _g178798_))
                ((##fx= _g178799_ 3) (apply gx#core-bind-syntax!__1 _g178798_))
                ((##fx= _g178799_ 4) (apply gx#core-bind-syntax!__2 _g178798_))
                ((##fx= _g178799_ 5) (apply gx#core-bind-syntax!__% _g178798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g178798_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id175678%_ _%e175679%_ _%rebind?175680%_)
        (gx#core-bind-syntax!__%
         _%id175678%_
         _%e175679%_
         _%rebind?175680%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id175685%_ _%e175686%_)
        (let ((_%rebind?175688%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id175685%_
           _%e175686%_
           _%rebind?175688%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g178800_
        (let ((_g178801_ (##length _g178800_)))
          (cond ((##fx= _g178801_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g178800_))
                ((##fx= _g178801_ 3)
                 (apply gx#core-bind-root-syntax!__% _g178800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g178800_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id175636%_
               _%alias-id175637%_
               _%rebind?175638%_
               _%phi175639%_
               _%ctx175640%_)
        (gx#bind-identifier!__%
         _%id175636%_
         (let* ((_%key175642%_ (gx#core-identifier-key _%id175636%_))
                (__obj178773
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj178773
            (gx#make-binding-id__%
             _%key175642%_
             '#t
             _%phi175639%_
             _%ctx175640%_)
            _%key175642%_
            _%phi175639%_
            _%alias-id175637%_)
           __obj178773)
         _%rebind?175638%_
         _%phi175639%_
         _%ctx175640%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id175647%_ _%alias-id175648%_)
        (let* ((_%rebind?175650%_ '#f)
               (_%phi175652%_ (gx#current-expander-phi))
               (_%ctx175654%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id175647%_
           _%alias-id175648%_
           _%rebind?175650%_
           _%phi175652%_
           _%ctx175654%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id175656%_ _%alias-id175657%_ _%rebind?175658%_)
        (let* ((_%phi175660%_ (gx#current-expander-phi))
               (_%ctx175662%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id175656%_
           _%alias-id175657%_
           _%rebind?175658%_
           _%phi175660%_
           _%ctx175662%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id175664%_ _%alias-id175665%_ _%rebind?175666%_ _%phi175667%_)
        (let ((_%ctx175669%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id175664%_
           _%alias-id175665%_
           _%rebind?175666%_
           _%phi175667%_
           _%ctx175669%_))))
    (define gx#core-bind-alias!
      (lambda _g178802_
        (let ((_g178803_ (##length _g178802_)))
          (cond ((##fx= _g178803_ 2) (apply gx#core-bind-alias!__0 _g178802_))
                ((##fx= _g178803_ 3) (apply gx#core-bind-alias!__1 _g178802_))
                ((##fx= _g178803_ 4) (apply gx#core-bind-alias!__2 _g178802_))
                ((##fx= _g178803_ 5) (apply gx#core-bind-alias!__% _g178802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g178802_))))))
    (define gx#make-binding-id__%
      (lambda (_%key175586%_ _%syntax?175587%_ _%phi175588%_ _%ctx175589%_)
        (if (uninterned-symbol? _%key175586%_)
            (##gensym 'L)
            (if (pair? _%key175586%_)
                (gensym (##car _%key175586%_))
                (if (##structure-instance-of? _%ctx175589%_ 'gx#top-context::t)
                    (let ((_%ns175594%_
                           (gx#core-context-namespace__% _%ctx175589%_)))
                      (if (and (fxzero? _%phi175588%_) (not _%syntax?175587%_))
                          (if _%ns175594%_
                              (make-symbol__1 _%ns175594%_ '"#" _%key175586%_)
                              _%key175586%_)
                          (if _%syntax?175587%_
                              (make-symbol__1
                               (let ((_%$e175598%_ _%ns175594%_))
                                 (if _%$e175598%_ _%$e175598%_ '""))
                               '"[:"
                               (number->string _%phi175588%_)
                               '":]#"
                               _%key175586%_)
                              (make-symbol__1
                               (let ((_%$e175602%_ _%ns175594%_))
                                 (if _%$e175602%_ _%$e175602%_ '""))
                               '"["
                               (number->string _%phi175588%_)
                               '"]#"
                               _%key175586%_))))
                    (gensym _%key175586%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key175609%_)
        (let* ((_%syntax?175611%_ '#f)
               (_%phi175613%_ (gx#current-expander-phi))
               (_%ctx175615%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key175609%_
           _%syntax?175611%_
           _%phi175613%_
           _%ctx175615%_))))
    (define gx#make-binding-id__1
      (lambda (_%key175617%_ _%syntax?175618%_)
        (let* ((_%phi175620%_ (gx#current-expander-phi))
               (_%ctx175622%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key175617%_
           _%syntax?175618%_
           _%phi175620%_
           _%ctx175622%_))))
    (define gx#make-binding-id__2
      (lambda (_%key175624%_ _%syntax?175625%_ _%phi175626%_)
        (let ((_%ctx175628%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key175624%_
           _%syntax?175625%_
           _%phi175626%_
           _%ctx175628%_))))
    (define gx#make-binding-id
      (lambda _g178804_
        (let ((_g178805_ (##length _g178804_)))
          (cond ((##fx= _g178805_ 1) (apply gx#make-binding-id__0 _g178804_))
                ((##fx= _g178805_ 2) (apply gx#make-binding-id__1 _g178804_))
                ((##fx= _g178805_ 3) (apply gx#make-binding-id__2 _g178804_))
                ((##fx= _g178805_ 4) (apply gx#make-binding-id__% _g178804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g178804_))))))))
